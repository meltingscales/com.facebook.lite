package com.facebook.lite.splitdex;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexFile;
import dalvik.system.PathClassLoader;
import dalvik.system.VMRuntime;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ClassLoaderUtils$NotifyDexLoadInnerAPIHackAndroidRInternal {
    public static void apply(Context context, ClassLoader classLoader, String str) {
        try {
            Field declaredField = Class.forName("android.app.ApplicationPackageManager").getDeclaredField("mPM");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(context.getPackageManager());
            if (obj == null) {
                Log.e("NotifyDexLoad", "Wasn't able to get the IPackageManager object");
                return;
            }
            Method declaredMethod = Class.forName("android.content.pm.IPackageManager").getDeclaredMethod("notifyDexLoad", String.class, Map.class, String.class);
            HashMap hashMap = new HashMap();
            hashMap.put(str, getClassLoaderContext(context, classLoader, null, false));
            declaredMethod.invoke(obj, context.getPackageName(), hashMap, VMRuntime.getRuntime().vmInstructionSet());
        } catch (Exception e) {
            Log.e("NotifyDexLoad", "Failed to get method", e);
        }
    }

    public static String getClassLoaderContext(Context context, ClassLoader classLoader, String str, boolean z) {
        String str2;
        try {
            Class<?> cls = Class.forName("dalvik.system.DexPathList");
            Field declaredField = BaseDexClassLoader.class.getDeclaredField("pathList");
            boolean z2 = true;
            declaredField.setAccessible(true);
            Field declaredField2 = cls.getDeclaredField("dexElements");
            Class<?> cls2 = Class.forName("dalvik.system.DexPathList$Element");
            Field declaredField3 = cls2.getDeclaredField("path");
            Field declaredField4 = cls2.getDeclaredField("dexFile");
            declaredField2.setAccessible(true);
            declaredField4.setAccessible(true);
            declaredField3.setAccessible(true);
            if (Build.VERSION.SDK_INT > 26) {
                z2 = false;
            }
            StringBuilder sb = new StringBuilder();
            ClassLoader parent = ClassLoader.getSystemClassLoader().getParent();
            for (ClassLoader classLoader2 = classLoader; classLoader2 != null && classLoader2 != parent; classLoader2 = classLoader2.getParent()) {
                if (!(classLoader2 instanceof PathClassLoader)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unable to compute class loader context, unknown classloader: ");
                    sb2.append(classLoader2.toString());
                    Log.e("ClassLoaderUtils", sb2.toString());
                    return null;
                }
                if (!z2) {
                    if (!classLoader2.equals(classLoader)) {
                        sb.append(";");
                    }
                    sb.append("PCL[");
                }
                Object[] objArr = (Object[]) declaredField2.get(declaredField.get(classLoader2));
                for (int i = 0; i < objArr.length; i++) {
                    Object obj = objArr[i];
                    File file = (File) declaredField3.get(obj);
                    if (file != null && !file.isDirectory()) {
                        str2 = file.getAbsolutePath();
                    } else {
                        DexFile dexFile = (DexFile) declaredField4.get(obj);
                        if (dexFile != null) {
                            str2 = dexFile.getName();
                        } else {
                            str2 = null;
                        }
                    }
                    if (str2 != null) {
                        if (classLoader2.equals(classLoader) && str2.equals(str)) {
                            break;
                        }
                        if (!z2 && i != 0) {
                            sb.append(":");
                        }
                        sb.append(str2);
                    }
                }
                if (!z2) {
                    sb.append("]");
                    sb.append(getSharedLibraryContext(context, classLoader2));
                }
                if (!z) {
                    break;
                }
            }
            return sb.toString();
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchFieldException e) {
            Log.e("ClassLoaderUtils", "Unable to compute class loader context", e);
            return null;
        }
    }

    public static ClassLoader[] getSLCL(ClassLoader classLoader) {
        Field declaredField = BaseDexClassLoader.class.getDeclaredField("sharedLibraryLoaders");
        declaredField.setAccessible(true);
        return (ClassLoader[]) declaredField.get(classLoader);
    }

    public static String getSharedLibraryContext(Context context, ClassLoader classLoader) {
        ClassLoader[] slcl;
        if (Build.VERSION.SDK_INT < 29 || !(classLoader instanceof BaseDexClassLoader) || (slcl = getSLCL(classLoader)) == null || slcl.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder("{");
        boolean z = false;
        for (ClassLoader classLoader2 : slcl) {
            String classLoaderContext = getClassLoaderContext(context, classLoader2, null, true);
            if (classLoaderContext != null) {
                if (z) {
                    sb.append("#");
                }
                sb.append(classLoaderContext);
                z = true;
            }
        }
        sb.append("}");
        return sb.toString();
    }
}
