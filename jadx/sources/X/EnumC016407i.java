package X;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: X.07i  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC016407i {
    public static final /* synthetic */ EnumC016407i[] A03;
    public static final EnumC016407i A04;
    public static final EnumC016407i A05;
    public static final EnumC016407i A06;
    public static final EnumC016407i A07;
    public static final EnumC016407i A08;
    public static final EnumC016407i A09;
    public Integer A00;
    public final char A01;
    public final String A02;

    static {
        Integer num = AnonymousClass050.A00;
        EnumC016407i A00 = A00(num, "NO_STATUS", "No status", '0', 0);
        A09 = A00;
        EnumC016407i A002 = A00(num, "INITIAL", "Initial", 'i', 1);
        A06 = A002;
        Integer num2 = AnonymousClass050.A01;
        EnumC016407i A003 = A00(num2, "JAVA_CRASH", "JavaCrash", 'j', 2);
        A07 = A003;
        Integer num3 = AnonymousClass050.A0C;
        EnumC016407i A004 = A00(num3, "NATIVE_CRASH_SIGSEGV", "NativeCrash_SIGSEGV", 's', 3);
        EnumC016407i A005 = A00(num3, "NATIVE_CRASH_SIGABRT", "NativeCrash_SIGABRT", 'a', 4);
        EnumC016407i A006 = A00(num3, "NATIVE_CRASH_SIGFPE", "NativeCrash_SIGFPE", 'f', 5);
        EnumC016407i A007 = A00(num3, "NATIVE_CRASH_SIGILL", "NativeCrash_SIGILL", 'l', 6);
        EnumC016407i A008 = A00(num3, "NATIVE_CRASH_SIGBUS", "NativeCrash_SIGBUS", 'b', 7);
        EnumC016407i A009 = A00(num3, "NATIVE_CRASH_SIGTRAP", "NativeCrash_SIGTRAP", 'T', 8);
        EnumC016407i A0010 = A00(num3, "NATIVE_CRASH_SIGXFSZ", "NativeCrash_SIGXFSZ", 'z', 9);
        EnumC016407i A0011 = A00(num3, "NATIVE_CRASH_SIGXCPU", "NativeCrash_SIGXCPU", 'p', 10);
        EnumC016407i A0012 = A00(num3, "NATIVE_CRASH_SIGSYS", "NativeCrash_SIGSYS", 'y', 11);
        EnumC016407i A0013 = A00(num3, "NATIVE_CRASH_SIGSTKFLT", "NativeCrash_SIGSTKFLT", 'S', 12);
        EnumC016407i A0014 = A00(num3, "NATIVE_CRASH_SIGHUP", "NativeCrash_SIGHUP", 'h', 13);
        EnumC016407i A0015 = A00(num3, "NATIVE_CRASH_SIGINT", "NativeCrash_SIGINT", 'I', 14);
        EnumC016407i A0016 = A00(num3, "NATIVE_CRASH_SIGUSR2", "NativeCrash_SIGUSR2", '2', 15);
        EnumC016407i A0017 = A00(num3, "NATIVE_CRASH_SIGALRM", "NativeCrash_SIGALRM", 'L', 16);
        EnumC016407i A0018 = A00(num3, "NATIVE_CRASH_SIGTERM", "NativeCrash_SIGTERM", 'e', 17);
        EnumC016407i A0019 = A00(num3, "NATIVE_CRASH_SIGVTALRM", "NativeCrash_SIGVTALRM", 'v', 18);
        EnumC016407i A0020 = A00(num3, "NATIVE_CRASH_SIGPROF", "NativeCrash_SIGPROF", 'P', 19);
        EnumC016407i A0021 = A00(num3, "NATIVE_CRASH_SIGIO", "NativeCrash_SIGIO", 'o', 20);
        EnumC016407i A0022 = A00(num3, "NATIVE_CRASH_SIGPWR", "NativeCrash_SIGPWR", 'W', 21);
        EnumC016407i A0023 = A00(num3, "NATIVE_CRASH_OTHER", "NativeCrash_Other", 'n', 22);
        EnumC016407i A0024 = A00(num2, "JAVA_EXIT", "JavaExit", 'x', 23);
        EnumC016407i A0025 = A00(num2, "JAVA_EXIT_WITH_USER_KNOWLEDGE_AND_CONSENT_NOT_A_FAD", "JavaExitNotAFad", 'N', 24);
        A08 = A0025;
        EnumC016407i A0026 = A00(num3, "NATIVE_EXIT", "NativeExit", 'X', 25);
        EnumC016407i A0027 = A00(num3, "SELF_SIGKILL", "SelfSigKill", '9', 26);
        EnumC016407i A0028 = A00(num3, "SELF_SIGSTOP", "SelfSigStop", 't', 27);
        Integer num4 = AnonymousClass050.A0N;
        EnumC016407i enumC016407i = new EnumC016407i(num4, "ANR", "ANR", 'r', 28);
        A04 = enumC016407i;
        EnumC016407i A0029 = A00(num4, "ANR_RECOVERED", "ANRRecovered", 'c', 29);
        A05 = A0029;
        EnumC016407i A0030 = A00(num4, "ANR_SIGQUIT_NATIVE", "ANR_SIGQUIT", 'Q', 30);
        EnumC016407i A0031 = A00(num4, "ANR_SIGQUIT", "AnrSigquit", 'q', 31);
        EnumC016407i A0032 = A00(num4, "ANR_MT_UNBLOCKED", "AnrMtUnblocked", 'u', 32);
        EnumC016407i A0033 = A00(num4, "ANR_AM_CONFIRMED", "AnrAmConfirmed", 'R', 33);
        EnumC016407i A0034 = A00(num4, "ANR_AM_CONFIRMED_MT_UNBLOCKED", "AnrAmConfirmedMtUnblocked", 'U', 34);
        EnumC016407i A0035 = A00(num4, "ANR_AM_EXPIRED", "AnrAmExpired", 'm', 35);
        EnumC016407i A0036 = A00(num2, "APPSTATELOGGER_CRASH", "AppStateLoggerCrash", 'C', 36);
        EnumC016407i A0037 = A00(num3, "PREALLOCATED_OOME", "PreallocatedOOME", 'O', 37);
        EnumC016407i[] enumC016407iArr = new EnumC016407i[38];
        enumC016407iArr[0] = A00;
        enumC016407iArr[1] = A002;
        AnonymousClass000.A0J(A003, A004, A005, enumC016407iArr);
        enumC016407iArr[5] = A006;
        enumC016407iArr[6] = A007;
        enumC016407iArr[7] = A008;
        enumC016407iArr[8] = A009;
        enumC016407iArr[9] = A0010;
        enumC016407iArr[10] = A0011;
        enumC016407iArr[11] = A0012;
        enumC016407iArr[12] = A0013;
        enumC016407iArr[13] = A0014;
        enumC016407iArr[14] = A0015;
        AnonymousClass000.A0H(A0016, A0017, A0018, A0019, enumC016407iArr);
        AnonymousClass000.A0I(A0020, A0021, A0022, A0023, enumC016407iArr);
        enumC016407iArr[23] = A0024;
        enumC016407iArr[24] = A0025;
        enumC016407iArr[25] = A0026;
        enumC016407iArr[26] = A0027;
        enumC016407iArr[27] = A0028;
        enumC016407iArr[28] = enumC016407i;
        enumC016407iArr[29] = A0029;
        enumC016407iArr[30] = A0030;
        enumC016407iArr[31] = A0031;
        enumC016407iArr[32] = A0032;
        enumC016407iArr[33] = A0033;
        enumC016407iArr[34] = A0034;
        enumC016407iArr[35] = A0035;
        enumC016407iArr[36] = A0036;
        enumC016407iArr[37] = A0037;
        A03 = enumC016407iArr;
    }

    public static EnumC016407i A00(Integer num, String str, String str2, char c, int i) {
        return new EnumC016407i(num, str, str2, c, i);
    }

    public static EnumC016407i[] values() {
        return (EnumC016407i[]) A03.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.A02;
    }

    public EnumC016407i(Integer num, String str, String str2, char c, int i) {
        this.A01 = c;
        this.A02 = str2;
        this.A00 = num;
    }
}
