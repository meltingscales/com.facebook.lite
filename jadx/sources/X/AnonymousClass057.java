package X;

import com.facebook.errorreporting.lacrima.common.mappedfile.mlocked.MLockedFile;
import java.io.File;
import java.io.IOException;

/* renamed from: X.057  reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class AnonymousClass057 {
    public final /* synthetic */ C0BR A00;

    public /* synthetic */ AnonymousClass057(C0BR c0br) {
        this.A00 = c0br;
    }

    public final C07W A00(File file) {
        if (((C08K) this.A00.A00).A0S) {
            try {
                return new MLockedFile(file);
            } catch (IOException e) {
                AbstractC019608w.A00();
                C015006s.A0B("lacrima", "Failed to initialize mlocked file, using fallback", e);
            }
        }
        try {
            return new C07W(file);
        } catch (IOException e2) {
            AbstractC019608w.A00();
            C015006s.A0B("lacrima", "Failed to initialize mapped file", e2);
            return null;
        }
    }
}
