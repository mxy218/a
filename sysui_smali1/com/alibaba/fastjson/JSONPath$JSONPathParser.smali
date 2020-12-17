.class Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONPathParser"
.end annotation


# instance fields
.field private ch:C

.field private level:I

.field private final path:Ljava/lang/String;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 496
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    return-void
.end method

.method static isDigitFirst(C)Z
    .registers 2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_13

    const/16 v0, 0x30

    if-lt p0, v0, :cond_11

    const/16 v0, 0x39

    if-gt p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method


# virtual methods
.method accept(C)V
    .registers 5

    .line 1139
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, p1, :cond_e

    .line 1143
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result p1

    if-nez p1, :cond_d

    .line 1144
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    :cond_d
    return-void

    .line 1140
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ", but \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;
    .registers 11

    .line 1179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    .line 1180
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    .line 1181
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    .line 1183
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ","

    const/4 v7, 0x2

    const/4 v8, -0x1

    if-le v5, v7, :cond_51

    const/16 v5, 0x27

    if-ne v1, v5, :cond_51

    if-ne v3, v5, :cond_51

    if-ne v4, v8, :cond_31

    .line 1188
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1189
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {p1, p0, v0}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object p1

    .line 1192
    :cond_31
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1193
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 1194
    :goto_38
    array-length v1, p0

    if-ge v0, v1, :cond_4b

    .line 1195
    aget-object v1, p0, v0

    .line 1196
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 1199
    :cond_4b
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;-><init>([Ljava/lang/String;)V

    return-object p0

    :cond_51
    const/16 p0, 0x3a

    .line 1202
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne v4, v8, :cond_65

    if-ne p0, v8, :cond_65

    .line 1204
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1205
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V

    return-object p1

    :cond_65
    if-eq v4, v8, :cond_82

    .line 1209
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1210
    array-length p1, p0

    new-array p1, p1, [I

    .line 1211
    :goto_6e
    array-length v1, p0

    if-ge v0, v1, :cond_7c

    .line 1212
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 1214
    :cond_7c
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;-><init>([I)V

    return-object p0

    :cond_82
    if-eq p0, v8, :cond_fe

    const-string p0, ":"

    .line 1218
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1219
    array-length p1, p0

    new-array p1, p1, [I

    move v1, v0

    .line 1220
    :goto_8e
    array-length v3, p0

    if-ge v1, v3, :cond_ad

    .line 1221
    aget-object v3, p0, v1

    .line 1222
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a4

    if-nez v1, :cond_9e

    .line 1224
    aput v0, p1, v1

    goto :goto_aa

    .line 1226
    :cond_9e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 1229
    :cond_a4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, p1, v1

    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    .line 1233
    :cond_ad
    aget p0, p1, v0

    .line 1235
    array-length v0, p1

    if-le v0, v2, :cond_b4

    .line 1236
    aget v8, p1, v2

    .line 1241
    :cond_b4
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ba

    .line 1242
    aget v2, p1, v7

    :cond_ba
    if-ltz v8, :cond_de

    if-lt v8, p0, :cond_bf

    goto :goto_de

    .line 1248
    :cond_bf
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end must greater than or equals start. start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",  end "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_de
    :goto_de
    if-lez v2, :cond_e6

    .line 1255
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$RangeSegement;

    invoke-direct {p1, p0, v8, v2}, Lcom/alibaba/fastjson/JSONPath$RangeSegement;-><init>(III)V

    return-object p1

    .line 1253
    :cond_e6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "step must greater than zero : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1258
    :cond_fe
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public explain()[Lcom/alibaba/fastjson/JSONPath$Segement;
    .registers 6

    .line 1149
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1156
    :goto_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 1169
    iget p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v1, v0

    if-ne p0, v1, :cond_1b

    return-object v0

    .line 1173
    :cond_1b
    new-array v1, p0, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1174
    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 1161
    :cond_21
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v4, v0

    if-ne v3, v4, :cond_30

    mul-int/lit8 v4, v3, 0x3

    .line 1162
    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1163
    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    .line 1166
    :cond_30
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    aput-object v1, v0, v2

    goto :goto_e

    .line 1150
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method isEOF()Z
    .registers 2

    .line 504
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method next()V
    .registers 4

    .line 500
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    return-void
.end method

.method parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;
    .registers 16

    if-eqz p1, :cond_7

    const/16 v0, 0x5b

    .line 594
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 599
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x3f

    const/16 v2, 0x28

    const/16 v3, 0x2e

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_27

    .line 600
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 601
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 602
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x40

    if-ne v0, v1, :cond_25

    .line 603
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 604
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_25
    move v0, v5

    goto :goto_28

    :cond_27
    move v0, v4

    :goto_28
    const/4 v1, -0x1

    const/16 v6, 0x5d

    if-nez v0, :cond_9b

    .line 610
    iget-char v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v7}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v7

    if-eqz v7, :cond_37

    goto/16 :goto_9b

    .line 923
    :cond_37
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    sub-int/2addr v2, v5

    .line 924
    :goto_3a
    iget-char v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v8, 0x2f

    if-eq v7, v6, :cond_5e

    if-eq v7, v8, :cond_5e

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v7

    if-nez v7, :cond_5e

    .line 925
    iget-char v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v7, v3, :cond_51

    if-nez v0, :cond_51

    if-nez v0, :cond_51

    goto :goto_5e

    .line 931
    :cond_51
    iget-char v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_5a

    .line 932
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 934
    :cond_5a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_3a

    :cond_5e
    :goto_5e
    if-eqz p1, :cond_64

    .line 939
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    :goto_62
    sub-int/2addr v0, v5

    goto :goto_71

    .line 941
    :cond_64
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v0, v8, :cond_6e

    if-ne v0, v3, :cond_6b

    goto :goto_6e

    .line 944
    :cond_6b
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_71

    .line 942
    :cond_6e
    :goto_6e
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_62

    .line 948
    :goto_71
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    .line 950
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_8b

    const-string p0, "\\\\\\."

    .line 951
    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 952
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {p1, p0, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object p1

    .line 955
    :cond_8b
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v0

    if-eqz p1, :cond_9a

    .line 957
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result p1

    if-nez p1, :cond_9a

    .line 958
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_9a
    return-object v0

    .line 611
    :cond_9b
    :goto_9b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v8

    .line 613
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    const/16 v7, 0x29

    if-eqz v0, :cond_bd

    .line 615
    iget-char v9, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v9, v7, :cond_bd

    .line 616
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    if-eqz p1, :cond_b2

    .line 618
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 621
    :cond_b2
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {p1, v8}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    :cond_bd
    if-eqz p1, :cond_d1

    .line 624
    iget-char v9, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v9, v6, :cond_d1

    .line 625
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 626
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {p1, v8}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 629
    :cond_d1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readOp()Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v9

    .line 631
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 633
    sget-object v10, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v9, v10, :cond_40d

    sget-object v10, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, v10, :cond_e2

    goto/16 :goto_40d

    .line 659
    :cond_e2
    sget-object v10, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v9, v10, :cond_2ce

    sget-object v10, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, v10, :cond_ec

    goto/16 :goto_2ce

    .line 764
    :cond_ec
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v10, 0x27

    if-eq v2, v10, :cond_1f7

    const/16 v10, 0x22

    if-ne v2, v10, :cond_f8

    goto/16 :goto_1f7

    .line 838
    :cond_f8
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 839
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v1

    .line 841
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const-wide/16 v10, 0x0

    if-ne v4, v3, :cond_10d

    .line 842
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readDoubleValue(J)D

    move-result-wide v3

    goto :goto_10e

    :cond_10d
    move-wide v3, v10

    :goto_10e
    if-eqz v0, :cond_113

    .line 847
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_113
    if-eqz p1, :cond_118

    .line 851
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_118
    cmpl-double p0, v3, v10

    if-nez p0, :cond_127

    .line 855
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    invoke-direct {p1, v8, v1, v2, v9}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 857
    :cond_127
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;

    invoke-direct {p1, v8, v3, v4, v9}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;-><init>(Ljava/lang/String;DLcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 861
    :cond_132
    iget-char p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x6e

    if-ne p1, v1, :cond_170

    .line 862
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "null"

    .line 863
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f1

    if-eqz v0, :cond_149

    .line 865
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 867
    :cond_149
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 869
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, p0, :cond_15b

    .line 870
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {p1, v8}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 873
    :cond_15b
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, p0, :cond_16a

    .line 874
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {p1, v8}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 877
    :cond_16a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_170
    const/16 v1, 0x74

    if-ne p1, v1, :cond_1b1

    .line 880
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "true"

    .line 882
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f1

    if-eqz v0, :cond_186

    .line 884
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 886
    :cond_186
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 888
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, p0, :cond_19a

    .line 889
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v8, v0, v5}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 892
    :cond_19a
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, p0, :cond_1ab

    .line 893
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v8, v0, v4}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 896
    :cond_1ab
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_1b1
    const/16 v1, 0x66

    if-ne p1, v1, :cond_1f1

    .line 899
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "false"

    .line 901
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f1

    if-eqz v0, :cond_1c6

    .line 903
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 905
    :cond_1c6
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 907
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, p0, :cond_1da

    .line 908
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v8, v0, v5}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 911
    :cond_1da
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, p0, :cond_1eb

    .line 912
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v8, v0, v4}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 915
    :cond_1eb
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 919
    :cond_1f1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 765
    :cond_1f7
    :goto_1f7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_200

    .line 767
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_200
    if-eqz p1, :cond_205

    .line 771
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 774
    :cond_205
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, p0, :cond_214

    .line 775
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    invoke-direct {p1, v8, v2, v4}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 778
    :cond_214
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, p0, :cond_223

    .line 779
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    invoke-direct {p1, v8, v2, v5}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 782
    :cond_223
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v9, p0, :cond_22b

    sget-object p0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, p0, :cond_252

    :cond_22b
    :goto_22b
    const-string p0, "%%"

    .line 783
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const-string v0, "%"

    if-eq p1, v1, :cond_23a

    .line 784
    invoke-virtual {v2, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_22b

    .line 787
    :cond_23a
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, p0, :cond_240

    move v12, v5

    goto :goto_241

    :cond_240
    move v12, v4

    :goto_241
    const/16 p0, 0x25

    .line 789
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, v1, :cond_25d

    .line 791
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, p0, :cond_250

    .line 792
    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_252

    .line 794
    :cond_250
    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 835
    :cond_252
    :goto_252
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {p1, v8, v2, v9}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 797
    :cond_25d
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-nez p1, :cond_291

    .line 803
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p0, :cond_27a

    .line 804
    array-length p0, v0

    sub-int/2addr p0, v5

    new-array p0, p0, [Ljava/lang/String;

    .line 805
    array-length p1, p0

    invoke-static {v0, v5, p0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v11, p0

    goto :goto_29d

    .line 807
    :cond_27a
    array-length p0, v0

    sub-int/2addr p0, v5

    aget-object p0, v0, p0

    .line 808
    array-length p1, v0

    if-le p1, v3, :cond_28d

    .line 809
    array-length p1, v0

    sub-int/2addr p1, v3

    new-array p1, p1, [Ljava/lang/String;

    .line 810
    array-length v2, p1

    invoke-static {v0, v5, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, p0

    move-object v11, p1

    move-object v9, v1

    goto :goto_2c2

    :cond_28d
    move-object v10, p0

    move-object v9, v1

    move-object v11, v9

    goto :goto_2c2

    .line 813
    :cond_291
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p0, :cond_2a0

    move-object v11, v0

    :goto_29d
    move-object v9, v1

    move-object v10, v9

    goto :goto_2c2

    .line 816
    :cond_2a0
    array-length p0, v0

    if-ne p0, v5, :cond_2a9

    .line 817
    aget-object p0, v0, v4

    move-object v9, p0

    move-object v10, v1

    move-object v11, v10

    goto :goto_2c2

    .line 818
    :cond_2a9
    array-length p0, v0

    if-ne p0, v3, :cond_2b1

    .line 819
    aget-object p0, v0, v4

    .line 820
    aget-object p1, v0, v5

    goto :goto_2bf

    .line 822
    :cond_2b1
    aget-object p0, v0, v4

    .line 823
    array-length p1, v0

    sub-int/2addr p1, v5

    aget-object p1, v0, p1

    .line 824
    array-length v1, v0

    sub-int/2addr v1, v3

    new-array v1, v1, [Ljava/lang/String;

    .line 825
    array-length v2, v1

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2bf
    move-object v9, p0

    move-object v10, p1

    move-object v11, v1

    .line 829
    :goto_2c2
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$MatchSegement;

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 660
    :cond_2ce
    :goto_2ce
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, v1, :cond_2d4

    move v1, v5

    goto :goto_2d5

    :cond_2d4
    move v1, v4

    .line 661
    :goto_2d5
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 663
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 665
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v3

    .line 666
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :goto_2e4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 670
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v9, 0x2c

    if-eq v3, v9, :cond_401

    .line 679
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    if-eqz v0, :cond_2f5

    .line 681
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    :cond_2f5
    if-eqz p1, :cond_2fa

    .line 685
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 692
    :cond_2fa
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v5

    move v0, p1

    move v3, v0

    :cond_301
    :goto_301
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_331

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_311

    if-eqz p1, :cond_301

    move p1, v4

    goto :goto_301

    .line 700
    :cond_311
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eqz p1, :cond_329

    .line 701
    const-class v7, Ljava/lang/Byte;

    if-eq v6, v7, :cond_329

    const-class v7, Ljava/lang/Short;

    if-eq v6, v7, :cond_329

    const-class v7, Ljava/lang/Integer;

    if-eq v6, v7, :cond_329

    const-class v7, Ljava/lang/Long;

    if-eq v6, v7, :cond_329

    move p1, v4

    move v3, p1

    :cond_329
    if-eqz v0, :cond_301

    .line 707
    const-class v7, Ljava/lang/String;

    if-eq v6, v7, :cond_301

    move v0, v4

    goto :goto_301

    .line 712
    :cond_331
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v5, :cond_355

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_355

    if-eqz v1, :cond_34a

    .line 714
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {p1, v8}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    .line 716
    :cond_34a
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance p1, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {p1, v8}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p0

    :cond_355
    if-eqz p1, :cond_39c

    .line 721
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v5, :cond_379

    .line 722
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    if-eqz v1, :cond_36c

    .line 723
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_36e

    :cond_36c
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 724
    :goto_36e
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v2, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    invoke-direct {v2, v8, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v1

    .line 727
    :cond_379
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [J

    .line 728
    :goto_37f
    array-length p1, p0

    if-ge v4, p1, :cond_391

    .line 729
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    aput-wide v5, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_37f

    .line 732
    :cond_391
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;

    invoke-direct {v0, v8, p0, v1}, Lcom/alibaba/fastjson/JSONPath$IntInSegement;-><init>(Ljava/lang/String;[JZ)V

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p1

    :cond_39c
    if-eqz v0, :cond_3d0

    .line 736
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v5, :cond_3bc

    .line 737
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v1, :cond_3af

    .line 739
    sget-object p1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_3b1

    :cond_3af
    sget-object p1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 740
    :goto_3b1
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v1, v8, p0, p1}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v0

    .line 743
    :cond_3bc
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 744
    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 746
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;

    invoke-direct {v0, v8, p0, v1}, Lcom/alibaba/fastjson/JSONPath$StringInSegement;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p1

    :cond_3d0
    if-eqz v3, :cond_3fb

    .line 750
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Long;

    .line 751
    :goto_3d8
    array-length p1, p0

    if-ge v4, p1, :cond_3f0

    .line 752
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_3ed

    .line 754
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v4

    :cond_3ed
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d8

    .line 758
    :cond_3f0
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;

    invoke-direct {v0, v8, p0, v1}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;-><init>(Ljava/lang/String;[Ljava/lang/Long;Z)V

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p1

    .line 761
    :cond_3fb
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 673
    :cond_401
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 675
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v3

    .line 676
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e4

    .line 634
    :cond_40d
    :goto_40d
    sget-object p1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v9, p1, :cond_413

    move v13, v5

    goto :goto_414

    :cond_413
    move v13, v4

    .line 636
    :goto_414
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object p1

    .line 638
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "and"

    .line 640
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_468

    .line 644
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_460

    if-eqz v0, :cond_460

    .line 650
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_458

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_458

    .line 651
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    check-cast v0, Ljava/lang/Number;

    .line 652
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;-><init>(Ljava/lang/String;JJZ)V

    .line 653
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object p1

    .line 656
    :cond_458
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 647
    :cond_460
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 641
    :cond_468
    new-instance p1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected readDoubleValue(J)D
    .registers 6

    .line 981
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 983
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 984
    :goto_7
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_15

    const/16 v2, 0x39

    if-gt v1, v2, :cond_15

    .line 985
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_7

    .line 988
    :cond_15
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 989
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 990
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double p0, p1

    add-double/2addr v0, p0

    return-wide v0
.end method

.method protected readLongValue()J
    .registers 4

    .line 965
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 966
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_e

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_11

    .line 967
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 970
    :cond_11
    :goto_11
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x39

    if-gt v1, v2, :cond_1f

    .line 971
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_11

    .line 974
    :cond_1f
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 975
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 976
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method readName()Ljava/lang/String;
    .registers 4

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1089
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_29

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_29

    .line 1090
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illeal jsonpath syntax. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1093
    :cond_29
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1094
    :goto_2e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 1095
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v1, :cond_4b

    .line 1096
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1097
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_5b

    .line 1101
    :cond_47
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_2e

    .line 1105
    :cond_4b
    invoke-static {v2}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v2

    if-nez v2, :cond_52

    goto :goto_5b

    .line 1109
    :cond_52
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_2e

    .line 1113
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1114
    iget-char p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1117
    :cond_6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected readOp()Lcom/alibaba/fastjson/JSONPath$Operator;
    .registers 7

    .line 1025
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_c

    .line 1026
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1027
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_42

    :cond_c
    const/16 v2, 0x21

    if-ne v0, v2, :cond_19

    .line 1029
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1030
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1031
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_42

    :cond_19
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_2d

    .line 1033
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1034
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v1, :cond_2a

    .line 1035
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1036
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_42

    .line 1038
    :cond_2a
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_42

    :cond_2d
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_41

    .line 1041
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1042
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v1, :cond_3e

    .line 1043
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1044
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_42

    .line 1046
    :cond_3e
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    if-nez v0, :cond_b3

    .line 1051
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not"

    .line 1053
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "between"

    const-string v3, "in"

    const-string v4, "rlike"

    const-string v5, "like"

    if-eqz v1, :cond_89

    .line 1054
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1056
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object p0

    .line 1058
    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1059
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_b3

    .line 1060
    :cond_68
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1061
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_b3

    .line 1062
    :cond_71
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1063
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_b3

    .line 1064
    :cond_7a
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_83

    .line 1065
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_b3

    .line 1067
    :cond_83
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 1070
    :cond_89
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_92

    .line 1071
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_b3

    .line 1072
    :cond_92
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9b

    .line 1073
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_b3

    .line 1074
    :cond_9b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a4

    .line 1075
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_b3

    .line 1076
    :cond_a4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ad

    .line 1077
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_b3

    .line 1079
    :cond_ad
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_b3
    :goto_b3
    return-object v0
.end method

.method readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;
    .registers 6

    .line 508
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_40

    .line 509
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 510
    iget-char p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    add-int/lit8 p0, p0, -0x30

    .line 511
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V

    return-object v0

    .line 512
    :cond_20
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x61

    if-lt v0, v3, :cond_2a

    const/16 v3, 0x7a

    if-le v0, v3, :cond_34

    :cond_2a
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x41

    if-lt v0, v3, :cond_40

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_40

    .line 513
    :cond_34
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    iget-char p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 516
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_e0

    .line 517
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 519
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x24

    if-ne v0, v3, :cond_53

    .line 520
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_40

    :cond_53
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_79

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_5c

    goto :goto_79

    :cond_5c
    const/16 v3, 0x5b

    if-ne v0, v3, :cond_65

    .line 566
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object p0

    return-object p0

    .line 569
    :cond_65
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-nez v0, :cond_73

    .line 570
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object p0

    .line 572
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 575
    :cond_73
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 525
    :cond_79
    :goto_79
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 527
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    if-ne v0, v3, :cond_88

    .line 528
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v3, :cond_88

    .line 529
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_89

    :cond_88
    move v1, v2

    .line 532
    :goto_89
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_9b

    .line 533
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_98

    .line 534
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 537
    :cond_98
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    return-object p0

    .line 540
    :cond_9b
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 541
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object p0

    return-object p0

    .line 544
    :cond_a6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 545
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x28

    if-ne v2, v3, :cond_da

    .line 546
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 547
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x29

    if-ne v1, v2, :cond_d4

    .line 548
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-nez v1, :cond_c2

    .line 549
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    :cond_c2
    const-string/jumbo p0, "size"

    .line 552
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ce

    .line 553
    sget-object p0, Lcom/alibaba/fastjson/JSONPath$SizeSegement;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegement;

    return-object p0

    .line 556
    :cond_ce
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 559
    :cond_d4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 562
    :cond_da
    new-instance p0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_e0
    const/4 p0, 0x0

    return-object p0
.end method

.method readString()Ljava/lang/String;
    .registers 5

    .line 1123
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1124
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1126
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1127
    :goto_9
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v2, v0, :cond_17

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_9

    .line 1131
    :cond_17
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_22

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_26

    :cond_22
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, -0x1

    :goto_26
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1133
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    return-object v1
.end method

.method protected readValue()Ljava/lang/Object;
    .registers 3

    .line 996
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 998
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 999
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1002
    :cond_14
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1f

    goto :goto_3f

    :cond_1f
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_39

    .line 1007
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 1009
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 p0, 0x0

    return-object p0

    .line 1012
    :cond_31
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_39
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 1003
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final skipWhitespace()V
    .registers 3

    .line 583
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_20

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_20

    .line 584
    :cond_1c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    :cond_20
    return-void
.end method
