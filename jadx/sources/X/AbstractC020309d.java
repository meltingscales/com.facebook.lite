package X;

import android.text.TextUtils;
import android.util.Base64;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: X.09d  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC020309d {
    public static String A00(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Base64.encodeToString(((InetAddress) it.next()).getAddress(), 3));
        }
        return TextUtils.join(";", arrayList);
    }

    public static List A01(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return Collections.emptyList();
        }
        String[] split = str2.split(";");
        int length = split.length;
        ArrayList arrayList = new ArrayList(length);
        for (String str3 : split) {
            try {
                try {
                    arrayList.add(InetAddress.getByAddress(str, Base64.decode(str3, 3)));
                } catch (IllegalArgumentException unused) {
                    throw new UnknownHostException("Failed to decodeSingleAddress an InetAddress");
                    break;
                }
            } catch (UnknownHostException unused2) {
            }
        }
        if (length != 1 || arrayList.size() != 0) {
            return arrayList;
        }
        String str4 = split[0];
        InetAddress inetAddress = null;
        if (str4 != null && !str4.isEmpty()) {
            try {
                inetAddress = InetAddress.getByAddress(str, InetAddress.getByName(str4).getAddress());
            } catch (UnknownHostException unused3) {
            }
        }
        if (inetAddress == null) {
            return arrayList;
        }
        return Collections.singletonList(inetAddress);
    }
}
