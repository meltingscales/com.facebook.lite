.class public abstract Lcom/facebook/superpack/ObiInputStream;
.super Ljava/io/InputStream;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    const-string v0, "superpack-jni"

    .line 1
    .line 2
    invoke-static {v0}, LX/0B9;->A09(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static native closeNative(J[B)V
.end method

.method public static native openBytesNative([BII)J
.end method

.method public static native openInputStreamNative(Ljava/io/InputStream;I)J
.end method

.method public static native openRawBytesNative(JI)J
.end method

.method public static native readNative(J[BII)I
.end method
