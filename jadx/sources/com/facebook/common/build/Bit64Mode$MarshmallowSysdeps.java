package com.facebook.common.build;

import android.os.Process;

/* loaded from: classes.dex */
public final class Bit64Mode$MarshmallowSysdeps {
    public static boolean is64Bit() {
        return Process.is64Bit();
    }
}
