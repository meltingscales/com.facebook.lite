package X;

import android.content.Context;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: X.041  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass041 {
    public static final Map A00 = Collections.synchronizedMap(new HashMap());

    public static void A00(Context context, int i) {
        try {
            File file = new File(context.getFilesDir(), "GkBootstrap");
            if (!file.exists()) {
                if (!file.mkdir()) {
                    return;
                }
            }
            File file2 = new File(new File(context.getFilesDir(), "GkBootstrap"), "breakpad_write_only_crash_thread");
            try {
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file2));
                dataOutputStream.writeInt(i);
                dataOutputStream.close();
            } catch (IOException | SecurityException e) {
                C015006s.A0G("GkBootstrap", "Unable to persist GK value to %s", e, file2);
            }
        } catch (SecurityException e2) {
            C015006s.A0F("GkBootstrap", "Unable to create %s directory", e2, "GkBootstrap");
        }
    }
}
