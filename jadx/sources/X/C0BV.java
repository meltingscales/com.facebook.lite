package X;

import java.util.concurrent.Callable;

/* renamed from: X.0BV  reason: invalid class name */
/* loaded from: classes.dex */
public class C0BV implements Callable {
    public Object A00;
    public Object A01;
    public final int A02;

    public C0BV(int i, Object obj, Object obj2) {
        this.A02 = i;
        this.A00 = obj2;
        this.A01 = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x008d, code lost:
        if ((r3.lastModified() / 1000) < (r5.getPackageManager().getPackageInfo(r5.getPackageName(), 0).lastUpdateTime / 1000)) goto L18;
     */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final /* bridge */ /* synthetic */ java.lang.Object call() {
        /*
            r10 = this;
            int r0 = r10.A02
            switch(r0) {
                case 0: goto L19;
                case 1: goto L16;
                default: goto L5;
            }
        L5:
            java.lang.Object r0 = r10.A01
            X.09i r0 = (X.C020709i) r0
            X.09j r0 = r0.A01
            java.lang.String r0 = r0.A03
            java.net.InetAddress[] r0 = java.net.InetAddress.getAllByName(r0)
            java.util.List r0 = java.util.Arrays.asList(r0)
            return r0
        L16:
            java.lang.Object r0 = r10.A01
            return r0
        L19:
            X.0A6 r9 = new X.0A6
            r9.<init>()
            X.C0A5.A08 = r9
            java.lang.Object r5 = r10.A01     // Catch: java.lang.Throwable -> La4
            android.content.Context r5 = (android.content.Context) r5     // Catch: java.lang.Throwable -> La4
            java.lang.String r0 = "app_appcomponents"
            java.io.File r1 = X.AnonymousClass000.A03(r5, r0)     // Catch: java.lang.Throwable -> La4
            r1.mkdirs()     // Catch: java.lang.Throwable -> La4
            java.lang.String r0 = "versions"
            java.io.File r1 = X.AnonymousClass000.A04(r1, r0)     // Catch: java.lang.Throwable -> La4
            int r8 = X.C06F.A00()     // Catch: java.lang.Throwable -> La4
            java.lang.String r0 = java.lang.Integer.toString(r8)     // Catch: java.lang.Throwable -> La4
            java.io.File r3 = X.AnonymousClass000.A04(r1, r0)     // Catch: java.lang.Throwable -> La4
            boolean r0 = r3.exists()     // Catch: java.lang.Throwable -> La4
            java.lang.String r2 = "Can't get package info for this package."
            r7 = 0
            r6 = 1
            if (r0 != 0) goto L73
            java.lang.Integer r4 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> La4
            android.content.pm.PackageManager r1 = r5.getPackageManager()     // Catch: java.lang.Throwable -> La4
            java.lang.String r0 = r5.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L9a java.lang.Throwable -> La4
            android.content.pm.PackageInfo r0 = r1.getPackageInfo(r0, r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L9a java.lang.Throwable -> La4
            int r3 = r0.versionCode     // Catch: java.lang.Throwable -> La4
            if (r3 == r8) goto L8f
            java.util.Locale r2 = java.util.Locale.US     // Catch: java.lang.Throwable -> La4
            r0 = 2
            java.lang.Object[] r1 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> La4
            X.AnonymousClass000.A0P(r1, r3, r7)     // Catch: java.lang.Throwable -> La4
            r1[r6] = r4     // Catch: java.lang.Throwable -> La4
            java.lang.String r0 = "Android PackageManager returned version code: %d, apk version code is: %d"
            java.lang.String r1 = java.lang.String.format(r2, r0, r1)     // Catch: java.lang.Throwable -> La4
            java.lang.String r0 = "AppComponentManager"
            X.C015006s.A08(r0, r1)     // Catch: java.lang.Throwable -> La4
            goto L8f
        L73:
            if (r8 != r6) goto L9f
            android.content.pm.PackageManager r1 = r5.getPackageManager()     // Catch: java.lang.Throwable -> La4
            java.lang.String r0 = r5.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L95 java.lang.Throwable -> La4
            android.content.pm.PackageInfo r0 = r1.getPackageInfo(r0, r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L95 java.lang.Throwable -> La4
            long r6 = r3.lastModified()     // Catch: java.lang.Throwable -> La4
            r3 = 1000(0x3e8, double:4.94E-321)
            long r6 = r6 / r3
            long r1 = r0.lastUpdateTime     // Catch: java.lang.Throwable -> La4
            long r1 = r1 / r3
            int r0 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r0 >= 0) goto L9f
        L8f:
            java.lang.String r0 = "cold_start"
            X.AbstractC013605v.A03(r5, r0)     // Catch: java.lang.Throwable -> La4
            goto L9f
        L95:
            java.lang.IllegalStateException r0 = X.AnonymousClass000.A07(r2)     // Catch: java.lang.Throwable -> La4
            goto L9e
        L9a:
            java.lang.IllegalStateException r0 = X.AnonymousClass000.A07(r2)     // Catch: java.lang.Throwable -> La4
        L9e:
            throw r0     // Catch: java.lang.Throwable -> La4
        L9f:
            r9.close()
            r0 = 0
            return r0
        La4:
            r0 = move-exception
            r9.close()     // Catch: java.lang.Throwable -> La8
        La8:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C0BV.call():java.lang.Object");
    }
}
