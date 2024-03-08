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

adb pull /data/app/~~l27LlzyH6D5jX4dE8H-VOg==/com.upi.axispay-Olx_xwFXU8iNxQ5tFQeRfw==/base.apk

mv base.apk com.facebook.lite.apk

~/go/bin/apkurlgrep -a com.facebook.lite.apk > apkurlgrep.txt

apktool d com.facebook.lite.apk

echo "Make sure to make a commit so gitleaks can work..."

gitleaks detect --report-path gitleaks.json
```
