package com.facebook.acra.anr.sigquit;

/* loaded from: classes.dex */
public abstract class SigquitDetectorAcra {
    public static native void nativeAddSignalHandler();

    public static native void nativeCleanupAppStateFile();

    public static native boolean nativeHookMethods();

    public static native void nativeInit(Object obj, boolean z, int i, String str, String str2, String str3, String str4, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String str5, boolean z7, boolean z8, boolean z9);

    public static native void nativeSendNextSigquitTraceUnconditionally();

    public static native void nativeStartDetector();

    public static native void nativeStopDetector();

    public static native void nativeWaitForSignal();

    private void onSigquit() {
        throw null;
    }

    static {
        System.getProperty("java.vm.version");
    }

    private void onSigquitTracesAvailable(String str, String str2, boolean z, boolean z2) {
        throw null;
    }
}
