package X;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.os.Build;

/* renamed from: X.01C  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C01C {
    public static final ProviderInfo A00(Context context, String str, int i) {
        C08H.A04(str, 1);
        PackageManager packageManager = context.getPackageManager();
        if (Build.VERSION.SDK_INT >= 33) {
            return packageManager.resolveContentProvider(str, PackageManager.ComponentInfoFlags.of(i));
        }
        return packageManager.resolveContentProvider(str, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final X.AnonymousClass024 A01(android.content.Context r4, java.lang.String r5, int r6) {
        /*
            r0 = 0
            X.C08H.A04(r4, r0)
            r0 = 1
            X.C08H.A04(r5, r0)
            android.content.pm.PackageManager r4 = r4.getPackageManager()
            int r3 = android.os.Build.VERSION.SDK_INT
            r2 = 64
            r1 = 134217728(0x8000000, float:3.85186E-34)
            r0 = 28
            if (r3 < r0) goto L32
            r0 = r6 & 64
            if (r0 != r2) goto L1d
            r6 = r6 & (-65)
            r6 = r6 | r1
        L1d:
            r0 = 33
            if (r3 < r0) goto L3c
            long r0 = (long) r6
            android.content.pm.PackageManager$PackageInfoFlags r0 = android.content.pm.PackageManager.PackageInfoFlags.of(r0)
            android.content.pm.PackageInfo r1 = r4.getPackageInfo(r5, r0)
        L2a:
            if (r1 == 0) goto L41
            X.024 r0 = new X.024
            r0.<init>(r1)
            return r0
        L32:
            r0 = r6 & r1
            if (r0 != r1) goto L3c
            r0 = -134217729(0xfffffffff7ffffff, float:-1.0384593E34)
            r6 = r6 & r0
            r6 = r6 | 64
        L3c:
            android.content.pm.PackageInfo r1 = r4.getPackageInfo(r5, r6)
            goto L2a
        L41:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r0 = "PackageManager returned null PackageInfo for "
            r1.append(r0)
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            android.content.pm.PackageManager$NameNotFoundException r0 = new android.content.pm.PackageManager$NameNotFoundException
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C01C.A01(android.content.Context, java.lang.String, int):X.024");
    }
}
