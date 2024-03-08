package X;

import java.io.File;
import java.io.FileFilter;

/* renamed from: X.0BZ  reason: invalid class name */
/* loaded from: classes.dex */
public class C0BZ implements FileFilter {
    public final int A00;

    public C0BZ(int i) {
        this.A00 = i;
    }

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        if (this.A00 != 0) {
            if (file != null && file.isDirectory()) {
                if (!file.getName().startsWith("session_") && !file.getName().startsWith("sess_")) {
                    return false;
                }
            } else {
                return false;
            }
        } else {
            AbstractC007302y.A00(file);
            if (!file.isDirectory() && !file.getName().endsWith("_attach.txt")) {
                return false;
            }
        }
        return true;
    }
}
