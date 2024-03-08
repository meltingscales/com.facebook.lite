## Findings summary

### gitleaks

Nothing.

### apkurlgrep

We see a decent listing of API endpoints, but nothing really sensitive:

```
/.*/posts/.*
/.*/photos/.*
/.*/photos
/.*/media_set
/.*/about
/.*/photos_of
/.*/photos_albums
/.*/friends
/inter_app/redirect/.*
/privacy_access_hub/.*
/contact_upload_settings/.*
/fbrdr/2048/
/fbrdr/274/
/profile.php
/permalink.php
```

### Snyk SAST

- TLS 1.0 is used instead of TLS 1.2.
- Various medium findings, nothing really significant.

### jadx

Nothing.

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
