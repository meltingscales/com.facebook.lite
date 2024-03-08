package X;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.util.Base64;
import com.facebook.common.stringformat.StringFormatUtil;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* renamed from: X.02J  reason: invalid class name */
/* loaded from: classes.dex */
public final class C02J {
    public final int A00;
    public final String A01;
    public final String A02;
    public final List A03;
    public final List A04;

    public static C02J A00(Context context, int i) {
        try {
            C08H.A04(context, 0);
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i);
            if (packagesForUid != null && packagesForUid.length != 0) {
                return A03(C01C.A01(context, packagesForUid[0], 64), true);
            }
            throw new PackageManager.NameNotFoundException("Unable to get package names for uid $uid");
        } catch (PackageManager.NameNotFoundException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to get packageInfo for uid ");
            sb.append(i);
            throw new AnonymousClass010(sb.toString());
        }
    }

    public static C02J A01(Context context, String str) {
        ProviderInfo A00 = C01C.A00(context, str, 0);
        if (A00 != null) {
            return A02(context, ((PackageItemInfo) A00).packageName, true);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unable to get providerInfo for authority ");
        sb.append(str);
        throw new SecurityException(sb.toString());
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C02J c02j = (C02J) obj;
            if (this.A00 == c02j.A00 && this.A03.equals(c02j.A03)) {
                List list = this.A04;
                List list2 = c02j.A04;
                if (list == list2 || (list != null && list.equals(list2))) {
                    String str = this.A02;
                    String str2 = c02j.A02;
                    if (str == str2 || (str != null && str.equals(str2))) {
                        String str3 = this.A01;
                        String str4 = c02j.A01;
                        if (str3 != str4 && (str3 == null || !str3.equals(str4))) {
                            return false;
                        }
                    } else {
                        return false;
                    }
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.A00), this.A03, this.A04, this.A02, this.A01});
    }

    public static C02J A02(Context context, String str, boolean z) {
        try {
            return A03(C01C.A01(context, str, 64), z);
        } catch (PackageManager.NameNotFoundException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to get packageInfo for package ");
            sb.append(str);
            throw new AnonymousClass010(sb.toString());
        }
    }

    public static C02J A03(AnonymousClass024 anonymousClass024, boolean z) {
        C003801p c003801p;
        HashSet hashSet = new HashSet();
        AnonymousClass025 A01 = anonymousClass024.A01();
        if (A01 != null) {
            List<Signature> list = A01.A00;
            if (!list.isEmpty()) {
                ApplicationInfo applicationInfo = anonymousClass024.A00;
                if (applicationInfo != null) {
                    ArrayList arrayList = new ArrayList(list.size());
                    for (Signature signature : list) {
                        byte[] byteArray = signature.toByteArray();
                        try {
                            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                            messageDigest.update(byteArray);
                            String encodeToString = Base64.encodeToString(messageDigest.digest(), 11);
                            if (z) {
                                MessageDigest messageDigest2 = MessageDigest.getInstance("SHA-1");
                                messageDigest2.update(byteArray);
                                c003801p = new C003801p(Base64.encodeToString(messageDigest2.digest(), 11), encodeToString);
                            } else {
                                c003801p = new C003801p(encodeToString);
                            }
                            arrayList.add(c003801p);
                        } catch (NoSuchAlgorithmException unused) {
                            throw new SecurityException("Error obtaining SHA1/SHA256");
                        }
                    }
                    hashSet.add(anonymousClass024.A01);
                    int i = applicationInfo.uid;
                    return new C02J(anonymousClass024.A02, null, new ArrayList(hashSet), arrayList, i);
                }
                throw new SecurityException("Unable to construct AppIdentity -- package applicationInfo is null");
            }
            throw new C02340Am("Unable to construct AppIdentity -- packageInfo does not have any signatures. Make sure you called getPackageInfo() with GET_SIGNATURES or GET_CERTIFICATES flag.");
        }
        throw new C02340Am("Unable to construct AppIdentity -- signingInfo was null. Make sure you called getPackageInfo() with GET_SIGNATURES or GET_CERTIFICATES flag.");
    }

    public final C003801p A04() {
        List list = this.A04;
        if (list.isEmpty()) {
            return null;
        }
        return (C003801p) list.get(0);
    }

    public final String A05() {
        List list = this.A03;
        if (!list.isEmpty()) {
            return (String) list.iterator().next();
        }
        throw new IllegalStateException("Invalid AppIdentity object: no package names");
    }

    public C02J(String str, String str2, List list, List list2, int i) {
        this.A00 = i;
        this.A03 = Collections.unmodifiableList(list);
        this.A04 = list2;
        this.A02 = str;
        this.A01 = str2;
        if (!list.isEmpty()) {
            return;
        }
        throw new IllegalArgumentException("At least one package name is required");
    }

    public final String toString() {
        String str;
        C003801p A04 = A04();
        StringBuilder sb = new StringBuilder();
        sb.append("AppIdentity{uid=");
        sb.append(this.A00);
        sb.append(", packageNames=");
        sb.append(this.A03);
        sb.append(", sha2=");
        String str2 = StringFormatUtil.NULL_STRING;
        if (A04 == null) {
            str = StringFormatUtil.NULL_STRING;
        } else {
            str = A04.A01;
        }
        sb.append(str);
        sb.append(", version=");
        String str3 = this.A02;
        if (str3 == null) {
            str3 = StringFormatUtil.NULL_STRING;
        }
        sb.append(str3);
        sb.append(", domain=");
        String str4 = this.A01;
        if (str4 != null) {
            str2 = str4;
        }
        sb.append(str2);
        sb.append('}');
        return sb.toString();
    }
}
