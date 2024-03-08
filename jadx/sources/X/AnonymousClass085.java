package X;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* renamed from: X.085  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass085 {
    public static Executor A00;
    public static AnonymousClass081 A01;
    public static List A02;
    public static final AnonymousClass081 A03;

    static {
        AnonymousClass081 anonymousClass081 = new AnonymousClass081() { // from class: X.06G
        };
        A03 = anonymousClass081;
        A01 = anonymousClass081;
        A00 = Executors.newSingleThreadExecutor();
        A02 = AnonymousClass000.A0E();
    }

    public static synchronized void A00(final AnonymousClass084 anonymousClass084) {
        synchronized (AnonymousClass085.class) {
            final AnonymousClass081 anonymousClass081 = A01;
            if (anonymousClass081 != A03) {
                A00.execute(new Runnable() { // from class: X.082
                    public static final String __redex_internal_original_name = "GlobalPropertiesCreator$$ExternalSyntheticLambda0";

                    @Override // java.lang.Runnable
                    public final void run() {
                        anonymousClass084.ASC(anonymousClass081);
                    }
                });
            } else {
                A02.add(anonymousClass084);
            }
        }
    }
}
