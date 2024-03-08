package X;

import java.util.AbstractSet;
import java.util.Set;
import kotlin.jvm.internal.markers.KMutableSet;

/* renamed from: X.051  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass051<E> extends AbstractSet<E> implements Set<E>, KMutableSet {
    public abstract int A00();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean add(Object obj);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return A00();
    }
}
