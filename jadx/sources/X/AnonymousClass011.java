package X;

import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import java.io.File;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: X.011  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass011 {
    public static AnonymousClass011 A07;
    public static final long A08 = TimeUnit.MINUTES.toMillis(2);
    public long A00;
    public volatile File A04;
    public volatile File A05;
    public volatile StatFs A03 = null;
    public volatile StatFs A02 = null;
    public volatile boolean A06 = false;
    public final Lock A01 = new ReentrantLock();

    public static StatFs A00(StatFs statFs, File file) {
        if (file != null && file.exists()) {
            try {
                if (statFs == null) {
                    return new StatFs(file.getAbsolutePath());
                }
                statFs.restat(file.getAbsolutePath());
                return statFs;
            } catch (IllegalArgumentException unused) {
            } catch (Throwable th) {
                AbstractC010704l.A00(th);
                throw new RuntimeException("Redex: Unreachable code after no-return invoke");
            }
        }
        return null;
    }

    public static synchronized AnonymousClass011 A01() {
        AnonymousClass011 anonymousClass011;
        synchronized (AnonymousClass011.class) {
            anonymousClass011 = A07;
            if (anonymousClass011 == null) {
                anonymousClass011 = new AnonymousClass011();
                A07 = anonymousClass011;
            }
        }
        return anonymousClass011;
    }

    private void A02() {
        if (!this.A06) {
            Lock lock = this.A01;
            lock.lock();
            try {
                if (!this.A06) {
                    this.A05 = Environment.getDataDirectory();
                    this.A04 = Environment.getExternalStorageDirectory();
                    this.A03 = A00(this.A03, this.A05);
                    this.A02 = A00(this.A02, this.A04);
                    this.A00 = SystemClock.uptimeMillis();
                    this.A06 = true;
                }
            } finally {
                lock.unlock();
            }
        }
    }

    private void A03() {
        Lock lock = this.A01;
        if (lock.tryLock()) {
            try {
                if (SystemClock.uptimeMillis() - this.A00 > A08) {
                    this.A03 = A00(this.A03, this.A05);
                    this.A02 = A00(this.A02, this.A04);
                    this.A00 = SystemClock.uptimeMillis();
                }
            } finally {
                lock.unlock();
            }
        }
    }

    public final long A04() {
        long blockSize;
        long freeBlocks;
        A02();
        A03();
        StatFs statFs = this.A03;
        if (statFs != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                blockSize = statFs.getBlockSizeLong();
                freeBlocks = statFs.getFreeBlocksLong();
            } else {
                blockSize = statFs.getBlockSize();
                freeBlocks = statFs.getFreeBlocks();
            }
            return blockSize * freeBlocks;
        }
        return -1L;
    }

    public final long A05(Integer num) {
        StatFs statFs;
        long blockSize;
        long availableBlocks;
        A02();
        A03();
        if (num == AnonymousClass050.A00) {
            statFs = this.A03;
        } else {
            statFs = this.A02;
        }
        if (statFs != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                blockSize = statFs.getBlockSizeLong();
                availableBlocks = statFs.getAvailableBlocksLong();
            } else {
                blockSize = statFs.getBlockSize();
                availableBlocks = statFs.getAvailableBlocks();
            }
            return blockSize * availableBlocks;
        }
        return 0L;
    }

    public final long A06(Integer num) {
        StatFs statFs;
        long blockSize;
        long blockCount;
        A02();
        A03();
        if (num == AnonymousClass050.A00) {
            statFs = this.A03;
        } else {
            statFs = this.A02;
        }
        if (statFs != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                blockSize = statFs.getBlockSizeLong();
                blockCount = statFs.getBlockCountLong();
            } else {
                blockSize = statFs.getBlockSize();
                blockCount = statFs.getBlockCount();
            }
            return blockSize * blockCount;
        }
        return -1L;
    }

    public final boolean A07(Integer num, long j) {
        A02();
        long A05 = A05(num);
        if (A05 <= 0 || A05 < j) {
            return true;
        }
        return false;
    }
}
