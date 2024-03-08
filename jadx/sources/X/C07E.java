package X;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.File;
import java.io.IOException;
import java.util.HashSet;

/* renamed from: X.07E  reason: invalid class name */
/* loaded from: classes.dex */
public final class C07E {
    public static Context A00;
    public static C0B0 A01;
    public static HashSet A02;
    public static boolean A03;

    /* JADX WARN: Can't wrap try/catch for region: R(13:14|15|(1:17)|18|(3:63|64|(10:66|67|68|(1:72)|73|(1:75)|76|(11:78|79|80|81|82|(1:84)|85|(5:87|88|(1:90)|91|(1:(2:94|(1:96))))|99|100|(3:102|103|(8:105|106|107|108|109|110|111|98)(2:112|113))(2:123|124))|135|(1:137)))|20|(1:22)|23|(2:35|(6:40|41|(1:43)|44|45|46)(1:39))(1:27)|28|29|30|31) */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0239, code lost:
        android.util.Log.w("FbSoLoader", "prepend SoSource lib-assets failed", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d1, code lost:
        if ((!java.util.Arrays.equals(r10, r9)) == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01ff, code lost:
        r1 = move-exception;
     */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.Throwable, java.io.File] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized void A01(android.content.Context r18, int r19) {
        /*
            Method dump skipped, instructions count: 642
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C07E.A01(android.content.Context, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00f8 A[Catch: all -> 0x012b, TryCatch #3 {all -> 0x012b, blocks: (B:6:0x0009, B:23:0x00a4, B:28:0x00f4, B:30:0x00f8, B:32:0x0100, B:33:0x0109, B:34:0x0118, B:27:0x00f1, B:36:0x0121, B:7:0x0010, B:8:0x0040, B:10:0x0046, B:13:0x005e, B:21:0x00a0, B:26:0x00d6, B:35:0x0119, B:15:0x0063, B:17:0x006b, B:19:0x0082, B:20:0x0085), top: B:50:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0109 A[Catch: all -> 0x012b, TryCatch #3 {all -> 0x012b, blocks: (B:6:0x0009, B:23:0x00a4, B:28:0x00f4, B:30:0x00f8, B:32:0x0100, B:33:0x0109, B:34:0x0118, B:27:0x00f1, B:36:0x0121, B:7:0x0010, B:8:0x0040, B:10:0x0046, B:13:0x005e, B:21:0x00a0, B:26:0x00d6, B:35:0x0119, B:15:0x0063, B:17:0x006b, B:19:0x0082, B:20:0x0085), top: B:50:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized void A02(java.io.File r15, java.io.File r16, java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C07E.A02(java.io.File, java.io.File, java.lang.String):void");
    }

    public static C0B0 A00(AssetManager assetManager, String str) {
        if (str.isEmpty()) {
            return null;
        }
        try {
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append("lib");
            A0C.append(File.separator);
            assetManager.open(AnonymousClass000.A09("libs", str, A0C)).close();
            C0B0 c0b0 = (C0B0) C0B0.A02.get(str);
            if (c0b0 != null) {
                return c0b0;
            }
            throw new RuntimeException(AnonymousClass000.A09("FbSoLoader unable to determine compression algorithm for ", str, AnonymousClass000.A0C()));
        } catch (IOException unused) {
            return null;
        }
    }
}
