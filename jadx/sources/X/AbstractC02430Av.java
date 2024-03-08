package X;

import com.facebook.systrace.Systrace;

/* renamed from: X.0Av  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC02430Av {
    public static volatile boolean A00;

    public static long A00(long j) {
        if ((1 & C00E.A01) != 0 && !A00) {
            A00 = true;
            Systrace.A03("fburl.com/fbsystrace");
            Systrace.A03("USE fbsystrace");
            Systrace.A03("DO NOT USE systrace");
        } else if (A00 && (1 & C00E.A01) == 0) {
            A00 = false;
        }
        return j - System.nanoTime();
    }
}
