package X;

import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* renamed from: X.047  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass047 implements AnonymousClass046 {
    public File A00;
    public FileInputStream A01;
    public FileChannel A02;

    @Override // X.AnonymousClass046
    public final int AWF(ByteBuffer byteBuffer, long j) {
        return this.A02.read(byteBuffer, j);
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.A01.close();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return this.A02.isOpen();
    }

    @Override // X.AnonymousClass046, java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        return this.A02.read(byteBuffer);
    }

    @Override // X.AnonymousClass046
    public final long size() {
        return this.A02.size();
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        return this.A02.write(byteBuffer);
    }

    public AnonymousClass047(File file) {
        this.A00 = file;
        FileInputStream fileInputStream = new FileInputStream(file);
        this.A01 = fileInputStream;
        this.A02 = fileInputStream.getChannel();
    }
}
