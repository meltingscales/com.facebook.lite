package X;

/* renamed from: X.07g  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC016207g {
    public static volatile Boolean A00;

    static {
        Runnable runnable = new Runnable() { // from class: X.07h
            public static final String __redex_internal_original_name = "TraceConfigJB$1";

            @Override // java.lang.Runnable
            public final void run() {
                AbstractC016207g.A00();
            }
        };
        if (AbstractC013305s.A06) {
            AbstractC013305s.A01(AbstractC013305s.A00, runnable);
        }
    }

    public static void A00() {
        String A02 = AbstractC013305s.A02("debug.atrace.app_cmdlines");
        int i = 0;
        boolean z = false;
        if (A02.length() != 0) {
            String[] split = A02.split(",");
            String A002 = AnonymousClass097.A00();
            while (true) {
                if (i >= split.length) {
                    break;
                } else if (A002.equals(split[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        A00 = z;
    }
}
