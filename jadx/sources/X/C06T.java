package X;

import android.os.Process;
import android.util.Log;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: X.06T  reason: invalid class name */
/* loaded from: classes.dex */
public final class C06T implements Thread.UncaughtExceptionHandler {
    public static C06T A03;
    public final Thread.UncaughtExceptionHandler A01;
    public byte[] mOomReservation;
    public final Object A00 = new Object();
    public volatile List A02 = Collections.unmodifiableList(AnonymousClass000.A0E());

    public static synchronized C06T A00() {
        C06T c06t;
        synchronized (C06T.class) {
            c06t = A03;
            if (c06t == null) {
                C06T c06t2 = new C06T(Thread.getDefaultUncaughtExceptionHandler());
                A03 = c06t2;
                Thread.setDefaultUncaughtExceptionHandler(c06t2);
                c06t = A03;
            }
        }
        return c06t;
    }

    public static synchronized C06T A01() {
        C06T c06t;
        synchronized (C06T.class) {
            c06t = A03;
        }
        return c06t;
    }

    public static synchronized void A03(C03T c03t, int i) {
        synchronized (C06T.class) {
            C06T A00 = A00();
            synchronized (A00) {
                ArrayList arrayList = new ArrayList(A00.A02);
                arrayList.add(new C03V(c03t, i));
                Collections.sort(arrayList);
                A00.A02 = Collections.unmodifiableList(arrayList);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007b, code lost:
        if (r0 != null) goto L24;
     */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void uncaughtException(java.lang.Thread r9, java.lang.Throwable r10) {
        /*
            r8 = this;
            java.lang.Object r3 = r8.A00
            monitor-enter(r3)
            r0 = -10
            android.os.Process.setThreadPriority(r0)     // Catch: java.lang.Exception -> L8 java.lang.Throwable -> La0
        L8:
            boolean r7 = r10 instanceof java.lang.OutOfMemoryError     // Catch: java.lang.Throwable -> La0
            r0 = 1
            r6 = 0
            r8.mOomReservation = r6     // Catch: java.lang.Throwable -> La0
            java.util.List r5 = r8.A02     // Catch: java.lang.Throwable -> La0
            int r4 = r5.size()     // Catch: java.lang.Throwable -> L56
            int r4 = r4 - r0
        L15:
            if (r4 < 0) goto L38
            java.lang.Object r0 = r5.get(r4)     // Catch: java.lang.Throwable -> L56
            X.03V r0 = (X.C03V) r0     // Catch: java.lang.Throwable -> L56
            X.03T r0 = r0.A00     // Catch: java.lang.Throwable -> L56
            r0.AGf(r6, r9, r10)     // Catch: java.lang.Throwable -> L23
            goto L35
        L23:
            r2 = move-exception
            if (r7 == 0) goto L2e
            java.lang.String r1 = "ExceptionHandlerManager"
            java.lang.String r0 = "OOM while handling OOM"
            android.util.Log.e(r1, r0)     // Catch: java.lang.Throwable -> L56
            goto L35
        L2e:
            java.lang.String r1 = "ExceptionHandlerManager"
            java.lang.String r0 = "Error during exception handling"
            android.util.Log.e(r1, r0, r2)     // Catch: java.lang.Throwable -> L56
        L35:
            int r4 = r4 + (-1)
            goto L15
        L38:
            A04(r10)     // Catch: java.lang.Throwable -> L81
            boolean r0 = r10 instanceof X.C010604k     // Catch: java.lang.Throwable -> L81
            if (r0 == 0) goto L79
            java.lang.String r2 = "ExceptionHandlerManager"
            java.lang.StringBuilder r1 = X.AnonymousClass000.A0C()     // Catch: java.lang.Throwable -> L81
            java.lang.String r0 = "Exit: "
            r1.append(r0)     // Catch: java.lang.Throwable -> L81
            java.lang.String r0 = r10.getMessage()     // Catch: java.lang.Throwable -> L81
            java.lang.String r0 = X.AnonymousClass000.A0A(r0, r1)     // Catch: java.lang.Throwable -> L81
            android.util.Log.w(r2, r0)     // Catch: java.lang.Throwable -> L81
            goto L95
        L56:
            A04(r10)     // Catch: java.lang.Throwable -> L81
            boolean r0 = r10 instanceof X.C010604k     // Catch: java.lang.Throwable -> L81
            if (r0 == 0) goto L74
            java.lang.String r2 = "ExceptionHandlerManager"
            java.lang.StringBuilder r1 = X.AnonymousClass000.A0C()     // Catch: java.lang.Throwable -> L81
            java.lang.String r0 = "Exit: "
            r1.append(r0)     // Catch: java.lang.Throwable -> L81
            java.lang.String r0 = r10.getMessage()     // Catch: java.lang.Throwable -> L81
            java.lang.String r0 = X.AnonymousClass000.A0A(r0, r1)     // Catch: java.lang.Throwable -> L81
            android.util.Log.w(r2, r0)     // Catch: java.lang.Throwable -> L81
            goto L95
        L74:
            java.lang.Thread$UncaughtExceptionHandler r0 = r8.A01     // Catch: java.lang.Throwable -> L81
            if (r0 == 0) goto L95
            goto L7d
        L79:
            java.lang.Thread$UncaughtExceptionHandler r0 = r8.A01     // Catch: java.lang.Throwable -> L81
            if (r0 == 0) goto L95
        L7d:
            r0.uncaughtException(r9, r10)     // Catch: java.lang.Throwable -> L81
            goto L95
        L81:
            r2 = move-exception
            java.lang.String r1 = "ExceptionHandlerManager"
            java.lang.String r0 = "Error during exception handling"
            android.util.Log.e(r1, r0, r2)     // Catch: java.lang.Throwable -> L8a
            goto L95
        L8a:
            A02()     // Catch: java.lang.Throwable -> La0
            java.lang.RuntimeException r1 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> La0
            java.lang.String r0 = "Redex: Unreachable code after no-return invoke"
            r1.<init>(r0)     // Catch: java.lang.Throwable -> La0
            goto L9f
        L95:
            A02()     // Catch: java.lang.Throwable -> La0
            java.lang.RuntimeException r1 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> La0
            java.lang.String r0 = "Redex: Unreachable code after no-return invoke"
            r1.<init>(r0)     // Catch: java.lang.Throwable -> La0
        L9f:
            throw r1     // Catch: java.lang.Throwable -> La0
        La0:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> La0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C06T.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
    }

    public C06T(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.mOomReservation = null;
        this.A01 = uncaughtExceptionHandler;
        this.mOomReservation = new byte[4096];
    }

    public static void A02() {
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable th) {
            Log.e("ExceptionHandlerManager", "Error during exception handling", th);
        }
        try {
            System.exit(10);
        } catch (Throwable th2) {
            Log.e("ExceptionHandlerManager", "Error during exception handling", th2);
        }
        while (true) {
        }
    }

    public static void A04(Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        int i = length + 1;
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i];
        System.arraycopy(stackTrace, 0, stackTraceElementArr, 0, length);
        stackTraceElementArr[i - 1] = new StackTraceElement("Z", "init", (C07C.A04 == null || (r0 = C07C.A04.A02) == null) ? "unknown" : "unknown", -1);
        th.setStackTrace(stackTraceElementArr);
    }
}
