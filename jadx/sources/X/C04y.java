package X;

import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.AbstractMutableCollection;

/* renamed from: X.04y  reason: invalid class name */
/* loaded from: classes.dex */
public final class C04y<V> extends AbstractMutableCollection<V> implements Collection<V>, C05N {
    public final C003101i A00;

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        C08H.A04(collection, 0);
        this.A00.A05();
        return super.removeAll(collection);
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        C08H.A04(collection, 0);
        this.A00.A05();
        return super.retainAll(collection);
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.A00.clear();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.A00.containsValue(obj);
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.A00.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new C06x(this.A00);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        C003101i c003101i = this.A00;
        c003101i.A05();
        int i = c003101i.A01;
        while (true) {
            i--;
            if (i >= 0) {
                if (c003101i.A0A[i] >= 0) {
                    Object[] objArr = c003101i.A0C;
                    C08H.A03(objArr);
                    if (C08H.A09(objArr[i], obj)) {
                        C003101i.A03(c003101i, i);
                        return true;
                    }
                }
            } else {
                return false;
            }
        }
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return this.A00.size();
    }

    public C04y(C003101i c003101i) {
        this.A00 = c003101i;
    }

    public C04y() {
    }
}
