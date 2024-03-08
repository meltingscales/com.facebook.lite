package X;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: X.07X  reason: invalid class name */
/* loaded from: classes.dex */
public class C07X implements Iterator, AnonymousClass018 {
    public int A00;
    public final /* synthetic */ C01A A01;

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public C07X(C01A c01a) {
        this.A01 = c01a;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.A00 >= this.A01.size()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            C01A c01a = this.A01;
            int i = this.A00;
            this.A00 = i + 1;
            return c01a.get(i);
        }
        throw new NoSuchElementException();
    }
}
