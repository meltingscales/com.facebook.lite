package com.facebook.superpack;

import X.AnonymousClass000;
import X.C0B2;
import android.os.SystemClock;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class SuperpackUnloader {
    public static final Set COLD_START_LIBS;
    public static final Set HOLDOUT_LIBRARIES = new HashSet(Arrays.asList("libbreakpad.so", "libliger.so", "libcoldstart.so", "libdexload.so", "libreliabilitymerged.so", "libsigquit.so", "libappstatelogger2.so", "libnative_allocation_hooks_installer_jni.so", "libforker.so", "libgrimsey.so", "libfb_mboost.so", "libplthooks.so", "libfbandroid_native_cppdistract_cppdistract.so", "liblogcat-interceptor.so", "libbreakpad_extra.so", "libfbandroid_native_sigmuxutils_sigmuxutils.so", "libxplat_pvd_segmentation_model_holder_plc_pytorch_model_holdersAndroid.so", "libdistractutil.so", "libchipsetmerged.so", "libvmasaver.so", "libdalvikdistract.so", "libfbandroid_native_museum_museum.so", "libglog.so", "libpando-core.so", "libpando-engine.so", "libxplat_third-party_jsoncpp_jsoncppAndroid.so", "libxplat_mobilenetwork_fbdomainsAndroid.so", "libfmt.so", "libthird-party_boost_boost_contextAndroid.so", "libthird-party_boost_boostAndroid.so", "liblinkerutils.so", "libmem_alloc_marker.so", "libfbunwindstack.so", "liblive-query-jni.so", "libaospbugfixmerged.so"));
    public static final long LEVEL_1_LIBRARIES_THRESHOLD = 20000;
    public static final long LEVEL_2_LIBRARIES_THRESHOLD = 300000;
    public static final long LEVEL_3_LIBRARIES_THRESHOLD = 1500000;
    public static final long STARTUP_LOAD_TIME_THRESHOLD = 10000;
    public static final String TAG = "SuperpackUnloader";
    public static final List sInMemoryLibraries;
    public static long sStartTime;

    public static native long getProcessMappings(String str);

    public static native void releaseProcessMappings(long j);

    public static native void unload(long j, String str);

    static {
        String[] strArr = new String[35];
        strArr[0] = "libfbandroid_native_cppdistract_cppdistract.so";
        strArr[1] = "libfbandroid_native_museum_museum.so";
        strArr[2] = "libglog.so";
        strArr[3] = "libfbandroid_native_sigmuxutils_sigmuxutils.so";
        strArr[4] = "libbreakpad.so";
        strArr[5] = "libdexload.so";
        strArr[6] = "libxplat_third-party_jsoncpp_jsoncppAndroid.so";
        strArr[7] = "libappstatelogger2.so";
        strArr[8] = "libpreconnector.so";
        strArr[9] = "libxplat_mobilenetwork_fbdomainsAndroid.so";
        strArr[10] = "libfmt.so";
        strArr[11] = "libthird-party_boost_boost_contextAndroid.so";
        strArr[12] = "libthird-party_boost_boostAndroid.so";
        strArr[13] = "liblinkerutils.so";
        strArr[14] = "libplthooks.so";
        AnonymousClass000.A0H("libmem_alloc_marker.so", "libfbunwindstack.so", "liblive-query-jni.so", "libcoldstart.so", strArr);
        AnonymousClass000.A0I("libaospbugfixmerged.so", "libsigquit.so", "libreliabilitymerged.so", "libfb_mboost.so", strArr);
        strArr[23] = "libtigonnativeauthedservice.so";
        strArr[24] = "libimagepipeline.so";
        strArr[25] = "libxplat_arfx_versioning_sdk_version_constants_constantsAndroid.so";
        strArr[26] = "libard-upload.so";
        strArr[27] = "libIGL.so";
        strArr[28] = "libimagesmerged.so";
        strArr[29] = "libthreadutils-jni.so";
        strArr[30] = "libclasstracing.so";
        strArr[31] = "libunwindstack_stream.so";
        strArr[32] = "libbreakpad_extra.so";
        strArr[33] = "libfbnightwatch.so";
        strArr[34] = "libreliablemediamonitor.so";
        COLD_START_LIBS = new HashSet(Arrays.asList(strArr));
        sInMemoryLibraries = Collections.synchronizedList(AnonymousClass000.A0E());
    }

    public static boolean canUnloadLibrary(String str) {
        return !HOLDOUT_LIBRARIES.contains(str);
    }

    public static boolean isStartupLibrary(C0B2 c0b2) {
        if (COLD_START_LIBS.contains(c0b2.A01) && c0b2.A00 < STARTUP_LOAD_TIME_THRESHOLD) {
            return true;
        }
        return false;
    }

    public static void registerLibraryForUnloading(String str) {
        if (!str.endsWith(".so")) {
            String libraryName = SuperpackFileLoader.getLibraryName(str);
            if (!HOLDOUT_LIBRARIES.contains(libraryName)) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = 0;
                if (sStartTime == 0) {
                    synchronized (SuperpackUnloader.class) {
                        if (sStartTime == 0) {
                            sStartTime = elapsedRealtime;
                        }
                    }
                }
                long j2 = elapsedRealtime - sStartTime;
                if (j2 >= 0) {
                    j = j2;
                }
                try {
                    str = new File(str).getCanonicalPath();
                } catch (IOException unused) {
                }
                sInMemoryLibraries.add(new C0B2(libraryName, str, j));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onTrim(X.EnumC014106c r8) {
        /*
            r7 = this;
            X.06c r0 = X.EnumC014106c.UI_HIDDEN
            if (r8 == r0) goto L73
            X.06c r0 = X.EnumC014106c.JAVA_HEAP_ALMOST_FULL
            if (r8 == r0) goto L73
            java.util.List r1 = com.facebook.superpack.SuperpackUnloader.sInMemoryLibraries
            boolean r0 = r1.isEmpty()
            if (r0 != 0) goto L73
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>(r1)
            java.util.ArrayList r3 = X.AnonymousClass000.A0E()
            X.06c r0 = X.EnumC014106c.COMPLETE
            if (r8 == r0) goto L36
            int r2 = r4.size()
        L21:
            int r2 = r2 + (-1)
            if (r2 < 0) goto L35
            java.lang.Object r1 = r4.get(r2)
            X.0B2 r1 = (X.C0B2) r1
            boolean r0 = shouldUnloadLibrary(r8, r1)
            if (r0 == 0) goto L35
            r3.add(r1)
            goto L21
        L35:
            r4 = r3
        L36:
            r5 = 0
            java.lang.String r0 = ".spk"
            long r2 = getProcessMappings(r0)     // Catch: java.lang.RuntimeException -> L56 java.lang.Throwable -> L71
            java.util.Iterator r1 = r4.iterator()     // Catch: java.lang.RuntimeException -> L54 java.lang.Throwable -> L68
        L42:
            boolean r0 = r1.hasNext()     // Catch: java.lang.RuntimeException -> L54 java.lang.Throwable -> L68
            if (r0 == 0) goto L60
            java.lang.Object r0 = r1.next()     // Catch: java.lang.RuntimeException -> L54 java.lang.Throwable -> L68
            X.0B2 r0 = (X.C0B2) r0     // Catch: java.lang.RuntimeException -> L54 java.lang.Throwable -> L68
            java.lang.String r0 = r0.A02     // Catch: java.lang.RuntimeException -> L54 java.lang.Throwable -> L68
            unload(r2, r0)     // Catch: java.lang.RuntimeException -> L54 java.lang.Throwable -> L68
            goto L42
        L54:
            r4 = move-exception
            goto L59
        L56:
            r4 = move-exception
            r2 = 0
        L59:
            java.lang.String r1 = com.facebook.superpack.SuperpackUnloader.TAG     // Catch: java.lang.Throwable -> L68
            java.lang.String r0 = "Failed to unload in-memory compressed libraries. Ignoring."
            X.C015006s.A09(r1, r0, r4)     // Catch: java.lang.Throwable -> L68
        L60:
            int r0 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r0 == 0) goto L73
            releaseProcessMappings(r2)
            return
        L68:
            r1 = move-exception
            int r0 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r0 == 0) goto L72
            releaseProcessMappings(r2)
            throw r1
        L71:
            r1 = move-exception
        L72:
            throw r1
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.superpack.SuperpackUnloader.onTrim(X.06c):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0009 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean shouldUnloadLibrary(X.EnumC014106c r5, X.C0B2 r6) {
        /*
            int r1 = r5.ordinal()
            r5 = 0
            r0 = 1
            switch(r1) {
                case 0: goto L2c;
                case 1: goto L1b;
                case 2: goto L15;
                case 3: goto La;
                case 4: goto L26;
                case 5: goto L2c;
                default: goto L9;
            }
        L9:
            return r5
        La:
            boolean r0 = isStartupLibrary(r6)
            if (r0 != 0) goto L9
            long r3 = r6.A00
            r1 = 20000(0x4e20, double:9.8813E-320)
            goto L20
        L15:
            long r3 = r6.A00
            r1 = 300000(0x493e0, double:1.482197E-318)
            goto L20
        L1b:
            long r3 = r6.A00
            r1 = 1500000(0x16e360, double:7.410985E-318)
        L20:
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 <= 0) goto L9
            r5 = 1
            return r5
        L26:
            boolean r0 = isStartupLibrary(r6)
            r0 = r0 ^ 1
        L2c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.superpack.SuperpackUnloader.shouldUnloadLibrary(X.06c, X.0B2):boolean");
    }
}
