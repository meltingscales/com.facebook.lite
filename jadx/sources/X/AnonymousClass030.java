package X;

import android.os.Handler;
import android.os.HandlerThread;
import java.io.File;
import java.util.Properties;

/* renamed from: X.030  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass030 {
    public final Handler A01;
    public final File A02;
    public final Properties A03 = new Properties();
    public char A00 = '!';

    public AnonymousClass030(File file) {
        this.A02 = file;
        HandlerThread handlerThread = new HandlerThread("ForegroundEntityMapper");
        handlerThread.start();
        this.A01 = new Handler(handlerThread.getLooper());
    }
}
