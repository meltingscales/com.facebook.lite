package X;

import java.io.DataInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: X.0Ay  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C02460Ay {
    public final String A00;
    public final List A01;

    public static C02460Ay A00(InputStream inputStream) {
        String str;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        byte readByte = dataInputStream.readByte();
        if (readByte != 1) {
            if (readByte != 2) {
                if (readByte != 3) {
                    if (readByte == 4) {
                        str = "x86";
                    } else {
                        throw new RuntimeException(AnonymousClass000.A0B("Unrecognized arch id: ", AnonymousClass000.A0C(), readByte));
                    }
                } else {
                    str = "x86_64";
                }
            } else {
                str = "armeabi-v7a";
            }
        } else {
            str = "arm64-v8a";
        }
        int readShort = dataInputStream.readShort() & 65535;
        ArrayList A0E = AnonymousClass000.A0E();
        for (int i = 0; i < readShort; i++) {
            byte[] bArr = new byte[dataInputStream.readShort() & 65535];
            dataInputStream.readFully(bArr);
            A0E.add(new String(bArr, StandardCharsets.UTF_8));
        }
        return new C02460Ay(str, A0E);
    }

    public C02460Ay(String str, List list) {
        this.A00 = str;
        this.A01 = Collections.unmodifiableList(list);
    }
}
