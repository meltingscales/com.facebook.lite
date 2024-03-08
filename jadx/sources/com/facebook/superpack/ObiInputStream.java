package com.facebook.superpack;

import X.C0B9;
import java.io.InputStream;

/* loaded from: classes.dex */
public abstract class ObiInputStream extends InputStream {
    public static native void closeNative(long j, byte[] bArr);

    public static native long openBytesNative(byte[] bArr, int i, int i2);

    public static native long openInputStreamNative(InputStream inputStream, int i);

    public static native long openRawBytesNative(long j, int i);

    public static native int readNative(long j, byte[] bArr, int i, int i2);

    static {
        C0B9.A09(SuperpackFileLoader.SUPERPACK_LIBNAME_FOR_SOLOADER);
    }
}
