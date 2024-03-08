.class public final LX/0Ay;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/0Ay;->A00:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, LX/0Ay;->A01:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static A00(Ljava/io/InputStream;)LX/0Ay;
    .locals 9

    .line 0
    new-instance v8, Ljava/io/DataInputStream;

    .line 1
    .line 2
    invoke-direct {v8, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq v2, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq v2, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq v2, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne v2, v0, :cond_4

    .line 20
    .line 21
    const-string v7, "x86"

    .line 22
    .line 23
    :goto_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readShort()S

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const v5, 0xffff

    .line 28
    .line 29
    .line 30
    and-int/2addr v6, v5

    .line 31
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_1
    if-ge v3, v6, :cond_3

    .line 37
    .line 38
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readShort()S

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    and-int/2addr v0, v5

    .line 43
    new-array v2, v0, [B

    .line 44
    .line 45
    invoke-virtual {v8, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 49
    .line 50
    new-instance v0, Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    const-string v7, "x86_64"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string v7, "armeabi-v7a"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string v7, "arm64-v8a"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    new-instance v0, LX/0Ay;

    .line 71
    .line 72
    invoke-direct {v0, v7, v4}, LX/0Ay;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v0, "Unrecognized arch id: "

    .line 81
    .line 82
    invoke-static {v0, v1, v2}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method
