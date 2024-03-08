package X;

import java.util.Iterator;

/* renamed from: X.07S  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C07S implements Iterator, AnonymousClass018 {
    public abstract byte A00();

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return Byte.valueOf(A00());
    }
}
