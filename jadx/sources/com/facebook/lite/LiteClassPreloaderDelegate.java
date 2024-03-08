package com.facebook.lite;

import X.AbstractC005202d;
import X.AnonymousClass000;
import android.content.Context;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class LiteClassPreloaderDelegate {
    public static boolean isClassPreloadingActivityEnabled(Context context) {
        File A02 = AnonymousClass000.A02(context, "pref_key_class_preloading_activity");
        boolean exists = A02.exists();
        A02.delete();
        return exists;
    }

    public static boolean isClassPreloadingAppEnabled(Context context) {
        File A02 = AnonymousClass000.A02(context, "pref_key_class_preloading_app");
        boolean exists = A02.exists();
        A02.delete();
        return exists;
    }

    public static void setClassPreloadingActivityEnabled(Context context, boolean z) {
        File A02 = AnonymousClass000.A02(context, "pref_key_class_preloading_activity");
        try {
            if (z) {
                A02.createNewFile();
            } else {
                A02.delete();
            }
        } catch (IOException unused) {
        }
    }

    public static void setClassPreloadingAppEnabled(Context context, boolean z) {
        File A02 = AnonymousClass000.A02(context, "pref_key_class_preloading_app");
        try {
            if (z) {
                A02.createNewFile();
            } else {
                A02.delete();
            }
        } catch (IOException unused) {
        }
    }

    public static boolean isClassPreloadingEnabled(Context context, String str) {
        File A02 = AnonymousClass000.A02(context, str);
        boolean exists = A02.exists();
        A02.delete();
        return exists;
    }

    public static void setClassPreloadingEnabled(Context context, String str, boolean z) {
        File A02 = AnonymousClass000.A02(context, str);
        try {
            if (z) {
                A02.createNewFile();
            } else {
                A02.delete();
            }
        } catch (IOException unused) {
        }
    }

    public static void preloadClasses(Context context, boolean z, boolean z2) {
        AbstractC005202d.A01(context, z, z2);
    }
}
