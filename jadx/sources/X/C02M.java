package X;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;

/* renamed from: X.02M  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C02M {
    public static Cursor A01(ContentResolver contentResolver, Uri uri, Bundle bundle, String[] strArr, int i) {
        String str;
        Integer num = AnonymousClass050.A01;
        if (uri != null) {
            str = uri.getAuthority();
        } else {
            str = null;
        }
        C02K.A00(num, str, i);
        return contentResolver.query(uri, strArr, bundle, null);
    }

    public static ContentProviderClient A00(ContentResolver contentResolver, Uri uri, int i) {
        String str;
        Integer num = AnonymousClass050.A00;
        if (uri != null) {
            str = uri.getAuthority();
        } else {
            str = null;
        }
        C02K.A00(num, str, i);
        return contentResolver.acquireUnstableContentProviderClient(uri);
    }

    public static Cursor A02(ContentResolver contentResolver, Uri uri, String str, String str2, String[] strArr, String[] strArr2, int i) {
        String str3;
        Integer num = AnonymousClass050.A01;
        if (uri != null) {
            str3 = uri.getAuthority();
        } else {
            str3 = null;
        }
        C02K.A00(num, str3, i);
        return contentResolver.query(uri, strArr, str, strArr2, str2);
    }
}
