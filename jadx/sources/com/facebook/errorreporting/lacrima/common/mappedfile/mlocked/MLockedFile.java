package com.facebook.errorreporting.lacrima.common.mappedfile.mlocked;

import X.C07W;
import java.io.File;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class MLockedFile extends C07W {
    public static volatile boolean A00;

    public static native void mlockBuffer(ByteBuffer byteBuffer);

    public static native void munlockBuffer(ByteBuffer byteBuffer);

    @Override // X.C07W
    public final void A00() {
        if (A00) {
            mlockBuffer(this.A00);
        }
    }

    public MLockedFile(File file) {
        super(file);
        A00();
    }
}
