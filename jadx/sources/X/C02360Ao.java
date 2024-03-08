package X;

import android.text.TextUtils;

/* renamed from: X.0Ao  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C02360Ao {
    public final C02370Ap A00;
    public final String A01;
    public final String A02;
    public final String A03;
    public final String A04;

    public static int A00(int[] iArr, int i) {
        int i2 = Integer.MAX_VALUE;
        for (int i3 : iArr) {
            if (i3 >= 0) {
                i2 = Math.min(i2, i3);
            }
        }
        if (i2 != Integer.MAX_VALUE) {
            return i2;
        }
        return i;
    }

    public static IllegalArgumentException A02(StringBuilder sb, int i, int i2) {
        sb.append(new String(new int[]{i}, 0, 1));
        sb.append(" at string index ");
        sb.append(i2);
        return new IllegalArgumentException(sb.toString());
    }

    public C02360Ao(C02370Ap c02370Ap, String str, String str2, String str3, String str4) {
        this.A04 = str;
        this.A00 = c02370Ap;
        this.A02 = str2;
        this.A03 = str3;
        this.A01 = str4;
    }

    public final String A03() {
        StringBuilder A0C = AnonymousClass000.A0C();
        String str = this.A04;
        if (!TextUtils.isEmpty(str)) {
            A0C.append(str);
            A0C.append(":");
        }
        C02370Ap c02370Ap = this.A00;
        if (c02370Ap != null) {
            A0C.append("//");
            A0C.append(c02370Ap.A01());
        }
        String str2 = this.A02;
        if (!TextUtils.isEmpty(str2)) {
            A0C.append(str2);
        }
        if (!TextUtils.isEmpty(this.A03)) {
            A0C.append("?<REDACTED>");
        }
        if (!TextUtils.isEmpty(this.A01)) {
            A0C.append("#<REDACTED>");
        }
        return A0C.toString();
    }

    public final String toString() {
        return A03();
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x01df, code lost:
        if (r18 == false) goto L311;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01e3, code lost:
        if (r10 == 2) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01e5, code lost:
        if (r4 > 0) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01ed, code lost:
        throw X.AnonymousClass000.A06("IPV6 address with zero elision must have at least one non-zero piece");
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01f0, code lost:
        if (r4 == 8) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01f2, code lost:
        if (r10 == 1) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01f6, code lost:
        if (r5 == 4) goto L318;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01f8, code lost:
        r2 = X.AnonymousClass000.A0C();
        r2.append("IPV6 address with IPV4 ending must specify exactly 4 IPV4 octets, found ");
        r2.append(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x020e, code lost:
        throw X.AnonymousClass000.A06(X.AnonymousClass000.A0A(" octets", r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x020f, code lost:
        r2 = X.AnonymousClass000.A0C();
        r2.append("IPV6 without zero elision must have have exactly 8 pieces, found ");
        r2.append(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0225, code lost:
        throw X.AnonymousClass000.A06(X.AnonymousClass000.A0A(" pieces", r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x022c, code lost:
        throw X.AnonymousClass000.A06("IPV6 must not end with a single colon");
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0305, code lost:
        if (r22 < (r11.length() - 1)) goto L115;
     */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0385  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static X.C02360Ao A01(java.lang.String r30, java.lang.String r31, java.text.BreakIterator r32, int r33, int r34) {
        /*
            Method dump skipped, instructions count: 1437
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C02360Ao.A01(java.lang.String, java.lang.String, java.text.BreakIterator, int, int):X.0Ao");
    }
}
