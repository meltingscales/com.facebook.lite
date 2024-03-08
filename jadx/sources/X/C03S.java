package X;

import java.io.File;

/* renamed from: X.03S  reason: invalid class name */
/* loaded from: classes.dex */
public final class C03S implements C07P {
    public File A00;
    public final int A01;
    public final C012705l A02;

    public C03S(File file) {
        this.A02 = C07M.A6S;
        this.A00 = file;
        this.A01 = 200;
    }

    @Override // X.C07P
    public final Integer ACC() {
        return AnonymousClass050.A0I;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x009e, code lost:
        if (r2 != null) goto L21;
     */
    @Override // X.C07P
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void AV8(X.C006902u r8, X.EnumC006102m r9) {
        /*
            r7 = this;
            java.lang.String r6 = "LogcatCollector"
            r4 = 0
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.io.IOException -> L94
            r2.<init>()     // Catch: java.io.IOException -> L94
            java.lang.String r0 = "logcat"
            r2.add(r0)     // Catch: java.io.IOException -> L94
            java.lang.String r0 = "-d"
            r2.add(r0)     // Catch: java.io.IOException -> L94
            java.lang.String r0 = "-v"
            r2.add(r0)     // Catch: java.io.IOException -> L94
            java.lang.String r0 = "year"
            r2.add(r0)     // Catch: java.io.IOException -> L94
            java.io.File r1 = r7.A00     // Catch: java.io.IOException -> L94
            if (r1 == 0) goto L2c
            java.lang.String r0 = "-f"
            r2.add(r0)     // Catch: java.io.IOException -> L94
            java.lang.String r0 = r1.getPath()     // Catch: java.io.IOException -> L94
            r2.add(r0)     // Catch: java.io.IOException -> L94
        L2c:
            int r1 = r7.A01     // Catch: java.io.IOException -> L94
            if (r1 <= 0) goto L3c
            java.lang.String r0 = "-t"
            r2.add(r0)     // Catch: java.io.IOException -> L94
            java.lang.String r0 = java.lang.String.valueOf(r1)     // Catch: java.io.IOException -> L94
            r2.add(r0)     // Catch: java.io.IOException -> L94
        L3c:
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.io.IOException -> L94
            int r0 = r2.size()     // Catch: java.io.IOException -> L94
            java.lang.String[] r0 = new java.lang.String[r0]     // Catch: java.io.IOException -> L94
            java.lang.Object[] r0 = r2.toArray(r0)     // Catch: java.io.IOException -> L94
            java.lang.String[] r0 = (java.lang.String[]) r0     // Catch: java.io.IOException -> L94
            java.lang.Process r0 = r1.exec(r0)     // Catch: java.io.IOException -> L94
            java.io.InputStream r1 = r0.getInputStream()     // Catch: java.io.IOException -> L94
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L94
            r0.<init>(r1)     // Catch: java.io.IOException -> L94
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.io.IOException -> L94
            r2.<init>(r0)     // Catch: java.io.IOException -> L94
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch: java.io.IOException -> L94
            r5.<init>()     // Catch: java.io.IOException -> L94
            r3 = 0
            r1 = 0
        L65:
            java.lang.String r0 = r2.readLine()     // Catch: java.io.IOException -> L94
            if (r0 == 0) goto L76
            r5.add(r0)     // Catch: java.io.IOException -> L94
            int r0 = r0.length()     // Catch: java.io.IOException -> L94
            int r1 = r1 + r0
            int r1 = r1 + 1
            goto L65
        L76:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L94
            r2.<init>(r1)     // Catch: java.io.IOException -> L94
        L7b:
            int r0 = r5.size()     // Catch: java.io.IOException -> L92
            if (r3 >= r0) goto Lae
            java.lang.Object r0 = r5.get(r3)     // Catch: java.io.IOException -> L92
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.io.IOException -> L92
            r2.append(r0)     // Catch: java.io.IOException -> L92
            java.lang.String r0 = "\n"
            r2.append(r0)     // Catch: java.io.IOException -> L92
            int r3 = r3 + 1
            goto L7b
        L92:
            r1 = move-exception
            goto L96
        L94:
            r1 = move-exception
            r2 = r4
        L96:
            X.AbstractC019608w.A00()
            java.lang.String r0 = "LogCatCollector.collectLogcat could not retrieve data."
            android.util.Log.e(r6, r0, r1)
            if (r2 != 0) goto Lae
        La0:
            java.io.File r1 = r7.A00
            if (r1 != 0) goto Lb3
            X.05l r0 = r7.A02
            if (r4 != 0) goto Laa
            java.lang.String r4 = "unknown"
        Laa:
            r8.A04(r0, r4)
            return
        Lae:
            java.lang.String r4 = r2.toString()
            goto La0
        Lb3:
            X.07N r0 = X.C07N.A0A
            r8.A05(r0, r9, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C03S.AV8(X.02u, X.02m):void");
    }

    public C03S() {
        this.A02 = C07M.A6S;
        this.A00 = null;
        this.A01 = -1;
    }
}
