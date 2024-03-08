package X;

/* renamed from: X.03e  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC007703e {
    public static boolean A00(char c) {
        if ('r' != c && 'c' != c && 's' != c && 'p' != c && 'f' != c) {
            return false;
        }
        return true;
    }

    public static boolean A01(Integer num, char c) {
        EnumC016407i[] values;
        for (EnumC016407i enumC016407i : EnumC016407i.values()) {
            if (enumC016407i.A01 == c) {
                if (enumC016407i.A00 != num) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }
}
