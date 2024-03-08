package X;

import java.util.Locale;

/* renamed from: X.02h  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC005602h {
    public static void A01(int i, int i2, String str, int i3) {
        if (i >= i2) {
            if (i <= i3) {
                return;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    public static C07R A00(C08K c08k, Object obj) {
        A02(obj, "Did you call earlyInit()?");
        C07R c07r = c08k.A00;
        A02(c07r, "Did you call earlyInit()?");
        return c07r;
    }

    public static void A02(Object obj, Object obj2) {
        if (obj != null) {
            return;
        }
        throw new NullPointerException(String.valueOf(obj2));
    }

    public static void A03(Object obj, boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }
}
