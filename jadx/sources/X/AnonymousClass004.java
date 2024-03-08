package X;

import android.content.ContentProvider;
import android.content.ContentProviderResult;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;

/* renamed from: X.004  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass004 extends ContentProvider {
    public static String A03;
    public AbstractC002801f A00;
    public boolean A01 = false;
    public volatile ProviderInfo A02;

    public static synchronized AbstractC002801f A00(AnonymousClass004 anonymousClass004) {
        AbstractC002801f abstractC002801f;
        synchronized (anonymousClass004) {
            if (anonymousClass004.A01 && A03 == null) {
                A03 = anonymousClass004.getClass().getName();
            } else {
                anonymousClass004.A01 = true;
            }
            abstractC002801f = anonymousClass004.A00;
            if (abstractC002801f == null) {
                AbstractC002701e.A00();
                try {
                    try {
                        StringBuilder sb = new StringBuilder();
                        sb.append(anonymousClass004.getClass().getName());
                        sb.append("$Impl");
                        abstractC002801f = (AbstractC002801f) Class.forName(sb.toString()).getDeclaredConstructor(AnonymousClass004.class).newInstance(anonymousClass004);
                        anonymousClass004.A00 = abstractC002801f;
                    } catch (InvocationTargetException e) {
                        e = e;
                        Throwable cause = e.getCause();
                        if (cause != null) {
                            e = cause;
                        }
                        if (e instanceof RuntimeException) {
                            throw e;
                        }
                        throw new RuntimeException(e);
                    }
                } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException e2) {
                    throw new IllegalArgumentException(e2);
                }
            }
        }
        return abstractC002801f;
    }

    public void A05(Context context, ProviderInfo providerInfo) {
    }

    private void A01() {
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                getCallingPackage();
            } catch (SecurityException unused) {
            }
        }
    }

    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        this.A02 = providerInfo;
        super.attachInfo(context, providerInfo);
        A05(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider, android.content.ComponentCallbacks
    public final void onLowMemory() {
        if (AbstractC002701e.A00.block(-1L)) {
            super.onLowMemory();
        }
    }

    @Override // android.content.ContentProvider, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        if (AbstractC002701e.A00.block(-1L)) {
            super.onTrimMemory(i);
        }
    }

    public final Bundle A03(String str, String str2, Bundle bundle) {
        return super.call(str, str2, bundle);
    }

    public final ParcelFileDescriptor A04(Uri uri, String str) {
        return super.openFile(uri, str);
    }

    @Override // android.content.ContentProvider
    public final ContentProviderResult[] applyBatch(ArrayList arrayList) {
        getContext();
        A01();
        return super.applyBatch(arrayList);
    }

    @Override // android.content.ContentProvider
    public final int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        getContext();
        A01();
        return super.bulkInsert(uri, contentValuesArr);
    }

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        getContext();
        A01();
        return A00(this).A0A(str, str2, bundle);
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        getContext();
        A01();
        return A00(this).A07(uri, str, strArr);
    }

    @Override // android.content.ContentProvider
    public final String[] getStreamTypes(Uri uri, String str) {
        return super.getStreamTypes(uri, str);
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return A00(this).A0B(uri);
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        getContext();
        A01();
        return A00(this).A09(uri, contentValues);
    }

    @Override // android.content.ContentProvider
    public final boolean isTemporary() {
        return super.isTemporary();
    }

    @Override // android.content.ContentProvider, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.content.ContentProvider
    public final AssetFileDescriptor openAssetFile(Uri uri, String str) {
        getContext();
        A01();
        return super.openAssetFile(uri, str);
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) {
        getContext();
        A01();
        return A00(this).A05(uri, str);
    }

    @Override // android.content.ContentProvider
    public final AssetFileDescriptor openTypedAssetFile(Uri uri, String str, Bundle bundle) {
        getContext();
        A01();
        return super.openTypedAssetFile(uri, str, bundle);
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        getContext();
        A01();
        return A00(this).A08(uri, strArr, str, strArr2, str2);
    }

    @Override // android.content.ContentProvider
    public final void shutdown() {
        super.shutdown();
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        getContext();
        A01();
        return A00(this).A06(uri, contentValues, str, strArr);
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        getContext();
        A01();
        return A00(this).A08(uri, strArr, str, strArr2, str2);
    }
}
