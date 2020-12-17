.class final Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
.super Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
.source "DecodedChar.java"


# instance fields
.field private final value:C


# direct methods
.method constructor <init>(IC)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    .line 41
    iput-char p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C

    return-void
.end method


# virtual methods
.method getValue()C
    .registers 1

    .line 45
    iget-char p0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C

    return p0
.end method

.method isFNC1()Z
    .registers 2

    .line 49
    iget-char p0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C

    const/16 v0, 0x24

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
