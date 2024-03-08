package X;

import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;

/* renamed from: X.046  reason: invalid class name */
/* loaded from: classes.dex */
public interface AnonymousClass046 extends ByteChannel {
    int AWF(ByteBuffer byteBuffer, long j);

    @Override // java.nio.channels.ReadableByteChannel
    int read(ByteBuffer byteBuffer);

    long size();
}
