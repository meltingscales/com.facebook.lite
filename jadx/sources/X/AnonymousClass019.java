package X;

import java.util.Collection;
import java.util.Iterator;

/* renamed from: X.019  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass019<E> implements Collection<E>, AnonymousClass018 {
    public abstract int A00();

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        C08H.A04(collection, 0);
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public abstract Iterator iterator();

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        C08H.A04(objArr, 0);
        return AbstractC010104d.A01(this, objArr);
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        if (!(this instanceof Collection) || !isEmpty()) {
            Iterator it = iterator();
            while (it.hasNext()) {
                if (C08H.A09(it.next(), obj)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String toString() {
        return AbstractC002401b.A06(", ", "[", "]", this, new C05B(this));
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        if (size() != 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return A00();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return AbstractC010104d.A00(this);
    }
}
