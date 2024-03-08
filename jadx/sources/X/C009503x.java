package X;

import android.net.Uri;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.List;

/* renamed from: X.03x  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C009503x {
    public static final List A03 = Arrays.asList("log_type", "build_id", "app_id", "user_id", "device_id", C07M.A09.A00);
    public final Uri A00;
    public final InterfaceC009303v A01;
    public final C008803q A02;

    public static void A00(OutputStream outputStream, String str, String str2, String str3) {
        outputStream.write(String.format("--%s\r\nContent-Disposition: %s\"%s\"\r\nContent-Type: application/binary\r\nContent-Transfer-Encoding: binary\r\n\r\n", str3, "form-data; name=", str).getBytes());
        outputStream.write(str2.getBytes("UTF-8"));
        outputStream.write("\r\n".getBytes());
    }

    /* JADX WARN: Removed duplicated region for block: B:114:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0237 A[Catch: all -> 0x024f, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x024f, blocks: (B:36:0x0131, B:71:0x0237, B:37:0x0135, B:39:0x013a, B:69:0x0232, B:40:0x0141, B:41:0x0149, B:43:0x014f, B:44:0x0167, B:45:0x0170, B:47:0x0176, B:49:0x017a, B:50:0x0192, B:51:0x019a, B:53:0x01a0, B:54:0x01cc, B:55:0x01d7, B:57:0x01de, B:58:0x01e2, B:61:0x01fd, B:60:0x01e7, B:62:0x0207, B:64:0x0223, B:65:0x0227, B:66:0x022b), top: B:91:0x0131 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x023f A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A01(final X.C02N r17, java.util.Map r18, int r19) {
        /*
            Method dump skipped, instructions count: 596
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C009503x.A01(X.02N, java.util.Map, int):boolean");
    }

    public C009503x(Uri uri, InterfaceC009303v interfaceC009303v, C008803q c008803q) {
        this.A00 = uri;
        this.A01 = interfaceC009303v;
        this.A02 = c008803q;
    }
}
