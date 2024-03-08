package X;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* renamed from: X.03d  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C03d {
    public static char A00(File file) {
        EnumC016407i enumC016407i;
        RandomAccessFile randomAccessFile;
        if (file.exists()) {
            try {
                randomAccessFile = new RandomAccessFile(file, "rw");
            } catch (IOException e) {
                AbstractC019608w.A00();
                C015006s.A0B("lacrima", "Reading AppStateNativeParser failed", e);
            }
            if (randomAccessFile.length() != 0) {
                char readByte = (char) randomAccessFile.readByte();
                randomAccessFile.close();
                return readByte;
            }
            randomAccessFile.close();
            enumC016407i = EnumC016407i.A06;
        } else {
            enumC016407i = EnumC016407i.A09;
        }
        return enumC016407i.A01;
    }
}
