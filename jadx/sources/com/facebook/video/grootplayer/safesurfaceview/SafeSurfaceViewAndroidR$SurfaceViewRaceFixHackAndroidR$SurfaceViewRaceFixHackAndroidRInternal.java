package com.facebook.video.grootplayer.safesurfaceview;

import android.os.Build;
import android.util.Log;
import android.view.SurfaceControl;
import android.view.SurfaceView;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SafeSurfaceViewAndroidR$SurfaceViewRaceFixHackAndroidR$SurfaceViewRaceFixHackAndroidRInternal {
    public static Field field_mBackgroundControl;
    public static Field field_mBlastSurfaceControl;
    public static boolean reflectionAttempted;

    public static List apply(SurfaceView surfaceView) {
        if (!reflectionAttempted) {
            try {
                reflectionAttempted = true;
                Field declaredField = SurfaceView.class.getDeclaredField("mBackgroundControl");
                field_mBackgroundControl = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                }
                if (Build.VERSION.SDK_INT == 31) {
                    Field declaredField2 = SurfaceView.class.getDeclaredField("mBlastSurfaceControl");
                    field_mBlastSurfaceControl = declaredField2;
                    if (declaredField2 != null) {
                        declaredField2.setAccessible(true);
                    }
                }
            } catch (Exception e) {
                Log.e("FBLiteSurfaceView", "Failed to get inner field", e);
            }
        }
        ArrayList arrayList = new ArrayList();
        Field field = field_mBackgroundControl;
        if (field != null) {
            try {
                SurfaceControl surfaceControl = (SurfaceControl) field.get(surfaceView);
                if (surfaceControl != null) {
                    arrayList.add(surfaceControl);
                }
            } catch (IllegalAccessException e2) {
                Log.e("FBLiteSurfaceView", "Failed to get inner field", e2);
            }
        }
        Field field2 = field_mBlastSurfaceControl;
        if (field2 != null) {
            try {
                SurfaceControl surfaceControl2 = (SurfaceControl) field2.get(surfaceView);
                if (surfaceControl2 != null) {
                    arrayList.add(surfaceControl2);
                    return arrayList;
                }
            } catch (IllegalAccessException e3) {
                Log.e("FBLiteSurfaceView", "Failed to get inner field", e3);
            }
        }
        return arrayList;
    }
}
