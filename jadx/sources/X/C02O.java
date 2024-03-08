package X;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

/* renamed from: X.02O  reason: invalid class name */
/* loaded from: classes.dex */
public final class C02O implements C02N {
    public Iterator A00;
    public final Map A01;

    @Override // X.C02N
    public final void reset() {
        this.A00 = null;
    }

    @Override // X.C02N
    public final void A29(Properties properties) {
        this.A01.putAll(properties);
    }

    @Override // X.C02N
    public final boolean ACL(C02U c02u) {
        Iterator it = this.A00;
        if (it == null) {
            it = this.A01.entrySet().iterator();
            this.A00 = it;
        }
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) this.A00.next();
            c02u.A00 = entry.getKey().toString();
            c02u.A01 = entry.getValue().toString();
            return true;
        }
        return false;
    }

    public C02O(Properties properties) {
        this.A01 = properties;
    }

    @Override // X.C02N
    public final String[] ADT(List list) {
        String str;
        String[] strArr = new String[list.size()];
        for (int i = 0; i < list.size(); i++) {
            Object obj = this.A01.get(list.get(i));
            if (obj != null) {
                str = obj.toString();
            } else {
                str = null;
            }
            strArr[i] = str;
        }
        return strArr;
    }

    public C02O() {
        this.A01 = new Properties();
    }
}
