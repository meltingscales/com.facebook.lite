package X;

import com.facebook.errorreporting.lacrima.detector.javacrash.JavaCrashDetector;
import java.lang.Thread;

/* renamed from: X.0BX  reason: invalid class name */
/* loaded from: classes.dex */
public class C0BX implements Thread.UncaughtExceptionHandler {
    public Object A00;
    public Object A01;
    public final int A02;

    public C0BX(int i, Object obj, Object obj2) {
        this.A02 = i;
        this.A00 = obj;
        this.A01 = obj2;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        if (this.A02 != 0) {
            try {
                C09U c09u = (C09U) this.A00;
                if (c09u.A03) {
                    try {
                        AbstractC016607l.A00(c09u.A02, null, null, c09u.A01, th, AnonymousClass000.A0F());
                    } catch (Exception e) {
                        C015006s.A0A("EarlyExceptionHandler", "Failed sending direct reports", e);
                    }
                }
            } catch (Exception e2) {
                C015006s.A0A("EarlyExceptionHandler", "Exception in uncaught handler", e2);
            }
            uncaughtExceptionHandler = (Thread.UncaughtExceptionHandler) this.A01;
            if (uncaughtExceptionHandler == null) {
                return;
            }
        } else {
            JavaCrashDetector javaCrashDetector = (JavaCrashDetector) this.A00;
            if (javaCrashDetector.A01.A1j(thread, th)) {
                javaCrashDetector.A00(thread, th);
            }
            uncaughtExceptionHandler = (Thread.UncaughtExceptionHandler) this.A01;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }
}
