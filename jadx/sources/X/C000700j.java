package X;

import android.content.Context;
import android.os.SystemClock;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* renamed from: X.00j  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C000700j {
    public final AnonymousClass064 A00;
    public final InterfaceC000400g A01;
    public final Set A02 = new HashSet();
    public final Context A03;
    public final InterfaceC000200e A04;
    public final InterfaceC000500h A05;
    public final InterfaceC000300f A06;

    public final void A00(String str) {
        Set set = this.A02;
        if (!set.contains(str)) {
            C000900l AY3 = this.A06.AY3(this.A05, str);
            Iterator it = new ArrayList(AY3.A04).iterator();
            while (it.hasNext()) {
                A00((String) it.next());
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            synchronized (this) {
                File file = AY3.A00;
                if (file != null) {
                    this.A00.A23(file, AY3.A02);
                }
                if (AY3.A01 != null) {
                    this.A01.AJH(AY3);
                }
                set.add(AY3.A03);
            }
            this.A04.AKM(str, SystemClock.uptimeMillis() - uptimeMillis);
        }
    }

    public C000700j(Context context, AnonymousClass064 anonymousClass064, InterfaceC000200e interfaceC000200e, InterfaceC000500h interfaceC000500h, InterfaceC000300f interfaceC000300f, InterfaceC000400g interfaceC000400g) {
        this.A03 = context;
        this.A04 = interfaceC000200e;
        this.A06 = interfaceC000300f;
        this.A05 = interfaceC000500h;
        this.A01 = interfaceC000400g;
        this.A00 = anonymousClass064;
    }
}
