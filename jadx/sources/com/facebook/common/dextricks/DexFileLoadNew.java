package com.facebook.common.dextricks;

import dalvik.system.DexFile;

/* loaded from: classes.dex */
public final class DexFileLoadNew {
    public static Class A00(DexFile dexFile, ClassLoader classLoader, String str) {
        return dexFile.loadClassBinaryName(str, classLoader, null);
    }
}
