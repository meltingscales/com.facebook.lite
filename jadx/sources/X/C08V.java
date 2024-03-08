package X;

import android.os.StrictMode;
import com.facebook.soloader.SoLoaderULErrorFactory;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* renamed from: X.08V  reason: invalid class name */
/* loaded from: classes.dex */
public class C08V extends C0BC {
    public final int A00;
    public final File A01;
    public final List A02 = Arrays.asList(new String[0]);

    public C08V(File file, int i) {
        this.A01 = file;
        this.A00 = i;
    }

    @Override // X.C0BC
    public String A05() {
        return "DirectorySoSource";
    }

    @Override // X.C0BC
    public final File A02(String str) {
        File A04 = AnonymousClass000.A04(this.A01, str);
        if (!A04.exists()) {
            return null;
        }
        return A04;
    }

    @Override // X.C0BC
    public int A04(StrictMode.ThreadPolicy threadPolicy, String str, int i) {
        File file = this.A01;
        if (C0B9.A04 != null) {
            if (this.A02.contains(str)) {
                file.getCanonicalPath();
                AbstractC02450Ax.A00("SoLoader");
                return 0;
            }
            File A02 = A02(str);
            if (A02 == null) {
                file.getCanonicalPath();
                AbstractC02450Ax.A00("SoLoader");
                return 0;
            }
            String canonicalPath = A02.getCanonicalPath();
            AbstractC02450Ax.A00("SoLoader");
            if ((i & 1) != 0 && (this.A00 & 2) != 0) {
                AbstractC02450Ax.A00("SoLoader");
                return 2;
            }
            if ((this.A00 & 1) != 0) {
                AnonymousClass047 anonymousClass047 = new AnonymousClass047(A02);
                try {
                    String[] A08 = C0B1.A08(anonymousClass047, str);
                    Arrays.toString(A08);
                    AbstractC02450Ax.A00("SoLoader");
                    for (String str2 : A08) {
                        if (!str2.startsWith("/")) {
                            C0B9.A03(threadPolicy, str2, i);
                        }
                    }
                    anonymousClass047.close();
                } finally {
                }
            } else {
                AbstractC02450Ax.A00("SoLoader");
            }
            try {
                C0B9.A04.load(canonicalPath, i);
                return 1;
            } catch (UnsatisfiedLinkError e) {
                throw SoLoaderULErrorFactory.create(str, e);
            }
        }
        throw AnonymousClass000.A07("SoLoader.init() not yet called");
    }

    @Override // X.C0BC
    public String toString() {
        String name;
        try {
            name = String.valueOf(this.A01.getCanonicalPath());
        } catch (IOException unused) {
            name = this.A01.getName();
        }
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append(A05());
        A0C.append("[root = ");
        A0C.append(name);
        A0C.append(" flags = ");
        A0C.append(this.A00);
        A0C.append(']');
        return A0C.toString();
    }

    @Override // X.C0BC
    public final String[] A03(String str) {
        File A02 = A02(str);
        if (A02 == null) {
            return null;
        }
        AnonymousClass047 anonymousClass047 = new AnonymousClass047(A02);
        try {
            String[] A08 = C0B1.A08(anonymousClass047, str);
            anonymousClass047.close();
            return A08;
        } catch (Throwable th) {
            try {
                anonymousClass047.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    @Override // X.C0BC
    public String A06(String str) {
        File A02 = A02(str);
        if (A02 == null) {
            return null;
        }
        return A02.getCanonicalPath();
    }
}
