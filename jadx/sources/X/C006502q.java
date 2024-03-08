package X;

import android.content.Context;

/* renamed from: X.02q  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C006502q extends AbstractC006402p {
    public final /* synthetic */ C0BS A00;
    public final /* synthetic */ C08K A01;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C006502q(final Context context, C08K c08k, C0BS c0bs) {
        new C07P(context) { // from class: X.02p
            public final Context A00;

            @Override // X.C07P
            public final Integer ACC() {
                return AnonymousClass050.A07;
            }

            /* JADX WARN: Code restructure failed: missing block: B:30:0x00db, code lost:
                if (r1.contains("/system/framework/core.jar") != false) goto L11;
             */
            @Override // X.C07P
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void AV8(X.C006902u r6, X.EnumC006102m r7) {
                /*
                    r5 = this;
                    X.05l r1 = X.C07M.A52
                    r0 = r5
                    X.02q r0 = (X.C006502q) r0
                    X.08K r0 = r0.A01
                    X.0BP r0 = r0.A0M
                    java.lang.Object r0 = r0.get()
                    java.lang.String r0 = (java.lang.String) r0
                    r6.A04(r1, r0)
                    X.05l r1 = X.C07M.A54
                    java.lang.String r0 = android.os.Build.MODEL
                    r6.A04(r1, r0)
                    X.05l r1 = X.C07M.A55
                    java.lang.String r0 = android.os.Build.DEVICE
                    r6.A04(r1, r0)
                    X.05l r1 = X.C07M.A50
                    java.lang.String r0 = android.os.Build.BRAND
                    r6.A04(r1, r0)
                    X.05l r1 = X.C07M.A57
                    java.lang.String r0 = android.os.Build.VERSION.RELEASE
                    r6.A04(r1, r0)
                    X.05l r1 = X.C07M.A56
                    java.lang.String r0 = "Android"
                    r6.A04(r1, r0)
                    X.05l r4 = X.C07M.A3S
                    int r2 = android.os.Build.VERSION.SDK_INT
                    java.lang.String r3 = "DALVIK"
                    r0 = 19
                    if (r2 < r0) goto L51
                    java.lang.String r0 = "java.boot.class.path"
                    java.lang.String r1 = java.lang.System.getProperty(r0)
                    if (r1 == 0) goto Ldf
                    java.lang.String r0 = "/system/framework/core-libart.jar"
                    boolean r0 = r1.contains(r0)
                    if (r0 == 0) goto Ld5
                    java.lang.String r3 = "ART"
                L51:
                    r6.A04(r4, r3)
                    X.05l r1 = X.C07M.A3T
                    java.lang.String r0 = android.os.Build.VERSION.RELEASE
                    r6.A04(r1, r0)
                    X.05l r4 = X.C07M.A8v
                    X.03a r3 = new X.03a
                    r3.<init>()
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    r1.<init>()
                    java.lang.String r0 = r3.A00
                    r1.append(r0)
                    java.lang.String r0 = ":"
                    r1.append(r0)
                    java.lang.String r0 = r3.A01
                    r1.append(r0)
                    java.lang.String r0 = r1.toString()
                    r6.A04(r4, r0)
                    X.05n r3 = X.C07M.A08
                    java.lang.String r1 = "/apex/com.android.art/lib64/libart.so"
                    java.io.File r0 = new java.io.File
                    r0.<init>(r1)
                    boolean r0 = r0.exists()
                    if (r0 != 0) goto La6
                    java.lang.String r1 = "/apex/com.android.art/lib/libart.so"
                    java.io.File r0 = new java.io.File
                    r0.<init>(r1)
                    boolean r0 = r0.exists()
                    if (r0 != 0) goto Ld3
                    java.lang.String r1 = "/system/lib64/libc.so"
                    java.io.File r0 = new java.io.File
                    r0.<init>(r1)
                    boolean r0 = r0.exists()
                    if (r0 == 0) goto Ld3
                La6:
                    r0 = 1
                La7:
                    r6.A01(r3, r0)
                    r0 = 30
                    if (r2 < r0) goto Lce
                    org.json.JSONObject r3 = X.AbstractC016107f.A00()
                    int r0 = r3.length()
                    if (r0 <= 0) goto Lc1
                    X.05l r1 = X.C07M.A8o
                    java.lang.String r0 = r3.toString()
                    r6.A04(r1, r0)
                Lc1:
                    X.C04T.A00(r6)
                    r0 = 27
                    if (r2 < r0) goto Lcd
                    android.content.Context r0 = r5.A00
                    X.AbstractC007603b.A00(r0, r6)
                Lcd:
                    return
                Lce:
                    r0 = 23
                    if (r2 < r0) goto Lcd
                    goto Lc1
                Ld3:
                    r0 = 0
                    goto La7
                Ld5:
                    java.lang.String r0 = "/system/framework/core.jar"
                    boolean r0 = r1.contains(r0)
                    if (r0 == 0) goto Ldf
                    goto L51
                Ldf:
                    java.lang.String r3 = "UNKNOWN"
                    goto L51
                */
                throw new UnsupportedOperationException("Method not decompiled: X.AbstractC006402p.AV8(X.02u, X.02m):void");
            }

            {
                this.A00 = context;
            }
        };
        this.A00 = c0bs;
        this.A01 = c08k;
    }
}
