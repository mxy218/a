.class final Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;
.super Lcom/google/zxing/qrcode/decoder/DataMask;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMask000"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .registers 3

    add-int/2addr p1, p2

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
