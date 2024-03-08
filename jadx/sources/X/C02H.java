package X;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* renamed from: X.02H  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C02H {
    public static C002901g A00() {
        Set<Object> set = AbstractC003701o.A1I;
        Set set2 = C02I.A00;
        HashMap hashMap = new HashMap();
        for (Object obj : set) {
            hashMap.put(obj, Collections.unmodifiableSet(set2));
        }
        return new C002901g(Collections.unmodifiableMap(hashMap));
    }

    public static C002901g A01(Set set) {
        HashMap hashMap = new HashMap();
        for (Object obj : set) {
            hashMap.put(obj, Collections.unmodifiableSet(new HashSet(Collections.singletonList("*|all_packages|*"))));
        }
        return new C002901g(Collections.unmodifiableMap(hashMap));
    }
}
