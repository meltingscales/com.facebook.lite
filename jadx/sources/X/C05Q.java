package X;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* renamed from: X.05Q  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C05Q extends AbstractC010504h {
    public static final LinkedHashMap A03(C01I... c01iArr) {
        int length = c01iArr.length;
        LinkedHashMap linkedHashMap = new LinkedHashMap(AbstractC010504h.A00(length));
        int i = 0;
        do {
            C01I c01i = c01iArr[i];
            linkedHashMap.put(c01i.A00, c01i.A01);
            i++;
        } while (i < length);
        return linkedHashMap;
    }

    public static final LinkedHashMap A04(C01I... c01iArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(AbstractC010504h.A00(c01iArr.length));
        for (C01I c01i : c01iArr) {
            linkedHashMap.put(c01i.A00, c01i.A01);
        }
        return linkedHashMap;
    }

    public static final Map A05(Iterable iterable) {
        Object next;
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap(AbstractC010504h.A00(collection.size()));
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        C01I c01i = (C01I) it.next();
                        linkedHashMap.put(c01i.A00, c01i.A01);
                    }
                    return linkedHashMap;
                }
                if (iterable instanceof List) {
                    next = ((List) iterable).get(0);
                } else {
                    next = iterable.iterator().next();
                }
                return AbstractC010504h.A01((C01I) next);
            }
            return new AnonymousClass026();
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            C01I c01i2 = (C01I) it2.next();
            linkedHashMap2.put(c01i2.A00, c01i2.A01);
        }
        return A06(linkedHashMap2);
    }

    public static final Map A07(Map map) {
        C08H.A04(map, 0);
        int size = map.size();
        if (size != 0) {
            if (size != 1) {
                return new LinkedHashMap(map);
            }
            Map.Entry entry = (Map.Entry) AnonymousClass000.A0G(map).next();
            Map singletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
            C08H.A01(singletonMap);
            return singletonMap;
        }
        return new AnonymousClass026();
    }

    public static final Map A06(Map map) {
        int size = map.size();
        if (size != 0) {
            if (size == 1) {
                Map.Entry entry = (Map.Entry) AnonymousClass000.A0G(map).next();
                Map singletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
                C08H.A01(singletonMap);
                return singletonMap;
            }
            return map;
        }
        return new AnonymousClass026();
    }
}
