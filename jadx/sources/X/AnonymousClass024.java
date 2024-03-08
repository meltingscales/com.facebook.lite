package X;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: X.024  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass024 {
    public final ApplicationInfo A00;
    public final String A01;
    public final String A02;
    public final PackageInfo A03;

    public AnonymousClass024(PackageInfo packageInfo) {
        C08H.A04(packageInfo, 1);
        this.A03 = packageInfo;
        String str = packageInfo.packageName;
        this.A01 = str == null ? "" : str;
        String str2 = packageInfo.versionName;
        this.A02 = str2 == null ? "" : str2;
        this.A00 = packageInfo.applicationInfo;
    }

    public final long A00() {
        int i = Build.VERSION.SDK_INT;
        PackageInfo packageInfo = this.A03;
        if (i >= 28) {
            return packageInfo.getLongVersionCode();
        }
        return packageInfo.versionCode;
    }

    public final AnonymousClass025 A01() {
        PackageInfo packageInfo;
        SigningInfo signingInfo;
        Signature[] signingCertificateHistory;
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 28 && (signingInfo = (packageInfo = this.A03).signingInfo) != null) {
            boolean hasMultipleSigners = signingInfo.hasMultipleSigners();
            boolean hasPastSigningCertificates = packageInfo.signingInfo.hasPastSigningCertificates();
            SigningInfo signingInfo2 = packageInfo.signingInfo;
            if (hasMultipleSigners) {
                signingCertificateHistory = signingInfo2.getApkContentsSigners();
            } else {
                signingCertificateHistory = signingInfo2.getSigningCertificateHistory();
            }
            if (signingCertificateHistory == null) {
                return null;
            }
            List asList = Arrays.asList(signingCertificateHistory);
            C08H.A01(asList);
            if (asList == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : asList) {
                if (obj != null) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new AnonymousClass025(arrayList, hasMultipleSigners, hasPastSigningCertificates);
        }
        Signature[] signatureArr = this.A03.signatures;
        if (signatureArr == null) {
            return null;
        }
        List asList2 = Arrays.asList(signatureArr);
        C08H.A01(asList2);
        if (asList2 == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : asList2) {
            if (obj2 != null) {
                arrayList2.add(obj2);
            }
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        if (arrayList2.size() <= 1) {
            z = false;
        }
        return new AnonymousClass025(arrayList2, z, false);
    }
}
