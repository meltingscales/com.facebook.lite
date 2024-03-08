package X;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.markers.KMutableSet;

/* renamed from: X.04v  reason: invalid class name */
/* loaded from: classes.dex */
public final class C04v<E> extends AnonymousClass051<E> implements Set<E>, KMutableSet {
    public final C003101i A00;

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        C08H.A04(collection, 0);
        this.A00.A05();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        C08H.A04(collection, 0);
        this.A00.A05();
        return super.retainAll(collection);
    }

    @Override // X.AnonymousClass051
    public final int A00() {
        return this.A00.size();
    }

    @Override // X.AnonymousClass051, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.A00.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.A00.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.A00.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new AnonymousClass074(this.A00);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        C003101i c003101i = this.A00;
        c003101i.A05();
        int A00 = C003101i.A00(obj, c003101i);
        if (A00 < 0) {
            return false;
        }
        C003101i.A03(c003101i, A00);
        return true;
    }

    public C04v(C003101i c003101i) {
        this.A00 = c003101i;
    }
}
