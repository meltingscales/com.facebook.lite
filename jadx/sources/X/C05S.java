package X;

import java.util.ListIterator;
import java.util.NoSuchElementException;

/* renamed from: X.05S  reason: invalid class name */
/* loaded from: classes.dex */
public final class C05S extends C07X implements ListIterator, AnonymousClass018 {
    public final /* synthetic */ C01A A00;

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C05S(C01A c01a, int i) {
        super(c01a);
        this.A00 = c01a;
        int size = c01a.size();
        if (i >= 0 && i <= size) {
            super.A00 = i;
            return;
        }
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("index: ");
        A0C.append(i);
        throw new IndexOutOfBoundsException(AnonymousClass000.A0B(", size: ", A0C, size));
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        if (super.A00 <= 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return super.A00;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return super.A00 - 1;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            C01A c01a = this.A00;
            int i = super.A00 - 1;
            super.A00 = i;
            return c01a.get(i);
        }
        throw new NoSuchElementException();
    }
}
