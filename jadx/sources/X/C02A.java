package X;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.net.Socket;
import java.util.Map;

/* renamed from: X.02A  reason: invalid class name */
/* loaded from: classes.dex */
public final class C02A {
    public final ParcelFileDescriptor A00;
    public final EnumC020109b A01;
    public final C04I A02;
    public final Integer A03;
    public final Integer A04;
    public final String A05;
    public final Socket A06;
    public final ParcelFileDescriptor A07;
    public final Map A08;

    public C02A(Integer num, Map map) {
        this(null, null, EnumC020109b.NOT_SET, null, AnonymousClass050.A01, num, "", null, map);
    }

    public final long A00(EnumC020009a enumC020009a) {
        Number number = (Number) this.A08.get(enumC020009a);
        if (number != null) {
            return number.longValue();
        }
        return -1L;
    }

    public final void A01() {
        try {
            ParcelFileDescriptor parcelFileDescriptor = this.A07;
            if (parcelFileDescriptor != null) {
                parcelFileDescriptor.close();
            }
        } catch (IOException e) {
            Log.e("EarlySocket", "Unable to close dupped fd.", e);
        }
    }

    public C02A(ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, EnumC020109b enumC020109b, C04I c04i, Integer num, Integer num2, String str, Socket socket, Map map) {
        this.A04 = num;
        this.A03 = num2;
        this.A02 = c04i;
        this.A06 = socket;
        this.A08 = map;
        this.A00 = parcelFileDescriptor;
        this.A07 = parcelFileDescriptor2;
        this.A05 = str;
        this.A01 = enumC020109b;
    }
}
