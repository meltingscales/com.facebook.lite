package X;

import java.io.DataInputStream;
import java.io.EOFException;
import java.nio.ByteOrder;

/* renamed from: X.05y  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C013805y {
    public int A00;
    public int A01;
    public final C013805y A02;
    public final DataInputStream A03;

    private void A00() {
        int i;
        int i2 = this.A01;
        if (i2 >= 0 && (i = this.A00) > i2) {
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append("Invalid access: limit=");
            A0C.append(i2);
            throw new EOFException(AnonymousClass000.A0B(", consumed=", A0C, i));
        }
    }

    public final byte A01() {
        this.A00++;
        A00();
        DataInputStream dataInputStream = this.A03;
        if (dataInputStream != null) {
            return dataInputStream.readByte();
        }
        C013805y c013805y = this.A02;
        if (c013805y != null) {
            return c013805y.A01();
        }
        throw AnonymousClass000.A08("Source input stream was not setup.");
    }

    public final int A02() {
        this.A00 += 4;
        A00();
        DataInputStream dataInputStream = this.A03;
        if (dataInputStream != null) {
            int readInt = dataInputStream.readInt();
            if (ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN)) {
                return Integer.reverseBytes(readInt);
            }
            return readInt;
        }
        C013805y c013805y = this.A02;
        if (c013805y != null) {
            return c013805y.A02();
        }
        throw AnonymousClass000.A08("Source input stream was not setup.");
    }

    public final short A03() {
        this.A00 += 2;
        A00();
        DataInputStream dataInputStream = this.A03;
        if (dataInputStream != null) {
            short readShort = dataInputStream.readShort();
            if (ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN)) {
                return Short.reverseBytes(readShort);
            }
            return readShort;
        }
        C013805y c013805y = this.A02;
        if (c013805y != null) {
            return c013805y.A03();
        }
        throw AnonymousClass000.A08("Source input stream was not setup.");
    }

    public final void A04(int i) {
        this.A00 += i;
        A00();
        DataInputStream dataInputStream = this.A03;
        if (dataInputStream != null) {
            dataInputStream.skipBytes(i);
            return;
        }
        C013805y c013805y = this.A02;
        if (c013805y != null) {
            c013805y.A04(i);
            return;
        }
        throw AnonymousClass000.A08("Source input stream was not setup.");
    }

    public final void A05(byte[] bArr) {
        this.A00 += bArr.length;
        A00();
        DataInputStream dataInputStream = this.A03;
        if (dataInputStream != null) {
            dataInputStream.readFully(bArr);
            return;
        }
        C013805y c013805y = this.A02;
        if (c013805y != null) {
            c013805y.A05(bArr);
            return;
        }
        throw AnonymousClass000.A08("Source input stream was not setup.");
    }

    public C013805y(C013805y c013805y) {
        this.A03 = null;
        this.A02 = c013805y;
    }

    public C013805y(DataInputStream dataInputStream) {
        this.A03 = dataInputStream;
        this.A02 = null;
    }
}
