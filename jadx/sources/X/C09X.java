package X;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.net.Socket;
import java.util.Map;

/* renamed from: X.09X  reason: invalid class name */
/* loaded from: classes.dex */
public final class C09X {
    public int A01;
    public Context A03;
    public C0A1 A04;
    public boolean A07;
    public boolean A08;
    public Map A06 = AnonymousClass000.A0F();
    public EnumC020109b A05 = EnumC020109b.NOT_SET;
    public int A00 = 2;
    public int A02 = -1;

    public static C02A A00(C09X c09x, Exception exc, Integer num, String str, Socket socket) {
        try {
            try {
                Log.e("EarlySocket", str, exc);
                socket.close();
            } catch (IOException e) {
                Log.e("EarlySocket", "Unable to close EarlySocket.", e);
            }
            return new C02A(num, c09x.A06);
        } catch (Throwable unused) {
            return new C02A(num, c09x.A06);
        }
    }
}
