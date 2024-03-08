package X;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: X.07R  reason: invalid class name */
/* loaded from: classes.dex */
public final class C07R {
    public final AnonymousClass095 A00;
    public final C011905b A01;
    public final C09B A02;
    public final int A09;
    public final C019808y A0A;
    public volatile boolean A0B;
    public volatile boolean A0C;
    public final Map A07 = new HashMap(EnumC019108q.values().length, 1.0f);
    public final Object A03 = new Object();
    public final Map A06 = AnonymousClass000.A0F();
    public final Set A08 = new HashSet();
    public final Map A05 = AnonymousClass000.A0F();
    public final Map A04 = AnonymousClass000.A0F();

    public final void A05(C006902u c006902u, EnumC006102m enumC006102m, InterfaceC019008p interfaceC019008p) {
        A07(c006902u, enumC006102m, interfaceC019008p, interfaceC019008p.ABM(), 0);
    }

    private List A01(EnumC006102m enumC006102m, InterfaceC019008p interfaceC019008p, Map map) {
        List list;
        synchronized (this.A03) {
            Map map2 = (Map) map.get(enumC006102m);
            if (map2 == null) {
                map2 = AnonymousClass000.A0F();
                map.put(enumC006102m, map2);
            }
            list = (List) map2.get(interfaceC019008p);
            if (list == null) {
                list = AnonymousClass000.A0E();
                map2.put(interfaceC019008p, list);
            }
        }
        return list;
    }

    public final InterfaceC019008p A03(Class cls) {
        synchronized (this.A03) {
            for (InterfaceC019008p interfaceC019008p : this.A08) {
                if (cls.isInstance(interfaceC019008p)) {
                    return interfaceC019008p;
                }
            }
            return null;
        }
    }

    public final void A04(C07P c07p, EnumC006102m enumC006102m, InterfaceC019008p interfaceC019008p) {
        synchronized (this.A03) {
            Map map = this.A06;
            Map map2 = (Map) map.get(enumC006102m);
            if (map2 == null) {
                map2 = AnonymousClass000.A0F();
                map.put(enumC006102m, map2);
            }
            List list = (List) map2.get(interfaceC019008p);
            if (list == null) {
                list = AnonymousClass000.A0E();
                map2.put(interfaceC019008p, list);
            }
            list.add(c07p);
            this.A08.add(interfaceC019008p);
        }
    }

    public final void A06(final C006902u c006902u, final EnumC006102m enumC006102m, final InterfaceC019008p interfaceC019008p) {
        C017307u.A04.execute(new Runnable() { // from class: X.02v
            public static final String __redex_internal_original_name = "CollectorManager$$ExternalSyntheticLambda1";

            @Override // java.lang.Runnable
            public final void run() {
                C07R c07r = this;
                InterfaceC019008p interfaceC019008p2 = interfaceC019008p;
                EnumC006102m enumC006102m2 = enumC006102m;
                C006902u c006902u2 = c006902u;
                try {
                    c07r.A0B(enumC006102m2, interfaceC019008p2);
                    c07r.A07(c006902u2, enumC006102m2, interfaceC019008p2, interfaceC019008p2.ABM(), 0);
                    c07r.A0A(enumC006102m2, interfaceC019008p2);
                } catch (Throwable th) {
                    AbstractC019608w.A00();
                    C015006s.A0G("lacrima", "Failed to apply collectors: %s", th, interfaceC019008p2.ACB());
                }
            }
        });
    }

    public final void A08(C03K c03k, EnumC006102m enumC006102m, InterfaceC019008p interfaceC019008p) {
        synchronized (this.A03) {
            A01(enumC006102m, interfaceC019008p, this.A04).add(c03k);
        }
    }

    public final void A09(C03K c03k, EnumC006102m enumC006102m, InterfaceC019008p interfaceC019008p) {
        synchronized (this.A03) {
            A01(enumC006102m, interfaceC019008p, this.A05).add(c03k);
        }
    }

    public final void A0A(EnumC006102m enumC006102m, InterfaceC019008p interfaceC019008p) {
        A02(enumC006102m, interfaceC019008p, A01(enumC006102m, interfaceC019008p, this.A04));
    }

    public final void A0B(EnumC006102m enumC006102m, InterfaceC019008p interfaceC019008p) {
        A02(enumC006102m, interfaceC019008p, A01(enumC006102m, interfaceC019008p, this.A05));
    }

    public C07R(AnonymousClass095 anonymousClass095, C011905b c011905b, C09B c09b, int i, boolean z) {
        this.A02 = c09b;
        this.A01 = c011905b;
        this.A00 = anonymousClass095;
        if (i > 0 && i < 64) {
            i = 64;
        }
        this.A09 = i;
        this.A0A = new C019808y(i, z);
    }

    public static String A00(EnumC006102m enumC006102m, EnumC019108q enumC019108q, String str, int i) {
        String A0A;
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append(enumC006102m.A00);
        String str2 = "";
        if (i == 0) {
            A0A = "";
        } else {
            StringBuilder A0C2 = AnonymousClass000.A0C();
            A0C2.append(i);
            A0A = AnonymousClass000.A0A("_", A0C2);
        }
        A0C.append(A0A);
        if (enumC019108q.A01) {
            str2 = "suppl_";
        }
        A0C.append(str2);
        return AnonymousClass000.A09(enumC019108q.A00, str, A0C);
    }

    public static void A02(EnumC006102m enumC006102m, InterfaceC019008p interfaceC019008p, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((C03K) it.next()).APi(enumC006102m, interfaceC019008p);
            } catch (Throwable th) {
                AbstractC019608w.A00();
                C015006s.A0B("lacrima", "onNotify failed...", th);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A07(X.C006902u r22, X.EnumC006102m r23, X.InterfaceC019008p r24, X.AnonymousClass034 r25, int r26) {
        /*
            Method dump skipped, instructions count: 680
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C07R.A07(X.02u, X.02m, X.08p, X.034, int):void");
    }
}
