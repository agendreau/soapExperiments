from __future__ import division

import argparse, sys, csv

def computeReachable(coverage,methods,package):
    reachable = []
    for index in coverage:
        method = methods[index]
        '''
        if not method.startswith("Landroid"):
            reachable.append(method)
        
        if method.startswith("Lcom") or method.startswith("Lorg"):
            reachable.append(method)
        '''
    
        if method.startswith(package):
            reachable.append(method)

    return reachable

def convertString(s):
    s = s.replace('.','/')
    data = s.split()
    clazz = data[0].replace('<','L')
    clazz = clazz.replace(':','.')
    postfixes = data[2].split('(')
    method = postfixes[0]
    return clazz+method

def readMethods(fileName):
    file = open(fileName,'r')
    methods = {}

    contents = [convertString(x.strip('\n')) for x in file.readlines()]

    for (id,method) in enumerate(contents):
        methods[id] = method

    return methods

def readCoverage(fileName):

    file = open(fileName,'r')
    coverage = file.readline()
    coverage = coverage.strip('{')
    coverage = coverage.strip('}')
    coverage = coverage.split(',')
    coverage = [int(id) for id in coverage]

    return coverage

def readDroidel(fileName):
    file = open(fileName,'r')
    droidel = []
    package = file.readline();
    package = "L" + package.strip('\n');
    for x in file.readlines():
        m = x.strip('\n')
        if m.startswith(package):
            droidel.append(m)

    return package,droidel

def readFlowDroid(fileName,package):
    file = open(fileName,'r')
    flowDroid = []
    for x in file.readlines():
        m = convertString(x.strip('\n'))
        if m.startswith(package):
            flowDroid.append(m)

    return flowDroid

def missedMethods(model,concrete):
    total = len(concrete)
    totalMissed = 0
    missed = []
    for c in concrete:
        if c not in model:
            missed.append(c)
            totalMissed+=1

    return missed,totalMissed,total


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='SVM Classifier Options')
    parser.add_argument('--coverage',help="coverage file")
    parser.add_argument('--methods', help="method file")
    parser.add_argument('--droidel',help="reachable droidel methods")
    parser.add_argument('--flowDroid',help="reachable flowDroid methods")
    parser.add_argument('--app',help="app name")
    
    #parser.add_argument('--packageName', help="package name of app")
    
    args = parser.parse_args()
    
    coverage = readCoverage(args.coverage)
    methods = readMethods(args.methods)
    package,droidel = readDroidel(args.droidel)
    flowDroid = readFlowDroid(args.flowDroid,package)
    
    #print "reachable methods: " +str(len(methods))
    
    reachable = computeReachable(coverage,methods,package)
    
    #print "JUST COM/ORG"
    #print "No Landroid"
    print "just package name"
    
    
    print "Droidel:" + str(len(droidel))
    
    
    print "Flow Droid:" + str(len(flowDroid))
    
    missedDroidel,totalMissedDroidel,totalDroidel = missedMethods(droidel,reachable)
    
    print "Total Methods: " +str(len(reachable))
    
    print "DROIDEL"
    print "Total Methods Missed: " +str(totalMissedDroidel)
    print "Percentage Methods Missed: " +str(100*(totalMissedDroidel/len(reachable)))
    
    '''
    print "Missed Methods"
    for m in missedDroidel:
        print m
    '''
    missedFlow,totalMissedFlow,totalFlow = missedMethods(flowDroid,reachable)
    print "FLOW DROID"
    print "Total Methods Missed: " +str(totalMissedFlow)
    print "Percentage Methods Missed: " +str(100*(totalMissedFlow/len(reachable)))
    
    row = args.app + "," + str(len(reachable))+"," + str(totalMissedFlow)+ "," + \
        str(totalMissedDroidel) +"," + str(100*(totalMissedFlow/len(reachable))) + "," + \
        str(100*(totalMissedDroidel/len(reachable)))+"\n"
    
    file = open('output/data.csv','a')
    file.write(row)
    file.close()
    
    
    
    '''
    print "Missed Methods"
    for m in missedFlow:
        print m
    '''
    
    
    '''
    for r in reachable:
        print r
    print len(reachable)
    '''

