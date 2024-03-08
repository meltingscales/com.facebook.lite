package X;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.builders.AbstractMapBuilderEntrySet;

/* renamed from: X.04u  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C011404u<K, V> extends AbstractMapBuilderEntrySet<Map.Entry<K, V>, K, V> {
    public final C003101i A00;

    public final boolean containsAll(Collection collection) {
        C08H.A04(collection, 0);
        return this.A00.A06(collection);
    }

    public final boolean removeAll(Collection collection) {
        C08H.A04(collection, 0);
        this.A00.A05();
        return super.removeAll(collection);
    }

    public final boolean retainAll(Collection collection) {
        C08H.A04(collection, 0);
        this.A00.A05();
        return super.retainAll(collection);
    }

    public final int A00() {
        return this.A00.size();
    }

    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    public final void clear() {
        this.A00.clear();
    }

    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            C08H.A04(entry, 0);
            C08H.A04(entry, 0);
            C003101i c003101i = this.A00;
            C08H.A04(entry, 0);
            int A00 = C003101i.A00(entry.getKey(), c003101i);
            if (A00 >= 0) {
                Object[] objArr = c003101i.A0C;
                C08H.A03(objArr);
                return C08H.A09(objArr[A00], entry.getValue());
            }
            return false;
        }
        return false;
    }

    public final boolean isEmpty() {
        return this.A00.isEmpty();
    }

    public final Iterator iterator() {
        return new AnonymousClass079(this.A00);
    }

    public final /* bridge */ boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        C08H.A04(entry, 0);
        C003101i c003101i = this.A00;
        C08H.A04(entry, 0);
        c003101i.A05();
        int A00 = C003101i.A00(entry.getKey(), c003101i);
        if (A00 < 0) {
            return false;
        }
        Object[] objArr = c003101i.A0C;
        C08H.A03(objArr);
        if (!C08H.A09(objArr[A00], entry.getValue())) {
            return false;
        }
        C003101i.A03(c003101i, A00);
        return true;
    }

    public C011404u(C003101i c003101i) {
        this.A00 = c003101i;
    }

    public C011404u() {
    }
}
