package X;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* renamed from: X.01A  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C01A<E> extends AnonymousClass019<E> implements List<E>, AnonymousClass018 {
    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public abstract Object get(int i);

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof List) {
                Collection collection = (Collection) obj;
                C08H.A04(collection, 1);
                if (size() == collection.size()) {
                    Iterator<E> it = collection.iterator();
                    Iterator it2 = iterator();
                    while (it2.hasNext()) {
                        if (!C08H.A09(it2.next(), it.next())) {
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // X.AnonymousClass019, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new C07X(this);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        return new C05S(this, i);
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        return new C05A(this, i, i2);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int i;
        Iterator it = iterator();
        int i2 = 1;
        while (it.hasNext()) {
            Object next = it.next();
            int i3 = i2 * 31;
            if (next != null) {
                i = next.hashCode();
            } else {
                i = 0;
            }
            i2 = i3 + i;
        }
        return i2;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        Iterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (!C08H.A09(it.next(), obj)) {
                i++;
            } else {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        ListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (C08H.A09(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return new C05S(this, 0);
    }
}
