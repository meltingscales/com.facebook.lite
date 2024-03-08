package X;

import android.os.Process;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: X.07t  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class ThreadFactoryC017207t implements ThreadFactory {
    public final int A00;
    public final String A01;
    public final AtomicInteger A02 = new AtomicInteger(1);

    public ThreadFactoryC017207t(String str, int i) {
        this.A01 = str;
        this.A00 = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(final Runnable runnable) {
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("Lacrima_");
        A0C.append(this.A01);
        A0C.append("_");
        A0C.append(this.A02.getAndIncrement());
        C021009m c021009m = C07C.A04;
        if (c021009m != null) {
            A0C.append(":");
            String str = c021009m.A02;
            if (str == null) {
                str = "unknown";
            }
            A0C.append(str);
        }
        final String obj = A0C.toString();
        return new Thread(obj) { // from class: X.07s
            public static final String __redex_internal_original_name = "LacrimaExecutors$NamedThreadFactory$1";

            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    Process.setThreadPriority(ThreadFactoryC017207t.this.A00);
                } catch (Throwable unused) {
                    AbstractC019608w.A00();
                }
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
    }
}
