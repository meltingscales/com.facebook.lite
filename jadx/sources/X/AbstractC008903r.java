package X;

import android.net.Uri;
import java.net.URI;

/* renamed from: X.03r  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC008903r {
    public static final InterfaceC009003s A00 = new InterfaceC009003s() { // from class: X.03t
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00f9, code lost:
            r0 = X.C02360Ao.A01(r15, r10, r7, r9 + 1, r2);
         */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00b6  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x00c4 A[EDGE_INSN: B:69:0x00c4->B:46:0x00c4 ?: BREAK  , SYNTHETIC] */
        @Override // X.InterfaceC009003s
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.String AYQ(java.lang.String r15) {
            /*
                Method dump skipped, instructions count: 302
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: X.C009103t.AYQ(java.lang.String):java.lang.String");
        }
    };
    public static volatile boolean A01;

    public static Uri A00(AnonymousClass005 anonymousClass005, String str, boolean z) {
        if (str != null) {
            if (anonymousClass005 != null) {
                try {
                    return A01(str);
                } catch (SecurityException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Parse uri <sanitized \"");
                    sb.append(A00.AYQ(str));
                    sb.append("\"> failed. Fail open: ");
                    sb.append(z);
                    anonymousClass005.AXX("UriParser", sb.toString(), e);
                    if (z) {
                        return Uri.parse(str);
                    }
                    return null;
                }
            }
            throw new IllegalArgumentException("reporter is null");
        }
        throw new IllegalArgumentException("Url string is null");
    }

    public static boolean A04(String str, String str2) {
        if (str != null && !str.equals("")) {
            return str.equals(str2);
        }
        if (str2 != null && !str2.equals("")) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0085, code lost:
        if (r1.contains("_") != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009a, code lost:
        if (r1.contains("_") == false) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.net.Uri A01(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.AbstractC008903r.A01(java.lang.String):android.net.Uri");
    }

    public static void A02(Uri uri, String str, URI uri2) {
        boolean A04 = A04(uri2.getScheme(), uri.getScheme());
        boolean A042 = A04(uri2.getSchemeSpecificPart(), uri.getSchemeSpecificPart());
        if (A04 && A042) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("java uri <sanitized \"");
        String obj = uri2.toString();
        InterfaceC009003s interfaceC009003s = A00;
        sb.append(interfaceC009003s.AYQ(obj));
        sb.append("\"> not equal to android uri <sanitized \"");
        sb.append(interfaceC009003s.AYQ(uri.toString()));
        sb.append("\"> from original <sanitized \"");
        sb.append(interfaceC009003s.AYQ(str));
        sb.append("\">");
        throw new SecurityException(sb.toString());
    }

    public static void A03(Uri uri, URI uri2, boolean z) {
        boolean A04 = A04(uri2.getScheme(), uri.getScheme());
        boolean A042 = A04(uri2.getAuthority(), uri.getAuthority());
        boolean A043 = A04(uri2.getPath(), uri.getPath());
        if (A04 && A042 && A043) {
            return;
        }
        String str = "";
        if (!A04) {
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append("javaUri scheme: \"");
            sb.append(uri2.getScheme());
            sb.append("\". androidUri scheme: \"");
            sb.append(uri.getScheme());
            sb.append("\".");
            str = sb.toString();
        }
        if (!z && !A042) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append("javaUri authority: \"");
            sb2.append(uri2.getAuthority());
            sb2.append("\". androidUri authority: \"");
            sb2.append(uri.getAuthority());
            sb2.append("\".");
            str = sb2.toString();
        }
        if (!A043) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append("javaUri path: \"");
            sb3.append(uri2.getPath());
            sb3.append("\". androidUri path: \"");
            sb3.append(uri.getPath());
            sb3.append("\".");
            str = sb3.toString();
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("java uri <sanitized \"");
        String obj = uri2.toString();
        InterfaceC009003s interfaceC009003s = A00;
        sb4.append(interfaceC009003s.AYQ(obj));
        sb4.append("\"> not equal to android uri <sanitized \"");
        sb4.append(interfaceC009003s.AYQ(uri.toString()));
        sb4.append("\">. Debug info ");
        sb4.append(str);
        sb4.append(".");
        throw new SecurityException(sb4.toString());
    }
}
