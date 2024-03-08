package com.facebook.lite.splitdex;

import android.util.Log;
import dalvik.system.BaseDexClassLoader;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class MegazipDexStorage$NotifyDexLoadHackAndroidR$NotifyDexLoadHackAndroidRInternal {
    public static void apply(ClassLoader classLoader) {
        try {
            Method declaredMethod = BaseDexClassLoader.class.getDeclaredMethod("reportClassLoaderChain", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(classLoader, new Object[0]);
        } catch (Exception e) {
            Log.e("NotifyDexLoad", "Failed to get method", e);
        }
    }
}
