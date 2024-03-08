package X;

import android.os.Build;
import com.facebook.systrace.TraceDirect;
import java.util.List;

/* renamed from: X.00E  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C00E {
    public static final C00F A00 = new C00F();
    public static volatile long A01;

    static {
        A01(false);
        if (Build.VERSION.SDK_INT < 30) {
            Runnable runnable = new Runnable() { // from class: X.00G
                public static final String __redex_internal_original_name = "TraceConfig$1";

                @Override // java.lang.Runnable
                public final void run() {
                    C00E.A01(true);
                }
            };
            if (AbstractC013305s.A06) {
                AbstractC013305s.A01(AbstractC013305s.A00, runnable);
            }
        }
    }

    public static void A00(C00I c00i) {
        C00F c00f = A00;
        synchronized (c00f.A01) {
            c00f.A02.add(c00i);
            if (c00f.A00) {
                c00i.ATZ();
            }
        }
    }

    public static void A01(boolean z) {
        boolean z2;
        long j;
        boolean z3;
        String str;
        long j2 = A01;
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            z2 = AnonymousClass001.A00();
        } else if (i >= 18) {
            z2 = AbstractC003601n.A00();
        } else if (i >= 16) {
            z2 = C09A.A00();
        } else {
            z2 = false;
        }
        long A002 = AbstractC013305s.A00("debug.fbsystrace.tags");
        if (z2 && A002 != 0) {
            j = A002 | 1;
        } else {
            j = 0;
        }
        boolean z4 = true;
        if ((A01 == 0 && j != 0) || (j == 0 && A01 != 0)) {
            z3 = true;
        } else {
            z3 = false;
        }
        A01 = j;
        Object[] objArr = new Object[4];
        if (z) {
            str = "sysprop";
        } else {
            str = "other";
        }
        objArr[0] = str;
        objArr[1] = Boolean.valueOf(z3);
        objArr[2] = Long.valueOf(j2);
        objArr[3] = Long.valueOf(A01);
        String.format("Systrace trace config update - source:%s changed:%b enabledTags:0x%x->0x%x", objArr);
        if (z3) {
            TraceDirect.setEnabledTags(j);
            if (!z) {
                z4 = false;
            }
            int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            final C00F c00f = A00;
            if (i2 > 0) {
                if (!z4) {
                    c00f.A00();
                    return;
                }
                synchronized (c00f.A01) {
                    final long lastModified = C00F.A03.lastModified();
                    Thread thread = new Thread(new Runnable() { // from class: X.07G
                        public static final String __redex_internal_original_name = "TraceListenerNotifier$1";

                        @Override // java.lang.Runnable
                        public final void run() {
                            C00F c00f2 = C00F.this;
                            synchronized (c00f2.A01) {
                                if (Build.VERSION.SDK_INT >= 23) {
                                    try {
                                        Thread.sleep(100L);
                                    } catch (InterruptedException unused) {
                                        Thread.currentThread().interrupt();
                                    }
                                } else {
                                    while (C00F.A03.lastModified() == lastModified) {
                                    }
                                }
                                c00f2.A00();
                            }
                        }
                    }, "fbsystrace notification thread");
                    thread.setPriority(10);
                    thread.start();
                }
                return;
            }
            synchronized (c00f.A01) {
                c00f.A00 = false;
                int i3 = 0;
                while (true) {
                    List list = c00f.A02;
                    if (i3 < list.size()) {
                        ((C00I) list.get(i3)).ATb();
                        i3++;
                    }
                }
            }
        }
    }
}
