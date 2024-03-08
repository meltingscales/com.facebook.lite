package X;

import android.content.Context;
import android.os.Parcel;
import android.util.Log;
import java.io.File;
import java.io.RandomAccessFile;
import java.io.SyncFailedException;

/* renamed from: X.05T  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C05T extends C08V implements InterfaceC02400As {
    public String[] A00;
    public final Context A01;

    public abstract C0BK A08();

    public static void A00(File file, byte b, boolean z) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            randomAccessFile.seek(0L);
            randomAccessFile.write(b);
            randomAccessFile.setLength(randomAccessFile.getFilePointer());
            if (z) {
                randomAccessFile.getFD().sync();
            }
            randomAccessFile.close();
        } catch (SyncFailedException e) {
            Log.w("fb-UnpackingSoSource", "state file sync failed", e);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:86:0x018f
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @Override // X.C0BC
    public void A07(int r19) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C05T.A07(int):void");
    }

    @Override // X.InterfaceC02400As
    public final void AdP() {
        File file = super.A01;
        try {
            C0BF.A00(file, AnonymousClass000.A04(file, "dso_lock")).close();
        } catch (Exception e) {
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append("Encountered exception during wait for unpacking trying to acquire file lock for ");
            A0C.append(getClass().getName());
            A0C.append(" (");
            A0C.append(file);
            Log.e("fb-UnpackingSoSource", AnonymousClass000.A0A("): ", A0C), e);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public C05T(android.content.Context r3, java.lang.String r4) {
        /*
            r2 = this;
            java.lang.StringBuilder r1 = X.AnonymousClass000.A0C()
            android.content.pm.ApplicationInfo r0 = r3.getApplicationInfo()
            java.lang.String r0 = r0.dataDir
            r1.append(r0)
            java.lang.String r0 = "/"
            java.lang.String r0 = X.AnonymousClass000.A09(r0, r4, r1)
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            r0 = 1
            r2.<init>(r1, r0)
            r2.A01 = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C05T.<init>(android.content.Context, java.lang.String):void");
    }

    public byte[] A09() {
        Parcel obtain = Parcel.obtain();
        C0BK A08 = A08();
        try {
            C0BJ[] A02 = A08.A02();
            obtain.writeInt(A02.length);
            for (C0BJ c0bj : A02) {
                obtain.writeString(c0bj.A01);
                obtain.writeString(c0bj.A00);
            }
            A08.close();
            byte[] marshall = obtain.marshall();
            obtain.recycle();
            return marshall;
        } catch (Throwable th) {
            try {
                A08.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    public C05T(Context context, File file) {
        super(file, 1);
        this.A01 = context;
    }
}
