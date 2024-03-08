package X;

import android.util.Pair;

/* renamed from: X.06k  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C06k {
    public static C06j A00;
    public static final int[] A01 = {4096};

    static {
        C06j A002 = C0AI.A00();
        if (A002 == null) {
            A002 = C0AM.A01();
        }
        A00 = A002;
    }

    public static Pair A00() {
        String[] strArr = {null};
        return new Pair(strArr[0], Integer.valueOf(A00.AWQ("/proc/self/cmdline", null, A01, null, strArr)));
    }
}
