.class public Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;
.super Landroid/view/SurfaceView;
.source "FingerprintIconView.java"


# static fields
.field public static final DEFAULT_ICON_COLOR:[I

.field private static final TAG:Ljava/lang/String; = "FingerprintIconView"


# instance fields
.field private mCanRefreshView:Z

.field private mColors:[I

.field private mCurrentAlpha:I

.field private mDefaultColors:[I

.field private mFingerDownBitmap:Landroid/graphics/Bitmap;

.field private mIsFingerDown:Z

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mNormalBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->DEFAULT_ICON_COLOR:[I

    return-void

    nop

    :array_a
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 32
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->DEFAULT_ICON_COLOR:[I

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mColors:[I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mCanRefreshView:Z

    .line 52
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->drawIcon()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->DEFAULT_ICON_COLOR:[I

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mColors:[I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mCanRefreshView:Z

    .line 47
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->drawIcon()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    .line 26
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mIsFingerDown:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;
    .param p1, "x1"  # Z

    .line 26
    iput-boolean p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mIsFingerDown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;
    .param p1, "x1"  # Z

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->refreshIcon(Z)V

    return-void
.end method

.method private drawColor(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"  # Landroid/graphics/Canvas;

    .line 149
    const-string v0, "FingerprintIconView"

    const-string v1, "drawcolor.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->getMeasuredHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mColors:[I

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 153
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 154
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 155
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    return-void
.end method

.method private drawIcon()V
    .registers 3

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setZOrderOnTop(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 58
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa08001d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa08001e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mFingerDownBitmap:Landroid/graphics/Bitmap;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mPaint:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v1, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView$1;-><init>(Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 82
    return-void
.end method

.method private drawNormalBitmap(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"  # Landroid/graphics/Canvas;

    .line 136
    const-string v0, "FingerprintIconView"

    const-string v1, "drawNormalBitmap.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2f

    .line 138
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 139
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mPaint:Landroid/graphics/Paint;

    .line 138
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->drawColor(Landroid/graphics/Canvas;)V

    .line 142
    :cond_2f
    return-void
.end method

.method private refreshIcon(Z)V
    .registers 6
    .param p1, "fingerDown"  # Z

    .line 89
    iput-boolean p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mIsFingerDown:Z

    .line 90
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mCanRefreshView:Z

    if-nez v0, :cond_11

    if-nez p1, :cond_11

    .line 91
    const-string v0, "FingerprintIconView"

    const-string/jumbo v1, "reject refreshIcon, finger is downed and doing authenticaing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 95
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 96
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-nez v0, :cond_1b

    .line 97
    return-void

    .line 99
    :cond_1b
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setNightModeUseOf(I)V

    .line 100
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 103
    iget v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mCurrentAlpha:I

    if-ltz v1, :cond_45

    .line 104
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    :cond_45
    if-eqz p1, :cond_5b

    .line 107
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setupFingerprintIconFlag(Z)V

    .line 109
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mFingerDownBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_62

    .line 111
    :cond_5b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setupFingerprintIconFlag(Z)V

    .line 112
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->drawNormalBitmap(Landroid/graphics/Canvas;)V

    .line 114
    :goto_62
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 115
    return-void
.end method


# virtual methods
.method public getDefaultIconColor()[I
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mDefaultColors:[I

    if-nez v0, :cond_8

    .line 178
    sget-object v0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->DEFAULT_ICON_COLOR:[I

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mDefaultColors:[I

    .line 181
    :cond_8
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mDefaultColors:[I

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_7

    .line 199
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 201
    :cond_7
    return-void
.end method

.method public setAlpha(F)V
    .registers 4
    .param p1, "alpha"  # F

    .line 160
    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mCurrentAlpha:I

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alpha : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintIconView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->refreshIcon(Z)V

    .line 163
    return-void
.end method

.method public setColors([I)V
    .registers 3
    .param p1, "colors"  # [I

    .line 166
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mColors:[I

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->refreshIcon(Z)V

    .line 168
    return-void
.end method

.method public setDefaultIcon(I)V
    .registers 4
    .param p1, "resId"  # I

    .line 185
    if-gtz p1, :cond_3

    .line 186
    return-void

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_13

    .line 191
    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 192
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->refreshIcon(Z)V

    .line 194
    :cond_13
    return-void
.end method

.method public setDefaultIconColor([I)V
    .registers 3
    .param p1, "colors"  # [I

    .line 171
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mDefaultColors:[I

    .line 172
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mDefaultColors:[I

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mColors:[I

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->refreshIcon(Z)V

    .line 174
    return-void
.end method

.method public setRefreshViewEnable(Z)V
    .registers 2
    .param p1, "enable"  # Z

    .line 145
    iput-boolean p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->mCanRefreshView:Z

    .line 146
    return-void
.end method

.method public setupFingerprintIconFlag(Z)V
    .registers 6
    .param p1, "down"  # Z

    .line 118
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 120
    .local v0, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_39

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fp icon set dimditer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintIconView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_1c
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 124
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setDimDither(Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_29
    .catchall {:try_start_1c .. :try_end_22} :catchall_27

    .line 129
    nop

    :goto_23
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 130
    goto :goto_39

    .line 129
    :catchall_27
    move-exception v1

    goto :goto_35

    .line 125
    :catch_29
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    const-string/jumbo v3, "setupFingerprintIconFlag exception.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_27

    .line 129
    nop

    .end local v1  # "e":Ljava/lang/Exception;
    goto :goto_23

    :goto_35
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    .line 133
    :cond_39
    :goto_39
    return-void
.end method

.method public updateFingerprintView(Z)V
    .registers 2
    .param p1, "fingerDown"  # Z

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->refreshIcon(Z)V

    .line 86
    return-void
.end method
