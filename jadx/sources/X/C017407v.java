package X;

import android.app.Application;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Map;
import java.util.UUID;

/* renamed from: X.07v  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C017407v {
    public static final Map A05 = AnonymousClass000.A0F();
    public int A00;
    public int A01;
    public File A02;
    public Object A03 = new Object();
    public String A04;

    public static synchronized C017407v A00(String str) {
        C017407v c017407v;
        synchronized (C017407v.class) {
            Map map = A05;
            c017407v = (C017407v) map.get(str);
            if (c017407v == null) {
                c017407v = new C017407v(str);
                map.put(str, c017407v);
            }
        }
        return c017407v;
    }

    public final void A01() {
        synchronized (this.A03) {
            C015006s.A07("lacrima", "FixedLengthFiles.forceDeleteAllFiles");
            File[] listFiles = this.A02.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
        }
    }

    public final void A02() {
        long j;
        this.A02.mkdirs();
        File[] listFiles = this.A02.listFiles();
        int i = this.A00;
        long j2 = i;
        if (listFiles != null) {
            j2 = i - listFiles.length;
        }
        long min = Math.min(C015707b.A00() / this.A01, j2);
        for (int i2 = 0; i2 < min; i2++) {
            try {
                File file = this.A02;
                StringBuilder A0C = AnonymousClass000.A0C();
                AnonymousClass000.A0K(UUID.randomUUID(), A0C);
                RandomAccessFile randomAccessFile = new RandomAccessFile(AnonymousClass000.A04(file, AnonymousClass000.A0A("_prop.txt", A0C)), "rw");
                long j3 = 0;
                while (true) {
                    j = this.A01;
                    if (j3 >= j) {
                        break;
                    }
                    randomAccessFile.seek(j3);
                    randomAccessFile.writeByte(32);
                    j3 += 4096;
                }
                randomAccessFile.setLength(j);
                randomAccessFile.close();
            } catch (IOException e) {
                AbstractC019608w.A00();
                C015006s.A0B("lacrima", "Initialization failed.", e);
                return;
            }
        }
    }

    public final void A03(Application application, int i, int i2) {
        synchronized (this.A03) {
            if (this.A02 != null) {
                C015006s.A07("lacrima", "FixedLengthFiles.init() called twice.");
            } else {
                this.A00 = i;
                this.A01 = i2;
                StringBuilder A0C = AnonymousClass000.A0C();
                A0C.append("file_pool");
                this.A02 = application.getDir(AnonymousClass000.A0A(this.A04, A0C), 0);
            }
        }
    }

    public C017407v(String str) {
        this.A04 = str;
    }
}
