package X;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* renamed from: X.01b  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC002401b extends AbstractC002301a {
    public static final Object A05(List list) {
        C08H.A04(list, 0);
        if (!list.isEmpty()) {
            return list.get(0);
        }
        throw new NoSuchElementException("List is empty.");
    }

    public static final String A06(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Iterable iterable, InterfaceC002501c interfaceC002501c) {
        C08H.A04(iterable, 0);
        StringBuilder sb = new StringBuilder();
        A0A(sb, charSequence, charSequence2, charSequence3, iterable, interfaceC002501c);
        String obj = sb.toString();
        C08H.A01(obj);
        return obj;
    }

    public static final List A08(Iterable iterable) {
        Object obj;
        C08H.A04(iterable, 0);
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    return new ArrayList(collection);
                }
                if (iterable instanceof List) {
                    obj = ((List) iterable).get(0);
                } else {
                    obj = iterable.iterator().next();
                }
                List singletonList = Collections.singletonList(obj);
                C08H.A01(singletonList);
                return singletonList;
            }
            return C01H.A00;
        }
        C08H.A04(iterable, 0);
        ArrayList arrayList = new ArrayList();
        A0B(iterable, arrayList);
        int size2 = arrayList.size();
        if (size2 != 0) {
            if (size2 != 1) {
                return arrayList;
            }
            obj = arrayList.get(0);
            List singletonList2 = Collections.singletonList(obj);
            C08H.A01(singletonList2);
            return singletonList2;
        }
        return C01H.A00;
    }

    public static final Set A09(Iterable iterable) {
        Iterator it;
        Object obj;
        C08H.A04(iterable, 0);
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC010504h.A00(collection.size()));
                    A0B(iterable, linkedHashSet);
                    return linkedHashSet;
                } else if (!(iterable instanceof List)) {
                    it = iterable.iterator();
                    obj = it.next();
                } else {
                    obj = ((List) iterable).get(0);
                }
            }
            return AnonymousClass027.A00;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        A0B(iterable, linkedHashSet2);
        int size2 = linkedHashSet2.size();
        if (size2 != 0) {
            if (size2 != 1) {
                return linkedHashSet2;
            }
            it = linkedHashSet2.iterator();
            obj = it.next();
        }
        return AnonymousClass027.A00;
        Set singleton = Collections.singleton(obj);
        C08H.A01(singleton);
        return singleton;
    }

    public static final void A0A(Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Iterable iterable, InterfaceC002501c interfaceC002501c) {
        C08H.A04(iterable, 0);
        appendable.append(charSequence2);
        int i = 0;
        for (Object obj : iterable) {
            i++;
            if (i > 1) {
                appendable.append(charSequence);
            }
            if (interfaceC002501c != null) {
                obj = interfaceC002501c.AHX(obj);
            } else if (obj != null && !(obj instanceof CharSequence)) {
                if (obj instanceof Character) {
                    appendable.append(((Character) obj).charValue());
                } else {
                    obj = String.valueOf(obj);
                }
            }
            appendable.append((CharSequence) obj);
        }
        appendable.append(charSequence3);
    }

    public static final void A0B(Iterable iterable, Collection collection) {
        C08H.A04(iterable, 0);
        for (Object obj : iterable) {
            collection.add(obj);
        }
    }

    public static final int[] A0D(Collection collection) {
        C08H.A04(collection, 0);
        int[] iArr = new int[collection.size()];
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Number) it.next()).intValue();
            i++;
        }
        return iArr;
    }

    public static final ArrayList A07(Iterable iterable, Collection collection) {
        if (iterable instanceof Collection) {
            Collection collection2 = (Collection) iterable;
            ArrayList arrayList = new ArrayList(collection.size() + collection2.size());
            arrayList.addAll(collection);
            arrayList.addAll(collection2);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(collection);
        C01Y.A04(iterable, arrayList2);
        return arrayList2;
    }

    public static final boolean A0C(Iterable iterable, Object obj) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        if (iterable instanceof List) {
            if (((List) iterable).indexOf(obj) >= 0) {
                return true;
            }
            return false;
        }
        int i = 0;
        for (Object obj2 : iterable) {
            if (i < 0) {
                C01T.A00();
                throw new RuntimeException("Redex: Unreachable code after no-return invoke");
            } else if (C08H.A09(obj, obj2)) {
                return true;
            } else {
                i++;
            }
        }
        return false;
    }
}
