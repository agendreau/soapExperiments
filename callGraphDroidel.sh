#!/bin/bash

#Run Droidel

cd /Users/Alex/Desktop/Development/src/droidel

./droidel.sh -app /Users/Alex/Downloads/benchmarks/spycamera/  -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/spycamera.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelspycamera.txt


./droidel.sh -app /Users/Alex/Downloads/benchmarks/k-9/ -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/k9.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelk9.txt


./droidel.sh -app /Users/Alex/Downloads/benchmarks/duckduckgo/ -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/duckduckgo.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelduckduckgo.txt


./droidel.sh -app /Users/Alex/Desktop/apps/buildBenchHEAD/npr -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/nprGood.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelnpr.txt


./droidel.sh -app /Users/Alex/Downloads/benchmarks/wordpress/ -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/wordpress.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelwordpress.txt

./droidel.sh -app /Users/Alex/Desktop/apps/buildBenchHEAD/textsecure -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/npr.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelnpr.txt

./droidel.sh -app /Users/Alex/Desktop/apps/buildBenchHEAD/github -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/github.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelgithub.txt


