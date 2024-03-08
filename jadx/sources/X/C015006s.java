package X;

import android.util.Log;
import com.facebook.common.stringformat.StringFormatUtil;
import java.util.List;

/* renamed from: X.06s  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C015006s {
    public static volatile InterfaceC013906a A01 = new InterfaceC013906a() { // from class: X.05u
        public int A00;

        @Override // X.InterfaceC013906a
        public final void AZi(int i) {
            this.A00 = 5;
        }

        @Override // X.InterfaceC013906a
        public final int AC3() {
            return this.A00;
        }

        @Override // X.InterfaceC013906a
        public final boolean AIP(int i) {
            if (this.A00 > i) {
                return false;
            }
            return true;
        }

        @Override // X.InterfaceC013906a
        public final void AJO(int i, String str, String str2) {
            Log.println(i, "msys", str2);
        }

        @Override // X.InterfaceC013906a
        public final void A66(String str, String str2, Throwable th) {
            Log.e(str, str2, th);
        }

        @Override // X.InterfaceC013906a
        public final void AdM(String str, String str2, Throwable th) {
            Log.w(str, str2, th);
        }

        @Override // X.InterfaceC013906a
        public final void Adl(String str, String str2, Throwable th) {
            Log.e(str, str2, th);
        }

        @Override // X.InterfaceC013906a
        public final void A65(String str, String str2) {
            Log.e(str, str2);
        }

        @Override // X.InterfaceC013906a
        public final void AdL(String str, String str2) {
            Log.w(str, str2);
        }

        @Override // X.InterfaceC013906a
        public final void Adk(String str, String str2) {
            Log.e(str, str2);
        }
    };
    public static final List A00 = AnonymousClass000.A0E();

    static {
        A01.AZi(5);
        C06Z.A00 = A01;
    }

    public static void A01(Class cls, String str) {
        if (A01.AIP(5)) {
            A01.AdL(cls.getSimpleName(), str);
        }
    }

    public static void A05(Class cls, String str, Object... objArr) {
        if (A01.AIP(5)) {
            A07(cls.getSimpleName(), StringFormatUtil.formatStrLocaleSafe(str, objArr));
        }
    }

    public static void A07(String str, String str2) {
        if (A01.AIP(5)) {
            A01.AdL(str, str2);
        }
    }

    public static void A0B(String str, String str2, Throwable th) {
        if (A01.AIP(5)) {
            A01.AdM(str, str2, th);
        }
    }

    public static void A0C(String str, String str2, Throwable th) {
        if (A01.AIP(5)) {
            A01.AdM(str, str2, th);
        }
    }

    public static void A0G(String str, String str2, Throwable th, Object... objArr) {
        if (A01.AIP(5)) {
            A0B(str, StringFormatUtil.formatStrLocaleSafe(str2, objArr), th);
        }
    }

    public static void A0J(String str, String str2, Object... objArr) {
        if (A01.AIP(5)) {
            A07(str, StringFormatUtil.formatStrLocaleSafe(str2, objArr));
        }
    }

    public static boolean A0L() {
        return A01.AIP(6);
    }

    public static void A00(Class cls, String str) {
        if (A0L()) {
            A01.A65(cls.getSimpleName(), str);
        }
    }

    public static void A02(Class cls, String str, Throwable th) {
        if (A0L()) {
            A01.A66(cls.getSimpleName(), str, th);
        }
    }

    public static void A03(Class cls, String str, Throwable th, Object... objArr) {
        if (A0L()) {
            A09(cls.getSimpleName(), StringFormatUtil.formatStrLocaleSafe(str, objArr), th);
        }
    }

    public static void A04(Class cls, String str, Object... objArr) {
        if (A0L()) {
            A06(cls.getSimpleName(), StringFormatUtil.formatStrLocaleSafe(str, objArr));
        }
    }

    public static void A06(String str, String str2) {
        if (A0L()) {
            A01.A65(str, str2);
        }
    }

    public static void A08(String str, String str2) {
        if (A0L()) {
            A01.Adk(str, str2);
        }
    }

    public static void A09(String str, String str2, Throwable th) {
        if (A0L()) {
            A01.A66(str, str2, th);
        }
    }

    public static void A0A(String str, String str2, Throwable th) {
        if (A0L()) {
            A01.A66(str, str2, th);
        }
    }

    public static void A0D(String str, String str2, Throwable th) {
        if (A0L()) {
            A01.Adl(str, str2, th);
        }
    }

    public static void A0E(String str, String str2, Throwable th) {
        if (A0L()) {
            A01.Adl(str, str2, th);
        }
    }

    public static void A0F(String str, String str2, Throwable th, Object... objArr) {
        if (A0L()) {
            A09(str, StringFormatUtil.formatStrLocaleSafe(str2, objArr), th);
        }
    }

    public static void A0H(String str, String str2, Throwable th, Object... objArr) {
        if (A0L()) {
            A0D(str, StringFormatUtil.formatStrLocaleSafe(str2, objArr), th);
        }
    }

    public static void A0I(String str, String str2, Object... objArr) {
        if (A0L()) {
            A06(str, StringFormatUtil.formatStrLocaleSafe(str2, objArr));
        }
    }

    public static void A0K(String str, String str2, Object... objArr) {
        if (A0L()) {
            A08(str, StringFormatUtil.formatStrLocaleSafe(str2, objArr));
        }
    }
}
