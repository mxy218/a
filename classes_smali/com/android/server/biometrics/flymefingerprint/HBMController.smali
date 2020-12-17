.class public Lcom/android/server/biometrics/flymefingerprint/HBMController;
.super Ljava/lang/Object;
.source "HBMController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;,
        Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;,
        Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;,
        Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;
    }
.end annotation


# static fields
.field private static final ACT_MODE_PATH:Ljava/lang/String; = "/sys/class/meizu/main_tp/act_mode"

.field private static final AOD_PATH:Ljava/lang/String; = "/sys/class/meizu/lcm/display/aod"

.field private static final BOOST_PATH:Ljava/lang/String; = "/sys/class/meizu/fp/qos_set"

.field private static final DEBUG:Z = true

.field private static final FINGERPRINT_RESULT_PATH:Ljava/lang/String; = "/sys/class/meizu/lcm/display/fp_result"

.field private static final HBM_PATH:Ljava/lang/String; = "/sys/class/meizu/lcm/display/hbm"

.field private static final SETTINGS_KEY_TEST_DIMLAYER_ALPHA:Ljava/lang/String; = "dimlayer_alpha"

.field private static final TAG:Ljava/lang/String; = "HBMController"

.field private static final WAIT_FOR_CAPTURE_FP_PATH:Ljava/lang/String; = "/sys/class/meizu/lcm/display/wait_for_capture_fp"

.field private static final WAIT_FOR_CAPTURE_FP_PATH_1971_1973:Ljava/lang/String; = "/sys/class/meizu/lcm/display/aod2hbm"


# instance fields
.field private mActiveScreenRunnable:Ljava/lang/Runnable;

