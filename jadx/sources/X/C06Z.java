package X;

import android.util.Log;

/* renamed from: X.06Z  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C06Z {
    public static InterfaceC013906a A00 = new InterfaceC013906a() { // from class: X.0Ah
        @Override // X.InterfaceC013906a
        public final void A65(String str, String str2) {
            A00(6, str, str2);
        }

        @Override // X.InterfaceC013906a
        public final void A66(String str, String str2, Throwable th) {
            A01(str, str2, th, 6);
        }

        @Override // X.InterfaceC013906a
        public final boolean AIP(int i) {
            if (5 > i) {
                return false;
            }
            return true;
        }

        @Override // X.InterfaceC013906a
        public final void AdL(String str, String str2) {
            A00(5, str, str2);
        }

        @Override // X.InterfaceC013906a
        public final void AdM(String str, String str2, Throwable th) {
            A01(str, str2, th, 5);
        }

        @Override // X.InterfaceC013906a
        public final void Adk(String str, String str2) {
            A00(6, str, str2);
        }

        @Override // X.InterfaceC013906a
        public final void Adl(String str, String str2, Throwable th) {
            A01(str, str2, th, 6);
        }

        public static void A00(int i, String str, String str2) {
            Log.println(i, AnonymousClass000.A09(":", str, AnonymousClass000.A0D("unknown")), str2);
        }

        public static void A01(String str, String str2, Throwable th, int i) {
            String stackTraceString;
            String A09 = AnonymousClass000.A09(":", str, AnonymousClass000.A0D("unknown"));
            StringBuilder A0D = AnonymousClass000.A0D(str2);
            A0D.append('\n');
            if (th == null) {
                stackTraceString = "";
            } else {
                stackTraceString = Log.getStackTraceString(th);
            }
            Log.println(i, A09, AnonymousClass000.A0A(stackTraceString, A0D));
        }

        @Override // X.InterfaceC013906a
        public final int AC3() {
            return 5;
        }

        @Override // X.InterfaceC013906a
        public final void AJO(int i, String str, String str2) {
            A00(i, "msys", str2);
        }

        @Override // X.InterfaceC013906a
        public final void AZi(int i) {
        }
    };

    public static void A03(Class cls, String str, Throwable th, Object... objArr) {
        if (A00.AIP(5)) {
            A02(cls, String.format(null, str, objArr), th);
        }
    }

    public static void A00(Class cls, String str) {
        InterfaceC013906a interfaceC013906a = A00;
        if (interfaceC013906a.AIP(6)) {
            interfaceC013906a.A65(cls.getSimpleName(), str);
        }
    }

    public static void A01(Class cls, String str, Throwable th) {
        InterfaceC013906a interfaceC013906a = A00;
        if (interfaceC013906a.AIP(6)) {
            interfaceC013906a.A66(cls.getSimpleName(), str, th);
        }
    }

    public static void A02(Class cls, String str, Throwable th) {
        InterfaceC013906a interfaceC013906a = A00;
        if (interfaceC013906a.AIP(5)) {
            interfaceC013906a.AdM(cls.getSimpleName(), str, th);
        }
    }

    public static void A04(Class cls, String str, Object... objArr) {
        InterfaceC013906a interfaceC013906a = A00;
        if (interfaceC013906a.AIP(5)) {
            interfaceC013906a.AdL(cls.getSimpleName(), String.format(null, str, objArr));
        }
    }

    public static void A05(String str, String str2) {
        InterfaceC013906a interfaceC013906a = A00;
        if (interfaceC013906a.AIP(6)) {
            interfaceC013906a.A65(str, str2);
        }
    }

    public static void A06(String str, String str2, Throwable th) {
        InterfaceC013906a interfaceC013906a = A00;
        if (interfaceC013906a.AIP(6)) {
            interfaceC013906a.A66(str, str2, th);
        }
    }

    public static void A07(String str, String str2, Object... objArr) {
        InterfaceC013906a interfaceC013906a = A00;
        if (interfaceC013906a.AIP(5)) {
            interfaceC013906a.AdL(str, String.format(null, str2, objArr));
        }
    }

    public static void A08(String str, String str2, Object... objArr) {
        InterfaceC013906a interfaceC013906a = A00;
        if (interfaceC013906a.AIP(6)) {
            interfaceC013906a.Adk(str, String.format(null, str2, objArr));
        }
    }
}
