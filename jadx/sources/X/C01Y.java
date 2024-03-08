package X;

import java.util.Collection;

/* renamed from: X.01Y  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C01Y extends C01X {
    public static final void A04(Iterable iterable, Collection collection) {
        C08H.A04(iterable, 1);
        if (iterable instanceof Collection) {
            collection.addAll((Collection) iterable);
            return;
        }
        for (Object obj : iterable) {
            collection.add(obj);
        }
    }
}
