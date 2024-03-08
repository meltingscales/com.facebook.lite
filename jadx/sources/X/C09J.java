package X;

/* renamed from: X.09J  reason: invalid class name */
/* loaded from: classes.dex */
public final class C09J {
    public static final Object A01 = new Object();
    public static volatile C09J A02;
    public Integer A00 = null;

    public static C09J A00() {
        if (A02 == null) {
            synchronized (A01) {
                if (A02 == null) {
                    A02 = new C09J();
                }
            }
        }
        return A02;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00bf, code lost:
        if (r0 != null) goto L59;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Integer A01() {
        /*
            Method dump skipped, instructions count: 305
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C09J.A01():java.lang.Integer");
    }
}
