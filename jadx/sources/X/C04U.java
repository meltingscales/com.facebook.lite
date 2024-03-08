package X;

import java.io.File;
import java.io.FileFilter;

/* renamed from: X.04U  reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class C04U implements FileFilter {
    public final /* synthetic */ String A00;

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        String str = this.A00;
        if (file != null && file.getName().endsWith(str)) {
            return true;
        }
        return false;
    }
}
