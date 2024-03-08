package X;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;

/* renamed from: X.01f  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC002801f {
    public final AnonymousClass004 A00;

    public abstract int A06(Uri uri, ContentValues contentValues, String str, String[] strArr);

    public abstract int A07(Uri uri, String str, String[] strArr);

    public abstract Cursor A08(Uri uri, String[] strArr, String str, String[] strArr2, String str2);

    public abstract Uri A09(Uri uri, ContentValues contentValues);

    public abstract String A0B(Uri uri);

    public ParcelFileDescriptor A05(Uri uri, String str) {
        return this.A00.A04(uri, str);
    }

    public Bundle A0A(String str, String str2, Bundle bundle) {
        return this.A00.A03(str, str2, bundle);
    }

    public AbstractC002801f(AnonymousClass004 anonymousClass004) {
        AbstractC002701e.A00();
        this.A00 = anonymousClass004;
    }
}
