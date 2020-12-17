.class public Lcom/meizu/settings/utils/QRImageUtil;
.super Ljava/lang/Object;
.source "QRImageUtil.java"


# direct methods
.method public static addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12

    .line 61
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 62
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 65
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 66
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 67
    invoke-virtual {v5, p0, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 p0, 0x1f

    .line 68
    invoke-virtual {v5, p0}, Landroid/graphics/Canvas;->save(I)I

    const/high16 p0, 0x3f800000  # 1.0f

    move v7, p0

    :goto_28
    int-to-float v8, v2

    div-float/2addr v8, v7

    .line 70
    div-int/lit8 v9, v0, 0x5

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_54

    int-to-float v8, v3

    div-float/2addr v8, v7

    div-int/lit8 v9, v1, 0x5

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3b

    goto :goto_54

    :cond_3b
    div-float/2addr p0, v7

    .line 74
    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, p0, p0, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    sub-int/2addr v0, v2

    .line 75
    div-int/lit8 v0, v0, 0x2

    int-to-float p0, v0

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    invoke-virtual {v5, p1, p0, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 76
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    return-object v4

    :cond_54
    :goto_54
    const/high16 v8, 0x40000000  # 2.0f

    mul-float/2addr v7, v8

    goto :goto_28
.end method

.method public static createQRImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 13

    const/4 v0, 0x0

    if-eqz p0, :cond_67

    :try_start_3
    const-string v1, ""

    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_13

    goto :goto_67

    .line 31
    :cond_13
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 32
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-virtual {v8, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v3, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v3}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v4, p0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    mul-int v1, p1, p2

    .line 37
    new-array v3, v1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_33
    if-ge v2, p2, :cond_52

    move v4, v1

    :goto_36
    if-ge v4, p1, :cond_4f

    .line 42
    invoke-virtual {p0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_46

    mul-int v5, v2, p1

    add-int/2addr v5, v4

    const/high16 v6, -0x1000000

    .line 43
    aput v6, v3, v5

    goto :goto_4c

    :cond_46
    mul-int v5, v2, p1

    add-int/2addr v5, v4

    const/4 v6, -0x1

    .line 45
    aput v6, v3, v5

    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 49
    :cond_52
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v5, p1

    move v8, p1

    move v9, p2

    .line 51
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_62
    .catch Lcom/google/zxing/WriterException; {:try_start_3 .. :try_end_62} :catch_63

    return-object p0

    :catch_63
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_67
    :goto_67
    return-object v0
.end method

.method public static createQRImage(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    .line 18
    invoke-static {p0, p1, p2}, Lcom/meizu/settings/utils/QRImageUtil;->createQRImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p3, :cond_a

    .line 20
    invoke-static {p0, p3}, Lcom/meizu/settings/utils/QRImageUtil;->addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_a
    return-object p0
.end method
