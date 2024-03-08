package X;

/* renamed from: X.091  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass091 {
    public final AnonymousClass093 A00;
    public final C018608k A01;

    public AnonymousClass091(AnonymousClass093 anonymousClass093, C018608k c018608k) {
        this.A00 = anonymousClass093;
        this.A01 = c018608k;
    }

    public static void A00(ProcessBuilder processBuilder, String str, String str2) {
        String A02 = AbstractC013305s.A02(str);
        if (!A02.isEmpty()) {
            processBuilder.command().add(AnonymousClass000.A09("=", A02, AnonymousClass000.A0D(str2)));
        }
    }
}
