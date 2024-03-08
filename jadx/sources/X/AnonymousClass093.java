package X;

import android.os.Build;
import dalvik.system.VMRuntime;

/* renamed from: X.093  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass093 {
    public static final int A00() {
        return Build.VERSION.SDK_INT;
    }

    public static final String A01() {
        return VMRuntime.getRuntime().vmInstructionSet();
    }
}
