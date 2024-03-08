package X;

import android.text.TextUtils;
import java.nio.CharBuffer;

/* renamed from: X.0Ap  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C02370Ap {
    public final String A00;
    public final String A01;
    public final String A02;

    public C02370Ap(String str, String str2, String str3) {
        this.A02 = str;
        this.A00 = str2;
        this.A01 = str3;
    }

    public static void A00(CharBuffer charBuffer) {
        int limit = charBuffer.limit() - charBuffer.position();
        if (limit < 4 && limit > 0) {
            try {
                int parseInt = Integer.parseInt(charBuffer.toString(), 10);
                if (parseInt >= 0 && parseInt <= 255) {
                    return;
                }
                throw AnonymousClass000.A06(AnonymousClass000.A0B("IPV4 octet value must be between 0 and 255, got ", AnonymousClass000.A0C(), parseInt));
            } catch (NumberFormatException e) {
                StringBuilder A0C = AnonymousClass000.A0C();
                A0C.append("Unable to parse decimal octet ");
                A0C.append((Object) charBuffer);
                throw new IllegalArgumentException(A0C.toString(), e);
            }
        }
        throw AnonymousClass000.A06("IPV4 octet must contain between 1 and 3 digits");
    }

    public final String A01() {
        StringBuilder A0C = AnonymousClass000.A0C();
        if (!TextUtils.isEmpty(this.A02)) {
            A0C.append("<REDACTED>");
            A0C.append("@");
        }
        String str = this.A00;
        if (!TextUtils.isEmpty(str)) {
            A0C.append(str);
        }
        String str2 = this.A01;
        if (!TextUtils.isEmpty(str2)) {
            A0C.append(":");
            A0C.append(str2);
        }
        return A0C.toString();
    }

    public final String toString() {
        return A01();
    }
}
