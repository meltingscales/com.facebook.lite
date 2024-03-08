package X;

import java.util.HashMap;
import java.util.Map;

/* renamed from: X.0AP  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0AP implements C07P {
    public static final Object A03 = new Object();
    public static volatile C0AP A04;
    public final Map A02 = AnonymousClass000.A0F();
    public final Map A01 = AnonymousClass000.A0F();
    public final Map A00 = AnonymousClass000.A0F();

    public static C0AP A00() {
        if (A04 == null) {
            synchronized (A03) {
                if (A04 == null) {
                    A04 = new C0AP();
                }
            }
        }
        return A04;
    }

    private void A01(Throwable th, Map map) {
        HashMap hashMap;
        String A9J;
        Object obj = A03;
        synchronized (obj) {
            hashMap = new HashMap(map);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            Object key = entry.getKey();
            try {
                A9J = ((InterfaceC011604x) entry.getValue()).A9J(th);
            } catch (Throwable th2) {
                C015006s.A0B("lacrima", "Failed to apply lazy supplier: %s", th2);
            }
            if (A9J == null) {
                synchronized (obj) {
                    try {
                        this.A02.remove(key);
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                        break;
                    }
                }
            } else {
                synchronized (obj) {
                    try {
                        this.A02.put(key, A9J);
                    } catch (Throwable th4) {
                        th = th4;
                        throw th;
                        break;
                        break;
                    }
                }
            }
        }
    }

    @Override // X.C07P
    public final Integer ACC() {
        return AnonymousClass050.A06;
    }

    @Override // X.C07P
    public final void AV8(C006902u c006902u, EnumC006102m enumC006102m) {
        HashMap hashMap;
        Throwable th;
        if (enumC006102m != EnumC006102m.CRITICAL_REPORT && (th = c006902u.A02) != null) {
            A01(th, this.A01);
        }
        A01(c006902u.A02, this.A00);
        synchronized (A03) {
            hashMap = new HashMap(this.A02);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            c006902u.A06((String) entry.getKey(), (String) entry.getValue());
        }
    }
}
