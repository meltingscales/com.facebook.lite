package X;

/* renamed from: X.01d  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C002601d {
    public C002601d() {
        final C01N c01n = C01M.A00;
        if (!c01n.A02.getAndSet(true)) {
            c01n.A00.close();
            c01n.A01.execute(new Runnable() { // from class: X.01O
                public static final String __redex_internal_original_name = "FsStats$FsStatsReporter$1";

                @Override // java.lang.Runnable
                public final void run() {
                    C01N c01n2 = C01N.this;
                    c01n2.A03.set(AnonymousClass011.A01().A05(AnonymousClass050.A00) >> 10);
                    c01n2.A00.open();
                    c01n2.A02.set(false);
                }
            });
        }
    }
}
