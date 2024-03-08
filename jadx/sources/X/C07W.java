package X;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;

/* renamed from: X.07W  reason: invalid class name */
/* loaded from: classes.dex */
public class C07W {
    public MappedByteBuffer A00;
    public final File A01;

    public void A00() {
    }

    public C07W(File file) {
        this.A01 = file;
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        try {
            FileChannel channel = randomAccessFile.getChannel();
            this.A00 = channel.map(FileChannel.MapMode.READ_WRITE, 0L, 4096);
            if (channel.tryLock() != null) {
                channel.close();
                randomAccessFile.close();
                return;
            }
            throw new IOException(String.format("Unable to acquire lock for app state log aslFile: %s", file.getCanonicalPath()));
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }
}
