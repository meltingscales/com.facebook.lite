package X;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/* renamed from: X.097  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass097 {
    public static String A00() {
        try {
            FileReader fileReader = new FileReader("/proc/self/cmdline");
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            String readLine = bufferedReader.readLine();
            int indexOf = readLine.indexOf(0);
            if (indexOf >= 0) {
                readLine = readLine.substring(0, indexOf);
            }
            bufferedReader.close();
            fileReader.close();
            return readLine;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
