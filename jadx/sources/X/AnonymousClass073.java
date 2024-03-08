package X;

/* renamed from: X.073  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass073 {
    public static String A00;
    public static final AnonymousClass072 A01 = new Object() { // from class: X.072
    };

    public static final String A00() {
        AnonymousClass072 anonymousClass072 = A01;
        if (A00 == null) {
            synchronized (anonymousClass072) {
                String str = A00;
                if (str != null) {
                    return str;
                }
                String l = Long.toString(System.currentTimeMillis());
                C08H.A01(l);
                StringBuilder A0D = AnonymousClass000.A0D(l);
                A0D.append('-');
                A00 = AnonymousClass000.A0A(AnonymousClass070.A00(), A0D);
            }
        }
        String str2 = A00;
        C08H.A03(str2);
        return str2;
    }
}
