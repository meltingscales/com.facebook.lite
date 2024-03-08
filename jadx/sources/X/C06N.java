package X;

import java.util.Arrays;

/* renamed from: X.06N  reason: invalid class name */
/* loaded from: classes.dex */
public final class C06N {
    public final int A00;
    public final String A01;
    public final String A02;
    public final Throwable A03;

    public C06N(String str, String str2, Throwable th, int i) {
        this.A01 = str;
        this.A02 = str2;
        this.A03 = th;
        this.A00 = i;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        Throwable th;
        Throwable th2;
        String str3;
        String str4;
        if (this != obj) {
            if (obj != null && getClass() == obj.getClass()) {
                C06N c06n = (C06N) obj;
                if (this.A00 != c06n.A00 || (((str = this.A01) != (str2 = c06n.A01) && (str == null || !str.equals(str2))) || (((th = this.A03) != (th2 = c06n.A03) && (th == null || !th.equals(th2))) || ((str3 = this.A02) != (str4 = c06n.A02) && (str3 == null || !str3.equals(str4)))))) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.A01, this.A02, false, Integer.valueOf(this.A00)});
    }

    public final String toString() {
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("SoftError{mCategory='");
        A0C.append(this.A01);
        A0C.append('\'');
        A0C.append(", mMessage='");
        A0C.append(this.A02);
        A0C.append('\'');
        A0C.append(", mCause=");
        A0C.append(this.A03);
        A0C.append(", mFailHarder=");
        A0C.append(false);
        A0C.append(", mSamplingFrequency=");
        A0C.append(this.A00);
        A0C.append(", mOnlyIfEmployeeOrBetaBuild=");
        A0C.append(false);
        A0C.append('}');
        return A0C.toString();
    }
}
