package X;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: X.06x  reason: invalid class name */
/* loaded from: classes.dex */
public final class C06x extends C09C implements Iterator, AnonymousClass018 {
    @Override // java.util.Iterator
    public final Object next() {
        A00();
        int i = this.A00;
        C003101i c003101i = this.A03;
        if (i < c003101i.A01) {
            this.A00 = i + 1;
            this.A01 = i;
            Object[] objArr = c003101i.A0C;
            C08H.A03(objArr);
            Object obj = objArr[this.A01];
            A01();
            return obj;
        }
        throw new NoSuchElementException();
    }

    public C06x(C003101i c003101i) {
        super(c003101i);
    }
}
