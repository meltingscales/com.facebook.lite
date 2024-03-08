.class public final LX/0Ao;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:LX/0Ap;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(LX/0Ap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p2, p0, LX/0Ao;->A04:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p1, p0, LX/0Ao;->A00:LX/0Ap;

    .line 6
    .line 7
    iput-object p3, p0, LX/0Ao;->A02:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p4, p0, LX/0Ao;->A03:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p5, p0, LX/0Ao;->A01:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static A00([II)I
    .locals 5

    .line 0
    array-length v4, p0

    .line 1
    const v3, 0x7fffffff

    .line 2
    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const v1, 0x7fffffff

    .line 6
    .line 7
    .line 8
    :goto_0
    if-ge v2, v4, :cond_1

    .line 9
    .line 10
    aget v0, p0, v2

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-eq v1, v3, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    return p1
.end method

.method public static A01(Ljava/lang/String;Ljava/lang/String;Ljava/text/BreakIterator;II)LX/0Ao;
    .locals 30

    move/from16 v7, p3

    const-string v0, "//"

    .line 17939
    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/16 p0, 0x3f

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v29, 0x2

    const/4 v1, 0x0

    const/16 v28, 0x23

    move-object/from16 v2, p2

    move/from16 p2, p4

    if-ne v0, v7, :cond_27

    add-int/lit8 v4, v0, 0x2

    const/4 v0, 0x3

    new-array v5, v0, [I

    const/16 v0, 0x2f

    .line 17940
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    aput v0, v5, v8

    .line 17941
    move/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    aput v0, v5, v6

    .line 17942
    move/from16 v0, v28

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    aput v0, v5, v29

    .line 17943
    move/from16 v0, p2

    invoke-static {v5, v0}, LX/0Ao;->A00([II)I

    move-result v7

    if-ge v4, v0, :cond_27

    sub-int v0, v7, v4

    if-lez v0, :cond_27

    .line 17944
    :try_start_0
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 17945
    const/16 v0, 0x40

    .line 17946
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v27, 0x0

    if-lez v0, :cond_0

    .line 17947
    invoke-virtual {v5, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    add-int/lit8 v4, v0, 0x1

    .line 17948
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_26

    .line 17949
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const/16 v25, 0x3a

    .line 17950
    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v24

    if-eqz v24, :cond_25

    const-string v0, "["

    .line 17951
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v23, 0x5d

    .line 17952
    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1c

    add-int/lit8 v22, v0, 0x1

    .line 17953
    move/from16 v0, v22

    invoke-virtual {v11, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 17954
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 17955
    invoke-virtual {v2, v9}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 17956
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    .line 17957
    invoke-virtual {v2}, Ljava/text/BreakIterator;->current()I

    move-result v4

    move/from16 v0, v21

    if-ge v4, v0, :cond_1a

    goto :goto_1

    .line 17958
    :cond_0
    move-object/from16 v26, v1

    const/4 v4, 0x0

    goto :goto_0

    .line 17959
    :goto_1
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_1a

    .line 17960
    invoke-virtual {v9, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/16 v0, 0x5b

    if-ne v4, v0, :cond_19

    .line 17961
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v14

    move/from16 v0, v21

    if-ge v14, v0, :cond_18

    move/from16 v0, v20

    if-eq v14, v0, :cond_18

    .line 17962
    invoke-virtual {v9, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/16 v0, 0x56

    if-eq v4, v0, :cond_17

    const/16 v0, 0x76

    if-eq v4, v0, :cond_17

    const/16 v19, 0x4

    .line 17963
    invoke-static/range {v19 .. v19}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v13

    .line 17964
    invoke-virtual {v13, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17965
    invoke-virtual {v13, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    :cond_1
    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v21

    if-ge v14, v0, :cond_13

    move/from16 v0, v20

    if-eq v14, v0, :cond_13

    .line 17966
    invoke-virtual {v9, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v16

    .line 17967
    invoke-static/range {v16 .. v16}, LX/0An;->A01(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v12, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v19

    if-gt v12, v0, :cond_c

    .line 17968
    invoke-virtual {v13, v12}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    add-int/lit8 v10, v12, -0x1

    move/from16 v0, v16

    int-to-char v0, v0

    .line 17969
    invoke-virtual {v13, v10, v0}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    goto :goto_3

    .line 17970
    :cond_3
    const/16 v0, 0x2e

    move v15, v0

    move/from16 v0, v16

    if-eq v0, v15, :cond_7

    move/from16 v15, v25

    if-eq v0, v15, :cond_4

    move/from16 v15, v23

    if-ne v0, v15, :cond_d

    if-lez v5, :cond_13

    goto :goto_5

    .line 17971
    :cond_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v29

    if-ne v10, v0, :cond_6

    if-nez v18, :cond_e

    const/16 v18, 0x1

    .line 17972
    :cond_5
    if-lez v5, :cond_a

    goto :goto_6

    .line 17973
    :cond_6
    if-gt v10, v0, :cond_f

    if-nez v17, :cond_5

    if-nez v12, :cond_5

    goto :goto_7

    .line 17974
    :cond_7
    invoke-static {v13}, LX/0Ap;->A00(Ljava/nio/CharBuffer;)V

    .line 17975
    invoke-virtual {v13, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 17976
    invoke-virtual {v13, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    :cond_8
    if-lez v12, :cond_9

    add-int/lit8 v4, v4, -0x1

    :cond_9
    add-int/lit8 v5, v5, 0x1

    :cond_a
    const/4 v12, 0x0

    goto :goto_4

    .line 17977
    :goto_3
    const/4 v10, 0x0

    .line 17978
    :goto_4
    const/16 v0, 0x8

    if-eqz v18, :cond_b

    const/4 v0, 0x7

    :cond_b
    if-gt v4, v0, :cond_11

    move/from16 v0, v19

    if-gt v5, v0, :cond_10

    .line 17979
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v14

    const/16 v17, 0x0

    goto :goto_2

    .line 17980
    :cond_c
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17981
    const-string v0, "Illegal length hex run >4 characters starting at string index "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v14, v12

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17982
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 17983
    throw v0

    .line 17984
    :goto_5
    invoke-static {v13}, LX/0Ap;->A00(Ljava/nio/CharBuffer;)V

    goto :goto_8

    .line 17985
    :cond_d
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17986
    const-string v0, "Illegal character "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17987
    move/from16 v0, v16

    invoke-static {v2, v0, v14}, LX/0Ao;->A02(Ljava/lang/StringBuilder;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 17988
    throw v0

    .line 17989
    :goto_6
    const-string v0, "IPV4 address is only valid at the end of an IPV6 address string"

    .line 17990
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 17991
    throw v0

    .line 17992
    :cond_e
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17993
    const-string v0, "Second double colon run detected at string index "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v14, v14, v29

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17994
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 17995
    throw v0

    .line 17996
    :goto_7
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17997
    const-string v0, "Missing hex digit before colon at string index "

    .line 17998
    invoke-static {v0, v2, v14}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    .line 17999
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18000
    throw v0

    .line 18001
    :cond_f
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18002
    const-string v0, "Illegal length colon run starting at string index "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v14, v10

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18003
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18004
    throw v0

    .line 18005
    :cond_10
    const-string v0, "IPV4 address at the end of IPV6 address must have at most 4 octets"

    .line 18006
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18007
    throw v0

    .line 18008
    :cond_11
    const-string v0, "IPV6 must have 8 or fewer pieces"

    .line 18009
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18010
    throw v0

    .line 18011
    :goto_8
    if-lez v12, :cond_12

    add-int/lit8 v4, v4, -0x1

    :cond_12
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_13

    add-int/lit8 v4, v4, 0x2

    .line 18012
    :cond_13
    if-eqz v18, :cond_14

    move/from16 v0, v29

    if-eq v10, v0, :cond_22

    if-gtz v4, :cond_22

    .line 18013
    const-string v0, "IPV6 address with zero elision must have at least one non-zero piece"

    .line 18014
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18015
    throw v0

    :cond_14
    const/16 v0, 0x8

    if-eq v4, v0, :cond_22

    if-eq v10, v6, :cond_16

    .line 18016
    move/from16 v0, v19

    if-eq v5, v0, :cond_15

    .line 18017
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18018
    const-string v0, "IPV6 address with IPV4 ending must specify exactly 4 IPV4 octets, found "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " octets"

    .line 18019
    invoke-static {v0, v2}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 18020
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18021
    throw v0

    .line 18022
    :cond_15
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18023
    const-string v0, "IPV6 without zero elision must have have exactly 8 pieces, found "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pieces"

    .line 18024
    invoke-static {v0, v2}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 18025
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18026
    throw v0

    .line 18027
    :cond_16
    const-string v0, "IPV6 must not end with a single colon"

    .line 18028
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18029
    throw v0

    .line 18030
    :cond_17
    const-string v0, "IPFuture address types not supported"

    .line 18031
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18032
    throw v0

    .line 18033
    :cond_18
    const-string v0, "No characters after opening bracket \'[\'"

    .line 18034
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18035
    throw v0

    .line 18036
    :cond_19
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 18037
    const-string v0, "Illegal character at start of literal "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [I

    aput v4, v2, v8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v8, v6}, Ljava/lang/String;-><init>([III)V

    .line 18038
    invoke-static {v0, v3}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 18039
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18040
    throw v0

    .line 18041
    :cond_1a
    const-string v0, "BreakIterator#current is past the end of string"

    .line 18042
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18043
    throw v0

    .line 18044
    :cond_1b
    const-string v0, "IP literal cannot be empty"

    .line 18045
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18046
    throw v0

    .line 18047
    :cond_1c
    new-instance v3, LX/0Ap;

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v1, v1}, LX/0Ap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "IPFutureV6 / IPFutureAddress missing closing bracket"

    new-instance v0, LX/0Aq;

    invoke-direct {v0, v3, v2}, LX/0Aq;-><init>(LX/0Ap;Ljava/lang/String;)V

    throw v0

    :cond_1d
    if-gez v24, :cond_1e

    move-object v9, v11

    goto :goto_9

    .line 18048
    :cond_1e
    move/from16 v0, v24

    invoke-virtual {v11, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch LX/0Aq; {:try_start_0 .. :try_end_0} :catch_3

    .line 18049
    :goto_9
    :try_start_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 18050
    invoke-virtual {v2, v9}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 18051
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 18052
    invoke-virtual {v2}, Ljava/text/BreakIterator;->current()I

    move-result v4

    :goto_a
    const/4 v0, -0x1

    if-eq v4, v0, :cond_21

    if-ge v4, v10, :cond_21

    .line 18053
    invoke-virtual {v9, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 18054
    invoke-static {v5}, LX/0An;->A03(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 18055
    invoke-static {v5}, LX/0An;->A02(I)Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 v0, 0x25

    if-ne v5, v0, :cond_20
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch LX/0Aq; {:try_start_1 .. :try_end_1} :catch_3

    .line 18056
    :try_start_2
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    .line 18057
    invoke-static {v9, v2}, LX/0An;->A00(Ljava/lang/String;Ljava/text/BreakIterator;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch LX/0Aq; {:try_start_2 .. :try_end_2} :catch_3

    .line 18058
    :cond_1f
    :try_start_3
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v4

    goto :goto_a

    .line 18059
    :catch_0
    move-exception v3

    .line 18060
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18061
    const-string v0, "Host contains invalid percent encoded character at string index "

    .line 18062
    invoke-static {v0, v2, v4}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v2

    .line 18063
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 18064
    :cond_20
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18065
    const-string v0, "Host contains illegal character "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18066
    invoke-static {v2, v5, v4}, LX/0Ao;->A02(Ljava/lang/StringBuilder;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18067
    throw v0

    .line 18068
    :cond_21
    if-lez v24, :cond_23
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch LX/0Aq; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    add-int/lit8 v0, v24, 0x1

    .line 18069
    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    const/16 v4, 0xa
    :try_end_4
    .catch LX/0Aq; {:try_start_4 .. :try_end_4} :catch_3

    .line 18070
    :try_start_5
    move-object/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-gez v0, :cond_23

    .line 18071
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18072
    const-string v0, "Port cannot be negative "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch LX/0Aq; {:try_start_5 .. :try_end_5} :catch_3

    .line 18073
    :cond_22
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move/from16 v0, v22

    if-lt v0, v4, :cond_21

    .line 18074
    :cond_23
    new-instance v4, LX/0Ap;

    move-object/from16 v5, v27

    move-object/from16 v0, v26

    invoke-direct {v4, v0, v9, v5}, LX/0Ap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 18075
    :catch_1
    move-exception v4

    .line 18076
    new-instance v3, LX/0Ap;

    move-object/from16 v2, v27

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v9, v2}, LX/0Ap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Invalid port number"

    new-instance v0, LX/0Aq;

    invoke-direct {v0, v3, v2, v4}, LX/0Aq;-><init>(LX/0Ap;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catch LX/0Aq; {:try_start_6 .. :try_end_6} :catch_3

    .line 18077
    :cond_24
    :try_start_7
    const-string v0, "Host cannot be empty"

    .line 18078
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18079
    throw v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch LX/0Aq; {:try_start_7 .. :try_end_7} :catch_3

    .line 18080
    :catch_2
    :try_start_8
    move-exception v4

    .line 18081
    new-instance v3, LX/0Ap;

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v9, v1}, LX/0Ap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Invalid host name"

    new-instance v0, LX/0Aq;

    invoke-direct {v0, v3, v2, v4}, LX/0Aq;-><init>(LX/0Ap;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 18082
    :cond_25
    new-instance v3, LX/0Ap;

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v1, v1}, LX/0Ap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Host string started with colon (\':\')"

    new-instance v0, LX/0Aq;

    invoke-direct {v0, v3, v2}, LX/0Aq;-><init>(LX/0Ap;Ljava/lang/String;)V

    throw v0

    .line 18083
    :cond_26
    new-instance v3, LX/0Ap;

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v1, v1}, LX/0Ap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "No host string was present"

    new-instance v0, LX/0Aq;

    invoke-direct {v0, v3, v2}, LX/0Aq;-><init>(LX/0Ap;Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch LX/0Aq; {:try_start_8 .. :try_end_8} :catch_3

    .line 18084
    :catch_3
    move-exception v3

    .line 18085
    iget-object v0, v3, LX/0Aq;->A00:LX/0Ap;

    .line 18086
    new-instance v2, LX/0Ao;

    move-object/from16 v29, v2

    move-object/from16 p0, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v1

    move-object/from16 p4, v1

    invoke-direct/range {v29 .. v34}, LX/0Ao;-><init>(LX/0Ap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Unable to parse authority"

    new-instance v0, LX/03u;

    invoke-direct {v0, v2, v1, v3}, LX/03u;-><init>(LX/0Ao;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_27
    move-object v4, v1

    :goto_b
    move/from16 v0, p2

    if-lt v7, v0, :cond_28

    .line 18087
    new-instance v29, LX/0Ao;

    move-object/from16 p0, v4

    move-object/from16 p2, v1

    move-object/from16 p3, v1

    move-object/from16 p4, v1

    invoke-direct/range {v29 .. v34}, LX/0Ao;-><init>(LX/0Ap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v29

    :cond_28
    move/from16 v0, v29

    new-array v5, v0, [I

    .line 18088
    move/from16 v0, p0

    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    aput v0, v5, v8

    move/from16 v0, v28

    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    aput v0, v5, v6

    .line 18089
    move/from16 v0, p2

    invoke-static {v5, v0}, LX/0Ao;->A00([II)I

    move-result v9

    .line 18090
    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_29

    const/4 v6, 0x0

    .line 18091
    :cond_29
    :try_start_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 18092
    invoke-virtual {v2, v5}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 18093
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    .line 18094
    invoke-virtual {v2}, Ljava/text/BreakIterator;->current()I

    move-result v7

    .line 18095
    invoke-virtual {v5, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/4 v10, -0x1

    const/16 v8, 0x2f

    if-nez v6, :cond_2a

    if-ne v0, v8, :cond_2a

    .line 18096
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v7

    if-ge v7, v11, :cond_2d

    if-eq v7, v10, :cond_2d

    .line 18097
    invoke-virtual {v5, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne v0, v8, :cond_2a

    .line 18098
    const-string v0, "Path cannot start with two slashes \'//\' when Uri contains an authority"

    .line 18099
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18100
    throw v0

    :cond_2a
    :goto_c
    if-ge v7, v11, :cond_2d

    if-eq v7, v10, :cond_2d

    .line 18101
    invoke-virtual {v5, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 18102
    invoke-static {v6}, LX/0An;->A03(I)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 18103
    invoke-static {v6}, LX/0An;->A02(I)Z

    move-result v0

    if-nez v0, :cond_2c

    const/16 v0, 0x25

    if-eq v6, v0, :cond_2b

    if-eq v6, v8, :cond_2c

    const/16 v0, 0x3a

    if-eq v6, v0, :cond_2c

    const/16 v0, 0x40

    if-eq v6, v0, :cond_2c

    goto :goto_d
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9

    .line 18104
    :cond_2b
    :try_start_a
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    .line 18105
    invoke-static {v5, v2}, LX/0An;->A00(Ljava/lang/String;Ljava/text/BreakIterator;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_9

    .line 18106
    :cond_2c
    :try_start_b
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v7

    goto :goto_c

    .line 18107
    :goto_d
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18108
    const-string v0, "Path contains illegal character "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18109
    invoke-static {v2, v6, v7}, LX/0Ao;->A02(Ljava/lang/StringBuilder;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18110
    throw v0

    .line 18111
    :catch_4
    move-exception v3

    .line 18112
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18113
    const-string v0, "Path contains invalid percent encoded character at string index "

    .line 18114
    invoke-static {v0, v2, v7}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v2

    .line 18115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 18116
    :cond_2d
    move/from16 v0, p2

    if-lt v9, v0, :cond_2e
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_9

    .line 18117
    new-instance v29, LX/0Ao;

    move-object/from16 p0, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v1

    move-object/from16 p4, v1

    invoke-direct/range {v29 .. v34}, LX/0Ao;-><init>(LX/0Ap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v29

    .line 18118
    :cond_2e
    invoke-virtual {v3, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    move/from16 v0, p0

    if-ne v7, v0, :cond_32

    .line 18119
    move/from16 v0, v28

    invoke-virtual {v3, v0, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-gez v8, :cond_2f

    move/from16 v8, p2

    .line 18120
    :cond_2f
    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 18121
    :try_start_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 18122
    invoke-virtual {v2, v6}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 18123
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    .line 18124
    invoke-virtual {v2}, Ljava/text/BreakIterator;->current()I

    move-result v0

    .line 18125
    invoke-virtual {v6, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    move/from16 v0, p0

    if-eq v7, v0, :cond_30

    .line 18126
    const-string v0, "Query must start with ASCII question mark \'?\'"

    .line 18127
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18128
    throw v0

    .line 18129
    :cond_30
    :goto_e
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v7

    if-ge v7, v10, :cond_33

    const/4 v0, -0x1

    if-eq v7, v0, :cond_33

    .line 18130
    invoke-virtual {v6, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 18131
    invoke-static {v9}, LX/0An;->A03(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 18132
    invoke-static {v9}, LX/0An;->A02(I)Z

    move-result v0

    if-nez v0, :cond_30

    const/16 v0, 0x25

    if-eq v9, v0, :cond_31

    const/16 v0, 0x2f

    if-eq v9, v0, :cond_30

    const/16 v0, 0x3a

    if-eq v9, v0, :cond_30

    move/from16 v0, p0

    if-eq v9, v0, :cond_30

    const/16 v0, 0x40

    if-eq v9, v0, :cond_30

    goto :goto_f
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_6

    .line 18133
    :cond_31
    :try_start_d
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    .line 18134
    invoke-static {v6, v2}, LX/0An;->A00(Ljava/lang/String;Ljava/text/BreakIterator;)V

    goto :goto_e
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_6

    .line 18135
    :goto_f
    :try_start_e
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18136
    const-string v0, "Query contains illegal character "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18137
    invoke-static {v2, v9, v7}, LX/0Ao;->A02(Ljava/lang/StringBuilder;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    .line 18138
    throw v0

    .line 18139
    :catch_5
    move-exception v3

    .line 18140
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18141
    const-string v0, "Query contains invalid percent encoded character at string index "

    .line 18142
    invoke-static {v0, v2, v7}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v2

    .line 18143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_6

    .line 18144
    :catch_6
    move-exception v3

    .line 18145
    new-instance v2, LX/0Ao;

    move-object/from16 v29, v2

    move-object/from16 p0, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v1

    invoke-direct/range {v29 .. v34}, LX/0Ao;-><init>(LX/0Ap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Uri contained invalid query string"

    new-instance v0, LX/03u;

    invoke-direct {v0, v2, v1, v3}, LX/03u;-><init>(LX/0Ao;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_32
    move-object v6, v1

    goto :goto_10

    .line 18146
    :cond_33
    move/from16 v0, p2

    if-ge v8, v0, :cond_37

    .line 18147
    invoke-virtual {v3, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    move v9, v8

    .line 18148
    :goto_10
    move/from16 v0, v28

    if-ne v7, v0, :cond_34

    .line 18149
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 18150
    :cond_34
    :try_start_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 18151
    invoke-virtual {v2, v1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 18152
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    .line 18153
    invoke-virtual {v2}, Ljava/text/BreakIterator;->current()I

    move-result v0

    .line 18154
    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    move/from16 v0, v28

    if-eq v3, v0, :cond_35

    .line 18155
    const-string v0, "Fragment must start with ASCII number sign \'#\'"

    .line 18156
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    .line 18157
    :goto_11
    throw v2

    .line 18158
    :cond_35
    :goto_12
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v7

    if-ge v7, v8, :cond_37

    const/4 v0, -0x1

    if-eq v7, v0, :cond_37

    .line 18159
    invoke-virtual {v1, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 18160
    invoke-static {v3}, LX/0An;->A03(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 18161
    invoke-static {v3}, LX/0An;->A02(I)Z

    move-result v0

    if-nez v0, :cond_35

    const/16 v0, 0x25

    if-eq v3, v0, :cond_36

    const/16 v0, 0x2f

    if-eq v3, v0, :cond_35

    const/16 v0, 0x3a

    if-eq v3, v0, :cond_35

    move/from16 v0, p0

    if-eq v3, v0, :cond_35

    const/16 v0, 0x40

    if-eq v3, v0, :cond_35

    goto :goto_13
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_8

    .line 18162
    :cond_36
    :try_start_10
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    .line 18163
    invoke-static {v1, v2}, LX/0An;->A00(Ljava/lang/String;Ljava/text/BreakIterator;)V

    goto :goto_12
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_8

    .line 18164
    :goto_13
    :try_start_11
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18165
    const-string v0, "Fragment contains illegal character "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18166
    invoke-static {v2, v3, v7}, LX/0Ao;->A02(Ljava/lang/StringBuilder;II)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    .line 18167
    goto :goto_11

    .line 18168
    :catch_7
    move-exception v3

    .line 18169
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18170
    const-string v0, "Fragment contains invalid percent encoded character at string index "

    .line 18171
    invoke-static {v0, v2, v7}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    .line 18172
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_8

    .line 18173
    :catch_8
    move-exception v3

    .line 18174
    new-instance v2, LX/0Ao;

    move-object/from16 v29, v2

    move-object/from16 p0, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v1

    invoke-direct/range {v29 .. v34}, LX/0Ao;-><init>(LX/0Ap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Uri contained invalid fragment"

    new-instance v0, LX/03u;

    invoke-direct {v0, v2, v1, v3}, LX/03u;-><init>(LX/0Ao;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 18175
    :cond_37
    new-instance v29, LX/0Ao;

    move-object/from16 p0, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v1

    invoke-direct/range {v29 .. v34}, LX/0Ao;-><init>(LX/0Ap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v29

    .line 18176
    :catch_9
    move-exception v3

    .line 18177
    new-instance v2, LX/0Ao;

    move-object/from16 v29, v2

    move-object/from16 p0, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v1

    move-object/from16 p4, v1

    invoke-direct/range {v29 .. v34}, LX/0Ao;-><init>(LX/0Ap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Uri contained an invalid path"

    new-instance v0, LX/03u;

    invoke-direct {v0, v2, v1, v3}, LX/03u;-><init>(LX/0Ao;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A02(Ljava/lang/StringBuilder;II)Ljava/lang/IllegalArgumentException;
    .locals 4

    .line 0
    const/4 v3, 0x1

    .line 1
    const/4 v2, 0x0

    .line 2
    new-array v1, v3, [I

    .line 3
    .line 4
    aput p1, v1, v2

    .line 5
    .line 6
    new-instance v0, Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([III)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, " at string index "

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method


# virtual methods
.method public final A03()Ljava/lang/String;
    .locals 3

    .line 0
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 1
    .line 2
    .line 3
    move-result-object v2

    .line 4
    iget-object v1, p0, LX/0Ao;->A04:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ":"

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, LX/0Ao;->A00:LX/0Ap;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v0, "//"

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, LX/0Ap;->A01()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, LX/0Ao;->A02:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, LX/0Ao;->A03:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    const-string v0, "?<REDACTED>"

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, LX/0Ao;->A01:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    const-string v0, "#<REDACTED>"

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-virtual {p0}, LX/0Ao;->A03()Ljava/lang/String;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    return-object v0
.end method
