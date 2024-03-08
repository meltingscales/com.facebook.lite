package X;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/* renamed from: X.023  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass023 {
    public static String[] A05(Context context, int i) {
        try {
            C08H.A04(context, 0);
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i);
            if (packagesForUid != null && packagesForUid.length != 0) {
                return packagesForUid;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("No packageName associated with uid=");
            sb.append(i);
            throw new AnonymousClass010(sb.toString());
        } catch (RuntimeException e) {
            throw new SecurityException(e);
        }
    }

    public static AnonymousClass024 A01(Context context, String str) {
        try {
            AnonymousClass024 A01 = C01C.A01(context, str, 64);
            String str2 = A01.A01;
            if (str.equals(str2)) {
                return A01;
            }
            throw new C02330Al(str, str2);
        } catch (PackageManager.NameNotFoundException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" not found by PackageManager.");
            throw new AnonymousClass010(sb.toString());
        } catch (RuntimeException e) {
            throw new SecurityException(e);
        }
    }

    public static boolean A04(Context context, ApplicationInfo applicationInfo, ApplicationInfo applicationInfo2) {
        int i = applicationInfo.uid;
        int i2 = applicationInfo2.uid;
        boolean z = false;
        if (i == i2) {
            z = true;
        }
        if (!z) {
            try {
                if (context.getPackageManager().checkSignatures(i, i2) != 0) {
                    return false;
                }
            } catch (RuntimeException e) {
                throw new SecurityException(e);
            }
        }
        return true;
    }

    public static Signature A00(AnonymousClass024 anonymousClass024) {
        AnonymousClass025 A01 = anonymousClass024.A01();
        if (A01 != null) {
            List list = A01.A00;
            if (list.size() <= 1) {
                return (Signature) list.get(0);
            }
            throw new C02320Ak(anonymousClass024.A01);
        }
        throw new C02340Am(anonymousClass024.A01);
    }

    public static C003801p A02(Context context, String str) {
        byte[] byteArray = A00(A01(context, str)).toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(byteArray);
            return new C003801p(Base64.encodeToString(messageDigest.digest(), 11));
        } catch (NoSuchAlgorithmException unused) {
            throw new SecurityException("Error obtaining SHA1/SHA256");
        }
    }

    public static boolean A03(Context context) {
        return AbstractC003701o.A1H.contains(A02(context, context.getPackageName()));
    }
}
