package X;

import java.util.zip.ZipEntry;

/* renamed from: X.08R  reason: invalid class name */
/* loaded from: classes.dex */
public final class C08R extends C0BJ implements Comparable {
    public final int A00;
    public final ZipEntry A01;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C08R c08r = (C08R) obj;
            if (!this.A01.equals(c08r.A01) || this.A00 != c08r.A00) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return super.A01.compareTo(((C0BJ) obj).A01);
    }

    public final int hashCode() {
        return (this.A00 * 31) + this.A01.hashCode();
    }

    public C08R(String str, ZipEntry zipEntry, int i) {
        super(str, String.valueOf(zipEntry.getCrc()));
        this.A01 = zipEntry;
        this.A00 = i;
    }
}
