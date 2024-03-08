package X;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Parcel;
import java.io.File;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* renamed from: X.05C  reason: invalid class name */
/* loaded from: classes.dex */
public final class C05C extends C05T {
    public C0B0 A00;
    public boolean A01;
    public final String A02;
    public final File A03;
    public final File A04;
    public final String A05;
    public final String A06;

    @Override // X.C08V, X.C0BC
    public final String A05() {
        return "CompressedAssetSoSource";
    }

    public C05C(Context context, C0B0 c0b0) {
        super(context, AnonymousClass000.A03(context, "lib-compressed"));
        this.A01 = true;
        this.A02 = "";
        File A01 = AnonymousClass000.A01(((C05T) this).A01);
        this.A03 = A01;
        this.A04 = A01;
        this.A00 = c0b0;
        this.A06 = c0b0.A00;
        this.A05 = "assets/lib/metadata.txt";
    }

    @Override // X.C05T
    public final C0BK A08() {
        return new C0BK() { // from class: X.07p
            public final ZipEntry A00;
            public final ZipFile A01;
            public final AbstractC017007r[] A02;

            {
                ZipFile zipFile = new ZipFile(C05C.this.A04);
                try {
                    ZipEntry entry = zipFile.getEntry(C05C.this.A05);
                    ZipEntry entry2 = zipFile.getEntry(C05C.this.A06);
                    if (entry != null && entry2 != null) {
                        this.A00 = entry2;
                        C05C.this.A01 = false;
                        this.A01 = zipFile;
                        this.A02 = new AbstractC017007r[0];
                        return;
                    }
                    this.A02 = new AbstractC017007r[0];
                    this.A01 = zipFile;
                } catch (Throwable th) {
                    zipFile.close();
                    throw th;
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:42:0x00ff  */
            /* JADX WARN: Removed duplicated region for block: B:44:0x0106  */
            @Override // X.C0BK
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void A01(java.io.File r12) {
                /*
                    Method dump skipped, instructions count: 294
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: X.C016807p.A01(java.io.File):void");
            }

            @Override // X.C0BK
            public final C0BJ[] A02() {
                return this.A02;
            }

            @Override // X.C0BK, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                this.A01.close();
            }
        };
    }

    @Override // X.C05T
    public final byte[] A09() {
        Context context = ((C05T) this).A01;
        File file = this.A03;
        Parcel obtain = Parcel.obtain();
        File canonicalFile = file.getCanonicalFile();
        try {
            if (C06F.A01() == 0 || C06F.A01() == 1) {
                obtain.writeString(canonicalFile.getPath());
                obtain.writeLong(canonicalFile.lastModified());
                PackageManager packageManager = context.getPackageManager();
                int i = 0;
                if (packageManager != null) {
                    try {
                        i = packageManager.getPackageInfo(context.getPackageName(), 0).versionCode;
                    } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
                    }
                }
                obtain.writeInt(i);
            }
            obtain.writeLong(C06F.A01());
            obtain.writeString(this.A02);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    @Override // X.C08V, X.C0BC
    public final String toString() {
        String name;
        try {
            name = String.valueOf(((C08V) this).A01.getCanonicalPath());
        } catch (IOException unused) {
            name = ((C08V) this).A01.getName();
        }
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("CompressedAssetSoSource");
        A0C.append("[root = ");
        A0C.append(name);
        A0C.append(" flags = ");
        A0C.append(((C08V) this).A00);
        A0C.append(" zipSource = ");
        A0C.append(this.A04.getPath());
        A0C.append(" compressedPath = ");
        A0C.append(this.A06);
        A0C.append(']');
        return A0C.toString();
    }

    public C05C(Context context, C0B0 c0b0, File file, File file2, String str, String str2, String str3) {
        super(context, file);
        this.A01 = true;
        this.A02 = str;
        File A01 = AnonymousClass000.A01(context);
        this.A03 = A01;
        this.A04 = file2 == null ? A01 : file2;
        this.A00 = c0b0;
        this.A06 = str2;
        this.A05 = str3;
    }
}
