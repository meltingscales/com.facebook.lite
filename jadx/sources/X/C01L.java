package X;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: X.01L  reason: invalid class name */
/* loaded from: classes.dex */
public final class C01L implements Iterator, AnonymousClass018 {
    public int A00;
    public boolean A01;
    public final int A02;
    public final int A03;

    public C01L(int i, int i2) {
        this.A03 = 1;
        this.A02 = i2;
        boolean z = i <= i2;
        this.A01 = z;
        this.A00 = z ? i : i2;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final int A00() {
        int i = this.A00;
        if (i == this.A02) {
            if (this.A01) {
                this.A01 = false;
                return i;
            }
            throw new NoSuchElementException();
        }
        this.A00 = this.A03 + i;
        return i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.A01;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return Integer.valueOf(A00());
    }

    public C01L() {
    }
}
