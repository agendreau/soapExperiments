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

def readMethods(fileName,package):
    file = open(fileName,'r')
    methods = {}

    contents = [convertString(x.strip('\n')) for x in file.readlines()]
    appMethods = 0
    for (id,method) in enumerate(contents):
        methods[id] = method
        if method.startswith(package):
            appMethods+=1;
    

    return methods,appMethods

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
    f = file.readlines()
    for x in f:
        m = x.strip('\n')
        if m.startswith(package):
            droidel.append(m)

    return package,droidel,len(f)

def readFlowDroid(fileName,package):
    file = open(fileName,'r')
    flowDroid = []
    f = file.readlines()
    for x in f:
        m = convertString(x.strip('\n'))
        if m.startswith(package):
            flowDroid.append(m)

    return flowDroid,len(f)

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
    package,droidel,totalD = readDroidel(args.droidel)
    methods,appMethods = readMethods(args.methods,package)
    
    print len(methods)
    
    flowDroid,totalFD = readFlowDroid(args.flowDroid,package)
    
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
    
    row = [args.app,'0',str(len(methods)),str(appMethods),str(len(reachable)),
           str(totalFD),str(len(flowDroid)),
           str(totalD),str(len(droidel)),
           str(100*(totalMissedFlow/len(reachable))),str(100*(totalMissedDroidel/len(reachable))),
           0,0,0]
    '''
    row = args.app + "," + str(appMethods) + "," + str(len(reachable))+"," + str(len(flowDroid))+ "," + \
    str(len(droidel)) +"," + str(100*(totalMissedFlow/len(reachable))) + "," + \
    str(100*(totalMissedDroidel/len(reachable)))+"\n"
    '''
    file = open('output/data.csv','a')
    wr = csv.writer(file,dialect='excel')
    wr.writerow(row)
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

