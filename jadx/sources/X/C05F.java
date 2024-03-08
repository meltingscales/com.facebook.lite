package X;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Parcel;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* renamed from: X.05F  reason: invalid class name */
/* loaded from: classes.dex */
public final class C05F extends C05T implements C0B4 {
    public boolean A00;
    public final ArrayList A01;

    @Override // X.C08V, X.C0BC
    public final String A05() {
        return "BackupSoSource";
    }

    @Override // X.C08V, X.C0BC
    public final int A04(StrictMode.ThreadPolicy threadPolicy, String str, int i) {
        if (!this.A00) {
            return 0;
        }
        return super.A04(threadPolicy, str, i);
    }

    @Override // X.C05T, X.C0BC
    public final void A07(int i) {
        if ((i & 8) == 0) {
            super.A07(i);
            this.A00 = true;
        }
    }

    @Override // X.C05T
    public final C0BK A08() {
        return new C0BK() { // from class: X.08Y
            @Override // X.C0BK
            public final void A01(File file) {
                Iterator it = C05F.this.A01.iterator();
                while (it.hasNext()) {
                    C05D c05d = (C05D) it.next();
                    C08Q c08q = new C08Q(c05d, c05d);
                    try {
                        c08q.A01(file);
                        c08q.close();
                    } catch (Throwable th) {
                        try {
                            c08q.close();
                        } catch (Throwable unused) {
                        }
                        throw th;
                    }
                }
            }

            @Override // X.C0BK
            public final C0BJ[] A02() {
                ArrayList A0E = AnonymousClass000.A0E();
                Iterator it = C05F.this.A01.iterator();
                while (it.hasNext()) {
                    C05D c05d = (C05D) it.next();
                    C08Q c08q = new C08Q(c05d, c05d);
                    try {
                        A0E.addAll(Arrays.asList(c08q.A02()));
                        c08q.close();
                    } catch (Throwable th) {
                        try {
                            c08q.close();
                        } catch (Throwable unused) {
                        }
                        throw th;
                    }
                }
                return (C0BJ[]) A0E.toArray(new C0BJ[A0E.size()]);
            }
        };
    }

    @Override // X.C0B4
    public final C0BC AWY(Context context) {
        C05F c05f = new C05F(context, ((C08V) this).A01.getName());
        try {
            c05f.A07(0);
            return c05f;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public C05F(Context context, String str) {
        super(context, str);
        ArrayList A0E = AnonymousClass000.A0E();
        this.A01 = A0E;
        this.A00 = false;
        A0E.add(new C05D(context, AnonymousClass000.A01(context), str, "^lib/([^/]+)/([^/]+\\.so)$"));
        if (Build.VERSION.SDK_INT >= 21 && context.getApplicationInfo().splitSourceDirs != null) {
            try {
                for (String str2 : context.getApplicationInfo().splitSourceDirs) {
                    C05D c05d = new C05D(context, new File(str2), str, "^lib/([^/]+)/([^/]+\\.so)$");
                    C08Q c08q = new C08Q(c05d, c05d);
                    boolean A0Q = AnonymousClass000.A0Q(c08q.A03().length);
                    c08q.close();
                    if (A0Q) {
                        StringBuilder A0C = AnonymousClass000.A0C();
                        A0C.append("adding backup source from split: ");
                        Log.w("BackupSoSource", AnonymousClass000.A0A(c05d.toString(), A0C));
                        this.A01.add(c05d);
                    }
                }
            } catch (IOException e) {
                Log.w("BackupSoSource", "failed to read split apks", e);
            }
        }
    }

    @Override // X.C05T
    public final byte[] A09() {
        byte[] marshall;
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeByte((byte) 3);
            Context context = ((C05T) this).A01;
            PackageManager packageManager = context.getPackageManager();
            int i = 0;
            if (packageManager != null) {
                try {
                    i = packageManager.getPackageInfo(context.getPackageName(), 0).versionCode;
                } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
                }
            }
            obtain.writeInt(i);
            ArrayList arrayList = this.A01;
            obtain.writeInt(arrayList.size());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                obtain.writeByteArray(((C05D) it.next()).A09());
            }
            String str = context.getApplicationInfo().sourceDir;
            if (str == null) {
                obtain.writeByte((byte) 1);
                marshall = obtain.marshall();
            } else {
                File canonicalFile = new File(str).getCanonicalFile();
                if (!canonicalFile.exists()) {
                    obtain.writeByte((byte) 1);
                    marshall = obtain.marshall();
                } else {
                    obtain.writeByte((byte) 2);
                    obtain.writeString(canonicalFile.getPath());
                    obtain.writeLong(canonicalFile.lastModified());
                    marshall = obtain.marshall();
                }
            }
            return marshall;
        } finally {
            obtain.recycle();
        }
    }
}
