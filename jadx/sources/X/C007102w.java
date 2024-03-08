package X;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* renamed from: X.02w  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C007102w implements InterfaceC019008p {
    public static C007102w A03;
    public final C07R A00;
    public final C09B A01;
    public final List A02 = new ArrayList();

    public final void A00(String str, String str2) {
        String str3 = "";
        str = (str == null || str.equals("")) ? "empty" : "empty";
        str2 = (str2 == null || str2.equals("")) ? "empty" : "empty";
        C05J c05j = this.A01.A04;
        AbstractC005602h.A02(c05j, "Did you call SessionManager.init()?");
        Object obj = c05j.A02;
        synchronized (obj) {
            c05j.A03(str, 3, 80);
            C05J.A00(c05j);
        }
        synchronized (obj) {
            if (str2.length() < 80) {
                c05j.A03(str2, 85, 80);
            } else {
                String substring = str2.substring(0, 80);
                str3 = str2.substring(80);
                c05j.A03(substring, 85, 80);
            }
            c05j.A03(str3, 622, 127);
            String str4 = c05j.A00;
            if (str4 != null) {
                c05j.A03(str4, 1778, 207);
            }
            C05J.A00(c05j);
            c05j.A00 = str2;
        }
        C021009m c021009m = C07C.A04;
        if (c021009m != null) {
            c021009m.A01 = str2;
            SystemClock.uptimeMillis();
        }
        synchronized (C07C.class) {
            if (!str2.equals(C07C.A05)) {
                C07C.A05 = str2;
                final HashSet hashSet = new HashSet(C07C.A01);
                C07C.A03.execute(new Runnable() { // from class: X.017
                    public static final String __redex_internal_original_name = "GlobalAppState$$ExternalSyntheticLambda2";

                    @Override // java.lang.Runnable
                    public final void run() {
                        Iterator it = hashSet.iterator();
                        if (it.hasNext()) {
                            it.next();
                            throw new NullPointerException("onEndpointChanged");
                        }
                    }
                });
            }
        }
        C006902u c006902u = new C006902u(null);
        c006902u.A03(C07M.A1n, Long.valueOf(SystemClock.uptimeMillis()));
        C07R c07r = this.A00;
        c07r.A06(c006902u, EnumC006102m.CRITICAL_REPORT, this);
        c07r.A06(c006902u, EnumC006102m.LARGE_REPORT, this);
        Iterator it = this.A02.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NullPointerException("onEndpointChanged");
        }
    }

    @Override // X.InterfaceC019008p
    public final /* synthetic */ AnonymousClass034 ABM() {
        return null;
    }

    @Override // X.InterfaceC019008p
    public final EnumC019108q ACB() {
        return EnumC019108q.A09;
    }

    @Override // X.InterfaceC019008p
    public final void start() {
        A03 = this;
    }

    public C007102w(C07R c07r, C09B c09b) {
        this.A01 = c09b;
        this.A00 = c07r;
        synchronized (C07C.class) {
            C07C.A02.add(this);
        }
    }
}
