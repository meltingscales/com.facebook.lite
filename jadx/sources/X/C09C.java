package X;

import java.util.ConcurrentModificationException;

/* renamed from: X.09C  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C09C {
    public int A00;
    public int A01 = -1;
    public int A02;
    public final C003101i A03;

    public final void A00() {
        if (this.A03.A03 == this.A02) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    public final void A01() {
        while (true) {
            int i = this.A00;
            C003101i c003101i = this.A03;
            if (i < c003101i.A01 && c003101i.A0A[i] < 0) {
                this.A00 = i + 1;
            } else {
                return;
            }
        }
    }

    public final boolean hasNext() {
        if (this.A00 >= this.A03.A01) {
            return false;
        }
        return true;
    }

    public C09C(C003101i c003101i) {
        this.A03 = c003101i;
        this.A02 = c003101i.A03;
        A01();
    }

    public final void remove() {
        A00();
        if (this.A01 != -1) {
            C003101i c003101i = this.A03;
            c003101i.A05();
            C003101i.A03(c003101i, this.A01);
            this.A01 = -1;
            this.A02 = c003101i.A03;
            return;
        }
        throw AnonymousClass000.A07("Call next() before removing element from the iterator.");
    }
}
