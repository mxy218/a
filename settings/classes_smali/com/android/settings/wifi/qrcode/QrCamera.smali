.class public Lcom/android/settings/wifi/qrcode/QrCamera;
.super Landroid/os/Handler;
.source "QrCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;,
        Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;
    }
.end annotation


# static fields
.field private static AUTOFOCUS_INTERVAL_MS:J = 0x5dcL

.field private static FORMATS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static HINTS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/util/List<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private static MAX_RATIO_DIFF:D = 0.1


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraOrientation:I

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewSize:Landroid/util/Size;

.field private mReader:Lcom/google/zxing/MultiFormatReader;

.field private mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/qrcode/QrCamera;->HINTS:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/qrcode/QrCamera;->FORMATS:Ljava/util/List;

    .line 79
    sget-object v0, Lcom/android/settings/wifi/qrcode/QrCamera;->FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/settings/wifi/qrcode/QrCamera;->HINTS:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    sget-object v2, Lcom/android/settings/wifi/qrcode/QrCamera;->FORMATS:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    .line 94
    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    .line 95
    new-instance p1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {p1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    .line 96
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    sget-object p1, Lcom/android/settings/wifi/qrcode/QrCamera;->HINTS:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Landroid/hardware/Camera;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/qrcode/QrCamera;I)I
    .registers 2

    .line 60
    iput p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCameraOrientation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/qrcode/QrCamera;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->setCameraParameter()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/util/Size;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->setTransformationMatrix(Landroid/util/Size;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/qrcode/QrCamera;)Z
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->startPreview()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/qrcode/QrCamera;[B)Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->getFrameImage([B)Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    move-result-object p0

    return-object p0
.end method

.method private getBestPictureSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .registers 13

    .line 393
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 394
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v1, v1

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v1

    .line 395
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 399
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 400
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v7

    cmpl-double v9, v7, v1

    if-nez v9, :cond_47

    .line 402
    new-instance v7, Landroid/util/Size;

    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v7, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_47
    sub-double/2addr v7, v1

    .line 403
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    sget-wide v9, Lcom/android/settings/wifi/qrcode/QrCamera;->MAX_RATIO_DIFF:D

    cmpg-double v7, v7, v9

    if-gez v7, :cond_20

    .line 404
    new-instance v7, Landroid/util/Size;

    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v7, v8, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 408
    :cond_5f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_80

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_80

    const-string p0, "QrCamera"

    const-string v0, "No proper picture size, return default picture size"

    .line 409
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    .line 411
    new-instance p1, Landroid/util/Size;

    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 414
    :cond_80
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_87

    move-object v3, v4

    :cond_87
    const p0, 0x7fffffff

    const/4 p1, 0x0

    .line 421
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v0

    .line 422
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_94
    :goto_94
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 423
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, p0, :cond_94

    move-object p1, v2

    move p0, v3

    goto :goto_94

    :cond_b3
    return-object p1
.end method

.method private getBestPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .registers 14

    .line 374
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    invoke-interface {v0}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->getViewSize()Landroid/util/Size;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v3, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v0

    .line 377
    new-instance v2, Landroid/util/Size;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    .line 378
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v3, 0x0

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 379
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v6

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v8

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v6

    .line 380
    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v8, v9

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v10

    mul-int/2addr v9, v10

    if-le v8, v9, :cond_24

    sub-double v8, v3, v0

    .line 381
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    div-double/2addr v8, v0

    const-wide v10, 0x3fb999999999999aL  # 0.1

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_64

    sub-double/2addr v6, v0

    .line 382
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    div-double/2addr v6, v0

    cmpg-double v6, v6, v10

    if-gtz v6, :cond_24

    .line 383
    :cond_64
    new-instance v2, Landroid/util/Size;

    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    iget v4, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 384
    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v3, v3

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v5, v5

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v3

    goto :goto_24

    :cond_78
    return-object v2
.end method

.method private getFrameImage([B)Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;
    .registers 5

    .line 348
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    iget v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCameraOrientation:I

    invoke-interface {v0, v1, v2}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->getFramePosition(Landroid/util/Size;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 349
    new-instance v1, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    .line 350
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {v1, p1, v2, p0}, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;-><init>([BII)V

    .line 351
    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 352
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, p0, p1, v2, v0}, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->crop(IIII)Lcom/google/zxing/LuminanceSource;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    return-object p0
.end method

.method private getRatio(DD)D
    .registers 5

    cmpg-double p0, p1, p3

    if-gez p0, :cond_6

    div-double/2addr p1, p3

    goto :goto_8

    :cond_6
    div-double p1, p3, p1

    :goto_8
    return-wide p1
.end method

.method private setCameraParameter()V
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->getBestPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->getBestPictureSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 185
    :cond_48
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    .line 186
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_69

    :cond_5c
    const-string v1, "auto"

    .line 188
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 191
    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private setTransformationMatrix(Landroid/util/Size;)V
    .registers 8

    .line 323
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    .line 326
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    .line 325
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 328
    :goto_24
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    goto :goto_31

    :cond_2d
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    :goto_31
    if-eqz v0, :cond_3a

    .line 329
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_40

    :cond_3a
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    :goto_40
    int-to-double v1, p1

    int-to-double v3, v0

    .line 330
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-le p1, v0, :cond_51

    div-float p1, v2, v1

    move v5, v2

    move v2, p1

    move p1, v5

    goto :goto_53

    :cond_51
    div-float p1, v2, v1

    .line 342
    :goto_53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 343
    invoke-virtual {v0, p1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 344
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    invoke-interface {p0, v0}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private startPreview()Z
    .registers 6

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 199
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    .line 200
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 201
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    if-eq v0, v2, :cond_35

    const/4 v3, 0x2

    if-eq v0, v3, :cond_32

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2f

    goto :goto_37

    :cond_2f
    const/16 v1, 0x10e

    goto :goto_37

    :cond_32
    const/16 v1, 0xb4

    goto :goto_37

    :cond_35
    const/16 v1, 0x5a

    .line 217
    :cond_37
    :goto_37
    iget v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCameraOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 218
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    if-ne v0, v1, :cond_61

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 222
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-wide v3, Lcom/android/settings/wifi/qrcode/QrCamera;->AUTOFOCUS_INTERVAL_MS:J

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_61
    return v2
.end method


# virtual methods
.method protected decodeImage(Lcom/google/zxing/BinaryBitmap;)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_6
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_6} :catch_13
    .catchall {:try_start_0 .. :try_end_6} :catchall_c

    .line 444
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_19

    :catchall_c
    move-exception p1

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw p1

    :catch_13
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    const/4 p1, 0x0

    :goto_19
    if-eqz p1, :cond_24

    .line 448
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleSuccessfulResult(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 357
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    .line 366
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected Message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QrCamera"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 362
    :cond_1e
    iget-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 363
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/settings/wifi/qrcode/QrCamera;->AUTOFOCUS_INTERVAL_MS:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2d
    return-void
.end method

.method public isDecodeTaskAlive()Z
    .registers 1

    .line 459
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public start(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    if-nez v0, :cond_18

    .line 107
    new-instance v0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;-><init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;Lcom/android/settings/wifi/qrcode/QrCamera$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    .line 109
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_18
    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    if-eqz v1, :cond_e

    .line 120
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    .line 123
    :cond_e
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz p0, :cond_15

    .line 124
    invoke-virtual {p0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_15
    return-void
.end method
