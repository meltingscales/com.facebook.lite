package X;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

/* renamed from: X.07B  reason: invalid class name */
/* loaded from: classes.dex */
public final class C07B implements C07P {
    public final File A00;

    @Override // X.C07P
    public final Integer ACC() {
        return AnonymousClass050.A0E;
    }

    @Override // X.C07P
    public final void AV8(C006902u c006902u, EnumC006102m enumC006102m) {
        String str;
        C021009m c021009m = C07C.A04;
        if (c021009m != null) {
            C012705l c012705l = C07M.A5X;
            File file = this.A00;
            if (file != null) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new FileReader(AnonymousClass000.A04(file, "navmodules.txt")));
                    str = bufferedReader.readLine();
                    bufferedReader.close();
                } catch (IOException e) {
                    C015006s.A0B("lacrima", "Reading granular exposures failed", e);
                    AbstractC019608w.A00();
                    str = null;
                }
            } else {
                StringBuilder sb = c021009m.A04;
                synchronized (sb) {
                    str = sb.toString();
                }
            }
            c006902u.A04(c012705l, str);
        }
    }

    public C07B(File file) {
        this.A00 = file;
    }

    public C07B() {
        this.A00 = null;
    }
}
