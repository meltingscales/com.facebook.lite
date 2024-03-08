.class public final LX/08Q;
.super LX/0BK;
.source ""


# instance fields
.field public A00:[LX/08R;

.field public final A01:LX/05T;

.field public final A02:Ljava/util/zip/ZipFile;

.field public final synthetic A03:LX/05D;


# direct methods
.method public constructor <init>(LX/05D;LX/05T;)V
    .locals 2

    .line 0
    iput-object p1, p0, LX/08Q;->A03:LX/05D;

    .line 1
    .line 2
    invoke-direct {p0}, LX/0BK;-><init>()V

    .line 3
    .line 4
    .line 5
    iget-object v1, p1, LX/05D;->A00:Ljava/io/File;

    .line 6
    .line 7
    new-instance v0, Ljava/util/zip/ZipFile;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, LX/08Q;->A02:Ljava/util/zip/ZipFile;

    .line 13
    .line 14
    iput-object p2, p0, LX/08Q;->A01:LX/05T;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final A01(Ljava/io/File;)V
    .locals 7

    .line 0
    iget-object v6, p0, LX/08Q;->A00:[LX/08R;

    .line 1
    .line 2
    if-nez v6, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, LX/08Q;->A03()[LX/08R;

    .line 5
    .line 6
    .line 7
    move-result-object v6

    .line 8
    iput-object v6, p0, LX/08Q;->A00:[LX/08R;

    .line 9
    .line 10
    :cond_0
    const v0, 0x8000

    .line 11
    .line 12
    .line 13
    new-array v5, v0, [B

    .line 14
    .line 15
    array-length v4, v6

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v4, :cond_1

    .line 18
    .line 19
    aget-object v2, v6, v3

    .line 20
    .line 21
    iget-object v1, p0, LX/08Q;->A02:Ljava/util/zip/ZipFile;

    .line 22
    .line 23
    iget-object v0, v2, LX/08R;->A01:Ljava/util/zip/ZipEntry;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :try_start_0
    invoke-static {v2, p1, v1, v5}, LX/0BK;->A00(LX/0BJ;Ljava/io/File;Ljava/io/InputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    .line 41
    .line 42
    :catchall_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 43
    :catchall_2
    move-exception v0

    .line 44
    throw v0

    .line 45
    :cond_1
    return-void
.end method

.method public final A02()[LX/0BJ;
    .locals 1

    .line 0
    iget-object v0, p0, LX/08Q;->A00:[LX/08R;

    .line 1
    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, LX/08Q;->A03()[LX/08R;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, LX/08Q;->A00:[LX/08R;

    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public final A03()[LX/08R;
    .locals 10

    .line 0
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 1
    .line 2
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    .line 4
    .line 5
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget-object v0, p0, LX/08Q;->A03:LX/05D;

    .line 10
    .line 11
    iget-object v0, v0, LX/05D;->A01:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    invoke-static {}, LX/0BF;->A0B()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    iget-object v0, p0, LX/08Q;->A02:Ljava/util/zip/ZipFile;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/lit8 v0, v1, -0x1

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const/4 v1, 0x0

    .line 68
    :goto_1
    array-length v0, v7

    .line 69
    if-ge v1, v0, :cond_0

    .line 70
    .line 71
    aget-object v0, v7, v1

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    aget-object v0, v7, v1

    .line 76
    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    if-ltz v1, :cond_0

    .line 84
    .line 85
    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, LX/08R;

    .line 93
    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    iget v0, v0, LX/08R;->A00:I

    .line 97
    .line 98
    if-ge v1, v0, :cond_0

    .line 99
    .line 100
    :cond_1
    new-instance v0, LX/08R;

    .line 101
    .line 102
    invoke-direct {v0, v2, v6, v1}, LX/08R;-><init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    iget-object v1, p0, LX/08Q;->A01:LX/05T;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    new-array v0, v0, [Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, [Ljava/lang/String;

    .line 125
    .line 126
    iput-object v0, v1, LX/05T;->A00:[Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    new-array v0, v0, [LX/08R;

    .line 137
    .line 138
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, [LX/08R;

    .line 143
    .line 144
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 0
    iget-object v0, p0, LX/08Q;->A02:Ljava/util/zip/ZipFile;

    .line 1
    .line 2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 3
    .line 4
    .line 5
    return-void
.end method
