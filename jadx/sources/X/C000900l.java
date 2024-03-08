package X;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* renamed from: X.00l  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C000900l {
    public final File A00;
    public final File A01;
    public final File A02;
    public final String A03;
    public final List A04;

    public C000900l(File file, File file2, File file3, String str, List list) {
        ArrayList arrayList = new ArrayList();
        this.A04 = arrayList;
        this.A03 = str;
        this.A00 = file;
        this.A02 = file2;
        this.A01 = file3;
        arrayList.addAll(list);
    }
}
