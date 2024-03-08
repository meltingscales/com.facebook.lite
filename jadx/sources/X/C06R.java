package X;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: X.06R  reason: invalid class name */
/* loaded from: classes.dex */
public final class C06R implements Iterator, AnonymousClass018 {
    public int A00;
    public final Object[] A01;

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.A00 >= this.A01.length) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            Object[] objArr = this.A01;
            int i = this.A00;
            this.A00 = i + 1;
            return objArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.A00--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    public C06R(Object[] objArr) {
        this.A01 = objArr;
    }
}
