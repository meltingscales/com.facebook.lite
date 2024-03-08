package X;

import android.content.Context;
import android.content.pm.PackageManager;
import com.facebook.appcomponentmanager.AppComponentManagerProfiledRun;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

/* renamed from: X.05v  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC013605v {
    public static String A02(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i != 8) {
                        StringBuilder A0C = AnonymousClass000.A0C();
                        A0C.append("Unknown (type = ");
                        A0C.append(i);
                        return AnonymousClass000.A0A(")", A0C);
                    }
                    return "Provider";
                }
                return "Service";
            }
            return "Receiver";
        }
        return "Activity";
    }

    public static void A03(Context context, String str) {
        ArrayList A0E;
        PackageManager packageManager = context.getPackageManager();
        context.getPackageName();
        long currentTimeMillis = System.currentTimeMillis();
        Integer[] numArr = new Integer[4];
        numArr[0] = 1;
        AnonymousClass000.A0P(numArr, 2, 1);
        AnonymousClass000.A0P(numArr, 8, 2);
        AnonymousClass000.A0P(numArr, 4, 3);
        int A00 = A00(context, packageManager, numArr, 4);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (A00 >= 0) {
            File A03 = AnonymousClass000.A03(context, "app_appcomponents");
            A03.mkdirs();
            File[] listFiles = AnonymousClass000.A04(A03, "versions").listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            int A002 = C06F.A00();
            File A032 = AnonymousClass000.A03(context, "app_appcomponents");
            A032.mkdirs();
            File A04 = AnonymousClass000.A04(AnonymousClass000.A04(A032, "versions"), Integer.toString(C06F.A00()));
            A04.getParentFile().mkdirs();
            try {
                new FileOutputStream(A04, false).close();
                if (A002 == 1) {
                    try {
                        A04.setLastModified(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).lastUpdateTime);
                    } catch (PackageManager.NameNotFoundException unused) {
                        throw AnonymousClass000.A07("Can't get package info for this package.");
                    }
                }
                AppComponentManagerProfiledRun appComponentManagerProfiledRun = new AppComponentManagerProfiledRun(str, A00, currentTimeMillis2);
                String packageName = context.getPackageName();
                if (packageName.equals("com.facebook.wakizashi") || packageName.equals("com.facebook.katana")) {
                    File A033 = AnonymousClass000.A03(context, "app_appcomponents");
                    A033.mkdirs();
                    File A042 = AnonymousClass000.A04(A033, "perflog");
                    ArrayList A0E2 = AnonymousClass000.A0E();
                    try {
                        if (A042.exists()) {
                            try {
                                ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(A042));
                                A0E = (ArrayList) objectInputStream.readObject();
                                objectInputStream.close();
                            } catch (Exception unused2) {
                                A0E = AnonymousClass000.A0E();
                            }
                            A0E2.addAll(A0E);
                        }
                    } catch (Exception e) {
                        C015006s.A0A("AppComponentManager", "Error reading entries from existing analytics file.", e);
                    }
                    A0E2.add(appComponentManagerProfiledRun);
                    if (!A0E2.isEmpty()) {
                        try {
                            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(A042, false));
                            objectOutputStream.writeObject(A0E2);
                            objectOutputStream.close();
                        } catch (Exception e2) {
                            C015006s.A0A("AppComponentManager", "Error writing entries to logfile.", e2);
                        }
                    }
                }
                context.getPackageName();
                return;
            } catch (IOException e3) {
                StringBuilder A0C = AnonymousClass000.A0C();
                A0C.append("Failed to touch file: ");
                A0C.append(A04);
                throw new RuntimeException(A0C.toString(), e3);
            }
        }
        throw new RuntimeException(String.format("Failed to set enable stage %d for pkg[%s], can't resume. Duration[%s]", 3, context.getPackageName(), Long.valueOf(currentTimeMillis2 / 1000)));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c7 A[Catch: RuntimeException -> 0x018b, TryCatch #2 {RuntimeException -> 0x018b, blocks: (B:6:0x0016, B:43:0x00c3, B:45:0x00c7, B:47:0x00cd, B:48:0x00da, B:49:0x00dd, B:66:0x013c, B:69:0x0145, B:72:0x014c, B:75:0x0155, B:50:0x00ec, B:52:0x00fd, B:53:0x0112, B:78:0x015e, B:54:0x0119, B:56:0x011d, B:58:0x0127, B:60:0x012d, B:62:0x0131, B:79:0x0162, B:42:0x00b1, B:22:0x0045, B:81:0x0179, B:82:0x018a, B:23:0x0061, B:37:0x008a, B:38:0x008c, B:39:0x0093, B:41:0x0099, B:32:0x0072, B:33:0x0080, B:34:0x0081, B:35:0x0084, B:36:0x0087, B:7:0x0026, B:15:0x0036, B:16:0x0039, B:17:0x003c, B:18:0x003f), top: B:98:0x0016, inners: #0, #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A00(android.content.Context r18, android.content.pm.PackageManager r19, java.lang.Integer[] r20, int r21) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.AbstractC013605v.A00(android.content.Context, android.content.pm.PackageManager, java.lang.Integer[], int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0033, code lost:
        if (A01(r8, r9, r10, false) == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.pm.ComponentInfo A01(android.content.ComponentName r8, android.content.pm.PackageManager r9, int r10, boolean r11) {
        /*
            r1 = 33280(0x8200, float:4.6635E-41)
            if (r11 == 0) goto L8
            r1 = 33408(0x8280, float:4.6815E-41)
        L8:
            r2 = 4
            r7 = 2
            r6 = 1
            r5 = 0
            if (r10 == r6) goto L26
            if (r10 == r7) goto L21
            if (r10 == r2) goto L1c
            r0 = 8
            if (r10 != r0) goto L1b
            android.content.pm.ProviderInfo r5 = r9.getProviderInfo(r8, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L2b
            return r5
        L1b:
            return r5
        L1c:
            android.content.pm.ServiceInfo r5 = r9.getServiceInfo(r8, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L2b
            return r5
        L21:
            android.content.pm.ActivityInfo r5 = r9.getReceiverInfo(r8, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L2b
            return r5
        L26:
            android.content.pm.ActivityInfo r5 = r9.getActivityInfo(r8, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L2b
            return r5
        L2b:
            r1 = 0
            if (r11 == 0) goto L35
            android.content.pm.ComponentInfo r0 = A01(r8, r9, r10, r1)     // Catch: java.lang.Exception -> L35
            r4 = 1
            if (r0 != 0) goto L36
        L35:
            r4 = 0
        L36:
            java.lang.String r3 = "AppComponentManager"
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.String r0 = r8.getClassName()
            r2[r1] = r0
            java.lang.String r0 = A02(r10)
            r2[r6] = r0
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r11)
            r2[r7] = r0
            r1 = 3
            if (r11 == 0) goto L5b
            if (r4 == 0) goto L5b
            java.lang.String r0 = ", BUT succeeded without asking for metadata."
        L53:
            r2[r1] = r0
            java.lang.String r0 = "getComponentInfo couldn't find component name[%s] type[%s] getMetaData[%s]%s"
            X.C015006s.A0I(r3, r0, r2)
            return r5
        L5b:
            java.lang.String r0 = "."
            goto L53
        */
        throw new UnsupportedOperationException("Method not decompiled: X.AbstractC013605v.A01(android.content.ComponentName, android.content.pm.PackageManager, int, boolean):android.content.pm.ComponentInfo");
    }
}
