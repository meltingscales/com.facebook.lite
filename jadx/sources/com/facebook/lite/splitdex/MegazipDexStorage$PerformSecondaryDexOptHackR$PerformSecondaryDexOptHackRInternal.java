package com.facebook.lite.splitdex;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class MegazipDexStorage$PerformSecondaryDexOptHackR$PerformSecondaryDexOptHackRInternal {
    public static boolean apply(Context context, PackageManager packageManager) {
        try {
            Field declaredField = Class.forName("android.app.ApplicationPackageManager").getDeclaredField("mPM");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(packageManager);
            if (obj == null) {
                Log.e("MegazipDexStorage", "Wasn't able to get the IPackageManager object");
                return false;
            }
            Method declaredMethod = Class.forName("android.content.pm.IPackageManager").getDeclaredMethod("performDexOptSecondary", String.class, String.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(obj, context.getPackageName(), "speed", true);
            if (invoke instanceof Boolean) {
                return ((Boolean) invoke).booleanValue();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Wrong return value: ");
            sb.append(invoke);
            Log.e("PerformSecondaryDexOpt", sb.toString());
            return false;
        } catch (Exception e) {
            Log.e("PerformSecondaryDexOpt", "Failed to apply method", e);
            return false;
        }
    }
}
