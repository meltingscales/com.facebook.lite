## Findings summary

### gitleaks

TODO

### apkurlgrep

TODO

### Snyk SAST

TODO

### jadx

TODO

## Commands

```
adb shell pm path com.facebook.lite

adb pull /data/app/~~c5iUqd7bYj_VsUfXC1d38A==/com.facebook.lite-bxjbOFDVVNfky_2ak0ryiA==/base.apk

mv base.apk com.facebook.lite.apk

~/go/bin/apkurlgrep -a com.facebook.lite.apk > apkurlgrep.txt

apktool d com.facebook.lite.apk

echo "Run jadx-gui, open the APK, and save to "./jadx/"

echo "Make sure to make a commit so gitleaks can work..."

gitleaks detect --report-path gitleaks.json```
