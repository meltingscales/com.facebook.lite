package X;

/* renamed from: X.0BL  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0BL {
    public static C0BM A00;

    public static boolean A02(String str) {
        C0BM c0bm;
        synchronized (C0BL.class) {
            c0bm = A00;
            if (c0bm == null) {
                throw AnonymousClass000.A07("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
            }
        }
        return c0bm.AJL(str, 0);
    }

    public static void A00(C0BM c0bm) {
        synchronized (C0BL.class) {
            if (A00 == null) {
                A00 = c0bm;
            } else {
                throw AnonymousClass000.A07("Cannot re-initialize NativeLoader.");
            }
        }
    }

    public static boolean A01() {
        boolean z;
        synchronized (C0BL.class) {
            z = false;
            if (A00 != null) {
                z = true;
            }
        }
        return z;
    }
}
