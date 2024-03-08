package X;

import java.util.Arrays;
import java.util.List;

/* renamed from: X.02K  reason: invalid class name */
/* loaded from: classes.dex */
public final class C02K {
    public static int A00;
    public static C010904n A01;
    public static final List A04 = Arrays.asList("media", "mms", "mms-sms", "sms");
    public static final List A03 = Arrays.asList("com.android.", "com.google.android.");
    public static C02L[] A02 = new C02L[8];

    /* JADX WARN: Multi-variable type inference failed */
    public static void A00(final Integer num, final String str, final int i) {
        C010904n c010904n;
        C02L[] c02lArr;
        int i2;
        synchronized (C02K.class) {
            c010904n = A01;
            c02lArr = A02;
            i2 = A00;
            if (c02lArr != 0) {
                A00 = i2 + 1;
            }
        }
        if (c010904n != null) {
            c010904n.A00(num, str, i);
        } else if (c02lArr == 0 || i2 >= c02lArr.length) {
        } else {
            c02lArr[i2] = new Object(num, str, i) { // from class: X.02L
                public final int A00;
                public final Integer A01;
                public final String A02;

                {
                    this.A01 = num;
                    this.A02 = str;
                    this.A00 = i;
                }
            };
        }
    }
}
