package X;

import android.content.Context;
import android.os.SystemClock;
import dalvik.system.DexFile;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;

/* renamed from: X.02d  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC005202d {
    public static Long A00;

    public static void A01(final Context context, final boolean z, boolean z2) {
        Long l = A00;
        if (l != null && SystemClock.elapsedRealtime() - l.longValue() < 5000) {
            return;
        }
        A00 = Long.valueOf(SystemClock.elapsedRealtime());
        if (z2) {
            new Thread(new Runnable() { // from class: X.09K
                public static final String __redex_internal_original_name = "LiteClassPreloader$1";

                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC005202d.A00(context, z);
                }
            }).start();
        } else {
            A00(context, z);
        }
    }

    public static void A00(Context context, boolean z) {
        DexFile[] dexFileArr;
        C07Y A002 = C07Y.A00(context);
        ArrayList arrayList = new ArrayList();
        for (DexFile dexFile : A002.A04) {
            if (dexFile != null) {
                Enumeration<String> entries = dexFile.entries();
                while (entries.hasMoreElements()) {
                    arrayList.add(entries.nextElement());
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                Class.forName((String) it.next(), z, A002);
            } catch (ClassNotFoundException unused) {
            }
        }
    }
}
