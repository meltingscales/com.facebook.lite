package X;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* renamed from: X.01J  reason: invalid class name */
/* loaded from: classes.dex */
public final class C01J implements AnonymousClass029 {
    public final C04I A00;
    public final Socket A01;

    @Override // X.AnonymousClass029
    public final String ADk() {
        return null;
    }

    @Override // X.AnonymousClass029
    public final String getEarlyDataType() {
        return "NOT_FIZZ_SOCKET";
    }

    @Override // X.AnonymousClass029
    public final int getTransportType() {
        return 1;
    }

    @Override // X.AnonymousClass029
    public final void setKeepAlive(boolean z) {
    }

    @Override // X.AnonymousClass029
    public final void setTcpNoDelay(boolean z) {
    }

    @Override // X.AnonymousClass029
    public final C020809j AFZ() {
        return this.A00.A00.A01;
    }

    @Override // X.AnonymousClass029
    public final void close() {
        this.A01.close();
    }

    @Override // X.AnonymousClass029
    public final InputStream getInputStream() {
        return this.A01.getInputStream();
    }

    @Override // X.AnonymousClass029
    public final OutputStream getOutputStream() {
        return this.A01.getOutputStream();
    }

    @Override // X.AnonymousClass029
    public final boolean isClosed() {
        return this.A01.isClosed();
    }

    @Override // X.AnonymousClass029
    public final boolean isConnected() {
        return this.A01.isConnected();
    }

    public C01J(C04I c04i, Socket socket) {
        this.A01 = socket;
        this.A00 = c04i;
    }
}
