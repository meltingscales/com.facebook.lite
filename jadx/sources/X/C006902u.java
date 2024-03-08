package X;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

/* renamed from: X.02u  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C006902u {
    public int A00;
    public C019808y A01;
    public Throwable A02;
    public final Map A03;
    public final Map A04;
    public final Map A05;
    public final Map A06;
    public final Map A07;
    public final Map A08;
    public final Map A09;

    public final void A02(C012805m c012805m, int i) {
        A03(c012805m, Long.valueOf(i));
    }

    public final void A01(C012905n c012905n, boolean z) {
        this.A03.put(c012905n, Boolean.valueOf(z));
    }

    public final void A03(C012805m c012805m, Long l) {
        Map map = this.A08;
        if (l == null) {
            map.remove(c012805m);
        } else {
            map.put(c012805m, l);
        }
    }

    public final void A04(C012705l c012705l, String str) {
        C019808y c019808y;
        int length;
        int i = this.A00;
        if (i > 0 && (c019808y = this.A01) != null && str != null && (length = str.length()) > i) {
            String str2 = c012705l.A00;
            HashMap hashMap = new HashMap();
            hashMap.put("collector", AbstractC007202x.A00(c019808y.A00));
            hashMap.put("key", str2);
            hashMap.put("length", String.valueOf(length));
            AbstractC019608w.A00();
            C015006s.A0I("lacrima", "PropertyValueTooLarge - %s", hashMap.toString());
            if (c019808y.A02) {
                str = str.substring(0, c019808y.A01);
            }
        }
        Map map = this.A09;
        if (str == null) {
            str = "unknown";
        }
        map.put(c012705l, str);
    }

    public final void A05(C07N c07n, EnumC006102m enumC006102m, File file) {
        Map map;
        StringBuilder sb;
        String str;
        String obj;
        if (enumC006102m == EnumC006102m.CRITICAL_REPORT) {
            map = this.A04;
            str = c07n.A01;
            if (str.equals("__")) {
                obj = c07n.A00;
                map.put(obj, file.getPath());
            }
            sb = new StringBuilder();
        } else {
            map = this.A06;
            sb = new StringBuilder();
            str = c07n.A01;
        }
        sb.append(str);
        sb.append(c07n.A00);
        obj = sb.toString();
        map.put(obj, file.getPath());
    }

    @Deprecated
    public final void A06(String str, String str2) {
        C019808y c019808y;
        int length;
        int i = this.A00;
        if (i > 0 && (c019808y = this.A01) != null && str2 != null && (length = str2.length()) > i) {
            HashMap hashMap = new HashMap();
            hashMap.put("collector", AbstractC007202x.A00(c019808y.A00));
            hashMap.put("key", str);
            hashMap.put("length", String.valueOf(length));
            AbstractC019608w.A00();
            C015006s.A0I("lacrima", "PropertyValueTooLarge - %s", hashMap.toString());
            if (c019808y.A02) {
                str2 = str2.substring(0, c019808y.A01);
            }
        }
        Map map = this.A05;
        if (str2 == null) {
            str2 = "unknown";
        }
        map.put(str, str2);
    }

    public final void A07(Properties properties) {
        properties.putAll(this.A05);
        for (Map.Entry entry : this.A09.entrySet()) {
            properties.put(((C07H) entry.getKey()).A00, entry.getValue());
        }
        for (Map.Entry entry2 : this.A08.entrySet()) {
            properties.put(((C07H) entry2.getKey()).A00, entry2.getValue().toString());
        }
        for (Map.Entry entry3 : this.A03.entrySet()) {
            properties.put(((C07H) entry3.getKey()).A00, entry3.getValue().toString());
        }
        Iterator it = this.A07.entrySet().iterator();
        if (it.hasNext()) {
            ((Map.Entry) it.next()).getKey();
            throw new NullPointerException("getName");
        }
    }

    public C006902u(Throwable th) {
        this.A05 = new HashMap();
        this.A09 = new HashMap();
        this.A08 = new HashMap();
        this.A03 = new HashMap();
        this.A07 = new HashMap();
        this.A04 = new HashMap();
        this.A06 = new HashMap();
        this.A02 = th;
    }

    public static void A00(C012805m c012805m, C006902u c006902u, long j) {
        c006902u.A03(c012805m, Long.valueOf(j));
    }

    public C006902u() {
        this(null);
    }
}
