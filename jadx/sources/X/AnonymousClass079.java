package X;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: X.079  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass079 extends C09C implements Iterator, AnonymousClass018 {
    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        A00();
        int i = this.A00;
        C003101i c003101i = this.A03;
        if (i < c003101i.A01) {
            this.A00 = i + 1;
            this.A01 = i;
            C09E c09e = new C09E(c003101i, i);
            A01();
            return c09e;
        }
        throw new NoSuchElementException();
    }

    public AnonymousClass079(C003101i c003101i) {
        super(c003101i);
    }
}
