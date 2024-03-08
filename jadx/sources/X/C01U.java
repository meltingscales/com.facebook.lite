package X;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: X.01U  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C01U extends C01T {
    public static final int A02(Iterable iterable, int i) {
        C08H.A04(iterable, 0);
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return i;
    }

    public static final ArrayList A03(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            C01Y.A04((Iterable) it.next(), arrayList);
        }
        return arrayList;
    }
}
