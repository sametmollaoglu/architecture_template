#!/bin/bash

if [ $3 == "bundle" ]
then
# alttaki iki komut bu dosyayı kullanarak apk veya bundle üretiyor
# sh android_build.sh 1.0.0 1 bundle
# sh android_build.sh 1.0.0 1 apk
flutter build appbundle --build-name=$1 --build-number=$2
open build/app/outputs/bundle/release
else
flutter build apk --build-name=$1 --build-number=$2
open build/app/outputs/flutter-apk
fi