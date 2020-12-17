.class public final Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;
.super Ljava/lang/Object;
.source "UnderScreenFingerprintManager.java"


# static fields
.field public static mUnderScreenFingerprintManager:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;


# instance fields
.field private mAODStyle:I

.field private mAttach:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mFakeContent:Landroid/widget/FrameLayout;

.field private mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

.field private mGradientColors:[[I

.field private mHeight:I

.field private mInnerHeight:I

.field private mIsFakeAttach:Z

.field private mKeepDPIContext:Landroid/content/Context;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mStatusBarHeight:I

.field private mUnderScreenFingerprintController:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

.field private mUnderScreenFingerprintView:Landroid/view/View;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVisible:Z

.field private mWM:Landroid/view/WindowManager;

.field private mWidth:I

.field private mXPosition:I

.field private mYPosition:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mCallbacks:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 90
    fill-array-data v2, :array_9e

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a6

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_ae

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_b6

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_be

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_c6

    const/4 v5, 0x5

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_ce

    const/4 v5, 0x6

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_d6

    const/4 v5, 0x7

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_de

    const/16 v5, 0x8

    aput-object v2, v0, v5

    new-array v1, v1, [I

    fill-array-data v1, :array_e6

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mGradientColors:[[I

    .line 421
    new-instance v0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager$1;-><init>(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;)V

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 98
    invoke-static {p1, v4, v4}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mKeepDPIContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mKeepDPIContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    .line 100
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mWM:Landroid/view/WindowManager;

    .line 101
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUnderScreenFingerprintController:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    .line 102
    invoke-direct {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->initParams()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "aod_style"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mAODStyle:I

    return-void

    :array_9e
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_a6
    .array-data 4
        -0x6617e2
        -0xde32d7
    .end array-data

    :array_ae
    .array-data 4
        -0xe59626
        -0xeab543
    .end array-data

    :array_b6
    .array-data 4
        -0xcfd01c
        -0x93cd0f
    .end array-data

    :array_be
    .array-data 4
        -0x3d09b
        -0x1ce353
    .end array-data

    :array_c6
    .array-data 4
        -0xcccd0e
        -0x93cd0f
    .end array-data

    :array_ce
    .array-data 4
        -0x3d09b
        -0x1ce353
    .end array-data

    :array_d6
    .array-data 4
        -0x14bacb
        -0x22daba
    .end array-data

    :array_de
    .array-data 4
        -0x57af62
        -0x5807f
    .end array-data

    :array_e6
    .array-data 4
        -0x35df80
        -0x35df80
    .end array-data
.end method

.method public static checkAODModeSwitchOn()Z
    .registers 2

    const-string v0, "persist.sys.meizu.aod"

    const-string v1, "0"

    .line 381
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGradientColorsForAODStyle(I)I
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    const/16 v1, 0x8

    if-eq p1, v1, :cond_4d

    const/4 v2, 0x7

    if-eq p1, v2, :cond_4d

    .line 389
    invoke-direct {p0, p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->isDiskClockType(I)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_4d

    :cond_11
    const/4 v3, 0x5

    if-ne p1, v3, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 v4, 0x6

    if-ne p1, v4, :cond_1b

    const/4 p0, 0x2

    return p0

    :cond_1b
    const/4 v5, 0x4

    if-ne p1, v5, :cond_1f

    return v2

    :cond_1f
    const/16 v2, 0x9

    if-ne p1, v2, :cond_24

    return v5

    :cond_24
    const/16 v5, 0xa

    if-ne p1, v5, :cond_2a

    const/4 p0, 0x3

    return p0

    :cond_2a
    const/16 v5, 0xb

    if-ne p1, v5, :cond_2f

    return v3

    :cond_2f
    const/16 v3, 0xc

    if-ne p1, v3, :cond_34

    return v4

    :cond_34
    const/16 v3, 0xd

    if-ne p1, v3, :cond_39

    return v1

    :cond_39
    const/16 v1, 0xe

    if-ne p1, v1, :cond_3e

    return v0

    .line 409
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->isSpringVerticalStyle2020(I)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->isSpringHorizontalStyle2020(I)Z

    move-result p0

    if-eqz p0, :cond_4b

    goto :goto_4c

    :cond_4b
    return v0

    :cond_4c
    :goto_4c
    return v2

    :cond_4d
    :goto_4d
    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;
    .registers 3

    const-class v0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    monitor-enter v0

    .line 108
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUnderScreenFingerprintManager:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    if-nez v1, :cond_e

    .line 109
    new-instance v1, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUnderScreenFingerprintManager:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    .line 111
    :cond_e
    sget-object p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUnderScreenFingerprintManager:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initParams()V
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x803

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x1

    .line 254
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 255
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x18

    .line 256
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x204

    .line 258
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    const/4 v1, -0x3

    .line 260
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 261
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "UnderScreenFingerprintAnimate"

    .line 262
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->fingerprint_inner_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mInnerHeight:I

    .line 265
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0703b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mWidth:I

    .line 266
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0703b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mHeight:I

    .line 267
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0703b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mXPosition:I

    .line 268
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0703b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mYPosition:I

    .line 269
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mStatusBarHeight:I

    return-void
.end method

.method private isDiskClockType(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :cond_b
    :goto_b
    return p0
.end method


# virtual methods
.method public attachFakeWindow()V
    .registers 6

    .line 179
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFakeContent:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_5c

    .line 180
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 181
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 182
    sget v2, Lcom/android/systemui/R$layout;->under_fingerprint_fake_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFakeContent:Landroid/widget/FrameLayout;

    .line 183
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFakeContent:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->finger_print_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/fingerprint/GradientImageView;

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    .line 184
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    const v2, 0x3e99999a  # 0.3f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 185
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    const v2, 0xa08001d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 187
    iget v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 188
    iget v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mHeight:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 189
    iget v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mXPosition:I

    iget v3, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mYPosition:I

    iget v4, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mStatusBarHeight:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 190
    iget-object v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "under:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUnderScreenFingerprintManager:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  mContent.getParent():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFakeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UnderScreenFingerprintManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mIsFakeAttach:Z

    const/4 v3, 0x1

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFakeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFakeContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a8

    const-string v0, "add underfingerprint fake window"

    .line 194
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFakeContent:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iput-boolean v3, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mIsFakeAttach:Z

    .line 198
    :cond_a8
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-nez v0, :cond_c8

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_c8

    .line 199
    iput-boolean v3, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mVisible:Z

    .line 200
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d1

    .line 202
    :cond_c8
    iput-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mVisible:Z

    .line 203
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_d1
    return-void
.end method

.method public attachToWindow()V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_35

    .line 153
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 154
    sget v1, Lcom/android/systemui/R$layout;->under_fingerprint_animate:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContent:Landroid/widget/FrameLayout;

    .line 156
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContent:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->underscreen_fingerprint_down:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUnderScreenFingerprintView:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUnderScreenFingerprintView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 158
    iget v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mYPosition:I

    iget v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mInnerHeight:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 159
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUnderScreenFingerprintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "under:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUnderScreenFingerprintManager:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  mContent.getParent():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnderScreenFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mAttach:Z

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_81

    const-string v0, "add underfingerprint animte window"

    .line 164
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mAttach:Z

    :cond_81
    return-void
.end method

.method public cancelAnimation()V
    .registers 3

    const/4 v0, 0x0

    .line 146
    :goto_1
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 147
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;

    invoke-interface {v1}, Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;->fpCancelAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public detachFakeWindow()V
    .registers 3

    .line 208
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mAttach:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFakeContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "UnderScreenFingerprintManager"

    const-string v1, "remove underfingerprint animte window"

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mVisible:Z

    .line 211
    iput-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mIsFakeAttach:Z

    .line 212
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mWM:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFakeContent:Landroid/widget/FrameLayout;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_21
    return-void
.end method

.method public detachWindow()V
    .registers 3

    .line 171
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mAttach:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "UnderScreenFingerprintManager"

    const-string v1, "remove underfingerprint animte window"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mAttach:Z

    .line 174
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mWM:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContent:Landroid/widget/FrameLayout;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1f
    return-void
.end method

.method public executeMaskViewChangeAnimate(Lcom/android/systemui/GradientMaskView;I)V
    .registers 3

    .line 235
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCanSetFingerprintState()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    .line 236
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/GradientMaskView;->doMaskViewChangeAnimate(ZI)V

    goto :goto_15

    :cond_11
    const/4 p0, 0x0

    .line 238
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/GradientMaskView;->doMaskViewChangeAnimate(ZI)V

    :goto_15
    return-void
.end method

.method public getKeyguardFingerprintIconVisbile()Z
    .registers 1

    .line 306
    iget-boolean p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mVisible:Z

    return p0
.end method

.method public isSpringHorizontalStyle2020(I)Z
    .registers 2

    const/16 p0, 0x12

    if-lt p1, p0, :cond_a

    const/16 p0, 0x14

    if-gt p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isSpringVerticalStyle2020(I)Z
    .registers 2

    const/16 p0, 0x15

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onFingerprintAuth()V
    .registers 4

    .line 310
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "UnderScreenFingerprintManager"

    const-string v1, "onFingerprintAuth"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    .line 315
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    .line 316
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockPassword()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 317
    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->attachToWindow()V

    .line 318
    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->detachFakeWindow()V

    const/4 v0, 0x1

    .line 319
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    goto :goto_4b

    .line 321
    :cond_48
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    .line 323
    :goto_4b
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "aod_style"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mAODStyle:I

    return-void
.end method

.method public onHideBouncer()V
    .registers 3

    .line 373
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "UnderScreenFingerprintManager"

    const-string v1, "onHideBouncer"

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 377
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    return-void
.end method

.method public onHideKeyguard()V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "UnderScreenFingerprintManager"

    const-string v1, "onHideKeyguard"

    .line 349
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    return-void
.end method

.method public onPanelShowChanged(Z)V
    .registers 5

    .line 442
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintIconVisible()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2a

    if-eqz v0, :cond_22

    .line 445
    iget-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setStatus(Z)V

    .line 446
    iget-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    .line 448
    :cond_22
    iget-boolean p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mVisible:Z

    if-eqz p1, :cond_45

    .line 449
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    goto :goto_45

    :cond_2a
    if-nez v0, :cond_3e

    .line 453
    iget-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setStatus(Z)V

    .line 454
    iget-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    .line 456
    :cond_3e
    iget-boolean p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mVisible:Z

    if-nez p1, :cond_45

    .line 457
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    :cond_45
    :goto_45
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 294
    :cond_d
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mIsFakeAttach:Z

    if-eqz v0, :cond_2e

    .line 295
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    const v1, 0x3f4ccccd  # 0.8f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 296
    invoke-static {}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->checkAODModeSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 297
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mGradientColors:[[I

    iget v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mAODStyle:I

    invoke-direct {p0, v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getGradientColorsForAODStyle(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/fingerprint/GradientImageView;->setColors([I)V

    .line 300
    :cond_2e
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mAttach:Z

    if-eqz v0, :cond_35

    .line 301
    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->startShowFpAnimation()V

    :cond_35
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 277
    :cond_d
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mIsFakeAttach:Z

    if-eqz v0, :cond_2e

    .line 278
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    const v1, 0x3e99999a  # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 279
    invoke-static {}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->checkAODModeSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 280
    fill-array-data v0, :array_3c

    .line 281
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/fingerprint/GradientImageView;->setColors([I)V

    :cond_2a
    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    .line 285
    :cond_2e
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mAttach:Z

    if-eqz v0, :cond_3b

    .line 286
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->notifyFPIconMove()V

    :cond_3b
    return-void

    :array_3c
    .array-data 4
        0x4dffffff  # 5.3687088E8f
        0x4dffffff  # 5.3687088E8f
    .end array-data
.end method

.method public onShowBouncer()V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "UnderScreenFingerprintManager"

    const-string v1, "onShowBouncer"

    .line 357
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    .line 359
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    .line 360
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockPassword()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    .line 361
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 362
    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->attachToWindow()V

    .line 364
    :cond_47
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 365
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    .line 366
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-eqz v0, :cond_67

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    :cond_67
    return-void
.end method

.method public onShowKeyguard()V
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "UnderScreenFingerprintManager"

    const-string v1, "onShowKeyguard"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    .line 333
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    .line 334
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockPassword()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    .line 335
    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-nez v0, :cond_51

    .line 336
    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->attachFakeWindow()V

    const/4 v0, 0x1

    .line 337
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    goto :goto_54

    .line 339
    :cond_51
    invoke-virtual {p0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    .line 341
    :goto_54
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "aod_style"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mAODStyle:I

    return-void
.end method

.method public registerCallback(Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;)V
    .registers 4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** register callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnderScreenFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 116
    :goto_17
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 117
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_28

    return-void

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 121
    :cond_2b
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setKeyguardFingerprintIconVisible(Z)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 220
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set KeyguardFingerprint visibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  Keyguard current state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   canSetKeyguardFingerprintVisibble:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUnderScreenFingerprintController:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    .line 221
    invoke-virtual {v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->canSetKeyguardFingerprintVisibble()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnderScreenFingerprintManager"

    .line 220
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mIsFakeAttach:Z

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mVisible:Z

    if-eq v0, p1, :cond_61

    if-eqz p1, :cond_4d

    .line 223
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mUnderScreenFingerprintController:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->canSetKeyguardFingerprintVisibble()Z

    move-result v0

    if-nez v0, :cond_4f

    :cond_4d
    if-nez p1, :cond_61

    .line 224
    :cond_4f
    iput-boolean p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mVisible:Z

    if-eqz p1, :cond_5a

    .line 226
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_61

    .line 228
    :cond_5a
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mFingerpirntIconImg:Lcom/flyme/systemui/fingerprint/GradientImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_61
    :goto_61
    return-void
.end method

.method public startDownAnimation()V
    .registers 3

    const/4 v0, 0x0

    .line 134
    :goto_1
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 135
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;

    invoke-interface {v1}, Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;->startDownAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public startShowFpAnimation()V
    .registers 3

    const/4 v0, 0x0

    .line 140
    :goto_1
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 141
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;

    invoke-interface {v1}, Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;->startShowFpAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public updateFPAnimationPosition()V
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1e

    .line 244
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getXOffset()I

    move-result v1

    .line 246
    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getYOffset()I

    move-result v0

    .line 247
    iget-object v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContent:Landroid/widget/FrameLayout;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 248
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->mContent:Landroid/widget/FrameLayout;

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_1e
    return-void
.end method
