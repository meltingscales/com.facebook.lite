package com.facebook.systrace;

import X.AbstractC013305s;
import X.C00C;
import X.C07L;
import X.C07O;
import X.C0BL;
import X.C0BM;
import android.os.Process;
import android.util.Log;

/* loaded from: classes.dex */
public class TraceDirect {
    public static final String TAG = "TraceDirect";
    public static volatile int sPrevSoLoaderSourcesVersion = -1;
    public static final boolean sForceJavaImpl = "true".equals(AbstractC013305s.A02("debug.fbsystrace.force_java"));
    public static final boolean sTraceLoad = "true".equals(AbstractC013305s.A02("debug.fbsystrace.trace_load"));
    public static volatile C00C sNativeAvailable = C00C.UNSET;

    public static native void nativeAsyncTraceBegin(String str, int i, long j);

    public static native void nativeAsyncTraceCancel(String str, int i);

    public static native void nativeAsyncTraceEnd(String str, int i, long j);

    public static native void nativeAsyncTraceRename(String str, String str2, int i);

    public static native void nativeAsyncTraceStageBegin(String str, int i, long j, String str2);

    public static native void nativeBeginSection(String str);

    public static native void nativeBeginSectionWithArgs(String str, String[] strArr, int i);

    public static native void nativeEndAsyncFlow(String str, int i);

    public static native void nativeEndSection();

    public static native void nativeEndSectionWithArgs(String[] strArr, int i);

    public static native void nativeSetEnabledTags(long j);

    public static native void nativeStartAsyncFlow(String str, int i);

    public static native void nativeStepAsyncFlow(String str, int i);

    public static native void nativeTraceCounter(String str, int i);

    public static native void nativeTraceInstant(String str, String str2, char c);

    public static native void nativeTraceMetadata(String str, String str2, int i);

    public static boolean checkNative() {
        int i;
        C0BM c0bm;
        if (sNativeAvailable == C00C.UNSET) {
            if (sForceJavaImpl) {
                sNativeAvailable = C00C.NO;
            } else {
                if (C0BL.A01()) {
                    synchronized (C0BL.class) {
                        c0bm = C0BL.A00;
                        if (c0bm == null) {
                            throw new IllegalStateException("NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate()).");
                        }
                    }
                    i = c0bm.AEh();
                } else {
                    i = -1;
                }
                if (i != sPrevSoLoaderSourcesVersion) {
                    sPrevSoLoaderSourcesVersion = i;
                    String.format("Attempting to load fbsystrace.so [%d|%d].", Integer.valueOf(sPrevSoLoaderSourcesVersion), Integer.valueOf(i));
                    try {
                        C0BL.A02("fbsystrace");
                        nativeSetEnabledTags(AbstractC013305s.A00("debug.fbsystrace.tags"));
                        nativeBeginSection("fbsystrace.so loaded");
                        nativeEndSection();
                        sNativeAvailable = C00C.YES;
                    } catch (UnsatisfiedLinkError unused) {
                        Log.w(TAG, "fbsystrace.so could not be loaded - switching to Java implementation.");
                    }
                }
            }
        }
        if (sNativeAvailable == C00C.YES) {
            return true;
        }
        return false;
    }

    public static void asyncTraceBegin(String str, int i, long j) {
        if (checkNative()) {
            nativeAsyncTraceBegin(str, i, j);
            return;
        }
        C07O c07o = new C07O('S');
        c07o.A00(Process.myPid());
        c07o.A02(str);
        c07o.A01("<0>");
        if (j != 0) {
            c07o.A01("<T");
            c07o.A01(Long.toString(j));
            c07o.A01(">");
        }
        c07o.A00(i);
        C07L.A00(c07o.A00.toString());
    }

    public static void asyncTraceCancel(String str, int i) {
        if (checkNative()) {
            nativeAsyncTraceCancel(str, i);
            return;
        }
        C07O c07o = new C07O('F');
        c07o.A00(Process.myPid());
        c07o.A02(str);
        c07o.A01("<X>");
        c07o.A00(i);
        C07L.A00(c07o.A00.toString());
    }

    public static void asyncTraceEnd(String str, int i, long j) {
        if (checkNative()) {
            nativeAsyncTraceEnd(str, i, j);
            return;
        }
        C07O c07o = new C07O('F');
        c07o.A00(Process.myPid());
        c07o.A02(str);
        if (j != 0) {
            c07o.A01("<T");
            c07o.A01(Long.toString(j));
            c07o.A01(">");
        }
        c07o.A00(i);
        C07L.A00(c07o.A00.toString());
    }

