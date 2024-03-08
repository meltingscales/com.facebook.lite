package X;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import java.util.ArrayList;
import java.util.TreeSet;

/* renamed from: X.0BE  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C0BE {
    public static boolean A01(Context context, int i) {
        if (i != 2 && (context.getApplicationInfo().flags & 268435456) != 0) {
            return false;
        }
        return true;
    }

    public static String[] A02() {
        String str;
        String[] strArr = Build.SUPPORTED_ABIS;
        TreeSet treeSet = new TreeSet();
        if (Process.is64Bit()) {
            treeSet.add("arm64-v8a");
            str = "x86_64";
        } else {
            treeSet.add("armeabi-v7a");
            str = "x86";
        }
        treeSet.add(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArr) {
            if (treeSet.contains(str2)) {
                arrayList.add(str2);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean A00() {
        return Process.is64Bit();
    }
}
