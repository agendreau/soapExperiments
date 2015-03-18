#!/bin/bash

#Run FlowDroid

cd /Users/Alex/Desktop/Development/src/FlowDroidEclipse/soot-infoflow-android

sh ./runFlowDroid.sh /Users/Alex/Downloads/benchmarks/spycamera/bin/SpyCamActivity-debug.apk /usr/local/opt/android-sdk/platforms/android-19/android.jar >> /Users/Alex/Desktop/Development/src/soapExperiments/flowDroidOutput/spycamera.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFD.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFDspycamera.txt

./runFlowDroid.sh /Users/Alex/Downloads/benchmarks/k-9/bin/K9-debug.apk /usr/local/opt/android-sdk/platforms/android-19/android.jar >> /Users/Alex/Desktop/Development/src/soapExperiments/flowDroidOutput/k9.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFD.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFDk9.txt


./runFlowDroid.sh /Users/Alex/Downloads/benchmarks/duckduckgo/bin/DuckDuckDroid-debug.apk /usr/local/opt/android-sdk/platforms/android-19/android.jar >> /Users/Alex/Desktop/Development/src/soapExperiments/flowDroidOutput/duckduckgo.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFD.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFDduckduckgo.txt


./runFlowDroid.sh /Users/Alex/Desktop/Development/src/ella/apps/npr/Main-debug.apk /usr/local/opt/android-sdk/platforms/android-19/android.jar >> /Users/Alex/Desktop/Development/src/soapExperiments/flowDroidOutput/npr.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFD.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFDnpr.txt


./runFlowDroid.sh /Users/Alex/Downloads/benchmarks/wordpress/build/apk/WordPress-Android-debug-unaligned.apk /usr/local/opt/android-sdk/platforms/android-19/android.jar >> /Users/Alex/Desktop/Development/src/soapExperiments/flowDroidOutput/wordpress.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFD.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFDwordpress.txt


./runFlowDroid.sh /Users/Alex/Desktop/Development/src/ella/apps/github/app-debug.apk /usr/local/opt/android-sdk/platforms/android-19/android.jar >> /Users/Alex/Desktop/Development/src/soapExperiments/flowDroidOutput/github.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFD.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFDgithub.txt

./runFlowDroid.sh /Users/Alex/Desktop/Development/src/ella/apps/drupaleditor/Main-debug.apk /usr/local/opt/android-sdk/platforms/android-19/android.jar >> /Users/Alex/Desktop/Development/src/soapExperiments/flowDroidOutput/drupaleditor.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFD.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFDdrupaleditor.txt

./runFlowDroid.sh /Users/Alex/Desktop/Development/src/ella/apps/textsecure/TextSecure-debug.apk /usr/local/opt/android-sdk/platforms/android-19/android.jar >> /Users/Alex/Desktop/Development/src/soapExperiments/flowDroidOutput/textsecure.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFD.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputFDtextsecure.txt


#Run Droidel

cd /Users/Alex/Desktop/Development/src/droidel

./droidel.sh -app /Users/Alex/Downloads/benchmarks/spycamera/bin/SpyCamActivity-debug-unaligned.apk  -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/spycamera.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelspycamera.txt


./droidel.sh -app /Users/Alex/Downloads/benchmarks/k-9/bin/K9-debug.apk -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/k9.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelk9.txt


./droidel.sh -app /Users/Alex/Downloads/benchmarks/duckduckgo/bin/DuckDuckDroid-debug.apk -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/duckduckgo.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelduckduckgo.txt


./droidel.sh -app /Users/Alex/Desktop/Development/src/ella/apps/npr/Main-debug.apk -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/nprGood.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelnpr.txt


./droidel.sh -app /Users/Alex/Downloads/benchmarks/wordpress/build/apk/WordPress-Android-debug-unaligned.apk -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/wordpress.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelspywordpress.txt


./droidel.sh -app /Users/Alex/Desktop/Development/src/ella/apps/github/app-debug.apk -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/github.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidelgithub.txt

./droidel.sh -app /Users/Alex/Desktop/apps/buildBenchHEAD/drupaleditor -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/drupaleditor.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroideldrupaleditor.txt

./droidel.sh -app /Users/Alex/Desktop/apps/buildBenchHEAD/textsecure -android_jar ../permGrep/src/main/resources/androidPlatforms/droidel_android-4.4.2.jar -build_cg >> ../soapExperiments/droidelOutput/textsecure.out 2>&1

mv /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroidel.txt /Users/Alex/Desktop/Development/src/soapExperiments/output/outputDroideltextsecure.txt