.field private mAlphaMap:[I

.field private mCaptureFingerprintListener:Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;

.field private mCaptureFingerprintRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;

.field private mContext:Landroid/content/Context;

.field private mDelayDraw:Z

.field private mDimLayerRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;

.field private final mFingerprintDimLayer:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

.field private final mFpThread:Lcom/android/server/ServiceThread;

.field private final mHBMHandler:Landroid/os/Handler;

.field private mIsM1926:Z

.field private mIsM1928:Z

.field private mIsM1971:Z

.field private mIsM1973:Z

.field private mIsSynapticsFingerprintSensor:Z

.field private mSetFingerprintAuthenticatedRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;-><init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;F)V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mDimLayerRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;

    .line 50
    new-instance v0, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;-><init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;Lcom/android/server/biometrics/flymefingerprint/HBMController$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mCaptureFingerprintRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;

    .line 53
    new-instance v0, Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;-><init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;Lcom/android/server/biometrics/flymefingerprint/HBMController$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mSetFingerprintAuthenticatedRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;

    .line 85
    new-instance v0, Lcom/android/server/biometrics/flymefingerprint/HBMController$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/flymefingerprint/HBMController$1;-><init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;)V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mActiveScreenRunnable:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mFingerprintDimLayer:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

    .line 65
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "HBMController"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mFpThread:Lcom/android/server/ServiceThread;

    .line 66
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mFpThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mFpThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mHBMHandler:Landroid/os/Handler;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa03003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mAlphaMap:[I

    .line 69
    const-string v0, "M1926"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mIsM1926:Z

    .line 70
    const-string v0, "M1928"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mIsM1928:Z

    .line 71
    const-string v0, "M1971"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mIsM1971:Z

    .line 72
    const-string v0, "M1973"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mIsM1973:Z

    .line 74
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->initTestDimlayerAlpha()V

    .line 75
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;

    .line 23
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mFingerprintDimLayer:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/flymefingerprint/HBMController;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/flymefingerprint/HBMController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;

    .line 23
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setAlphaByTest()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;

    .line 23
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mIsSynapticsFingerprintSensor:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;

    .line 23
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mIsM1926:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;

    .line 23
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mIsM1928:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;

    .line 23
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mCaptureFingerprintListener:Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;

    .line 23
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mIsM1971:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;

    .line 23
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mIsM1973:Z

    return v0
.end method

.method private getAlpha(I)F
    .registers 5
    .param p1, "index"  # I

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get brightness = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HBMController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-lez p1, :cond_2a

    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mAlphaMap:[I

    array-length v1, v0

    if-gt p1, v1, :cond_2a

    .line 147
    const/high16 v1, 0x3f800000  # 1.0f

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    int-to-float v0, v0

    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    return v1

    .line 149
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method private initTestDimlayerAlpha()V
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "test_dimlayer_alpha_value"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    move v0, v1

    .line 80
    .local v0, "testDimlayerAlphaValue":Z
    if-eqz v0, :cond_18

    .line 81
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->registerTestDimlayerAlphaContentObserver()V

    .line 83
    :cond_18
    return-void
.end method

.method private registerTestDimlayerAlphaContentObserver()V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    const-string v1, "dimlayer_alpha"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/flymefingerprint/HBMController$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/flymefingerprint/HBMController$2;-><init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;Landroid/os/Handler;)V

    .line 120
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    return-void
.end method

.method private setAlphaByTest()V
    .registers 5

    .line 153
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dimlayer_alpha"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "alpha":I
    int-to-float v1, v0

    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, v1

    .line 156
    .local v2, "realApha":F
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mDimLayerRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;->setAlpha(F)V

    .line 157
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mHBMHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mDimLayerRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method private writeNode(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "path"  # Ljava/lang/String;
    .param p2, "data"  # Ljava/lang/String;

    .line 166
    const-string v0, ", data:"

    const-string v1, "HBMController"

    const/4 v2, 0x0

    .line 168
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start write node:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v3, "US-ASCII"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2f} :catch_39
    .catchall {:try_start_5 .. :try_end_2f} :catchall_37

    .line 171
    const/4 v3, 0x1

    .line 177
    .local v3, "result":Z
    nop

    .line 179
    :try_start_31
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    .line 181
    :goto_34
    goto :goto_62

    .line 180
    :catch_35
    move-exception v4

    goto :goto_34

    .line 177
    .end local v3  # "result":Z
    :catchall_37
    move-exception v0

    goto :goto_85

    .line 172
    :catch_39
    move-exception v3

    .line 173
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 174
    .local v4, "result":Z
    :try_start_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_37

    .line 177
    .end local v3  # "e":Ljava/io/IOException;
    if-eqz v2, :cond_61

    .line 179
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 181
    :goto_5e
    goto :goto_61

    .line 180
    :catch_5f
    move-exception v3

    goto :goto_5e

    .line 185
    :cond_61
    :goto_61
    move v3, v4

    .end local v4  # "result":Z
    .local v3, "result":Z
    :goto_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end write node:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",  result: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v3

    .line 177
    .end local v3  # "result":Z
    :goto_85
    if-eqz v2, :cond_8c

    .line 179
    :try_start_87
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    .line 181
    goto :goto_8c

    .line 180
    :catch_8b
    move-exception v1

    .line 181
    :cond_8c
    :goto_8c
    throw v0
.end method


# virtual methods
.method public activeScreen()V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mHBMHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mActiveScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method public boostFP()V
    .registers 3

    .line 263
    const-string v0, "/sys/class/meizu/fp/qos_set"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 264
    return-void
.end method

.method public drawDimLayer(I)V
    .registers 5
    .param p1, "brightness"  # I

    .line 241
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mDelayDraw:Z

    if-eqz v0, :cond_15

    .line 242
    const-string v0, "HBMController"

    const-string v1, "delay waking up 16ms for drawing fingerprint dimlayer."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mDelayDraw:Z
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_15

    .line 246
    :catch_14
    move-exception v0

    :cond_15
    :goto_15
    nop

    .line 249
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1f

    .line 250
    const/high16 v0, 0x3f800000  # 1.0f

    .line 251
    .local v0, "alpha":F
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mDelayDraw:Z

    goto :goto_29

    .line 252
    .end local v0  # "alpha":F
    :cond_1f
    const/4 v0, -0x2

    if-ne p1, v0, :cond_25

    .line 253
    const/high16 v0, 0x3f800000  # 1.0f

    .restart local v0  # "alpha":F
    goto :goto_29

    .line 255
    .end local v0  # "alpha":F
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->getAlpha(I)F

    move-result v0

    .line 257
    .restart local v0  # "alpha":F
    :goto_29
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mDimLayerRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;->setAlpha(F)V

    .line 258
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mHBMHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mDimLayerRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mHBMHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mDimLayerRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method public opAod(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"  # Ljava/lang/String;

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "opAOD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HBMController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v0, "/sys/class/meizu/lcm/display/aod"

    invoke-direct {p0, v0, p1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    return-void
.end method

.method public setAuthenticated(Z)V
    .registers 4
    .param p1, "success"  # Z

    .line 115
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mSetFingerprintAuthenticatedRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;->setAuthenticated(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mHBMHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mSetFingerprintAuthenticatedRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public setBrightness(I)V
    .registers 4
    .param p1, "brightness"  # I

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sys/class/backlight/panel0-backlight/brightness"

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 286
    return-void
.end method

.method public setCaptureFingerprintListener(Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;)V
    .registers 2
    .param p1, "listener"  # Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;

    .line 136
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mCaptureFingerprintListener:Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;

    .line 137
    return-void
.end method

.method public setHBM(Z)V
    .registers 4
    .param p1, "hbm"  # Z

    .line 281
    if-eqz p1, :cond_5

    const-string v0, "1"

    goto :goto_7

    :cond_5
    const-string v0, "2"

    :goto_7
    const-string v1, "/sys/class/meizu/lcm/display/hbm"

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    return-void
.end method

.method public setHBMImmediately(Z)V
    .registers 4
    .param p1, "hbm"  # Z

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "opHBM immediately = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HBMController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-eqz p1, :cond_1c

    const-string v0, "1"

    goto :goto_1e

    :cond_1c
    const-string v0, "0"

    :goto_1e
    const-string v1, "/sys/class/meizu/lcm/display/hbm"

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    return-void
.end method

.method public setIsSynapticsFingerprintSensor(Z)V
    .registers 2
    .param p1, "isSynapticsFingerprintSensor"  # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mIsSynapticsFingerprintSensor:Z

    .line 109
    return-void
.end method

.method public setScreenOn(Z)V
    .registers 3
    .param p1, "screenOn"  # Z

    .line 161
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mFingerprintDimLayer:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->setScreenState(Z)V

    .line 162
    return-void
.end method

.method public startWaitForCaptureFingerprintRunnable()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mHBMHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mCaptureFingerprintRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mHBMHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController;->mCaptureFingerprintRunnable:Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method
