package X;

import java.io.Closeable;

/* renamed from: X.0A6  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0A6 implements Closeable {
    public Long A00;
    public final Long A01 = Long.valueOf(System.nanoTime());

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.A00 = Long.valueOf(System.nanoTime());
    }
}
