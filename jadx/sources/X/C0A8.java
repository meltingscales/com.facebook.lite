package X;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import java.util.Iterator;
import java.util.List;

/* renamed from: X.0A8  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C0A8 {
    public static String A00;
    public static final Object A01 = new Object();

    public static String A00(Context context) {
        String str;
        synchronized (A01) {
            str = A00;
            if (str == null) {
                int myPid = Process.myPid();
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
                if (runningAppProcesses != null) {
                    Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        ActivityManager.RunningAppProcessInfo next = it.next();
                        if (next.pid == myPid) {
                            A00 = next.processName;
                            break;
                        }
                    }
                }
                str = A00;
                if (str == null) {
                    str = (String) C06k.A00().first;
                    A00 = str;
                    if (str != null) {
                        str = str.trim();
                        A00 = str;
                    }
                }
            }
        }
        return str;
    }
}
