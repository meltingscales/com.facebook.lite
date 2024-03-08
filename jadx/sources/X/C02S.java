package X;

import java.io.File;
import java.io.FileFilter;

/* renamed from: X.02S  reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class C02S implements FileFilter {
    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        if (file != null && file.getName().startsWith("_attempt")) {
            return true;
        }
        return false;
    }
}
