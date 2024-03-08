package X;

import android.app.ActivityManager;
import android.app.Application;
import android.os.Handler;
import android.os.Looper;

/* renamed from: X.00O  reason: invalid class name */
/* loaded from: classes.dex */
public final class C00O implements InterfaceC019008p {
    public static C00U A09;
    public static C00S A0A;
    public static volatile boolean A0B;
    public int A00 = 0;
    public boolean A01;
    public boolean A02;
    public final C03K A03;
    public final C07R A04;
    public final C00P A05;
    public final C09B A06;
    public final C00N A07;
    public final String A08;

    public static void A00() {
        C00Y c00y;
        C00U c00u = A09;
        if (c00u != null) {
            C00W c00w = ((C00V) c00u).A05;
            synchronized (c00w) {
                if (c00w.A02 != AnonymousClass050.A00 && (c00y = c00w.A01) != null) {
                    Object obj = c00y.A05;
                    synchronized (obj) {
                        c00y.A01 = true;
                        obj.notifyAll();
                    }
                }
            }
        }
    }

    public static void A01() {
        C00Y c00y;
        C00U c00u = A09;
        if (c00u != null) {
            C00W c00w = ((C00V) c00u).A05;
            synchronized (c00w) {
                if (c00w.A02 != AnonymousClass050.A00 && (c00y = c00w.A01) != null) {
                    Object obj = c00y.A05;
                    synchronized (obj) {
                        c00y.A01 = false;
                        obj.notifyAll();
                    }
                }
            }
        }
    }

    @Override // X.InterfaceC019008p
    public final /* synthetic */ AnonymousClass034 ABM() {
        return null;
    }

    @Override // X.InterfaceC019008p
    public final EnumC019108q ACB() {
        return EnumC019108q.A03;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [X.00X] */
    @Override // X.InterfaceC019008p
    public final void start() {
        C00V c00v;
        C00Y c00y;
        C00S c00s = new C00S(this);
        A0A = c00s;
        final C00N c00n = this.A07;
        String str = this.A08;
        C00P c00p = this.A05;
        Application application = c00n.A01;
        application.getDir("traces", 0).getPath();
        C00T c00t = new C00T(application, new Handler(Looper.getMainLooper()), c00s, c00p, str);
        int i = c00n.A00;
        synchronized (C00V.class) {
            c00v = C00V.A07;
            if (c00v == null) {
                c00v = new C00V(c00t, i);
                C00V.A07 = c00v;
            }
        }
        ((C00U) c00v).A01 = new Object() { // from class: X.00X
        };
        A09 = c00v;
        this.A02 = true;
        C015006s.A0J("lacrima", "Start AnrDetector... %s", c00v.getClass().getName());
        C00V c00v2 = (C00V) A09;
        synchronized (c00v2) {
            if (c00v2.A00 <= 0) {
                c00v2.A00 = -1L;
            }
            if (c00v2.A02) {
                c00v2.A02 = false;
                C00W c00w = c00v2.A05;
                C015006s.A0J("ProcessAnrErrorMonitor", "startMonitoring with delay: %d", 4000L);
                ActivityManager activityManager = (ActivityManager) c00w.A05.getSystemService("activity");
                synchronized (c00w) {
                    C00Y c00y2 = c00w.A01;
                    if (c00y2 != null && c00y2.A07 == null) {
                        C00Y c00y3 = c00w.A01;
                        Object obj = c00y3.A05;
                        synchronized (obj) {
                            try {
                                c00y3.A07 = c00v2;
                                obj.notifyAll();
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                    } else {
                        if (c00w.A02 != AnonymousClass050.A00 && (c00y = c00w.A01) != null) {
                            Object obj2 = c00y.A05;
                            synchronized (obj2) {
                                try {
                                    c00y.A02 = true;
                                    obj2.notifyAll();
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            }
                        }
                        long j = c00w.A00 + 1;
                        c00w.A00 = j;
                        C00Y c00y4 = new C00Y(activityManager, c00w, c00v2, j);
                        c00w.A01 = c00y4;
                        c00w.A02 = AnonymousClass050.A01;
                        c00y4.start();
                    }
                }
            }
        }
        C06T.A03(new C03T() { // from class: X.00Z
            @Override // X.C03T
            public final int AGf(InterfaceC010804m interfaceC010804m, Thread thread, Throwable th3) {
                C00O.A00();
                return 0;
            }
        }, 100);
    }

    public C00O(C03K c03k, C07R c07r, C00N c00n, C09B c09b, String str, C0BP c0bp, C0BP c0bp2, C0BP c0bp3) {
        this.A06 = c09b;
        this.A04 = c07r;
        this.A07 = c00n;
        this.A08 = str;
        this.A03 = c03k;
        this.A05 = new C00P(c09b, c0bp, c0bp2, c0bp3);
    }
}
