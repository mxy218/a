.class final Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;
.super Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
.source "DataMatrixSymbolInfo144.java"


# direct methods
.method constructor <init>()V
    .registers 10

    const/4 v1, 0x0

    const/16 v2, 0x616

    const/16 v3, 0x26c

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/16 v6, 0x24

    const/4 v7, -0x1

    const/16 v8, 0x3e

    move-object v0, p0

    .line 22
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    return-void
.end method


# virtual methods
.method public getDataLengthForInterleavedBlock(I)I
    .registers 2

    const/16 p0, 0x8

    if-gt p1, p0, :cond_7

    const/16 p0, 0x9c

    goto :goto_9

    :cond_7
    const/16 p0, 0x9b

    :goto_9
    return p0
.end method

.method public getInterleavedBlockCount()I
    .registers 1

    const/16 p0, 0xa

    return p0
.end method
