package X;

import java.util.Arrays;

/* renamed from: X.08H  reason: invalid class name */
/* loaded from: classes.dex */
public final class C08H {
    public static void A00(Object obj) {
        if (obj == null) {
            A06("INSTANCE_FIELD");
            throw new RuntimeException("Redex: Unreachable code after no-return invoke");
        }
    }

    public static void A01(Object obj) {
        if (obj == null) {
            A06("INVOKE_RETURN");
            throw new RuntimeException("Redex: Unreachable code after no-return invoke");
        }
    }

    public static void A02(Object obj) {
        if (obj == null) {
            A06("STATIC_FIELD");
            throw new RuntimeException("Redex: Unreachable code after no-return invoke");
        }
    }

    public static void A03(Object obj) {
        if (obj == null) {
            NullPointerException nullPointerException = new NullPointerException();
            A08(C08H.class.getName(), nullPointerException);
            throw nullPointerException;
        }
    }

    public static void A04(Object obj, int i) {
        if (obj == null) {
            String A09 = AnonymousClass000.A09("param at index = ", Integer.toString(i), AnonymousClass000.A0C());
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = C08H.class.getName();
            int i2 = 0;
            while (!stackTrace[i2].getClassName().equals(name)) {
                i2++;
            }
            while (stackTrace[i2].getClassName().equals(name)) {
                i2++;
            }
            StackTraceElement stackTraceElement = stackTrace[i2];
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append("Parameter specified as non-null is null: method ");
            A0C.append(className);
            A0C.append(".");
            A0C.append(methodName);
            NullPointerException A08 = AnonymousClass000.A08(AnonymousClass000.A09(", parameter ", A09, A0C));
            A08(name, A08);
            throw A08;
        }
    }

    public static void A05(Object obj, String str) {
        if (obj == null) {
            NullPointerException A08 = AnonymousClass000.A08(str);
            A08(C08H.class.getName(), A08);
            throw A08;
        }
    }

    public static boolean A09(Object obj, Object obj2) {
        if (obj == null) {
            if (obj2 != null) {
                return false;
            }
            return true;
        }
        return obj.equals(obj2);
    }

    public static void A06(String str) {
        NullPointerException A08 = AnonymousClass000.A08(AnonymousClass000.A0A(" must not be null", AnonymousClass000.A0D(str)));
        A08(C08H.class.getName(), A08);
        throw A08;
    }

    public static void A07(String str) {
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("lateinit property ");
        A0C.append(str);
        C0AN c0an = new C0AN(AnonymousClass000.A0A(" has not been initialized", A0C));
        A08(C08H.class.getName(), c0an);
        throw c0an;
    }

    public static void A08(String str, Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        th.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
    }
}
