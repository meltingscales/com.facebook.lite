package com.facebook.superpack;

import android.content.res.AssetManager;
import java.io.InputStream;

/* loaded from: classes.dex */
public class AssetDecompressor {
    public static native String[] decompress(AssetManager assetManager, String str, String str2, String str3);

    public static native String[] decompress_legacy(InputStream inputStream, String str, String str2);

    public static native int get_architecture();

    public static native int sync_file_to_disk(String str);

    public static native void testDecompressorLibraryUsable(byte[] bArr);
}
