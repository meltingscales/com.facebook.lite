package com.facebook.appcomponentmanager;

import X.AbstractC013605v;
import X.AnonymousClass000;
import X.AnonymousClass061;
import X.C005702i;
import X.C015006s;
import X.C04D;
import X.C05z;
import X.InterfaceC005802j;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.io.File;

/* loaded from: classes.dex */
public class AppComponentManagerService extends C04D {
    @Override // X.C04D
    public final void A05(Intent intent) {
        intent.getAction();
        if ("com.facebook.appcomponentmanager.ACTION_ENABLE_COMPONENTS".equals(intent.getAction())) {
            try {
                AbstractC013605v.A03(this, "app_update");
                Intent intent2 = new Intent("com.facebook.appcomponentmanager.ENABLING_CMPS_DONE");
                intent2.setPackage(getPackageName());
                sendBroadcast(intent2);
            } catch (RuntimeException e) {
                C015006s.A09("AppComponentManagerService", "Exception while enabling components. Aborting.", e);
                synchronized (C005702i.class) {
                    InterfaceC005802j interfaceC005802j = C005702i.A00;
                    if (interfaceC005802j == null) {
                        return;
                    }
                    interfaceC005802j.AGV(e);
                }
            }
        } else if ("com.facebook.appcomponentmanager.ACTION_EFNORCE_MANIFEST_CONSISTENCY".equals(intent.getAction())) {
            PackageManager packageManager = getPackageManager();
            AnonymousClass061 anonymousClass061 = new AnonymousClass061();
            File A01 = AnonymousClass000.A01(this);
            PackageInfo packageInfo = packageManager.getPackageInfo(getPackageName(), 0);
            C05z A03 = anonymousClass061.A03(A01);
            int i = packageInfo.versionCode;
            String num = Integer.toString(i);
            String str = A03.A01;
            if (num.equals(str) && packageInfo.versionName.equals(A03.A02) && packageInfo.packageName.equals(A03.A00)) {
                return;
            }
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append("PackageInfo{package=");
            AnonymousClass000.A0M(packageInfo.packageName, ",", "versionCode=", A0C);
            A0C.append(i);
            A0C.append(",");
            A0C.append("versionName=");
            A0C.append(packageInfo.versionName);
            A0C.append("} ,");
            A0C.append("Manifest{package=");
            AnonymousClass000.A0M(A03.A00, ", ", "versionCode=", A0C);
            AnonymousClass000.A0M(str, ", ", "versionName=", A0C);
            A0C.append(A03.A02);
            A0C.append(", ");
            A0C.append("activities=");
            A0C.append(A03.A03.size());
            A0C.append(", ");
            A0C.append("receivers=");
            A0C.append(A03.A05.size());
            A0C.append(", ");
            A0C.append("services=");
            A0C.append(A03.A06.size());
            A0C.append(", ");
            A0C.append("providers=");
            A0C.append(A03.A04.size());
            throw AnonymousClass000.A07(AnonymousClass000.A0A("}", A0C));
        }
    }
}
