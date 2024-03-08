package X;

import android.content.Context;
import java.io.File;

/* renamed from: X.053  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass053 extends C05D {
    @Override // X.C05D, X.C08V, X.C0BC
    public final String A05() {
        return "PlainAssetSoSource";
    }

    public AnonymousClass053(Context context) {
        super(context, AnonymousClass000.A01(context), "lib-assets", "^assets/lib/([^/]+)/([^/]+\\.so)$");
    }

    @Override // X.C05T
    public final byte[] A09() {
        return C0BF.A0A(((C05T) this).A01, ((C05D) this).A00);
    }

    public AnonymousClass053(Context context, File file, File file2, String str) {
        super(context, file, file2, str);
    }
}
