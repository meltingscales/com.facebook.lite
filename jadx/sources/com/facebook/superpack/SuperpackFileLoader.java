package com.facebook.superpack;

import X.AbstractC016707o;
import X.AnonymousClass000;
import X.AnonymousClass043;
import X.AnonymousClass046;
import X.C015006s;
import X.C0B5;
import X.C0B9;
import X.C0BF;
import android.util.Log;
import com.facebook.breakpad.BreakpadManager;
import com.facebook.common.stringformat.StringFormatUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public class SuperpackFileLoader implements C0B5 {
    public static final String LOADER_CLASS = "com.facebook.superpack.SuperpackFileLoader";
    public static final String SUPERPACK_EXTENSION = ".spk";
    public static final String SUPERPACK_LIBNAME = "libsuperpack-jni.so";
    public static final String SUPERPACK_LIBNAME_FOR_SOLOADER = "superpack-jni";
    public static final String TAG = "SuperpackFileLoader";
    public static SuperpackFileLoader sInstance;
    public static boolean sLoadedSuperpack;
    public final String mLocalLdLibraryPath;
    public final String mLocalLdLibraryPathNoZips;
    public final Method mNativeLoadRuntimeMethod;
    public static final String[] COMPRESSION_EXTENSIONS = {".lz4", ".zst", ".xz", ".zstd", ".br", ".spo"};
    public static final Map sPendingMappings = Collections.synchronizedMap(AnonymousClass000.A0F());
    public static final Set HOLDOUT_LIBRARIES = new HashSet(Arrays.asList("libliger.so"));
    public static final String[] SIGMUX_LIB = {"libdistractmerged.so", "libsigmux.so"};
    public static final String[] SIGMUX_SOLOADER_LIB = {"distractmerged", "sigmux"};
    public boolean mUnloadLibraries = false;
    public boolean mForceSystemLoad = false;
    public final Runtime mRuntime = Runtime.getRuntime();

    public static void addMappingsToBreakpad(MappingInfo[] mappingInfoArr) {
        for (MappingInfo mappingInfo : mappingInfoArr) {
            addMappingToBreakpad(mappingInfo);
        }
    }

    public static native boolean canLoadInMemoryNative();

    public static native MappingInfo[] loadBytesNative(String str, byte[] bArr);

    public static native MappingInfo[] loadFdNative(String str, int i, long j, long j2);

    public static native void loadFileNative(String str);

    public void setUnloadLibraries() {
        this.mUnloadLibraries = true;
    }

    /* loaded from: classes.dex */
    public class MappingInfo {
        public final byte[] buildId;
        public final long fileOffset;
        public final long mappingSize;
        public final String name;
        public final long startAddress;

        public MappingInfo(String str, byte[] bArr, long j, long j2, long j3) {
            this.name = str;
            this.buildId = bArr;
            this.startAddress = j;
            this.mappingSize = j2;
            this.fileOffset = j3;
        }
    }

    public static void addMappingToBreakpad(MappingInfo mappingInfo) {
        if (BreakpadManager.mNativeLibraryName != null) {
            String str = mappingInfo.name;
            byte[] bArr = mappingInfo.buildId;
            BreakpadManager.addMappingInfo(str, bArr, bArr.length, mappingInfo.startAddress, mappingInfo.mappingSize, mappingInfo.fileOffset);
            return;
        }
        sPendingMappings.put(Long.valueOf(mappingInfo.startAddress), mappingInfo);
    }

    public static boolean canLoadLibraryInMemory(String str) {
        return !HOLDOUT_LIBRARIES.contains(str);
    }

    private void ensureMappingsRegistered() {
        if (BreakpadManager.mNativeLibraryName != null) {
            Map map = sPendingMappings;
            if (!map.isEmpty()) {
                ArrayList arrayList = new ArrayList(map.size());
                synchronized (map) {
                    Iterator A0G = AnonymousClass000.A0G(map);
                    while (A0G.hasNext()) {
                        arrayList.add((MappingInfo) ((Map.Entry) A0G.next()).getValue());
                        A0G.remove();
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    MappingInfo mappingInfo = (MappingInfo) it.next();
                    String str = mappingInfo.name;
                    byte[] bArr = mappingInfo.buildId;
                    BreakpadManager.addMappingInfo(str, bArr, bArr.length, mappingInfo.startAddress, mappingInfo.mappingSize, mappingInfo.fileOffset);
                }
            }
        }
    }

    public static File getCompressedSoFileOrNull(File file, String str) {
        String[] strArr;
        for (String str2 : COMPRESSION_EXTENSIONS) {
            File A04 = AnonymousClass000.A04(file, AnonymousClass000.A09(str, str2, AnonymousClass000.A0C()));
            if (!A04.exists()) {
                File A042 = AnonymousClass000.A04(file, AnonymousClass000.A09(SUPERPACK_EXTENSION, str2, AnonymousClass000.A0D(str)));
                if (A042.exists()) {
                    return A042;
                }
            } else {
                return A04;
            }
        }
        return null;
    }

    public static SuperpackFileLoader getInstance() {
        if (sInstance == null) {
            synchronized (SuperpackFileLoader.class) {
                if (sInstance == null) {
                    sInstance = new SuperpackFileLoader();
                }
            }
        }
        return sInstance;
    }

    private String getLibHash(String str) {
        try {
            File file = new File(str);
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    messageDigest.update(bArr, 0, read);
                } else {
                    String formatStrLocaleSafe = StringFormatUtil.formatStrLocaleSafe("%32x", new BigInteger(1, messageDigest.digest()));
                    fileInputStream.close();
                    return formatStrLocaleSafe;
                }
            }
        } catch (IOException | SecurityException | NoSuchAlgorithmException e) {
            return e.toString();
        }
    }

    public static String getLibraryName(String str) {
        int lastIndexOf = str.lastIndexOf(File.separatorChar);
        int lastIndexOf2 = str.lastIndexOf(".so");
        int i = lastIndexOf + 1;
        if (lastIndexOf2 == -1) {
            return str.substring(i);
        }
        return str.substring(i, lastIndexOf2 + 3);
    }

    public static boolean isLibraryCompressed(String str) {
        return !str.endsWith(".so");
    }

    public static boolean isLoadingInMemorySupported() {
        if (!sLoadedSuperpack) {
            C0B9.A09(SUPERPACK_LIBNAME_FOR_SOLOADER);
        }
        return canLoadInMemoryNative();
    }

    public static boolean isSuperpackLib(String str) {
        return str.regionMatches(str.lastIndexOf(File.separatorChar) + 1, SUPERPACK_LIBNAME, 0, 19);
    }

    public static MappingInfo[] loadFd(String str, AbstractC016707o abstractC016707o) {
        throw AnonymousClass000.A08("hasBackingFile");
    }

    private void loadLibrary(String str) {
        if (sLoadedSuperpack) {
            loadFile(str);
            ensureMappingsRegistered();
            return;
        }
        System.load(str);
        if (!isSuperpackLib(str)) {
            return;
        }
        sLoadedSuperpack = true;
    }

    public static void loadSigmux() {
        String[] strArr = SIGMUX_SOLOADER_LIB;
        for (String str : strArr) {
            String str2 = str;
            String A00 = AnonymousClass043.A00(str);
            if (A00 != null) {
                str2 = A00;
            }
            String mapLibraryName = System.mapLibraryName(str2);
            ReentrantReadWriteLock reentrantReadWriteLock = C0B9.A08;
            reentrantReadWriteLock.readLock().lock();
            try {
                if (C0B9.A0C != null) {
                    for (int i = 0; i < C0B9.A0C.length; i++) {
                        if (C0B9.A0C[i].A02(mapLibraryName) != null) {
                            AnonymousClass000.A0O(reentrantReadWriteLock);
                            C0B9.A09(str);
                            return;
                        }
                    }
                    continue;
                }
                AnonymousClass000.A0O(reentrantReadWriteLock);
            } catch (Throwable th) {
                AnonymousClass000.A0O(reentrantReadWriteLock);
                throw th;
            }
        }
        UnsatisfiedLinkError e = null;
        for (String str3 : strArr) {
            try {
                C0B9.A09(str3);
                return;
            } catch (UnsatisfiedLinkError e2) {
                e = e2;
            }
        }
        if (e != null) {
            C015006s.A09(TAG, "Failed to load sigmux when loading superpack loader", e);
            throw e;
        }
    }

    public static Method tryGetLoaderMethod(String str, Class... clsArr) {
        try {
            return Class.forName(LOADER_CLASS).getMethod(str, clsArr);
        } catch (ClassNotFoundException e) {
            C015006s.A09(TAG, "Could not find class com.facebook.superpack.SuperpackFileLoader", e);
            throw new RuntimeException("Could not find class com.facebook.superpack.SuperpackFileLoader", e);
        } catch (NoSuchMethodException e2) {
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append("Could not find method ");
            A0C.append(str);
            String A09 = AnonymousClass000.A09(" in ", LOADER_CLASS, A0C);
            C015006s.A09(TAG, A09, e2);
            throw new RuntimeException(A09, e2);
        }
    }

    @Override // X.C0B5
    public void load(String str, int i) {
        String str2;
        if (this.mNativeLoadRuntimeMethod == null) {
            if (this.mForceSystemLoad) {
                System.load(str);
                return;
            } else {
                loadLibrary(str);
                return;
            }
        }
        if ((i & 4) == 4) {
            str2 = this.mLocalLdLibraryPath;
        } else {
            str2 = this.mLocalLdLibraryPathNoZips;
        }
        try {
            try {
                try {
                    synchronized (this.mRuntime) {
                        try {
                            String str3 = (String) this.mNativeLoadRuntimeMethod.invoke(this.mRuntime, str, C0B9.class.getClassLoader(), str2);
                            if (str3 == null) {
                                return;
                            }
                            throw new UnsatisfiedLinkError(str3);
                        } catch (Throwable th) {
                            th = th;
                            try {
                                throw th;
                            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
                                e = e;
                                throw new RuntimeException(AnonymousClass000.A09("Error: Cannot load ", str, AnonymousClass000.A0C()), e);
                            }
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                e = e2;
            }
        } catch (Throwable th3) {
            if (0 != 0) {
                String str4 = TAG;
                StringBuilder A0C = AnonymousClass000.A0C();
                A0C.append("Error when loading library: ");
                A0C.append((String) null);
                A0C.append(", library hash is ");
                A0C.append(getLibHash(str));
                Log.e(str4, AnonymousClass000.A09(", LD_LIBRARY_PATH is ", str2, A0C));
            }
            throw th3;
        }
    }

    public SuperpackFileLoader() {
        String str;
        Method A03 = C0BF.A03();
        this.mNativeLoadRuntimeMethod = A03;
        if (A03 != null) {
            str = C0BF.A01();
        } else {
            str = null;
        }
        this.mLocalLdLibraryPath = str;
        this.mLocalLdLibraryPathNoZips = C0BF.A02(str);
    }

    public static MappingInfo[] loadBytes(String str, AnonymousClass046 anonymousClass046) {
        try {
            ByteBuffer allocate = ByteBuffer.allocate((int) anonymousClass046.size());
            anonymousClass046.read(allocate);
            MappingInfo[] loadBytesNative = loadBytesNative(str, allocate.array());
            if (loadBytesNative != null) {
                addMappingsToBreakpad(loadBytesNative);
            }
            return loadBytesNative;
        } catch (IOException unused) {
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append("Failed to load ");
            A0C.append(str);
            throw new RuntimeException(AnonymousClass000.A0A(": Could not read file", A0C));
        }
    }

    public static void loadFile(String str) {
        try {
            loadFileNative(str);
        } catch (UnsatisfiedLinkError e) {
            if (!(!str.endsWith(".so"))) {
                System.load(str);
                return;
            }
            throw e;
        }
    }

    public void setForceSystemLoad(boolean z) {
        this.mForceSystemLoad = z;
    }

    public void loadBytes(String str, AnonymousClass046 anonymousClass046, int i) {
        MappingInfo[] loadBytes = loadBytes(str, anonymousClass046);
        if (this.mUnloadLibraries && loadBytes != null && loadBytes.length > 0) {
            SuperpackUnloader.registerLibraryForUnloading(str);
        }
        ensureMappingsRegistered();
    }
}
