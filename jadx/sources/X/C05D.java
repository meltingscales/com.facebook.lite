package X;

import android.content.Context;
import java.io.File;

/* renamed from: X.05D  reason: invalid class name */
/* loaded from: classes.dex */
public class C05D extends C05T {
    public final File A00;
    public final String A01;

    @Override // X.C08V, X.C0BC
    public String A05() {
        return "ExtractFromZipSoSource";
    }

    @Override // X.C05T
    public final C0BK A08() {
        return new C08Q(this, this);
    }

    public C05D(Context context, File file, File file2, String str) {
        super(context, file);
        this.A00 = file2;
        this.A01 = str;
    }

    public C05D(Context context, File file, String str, String str2) {
        super(context, str);
        this.A00 = file;
        this.A01 = str2;
    }
}
