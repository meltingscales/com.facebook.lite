package X;

import android.content.Context;
import android.net.NetworkInfo;
import com.facebook.common.dextricks.classtracing.logger.ClassTracingLoggerFbLite;

/* renamed from: X.09P  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C09P {
    public static boolean A01(Context context) {
        AnonymousClass099 anonymousClass099;
        AnonymousClass099 anonymousClass0992;
        AnonymousClass099 anonymousClass0993;
        NetworkInfo networkInfo = C09g.A00(context).getNetworkInfo(0);
        if (networkInfo == null) {
            anonymousClass099 = null;
        } else {
            anonymousClass099 = new AnonymousClass099(networkInfo);
        }
        NetworkInfo networkInfo2 = C09g.A00(context).getNetworkInfo(1);
        if (networkInfo2 == null) {
            anonymousClass0992 = null;
        } else {
            anonymousClass0992 = new AnonymousClass099(networkInfo2);
        }
        NetworkInfo networkInfo3 = C09g.A00(context).getNetworkInfo(6);
        if (networkInfo3 == null) {
            anonymousClass0993 = null;
        } else {
            anonymousClass0993 = new AnonymousClass099(networkInfo3);
        }
        return (anonymousClass099 != null && anonymousClass099.A00.isConnectedOrConnecting()) || (anonymousClass0992 != null && anonymousClass0992.A00.isConnectedOrConnecting()) || (anonymousClass0993 != null && anonymousClass0993.A00.isConnectedOrConnecting());
    }

    public static Integer A00(Context context) {
        AnonymousClass099 A01 = C09g.A01(context);
        if (A01 != null) {
            NetworkInfo networkInfo = A01.A00;
            if (networkInfo.isConnected()) {
                if (networkInfo.getType() == 1) {
                    return AnonymousClass050.A0c;
                }
                if (networkInfo.getType() == 0) {
                    switch (networkInfo.getSubtype()) {
                        case 1:
                        case 2:
                        case ClassTracingLoggerFbLite.ENCODED_CLASS_NAMES_LENGTH /* 4 */:
                        case 7:
                        case 11:
                            return AnonymousClass050.A0C;
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            return AnonymousClass050.A0N;
                        case 13:
                            return AnonymousClass050.A0V;
                    }
                }
                return AnonymousClass050.A01;
            }
        }
        return AnonymousClass050.A00;
    }

    public static boolean A02(Context context) {
        NetworkInfo networkInfo;
        if (!A01(context) || (networkInfo = C09g.A00(context).getNetworkInfo(1)) == null || !new AnonymousClass099(networkInfo).A00.isConnectedOrConnecting()) {
            return false;
        }
        return true;
    }
}