    public static void asyncTraceRename(String str, String str2, int i) {
        if (checkNative()) {
            nativeAsyncTraceRename(str, str2, i);
            return;
        }
        C07O c07o = new C07O('F');
        c07o.A00(Process.myPid());
        c07o.A02(str);
        c07o.A01("<M>");
        c07o.A00(i);
        c07o.A02(str2);
        C07L.A00(c07o.A00.toString());
    }

    public static void asyncTraceStageBegin(String str, int i, long j, String str2) {
        if (checkNative()) {
            nativeAsyncTraceStageBegin(str, i, j, str2);
            return;
        }
        C07O c07o = new C07O('T');
        c07o.A00(Process.myPid());
        c07o.A02(str);
        if (j != 0) {
            c07o.A01("<T");
            c07o.A01(Long.toString(j));
            c07o.A01(">");
        }
        c07o.A00(i);
        c07o.A02(str2);
        C07L.A00(c07o.A00.toString());
    }

    public static void beginSection(String str) {
        if (checkNative()) {
            nativeBeginSection(str);
            return;
        }
        C07O c07o = new C07O('B');
        c07o.A00(Process.myPid());
        c07o.A02(str);
        C07L.A00(c07o.A00.toString());
    }

    public static void beginSectionWithArgs(String str, String[] strArr, int i) {
        if (checkNative()) {
            nativeBeginSectionWithArgs(str, strArr, i);
            return;
        }
        C07O c07o = new C07O('B');
        c07o.A00(Process.myPid());
        c07o.A02(str);
        c07o.A03(strArr, i);
        C07L.A00(c07o.A00.toString());
    }

    public static void endAsyncFlow(String str, int i) {
        if (checkNative()) {
            nativeEndAsyncFlow(str, i);
            return;
        }
        C07O c07o = new C07O('f');
        c07o.A00(Process.myPid());
        c07o.A02(str);
        c07o.A00(i);
        C07L.A00(c07o.A00.toString());
    }

    public static void endSection() {
        if (checkNative()) {
            nativeEndSection();
        } else {
            C07L.A00("E");
        }
    }

    public static void endSectionWithArgs(String[] strArr, int i) {
        if (checkNative()) {
            nativeEndSectionWithArgs(strArr, i);
            return;
        }
        C07O c07o = new C07O('E');
        StringBuilder sb = c07o.A00;
        sb.append('|');
        sb.append('|');
        c07o.A03(strArr, i);
        C07L.A00(sb.toString());
    }

    public static void setEnabledTags(long j) {
        if (checkNative()) {
            nativeSetEnabledTags(j);
        }
    }

    public static void startAsyncFlow(String str, int i) {
        if (checkNative()) {
            nativeStartAsyncFlow(str, i);
            return;
        }
        C07O c07o = new C07O('s');
        c07o.A00(Process.myPid());
        c07o.A02(str);
        c07o.A00(i);
        C07L.A00(c07o.A00.toString());
    }

    public static void stepAsyncFlow(String str, int i) {
        if (checkNative()) {
            nativeStepAsyncFlow(str, i);
            return;
        }
        C07O c07o = new C07O('t');
        c07o.A00(Process.myPid());
        c07o.A02(str);
        c07o.A00(i);
        C07L.A00(c07o.A00.toString());
    }

    public static void traceCounter(String str, int i) {
        if (checkNative()) {
            nativeTraceCounter(str, i);
            return;
        }
        C07O c07o = new C07O('C');
        c07o.A00(Process.myPid());
        c07o.A02(str);
        c07o.A00(i);
        C07L.A00(c07o.A00.toString());
    }

    public static void traceInstant(String str, String str2, char c) {
        if (checkNative()) {
            nativeTraceInstant(str, str2, c);
            return;
        }
        C07O c07o = new C07O('I');
        c07o.A00(Process.myPid());
        c07o.A02(str2);
        StringBuilder sb = c07o.A00;
        sb.append('|');
        sb.append((c == 0 || c == '\r' || c == ';' || c == '|' || c == '\t' || c == '\n') ? ' ' : ' ');
        c07o.A02(str);
        C07L.A00(sb.toString());
    }

    public static void traceMetadata(String str, String str2, int i) {
        if (checkNative()) {
            nativeTraceMetadata(str, str2, i);
            return;
        }
        C07O c07o = new C07O('M');
        c07o.A00(Process.myPid());
        c07o.A02(str);
        c07o.A00(i);
        c07o.A02(str2);
        C07L.A00(c07o.A00.toString());
    }
}
