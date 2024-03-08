package X;

import java.util.Iterator;

/* renamed from: X.07D  reason: invalid class name */
/* loaded from: classes.dex */
public final class C07D implements Iterator, AnonymousClass018 {
    public int A00;
    public final Iterator A01;

    public C07D(Iterator it) {
        C08H.A04(it, 1);
        this.A01 = it;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.A01.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        final int i = this.A00;
        this.A00 = i + 1;
        if (i < 0) {
            C01T.A00();
            throw new RuntimeException("Redex: Unreachable code after no-return invoke");
        }
        final Object next = this.A01.next();
        return new Object(i, next) { // from class: X.0AE
            public final int A00;
            public final Object A01;

            public final boolean equals(Object obj) {
                if (this != obj) {
                    if (obj instanceof C0AE) {
                        C0AE c0ae = (C0AE) obj;
                        if (this.A00 != c0ae.A00 || !C08H.A09(this.A01, c0ae.A01)) {
                        }
                    }
                    return false;
                }
                return true;
            }

            public final int hashCode() {
                int i2 = this.A00 * 31;
                Object obj = this.A01;
                return i2 + (obj == null ? 0 : obj.hashCode());
            }

            {
                this.A00 = i;
                this.A01 = next;
            }

            public final String toString() {
                StringBuilder A0C = AnonymousClass000.A0C();
                A0C.append("IndexedValue(index=");
                A0C.append(this.A00);
                A0C.append(", value=");
                A0C.append(this.A01);
                A0C.append(')');
                return A0C.toString();
            }
        };
    }
}
