package com.facebook.common.build;

import android.system.ErrnoException;
import android.system.Os;

/* loaded from: classes.dex */
public final class Bit64Mode$LollipopSysdeps {
    public static boolean is64Bit() {
        try {
            return Os.readlink("/proc/self/exe").contains("64");
        } catch (ErrnoException unused) {
            return false;
        }
    }
}
