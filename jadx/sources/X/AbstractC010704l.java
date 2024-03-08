package X;

/* renamed from: X.04l  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC010704l {
    public static void A00(Throwable th) {
        Class cls = Error.class;
        if (!cls.isInstance(th)) {
            cls = RuntimeException.class;
            if (!cls.isInstance(th)) {
                throw new RuntimeException(th);
            }
        }
        throw ((Throwable) cls.cast(th));
    }
}
