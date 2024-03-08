package X;

import android.os.SystemClock;
import java.nio.MappedByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: X.05J  reason: invalid class name */
/* loaded from: classes.dex */
public final class C05J {
    public static AtomicReference A03 = new AtomicReference();
    public String A00;
    public final C07W A01;
    public final Object A02 = new Object();

    public C05J(C07W c07w) {
        byte b;
        byte b2;
        this.A01 = c07w;
        if (A03.compareAndSet(null, this)) {
            A01(this, AnonymousClass050.A02, null, null, ' ', '0', false, true);
            A02(EnumC016407i.A09);
            synchronized (this.A02) {
                b = (byte) 32;
                this.A01.A00.put(166, b);
                A00(this);
            }
            synchronized (this.A02) {
                this.A01.A00.put(205, b);
                A00(this);
            }
            synchronized (this.A02) {
                b2 = (byte) 48;
                this.A01.A00.put(206, b2);
                A00(this);
            }
            synchronized (this.A02) {
                MappedByteBuffer mappedByteBuffer = this.A01.A00;
                mappedByteBuffer.put(275, b2);
                mappedByteBuffer.putLong(276, 0L);
                A03("", 284, 80);
                A00(this);
            }
            synchronized (this.A02) {
                MappedByteBuffer mappedByteBuffer2 = this.A01.A00;
                mappedByteBuffer2.putInt(749, -1);
                mappedByteBuffer2.putLong(1753, System.currentTimeMillis());
                mappedByteBuffer2.putLong(1761, SystemClock.uptimeMillis());
                A00(this);
            }
            int i = 0;
            String substring = "unknown".length() > 1000 ? "unknown".substring(0, 1000) : "unknown";
            synchronized (this.A02) {
                MappedByteBuffer mappedByteBuffer3 = this.A01.A00;
                mappedByteBuffer3.putShort(753, (short) 0);
                byte[] bytes = substring.getBytes();
                while (true) {
                    int length = bytes.length;
                    if (i < length) {
                        mappedByteBuffer3.put(i + 755, bytes[i]);
                        i++;
                    } else {
                        mappedByteBuffer3.putShort(753, (short) length);
                        A00(this);
                    }
                }
            }
            Object obj = this.A02;
            synchronized (obj) {
                MappedByteBuffer mappedByteBuffer4 = this.A01.A00;
                mappedByteBuffer4.put(207, (byte) 1);
                mappedByteBuffer4.put(224, (byte) 1);
                mappedByteBuffer4.putLong(208, 0L);
                mappedByteBuffer4.putLong(225, 0L);
                mappedByteBuffer4.putLong(216, 0L);
                mappedByteBuffer4.putLong(233, 0L);
                mappedByteBuffer4.put(207, (byte) 0);
                mappedByteBuffer4.put(224, (byte) 0);
            }
            synchronized (obj) {
                A00(this);
            }
            Object obj2 = this.A02;
            synchronized (obj2) {
                MappedByteBuffer mappedByteBuffer5 = this.A01.A00;
                mappedByteBuffer5.put(241, (byte) 1);
                mappedByteBuffer5.put(258, (byte) 1);
                mappedByteBuffer5.putLong(242, 0L);
                mappedByteBuffer5.putLong(259, 0L);
                mappedByteBuffer5.putLong(250, 0L);
                mappedByteBuffer5.putLong(267, 0L);
                mappedByteBuffer5.put(241, (byte) 0);
                mappedByteBuffer5.put(258, (byte) 0);
            }
            synchronized (obj2) {
                A00(this);
            }
            synchronized (this.A02) {
                this.A01.A00.putLong(1769, 0L);
                A00(this);
            }
        }
    }

    public final void A02(EnumC016407i enumC016407i) {
        char c = enumC016407i.A01;
        synchronized (this.A02) {
            this.A01.A00.put(0, (byte) c);
            A00(this);
        }
    }

    public static void A00(C05J c05j) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (c05j.A02) {
            c05j.A03(Long.toString(currentTimeMillis), 180, 15);
        }
    }

    public final void A03(String str, int i, int i2) {
        int i3 = 0;
        if (str.length() > i2) {
            str = str.substring(0, i2);
        }
        synchronized (this.A02) {
            MappedByteBuffer mappedByteBuffer = this.A01.A00;
            mappedByteBuffer.put(i, (byte) 0);
            byte[] bytes = str.getBytes();
            while (true) {
                int length = bytes.length;
                if (i3 < length) {
                    mappedByteBuffer.put(i + 1 + i3, bytes[i3]);
                    i3++;
                } else {
                    mappedByteBuffer.put(i, (byte) length);
                }
            }
        }
    }

    public static void A01(C05J c05j, Integer num, Integer num2, Integer num3, char c, char c2, boolean z, boolean z2) {
        char A00 = AbstractC012605k.A00(num);
        if (c >= 0 && c <= 127) {
            synchronized (c05j.A02) {
                MappedByteBuffer mappedByteBuffer = c05j.A01.A00;
                mappedByteBuffer.put(1, (byte) A00);
                mappedByteBuffer.put(196, (byte) c2);
                mappedByteBuffer.put(2, (byte) c);
                mappedByteBuffer.put(198, (byte) (z ? 49 : 48));
                if (z2 || num.compareTo(AnonymousClass050.A0V) < 0) {
                    mappedByteBuffer.put(202, (byte) 48);
                    mappedByteBuffer.put(200, (byte) 48);
                }
                byte b = -1;
                if (num2 != null) {
                    int intValue = num2.intValue();
                    if (intValue > 127) {
                        intValue = 127;
                    }
                    mappedByteBuffer.put(203, (byte) intValue);
                } else {
                    mappedByteBuffer.put(203, (byte) -1);
                }
                if (num3 != null) {
                    int intValue2 = num3.intValue();
                    b = (byte) (intValue2 <= 127 ? intValue2 : 127);
                }
                mappedByteBuffer.put(204, b);
                A00(c05j);
            }
            return;
        }
        throw AnonymousClass000.A07("State byte should be ASCII");
    }
}
