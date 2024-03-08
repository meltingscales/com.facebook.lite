package X;

import java.util.RandomAccess;

/* renamed from: X.05A  reason: invalid class name */
/* loaded from: classes.dex */
public final class C05A<E> extends C01A<E> implements RandomAccess {
    public int A00;
    public final int A01;
    public final C01A A02;

    @Override // X.AnonymousClass019
    public final int A00() {
        return this.A00;
    }

    @Override // X.C01A, java.util.List
    public final Object get(int i) {
        int i2 = this.A00;
        if (i >= 0 && i < i2) {
            return this.A02.get(this.A01 + i);
        }
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("index: ");
        A0C.append(i);
        throw new IndexOutOfBoundsException(AnonymousClass000.A0B(", size: ", A0C, i2));
    }

    public C05A(C01A c01a, int i, int i2) {
        this.A02 = c01a;
        this.A01 = i;
        int size = c01a.size();
        if (i >= 0 && i2 <= size) {
            if (i <= i2) {
                this.A00 = i2 - i;
                return;
            }
            StringBuilder A0D = AnonymousClass000.A0D("fromIndex: ");
            A0D.append(i);
            throw AnonymousClass000.A06(AnonymousClass000.A0B(" > toIndex: ", A0D, i2));
        }
        StringBuilder A0D2 = AnonymousClass000.A0D("fromIndex: ");
        A0D2.append(i);
        A0D2.append(", toIndex: ");
        A0D2.append(i2);
        throw new IndexOutOfBoundsException(AnonymousClass000.A0B(", size: ", A0D2, size));
    }
}
