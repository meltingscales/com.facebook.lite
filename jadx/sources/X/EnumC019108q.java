package X;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: X.08q  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC019108q {
    public static final /* synthetic */ EnumC019108q[] A02;
    public static final EnumC019108q A03;
    public static final EnumC019108q A04;
    public static final EnumC019108q A05;
    public static final EnumC019108q A06;
    public static final EnumC019108q A07;
    public static final EnumC019108q A08;
    public static final EnumC019108q A09;
    public static final EnumC019108q A0A;
    public static final EnumC019108q A0B;
    public static final EnumC019108q A0C;
    public static final EnumC019108q A0D;
    public static final EnumC019108q A0E;
    public static final EnumC019108q A0F;
    public static final EnumC019108q A0G;
    public final String A00;
    public final boolean A01;

    static {
        EnumC019108q enumC019108q = new EnumC019108q("ANR", "anr", 0, false);
        A03 = enumC019108q;
        EnumC019108q A00 = A00("ANR_APP_DEATH", "anr_app_death", 1, false);
        A04 = A00;
        EnumC019108q A002 = A00("APP_LIFECYCLE", "app_lifecycle", 2, true);
        A05 = A002;
        EnumC019108q A003 = A00("ATTRIBUTION_ID", "attribution_id", 3, true);
        EnumC019108q A004 = A00("BROADCAST", "broadcast", 4, true);
        EnumC019108q A005 = A00("JAVA", "java", 5, false);
        A07 = A005;
        EnumC019108q A006 = A00("JAVA_DETECT", "java_detect", 6, true);
        EnumC019108q A007 = A00("JAVA_APP_DEATH", "java_app_death", 7, false);
        EnumC019108q A008 = A00("JAVASCRIPT", "javascript", 8, false);
        EnumC019108q A009 = A00("CRASHLOOP", "crashloop", 9, false);
        EnumC019108q A0010 = A00("NATIVE", "native", 10, false);
        A08 = A0010;
        EnumC019108q A0011 = A00("HELIUM_RENDERER_CRASH", "helium_renderer_crash", 11, false);
        EnumC019108q A0012 = A00("LIGHT_MOBILE_CONFIG", "light_mobile_config", 12, true);
        EnumC019108q A0013 = A00("MOBILE_CONFIG", "mobile_config", 13, true);
        EnumC019108q A0014 = A00("NAVIGATION", "navigation", 14, true);
        A09 = A0014;
        EnumC019108q A0015 = A00("PERIODIC_MEMORY", "periodic_memory", 15, true);
        A0B = A0015;
        EnumC019108q A0016 = A00("LATE_STARTUP", "late_startup", 16, true);
        EnumC019108q A0017 = A00("AFTER_STARTUP", "after_startup", 17, true);
        EnumC019108q A0018 = A00("REPORT_SOURCE", "report_source", 18, true);
        A0C = A0018;
        EnumC019108q A0019 = A00("SOFT_ERROR", "soft_error", 19, false);
        A0D = A0019;
        EnumC019108q A0020 = A00("STARTUP", "startup", 20, true);
        A0E = A0020;
        EnumC019108q A0021 = A00("UNEXPLAINED", "unexplained", 21, false);
        A0F = A0021;
        EnumC019108q A0022 = A00("TEST_CRASH", "test", 22, false);
        EnumC019108q A0023 = A00("BUG_REPORT", "bug_report", 23, false);
        EnumC019108q A0024 = A00("EXTRA_COLLECTION", "extra_collection", 24, false);
        EnumC019108q A0025 = A00("CUSTOM_APP_DATA", "custom_app_data", 25, true);
        EnumC019108q A0026 = A00("CUSTOM_DATA", "custom_data", 26, true);
        A06 = A0026;
        EnumC019108q A0027 = A00("FOREGROUND_TRANSITION", "foreground_transition", 27, true);
        EnumC019108q A0028 = A00("USER_PERCEPTIBLE_SCOPE", "user_perceptible_scope", 28, true);
        EnumC019108q A0029 = A00("USER_CHANGE", "user_change", 29, true);
        A0G = A0029;
        EnumC019108q A0030 = A00("PERIODIC_BATTERY", "periodic_battery", 30, true);
        A0A = A0030;
        EnumC019108q A0031 = A00("MEMORY_TRIM", "memory_trim", 31, true);
        EnumC019108q A0032 = A00("BACKGROUND", "background", 32, true);
        EnumC019108q[] enumC019108qArr = new EnumC019108q[33];
        enumC019108qArr[0] = enumC019108q;
        enumC019108qArr[1] = A00;
        AnonymousClass000.A0J(A002, A003, A004, enumC019108qArr);
        enumC019108qArr[5] = A005;
        enumC019108qArr[6] = A006;
        enumC019108qArr[7] = A007;
        enumC019108qArr[8] = A008;
        enumC019108qArr[9] = A009;
        enumC019108qArr[10] = A0010;
        enumC019108qArr[11] = A0011;
        enumC019108qArr[12] = A0012;
        enumC019108qArr[13] = A0013;
        enumC019108qArr[14] = A0014;
        AnonymousClass000.A0H(A0015, A0016, A0017, A0018, enumC019108qArr);
        AnonymousClass000.A0I(A0019, A0020, A0021, A0022, enumC019108qArr);
        enumC019108qArr[23] = A0023;
        enumC019108qArr[24] = A0024;
        enumC019108qArr[25] = A0025;
        enumC019108qArr[26] = A0026;
        enumC019108qArr[27] = A0027;
        enumC019108qArr[28] = A0028;
        enumC019108qArr[29] = A0029;
        enumC019108qArr[30] = A0030;
        enumC019108qArr[31] = A0031;
        enumC019108qArr[32] = A0032;
        A02 = enumC019108qArr;
    }

    public static EnumC019108q A00(String str, String str2, int i, boolean z) {
        return new EnumC019108q(str, str2, i, z);
    }

    public static EnumC019108q valueOf(String str) {
        return (EnumC019108q) Enum.valueOf(EnumC019108q.class, str);
    }

    public static EnumC019108q[] values() {
        return (EnumC019108q[]) A02.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.A00;
    }

    public EnumC019108q(String str, String str2, int i, boolean z) {
        this.A00 = str2;
        this.A01 = z;
    }
}
