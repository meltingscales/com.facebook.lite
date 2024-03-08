package X;

import java.io.File;

/* renamed from: X.09o  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C021209o {
    public final AnonymousClass093 A00;
    public final AnonymousClass091 A01;
    public final C018608k A02;
    public final String A03;
    public final String A04;

    public C021209o(AnonymousClass093 anonymousClass093, C018608k c018608k, File file) {
        AnonymousClass091 anonymousClass091 = new AnonymousClass091(anonymousClass093, c018608k);
        this.A04 = file.getCanonicalPath();
        this.A03 = file.getParent();
        this.A00 = anonymousClass093;
        this.A02 = c018608k;
        this.A01 = anonymousClass091;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0213, code lost:
        if (new java.io.File(r5).renameTo(r1) != false) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A02(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 643
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C021209o.A02(java.lang.String):void");
    }

    public static File A00(C021209o c021209o) {
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append(c021209o.A04);
        return new File(AnonymousClass000.A0A("_compiled", A0C));
    }

    public final String A01(boolean z) {
        File file;
        if (AnonymousClass093.A00() >= 26) {
            String str = this.A03;
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append("oat/");
            file = new File(str, AnonymousClass000.A0A(AnonymousClass093.A01(), A0C));
        } else {
            file = new File(this.A03);
        }
        if (z && !file.mkdirs() && !file.isDirectory()) {
            throw AnonymousClass000.A05(file, "cannot mkdir: ", AnonymousClass000.A0C());
        }
        StringBuilder A0C2 = AnonymousClass000.A0C();
        A0C2.append(file.getPath());
        return AnonymousClass000.A0A("/", A0C2);
    }
}
