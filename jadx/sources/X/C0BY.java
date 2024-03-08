package X;

import java.io.File;
import java.io.FileFilter;

/* renamed from: X.0BY  reason: invalid class name */
/* loaded from: classes.dex */
public class C0BY implements FileFilter {
    public String A00;
    public final int A01;

    public C0BY(String str, int i) {
        this.A01 = i;
        this.A00 = str;
    }

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        if (this.A01 != 0) {
            String str = this.A00;
            if (file != null && file.isDirectory()) {
                String name = file.getName();
                StringBuilder A0C = AnonymousClass000.A0C();
                A0C.append("session_");
                A0C.append(str);
                if (!name.startsWith(AnonymousClass000.A0A("_", A0C))) {
                    String name2 = file.getName();
                    StringBuilder A0C2 = AnonymousClass000.A0C();
                    A0C2.append("sess_");
                    if (name2.startsWith(AnonymousClass000.A09(str, "_", A0C2))) {
                        return true;
                    }
                    return false;
                }
                return true;
            }
            return false;
        }
        String str2 = this.A00;
        AbstractC007302y.A00(file);
        return file.getName().startsWith(str2);
    }
}
