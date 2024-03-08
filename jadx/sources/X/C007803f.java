package X;

import java.io.File;

/* renamed from: X.03f  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C007803f {
    public final char A00;
    public final char A01;
    public final char A02;
    public final char A03;
    public final char A04;
    public final File A05;
    public final boolean A06;
    public final boolean A07;

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (X.AbstractC007703e.A01(X.AnonymousClass050.A0C, r3.A04) != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A00() {
        /*
            r3 = this;
            char r0 = r3.A03
            java.lang.Integer r2 = X.AnonymousClass050.A0N
            boolean r0 = X.AbstractC007703e.A01(r2, r0)
            if (r0 == 0) goto L14
            char r1 = r3.A04
            java.lang.Integer r0 = X.AnonymousClass050.A0C
            boolean r0 = X.AbstractC007703e.A01(r0, r1)
            if (r0 == 0) goto L1d
        L14:
            char r0 = r3.A00
            boolean r1 = X.AbstractC007703e.A01(r2, r0)
            r0 = 0
            if (r1 == 0) goto L1e
        L1d:
            r0 = 1
        L1e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C007803f.A00():boolean");
    }

    public final boolean A01() {
        char c = this.A03;
        if (!AbstractC007703e.A01(AnonymousClass050.A01, c)) {
            Integer num = AnonymousClass050.A0N;
            if (!AbstractC007703e.A01(num, c)) {
                if (!AbstractC007703e.A01(AnonymousClass050.A0C, this.A04) && !AbstractC007703e.A01(num, this.A00)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0045, code lost:
        if (r4 == 'j') goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0049, code lost:
        if (r5 == 'Q') goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0051, code lost:
        if (r6 != 'i') goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0053, code lost:
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
        if (r4 == 'j') goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public C007803f(java.io.File r3, char r4, char r5, char r6, char r7, boolean r8) {
        /*
            r2 = this;
            r2.<init>()
            r0 = 1
            r2.A07 = r0
            r2.A05 = r3
            r2.A03 = r4
            r2.A04 = r5
            r2.A00 = r6
            r0 = 48
            r1 = 48
            if (r5 == r0) goto L4c
            r0 = 105(0x69, float:1.47E-43)
            if (r5 == r0) goto L4c
            r0 = 57
            if (r5 != r0) goto L27
            r0 = 106(0x6a, float:1.49E-43)
            if (r4 != r0) goto L27
        L20:
            r2.A01 = r4
            r2.A02 = r7
            r2.A06 = r8
            return
        L27:
            r0 = 82
            if (r4 == r0) goto L47
            r0 = 85
            if (r4 == r0) goto L47
            r0 = 114(0x72, float:1.6E-43)
            if (r4 == r0) goto L47
            r0 = 99
            if (r4 == r0) goto L47
            r0 = 117(0x75, float:1.64E-43)
            if (r4 == r0) goto L47
            r0 = 113(0x71, float:1.58E-43)
            if (r4 == r0) goto L47
            r0 = 109(0x6d, float:1.53E-43)
            if (r4 == r0) goto L47
            r0 = 106(0x6a, float:1.49E-43)
            if (r4 != r0) goto L53
        L47:
            r0 = 81
            if (r5 != r0) goto L53
            goto L20
        L4c:
            r5 = r6
            if (r6 == r1) goto L20
            r0 = 105(0x69, float:1.47E-43)
            if (r6 == r0) goto L20
        L53:
            r4 = r5
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C007803f.<init>(java.io.File, char, char, char, char, boolean):void");
    }

    public C007803f() {
        this.A07 = false;
        this.A05 = null;
        this.A03 = (char) 0;
        this.A04 = (char) 0;
        this.A00 = (char) 0;
        this.A01 = (char) 0;
        this.A02 = (char) 0;
        this.A06 = false;
    }
}
