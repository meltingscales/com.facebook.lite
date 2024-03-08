package com.facebook.errorreporting.lacrima.detector.javacrash;

import X.AbstractC005602h;
import X.AbstractC019608w;
import X.AnonymousClass034;
import X.C006902u;
import X.C010604k;
import X.C011304t;
import X.C012805m;
import X.C015006s;
import X.C03T;
import X.C03c;
import X.C05J;
import X.C06T;
import X.C07F;
import X.C07M;
import X.C07R;
import X.C09B;
import X.C0BX;
import X.EnumC006102m;
import X.EnumC016407i;
import X.EnumC019108q;
import X.InterfaceC019008p;
import X.InterfaceC019208r;
import android.os.SystemClock;
import android.text.TextUtils;
import com.facebook.errorreporting.lacrima.detector.javacrash.JavaCrashDetector;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class JavaCrashDetector implements InterfaceC019008p {
    public static final InterfaceC019208r A05 = new InterfaceC019208r() { // from class: X.05f
        @Override // X.InterfaceC019208r
        public final boolean A1j(Thread thread, Throwable th) {
            return true;
        }
    };
    public C011304t A00;
    public InterfaceC019208r A01;
    public final C07R A02;
    public final InterfaceC019208r A03;
    public final C09B A04;
    public byte[] mOomReservation;

    public final void A00(Thread thread, Throwable th) {
        EnumC016407i enumC016407i;
        String A01;
        String valueOf;
        PrintWriter printWriter;
        this.mOomReservation = null;
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        C09B c09b = this.A04;
        C05J c05j = c09b.A04;
        AbstractC005602h.A02(c05j, "Did you call SessionManager.init()?");
        if (th instanceof C010604k) {
            enumC016407i = EnumC016407i.A08;
        } else {
            enumC016407i = EnumC016407i.A07;
        }
        c05j.A02(enumC016407i);
        boolean z = false;
        new C03c(c05j.A01.A01).A02();
        if (this.A03.A1j(thread, th)) {
            C006902u c006902u = new C006902u(th);
            try {
                c006902u.A02(C07M.A10, 1);
                C012805m c012805m = C07M.A33;
                Long valueOf2 = Long.valueOf(currentTimeMillis);
                c006902u.A03(c012805m, valueOf2);
                c006902u.A04(C07M.A4g, "exception");
                c006902u.A03(C07M.A1O, valueOf2);
                synchronized (C07F.class) {
                    if (C07F.A01 != null && (printWriter = C07F.A00) != null) {
                        th.printStackTrace(printWriter);
                        C07F.A00.close();
                        A01 = C07F.A01.toString();
                        C07F.A00 = null;
                        C07F.A01 = null;
                    } else {
                        A01 = C07F.A01(th);
                    }
                }
                String str = "No stack trace";
                if (A01.length() < 10 && TextUtils.isEmpty(A01.trim())) {
                    C015006s.A07("lacrima", "No stack trace");
                } else {
                    str = C07F.A00(A01, 20000);
                }
                c006902u.A04(C07M.A5x, str);
                c006902u.A04(C07M.A5z, th.getClass().getName());
                c006902u.A04(C07M.A60, th.getMessage());
                if (thread == null) {
                    valueOf = "unknown";
                } else {
                    valueOf = String.valueOf(thread.getName());
                }
                c006902u.A04(C07M.A61, valueOf);
                Throwable th2 = th;
                while (th2.getCause() != null) {
                    th2 = th2.getCause();
                }
                c006902u.A04(C07M.A5s, th2.getClass().getName());
                c006902u.A04(C07M.A5u, C07F.A01(th2));
                c006902u.A04(C07M.A5t, th2.getMessage());
                C006902u.A00(C07M.A2S, c006902u, SystemClock.uptimeMillis() - c09b.A01);
                while (th.getCause() != null) {
                    th = th.getCause();
                }
                z = th instanceof OutOfMemoryError;
            } catch (Throwable th3) {
                AbstractC019608w.A00();
                c006902u.A04(C07M.A5k, th3.getMessage());
            }
            C07R c07r = this.A02;
            EnumC006102m enumC006102m = EnumC006102m.CRITICAL_REPORT;
            c07r.A0B(enumC006102m, this);
            c07r.A05(c006902u, enumC006102m, this);
            c07r.A0B = true;
            if (!z) {
                c07r.A0A(enumC006102m, this);
            }
            EnumC006102m enumC006102m2 = EnumC006102m.LARGE_REPORT;
            c07r.A0B(enumC006102m2, this);
            c07r.A05(c006902u, enumC006102m2, this);
            c07r.A0C = true;
            if (z) {
                c07r.A0A(enumC006102m, this);
            }
            c07r.A0A(enumC006102m2, this);
        }
    }

    @Override // X.InterfaceC019008p
    public final /* synthetic */ AnonymousClass034 ABM() {
        return null;
    }

    @Override // X.InterfaceC019008p
    public final EnumC019108q ACB() {
        return EnumC019108q.A07;
    }

    public JavaCrashDetector(C07R c07r, C011304t c011304t, InterfaceC019208r interfaceC019208r, InterfaceC019208r interfaceC019208r2, C09B c09b) {
        this.A04 = c09b;
        this.A02 = c07r;
        this.A00 = c011304t;
        this.A01 = interfaceC019208r;
        this.A03 = interfaceC019208r2;
    }

    @Override // X.InterfaceC019008p
    public final void start() {
        if (C06T.A01() != null) {
            C06T.A03(new C03T() { // from class: X.03U
                @Override // X.C03T
                public final int AGf(InterfaceC010804m interfaceC010804m, Thread thread, Throwable th) {
                    JavaCrashDetector javaCrashDetector = JavaCrashDetector.this;
                    if (javaCrashDetector.A01.A1j(thread, th)) {
                        javaCrashDetector.A00(thread, th);
                        return 0;
                    }
                    return 0;
                }
            }, 100);
        } else {
            Thread.setDefaultUncaughtExceptionHandler(new C0BX(0, this, Thread.getDefaultUncaughtExceptionHandler()));
        }
        this.mOomReservation = new byte[65536];
    }
}
