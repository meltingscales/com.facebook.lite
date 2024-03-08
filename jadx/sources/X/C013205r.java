package X;

import android.os.Build;
import java.lang.reflect.Method;

/* renamed from: X.05r  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C013205r {
    public final Method A00;
    public final Method A01;
    public final Method A02;
    public final Method A03;
    public final Method A04;
    public final Method A05;

    public static C013205r A00() {
        Method method;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            Method method2 = cls.getMethod("get", String.class);
            Method method3 = cls.getMethod("getBoolean", String.class, Boolean.TYPE);
            Method method4 = cls.getMethod("getInt", String.class, Integer.TYPE);
            Method method5 = cls.getMethod("getLong", String.class, Long.TYPE);
            Method method6 = cls.getMethod("set", String.class, String.class);
            if (Build.VERSION.SDK_INT >= 16) {
                method = cls.getMethod("addChangeCallback", Runnable.class);
            } else {
                method = null;
            }
            return new C013205r(method, method2, method3, method4, method5, method6);
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    public C013205r(Method method, Method method2, Method method3, Method method4, Method method5, Method method6) {
        this.A00 = method;
        this.A02 = method2;
        this.A01 = method3;
        this.A03 = method4;
        this.A04 = method5;
        this.A05 = method6;
    }
}
