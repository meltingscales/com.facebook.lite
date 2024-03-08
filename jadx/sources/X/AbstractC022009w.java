package X;

import android.os.Build;
import android.os.StatFs;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;

/* renamed from: X.09w  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC022009w {
    public static long A00(String str) {
        long blockSize;
        long availableBlocks;
        try {
            StatFs statFs = new StatFs(str);
            if (Build.VERSION.SDK_INT >= 18) {
                blockSize = statFs.getBlockSizeLong();
                availableBlocks = statFs.getAvailableBlocksLong();
            } else {
                blockSize = statFs.getBlockSize();
                availableBlocks = statFs.getAvailableBlocks();
            }
            return availableBlocks * blockSize;
        } catch (Exception unused) {
            return -1L;
        }
    }

    public static void A01(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
                C015006s.A0J("DexStore", "error closing %s", e, closeable);
            }
        }
    }

    public static void A02(File file) {
        String str;
        Object[] objArr;
        String str2;
        if (file.getCanonicalFile().equals(file.getAbsoluteFile())) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles == null) {
                    str = "DexStore";
                    objArr = new Object[]{file.getCanonicalPath()};
                    str2 = "Failed to list files in: %s";
                    C015006s.A0I(str, str2, objArr);
                }
                for (File file2 : listFiles) {
                    file2.getCanonicalPath();
                    A02(file2);
                }
            }
            str = "DexStore";
            file.getCanonicalPath();
            if (file.delete()) {
                return;
            }
            objArr = new Object[]{file.getCanonicalPath()};
            str2 = "Failed to delete: %s";
            C015006s.A0I(str, str2, objArr);
        }
    }

    public static void A03(File file, File file2) {
        if (file.renameTo(file2)) {
            return;
        }
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("rename of ");
        A0C.append(file);
        A0C.append(" to ");
        A0C.append(file2);
        throw new IOException(AnonymousClass000.A0A(" failed", A0C));
    }
}
