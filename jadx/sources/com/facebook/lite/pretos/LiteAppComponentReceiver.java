package com.facebook.lite.pretos;

import X.AnonymousClass000;
import X.C02420Au;
import X.C04D;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.facebook.appcomponentmanager.AppComponentManagerService;
import java.io.File;

/* loaded from: classes.dex */
public class LiteAppComponentReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        intent.getAction();
        if ("android.intent.action.MY_PACKAGE_REPLACED".equals(intent.getAction())) {
            File A03 = AnonymousClass000.A03(context, "app_appcomponents");
            A03.mkdirs();
            String[] list = AnonymousClass000.A04(A03, "versions").list();
            if ((list != null && list.length != 0) || C02420Au.A02.A00() != 0) {
                C04D.A00(context, new Intent("com.facebook.appcomponentmanager.ACTION_ENABLE_COMPONENTS"), AppComponentManagerService.class, 137875812);
            }
        }
    }
}
