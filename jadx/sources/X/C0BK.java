package X;

import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

/* renamed from: X.0BK  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C0BK implements Closeable {
    public abstract void A01(File file);

    public abstract C0BJ[] A02();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public static void A00(C0BJ c0bj, File file, InputStream inputStream, byte[] bArr) {
        boolean exists;
        boolean writable;
        String str = c0bj.A01;
        AbstractC02450Ax.A00("fb-UnpackingSoSource");
        File A04 = AnonymousClass000.A04(file, str);
        try {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(A04, "rw");
                try {
                    int available = inputStream.available();
                    if (available > 1) {
                        C0BF.A07(randomAccessFile.getFD(), available);
                    }
                    int i = 0;
                    while (true) {
                        int read = inputStream.read(bArr, 0, Math.min(32768, Integer.MAX_VALUE - i));
                        if (read == -1) {
                            break;
                        }
                        randomAccessFile.write(bArr, 0, read);
                        i += read;
                        if (i >= Integer.MAX_VALUE) {
                            break;
                        }
                    }
                    randomAccessFile.setLength(randomAccessFile.getFilePointer());
                    if (A04.setExecutable(true, false)) {
                        if (exists) {
                            if (!writable) {
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    throw AnonymousClass000.A05(A04, "cannot make file executable: ", AnonymousClass000.A0C());
                } finally {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable unused) {
                    }
                }
            } catch (IOException e) {
                StringBuilder A0C = AnonymousClass000.A0C();
                A0C.append("error extracting dso  ");
                A0C.append(A04);
                A0C.append(" due to: ");
                A0C.append(e);
                Log.e("fb-UnpackingSoSource", A0C.toString());
                C0BF.A05(A04);
                throw e;
            }
        } finally {
            if (A04.exists() && !A04.setWritable(false)) {
                StringBuilder A0D = AnonymousClass000.A0D("Error removing ");
                A0D.append(A04);
                A0D.append(" write permission from directory ");
                A0D.append(file);
                A0D.append(" (writable: ");
                A0D.append(file.canWrite());
                AnonymousClass000.A0N(")", "SoLoader", A0D);
            }
        }
    }
}
