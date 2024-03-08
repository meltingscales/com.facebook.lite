package X;

import java.io.File;
import java.util.Comparator;

/* renamed from: X.0BW  reason: invalid class name */
/* loaded from: classes.dex */
public class C0BW implements Comparator {
    public final int A00;

    public C0BW(int i) {
        this.A00 = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        File file = (File) obj;
        File file2 = (File) obj2;
        if (this.A00 != 0) {
            int i = (!file.getName().startsWith("session_")) - (!file2.getName().startsWith("session_"));
            if (i == 0) {
                return file.getName().compareTo(file2.getName());
            }
            return i;
        }
        return (int) (file.lastModified() - file2.lastModified());
    }
}
