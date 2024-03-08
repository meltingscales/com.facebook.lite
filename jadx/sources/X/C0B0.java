package X;

import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: X.0B0  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0B0 {
    public static Map A02;
    public static final /* synthetic */ C0B0[] A03;
    public static final C0B0 A04;
    public static final C0B0 A05;
    public static final C0B0 A06;
    public final String A00;
    public final String A01;

    static {
        C0B0 c0b0 = new C0B0("XZ", 0, "assets/lib/libs.xzs", ".xzs");
        C0B0 c0b02 = new C0B0("ZSTD", 1, "assets/lib/libs.zstd", ".zstd");
        C0B0 c0b03 = new C0B0("SUPERPACK_XZ", 2, "assets/lib/libs.spk.xz", ".spk.xz");
        A06 = c0b03;
        C0B0 c0b04 = new C0B0("SUPERPACK_ZSTD", 3, "assets/lib/libs.spk.zst", ".spk.zst");
        C0B0 c0b05 = new C0B0("SUPERPACK_BR", 4, "assets/lib/libs.spk.br", ".spk.br");
        A04 = c0b05;
        C0B0 c0b06 = new C0B0("SUPERPACK_OB", 5, "assets/lib/libs.spo", ".spo");
        A05 = c0b06;
        C0B0[] c0b0Arr = new C0B0[6];
        c0b0Arr[0] = c0b0;
        c0b0Arr[1] = c0b02;
        AnonymousClass000.A0J(c0b03, c0b04, c0b05, c0b0Arr);
        c0b0Arr[5] = c0b06;
        A03 = c0b0Arr;
        HashMap A0F = AnonymousClass000.A0F();
        A02 = A0F;
        A0F.put(".xzs", c0b0);
        A02.put(".zstd", c0b02);
        A02.put(".spk.xz", c0b03);
        A02.put(".spk.zst", c0b04);
        A02.put(".spk.br", c0b05);
        A02.put(".spo", c0b06);
    }

    public static C0B0 valueOf(String str) {
        return (C0B0) Enum.valueOf(C0B0.class, str);
    }

    public static C0B0[] values() {
        return (C0B0[]) A03.clone();
    }

    public C0B0(String str, int i, String str2, String str3) {
        this.A00 = str2;
        this.A01 = str3;
    }
}
