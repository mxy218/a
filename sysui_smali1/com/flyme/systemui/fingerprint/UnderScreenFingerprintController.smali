.class public final Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;
.super Ljava/lang/Object;
.source "UnderScreenFingerprintController.java"


# static fields
.field private static FIRST_POSITION_X:I

.field private static FIRST_POSITION_Y:I

.field public static mUnderScreenFingerprintController:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBouncer:Z

.field private mChargingAnimationShow:Z

.field private mContext:Landroid/content/Context;

.field private mFingerprintAnimating:Z

.field private mFingerprintFreeze:Z

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsUnlock:I

.field private mMoveAlgoithm:Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPalmRejection:Z

.field private mPanelViewUp:Z

.field private mPosition:I

.field private mSaveMode:Z

.field private mStartFpMove:Landroid/app/PendingIntent;

.field private mStatusPullDown:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mWallpaperEditMode:Z

.field private mWallpaperWeexViewShow:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController$1;-><init>(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;)V

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 63
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mUserManager:Landroid/os/UserManager;

    .line 65
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 67
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa0703b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->FIRST_POSITION_X:I

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0703b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->FIRST_POSITION_Y:I

    .line 71
    new-instance v0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;

    invoke-direct {v0, p1}, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mMoveAlgoithm:Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;

    .line 74
    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->resetPosition()V

    .line 76
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.flyme.systemui.fp_move"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mStartFpMove:Landroid/app/PendingIntent;

    .line 79
    iput v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mIsUnlock:I

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;Z)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisible(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;)Landroid/content/Context;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;
    .registers 3

    const-class v0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    monitor-enter v0

    .line 83
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mUnderScreenFingerprintController:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    if-nez v1, :cond_e

    .line 84
    new-instance v1, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mUnderScreenFingerprintController:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    .line 86
    :cond_e
    sget-object p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mUnderScreenFingerprintController:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setFingerprintIconVisible(Z)V
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1f

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFingerprintIconVisible :visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnderScreenFingerprintController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setFingerprintIconVisible(Z)V

    :cond_1f
    return-void
.end method

.method private updateFODIconPosition(II)V
    .registers 3

    .line 132
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_7

    .line 133
    invoke-virtual {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->updateFODIconPosition(II)I

    :cond_7
    return-void
.end method


# virtual methods
.method public canSetFingerprintVisibble()Z
    .registers 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isKeyguardVisible "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBouncer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mBouncer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mStatusPullDown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mStatusPullDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mPanelViewUp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPanelViewUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mSaveMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mSaveMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mFingerprintFreeze:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mFingerprintFreeze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  isFirstBootUnlock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mPalmRejection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPalmRejection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWallpaperEditMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mWallpaperEditMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWallpaperWeexViewShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mWallpaperWeexViewShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mChargingAnimationShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mChargingAnimationShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mFingerprintAnimating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mFingerprintAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnderScreenFingerprintController"

    .line 179
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mSaveMode:Z

    if-nez v0, :cond_ac

    .line 185
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mBouncer:Z

    if-eqz v0, :cond_d0

    :cond_ac
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mStatusPullDown:Z

    if-nez v0, :cond_d0

    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPanelViewUp:Z

    if-nez v0, :cond_d0

    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mSaveMode:Z

    if-nez v0, :cond_d0

    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mFingerprintFreeze:Z

    if-nez v0, :cond_d0

    .line 190
    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPalmRejection:Z

    if-nez v0, :cond_d0

    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mChargingAnimationShow:Z

    if-nez v0, :cond_d0

    iget-boolean p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mFingerprintAnimating:Z

    if-nez p0, :cond_d0

    const/4 p0, 0x1

    goto :goto_d1

    :cond_d0
    const/4 p0, 0x0

    :goto_d1
    return p0
.end method

.method public canSetKeyguardFingerprintVisibble()Z
    .registers 5

    .line 197
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mSaveMode:Z

    .line 199
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIsFingerprintFreeze()Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mFingerprintFreeze:Z

    .line 200
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    .line 201
    iget-object v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionSucceeded()Z

    move-result v2

    .line 202
    iget-object v3, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockPassword()Z

    move-result v3

    if-eqz v0, :cond_76

    .line 203
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mBouncer:Z

    if-nez v0, :cond_76

    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mStatusPullDown:Z

    if-nez v0, :cond_76

    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPanelViewUp:Z

    if-nez v0, :cond_76

    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mSaveMode:Z

    if-nez v0, :cond_76

    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mFingerprintFreeze:Z

    if-eqz v0, :cond_58

    if-eqz v2, :cond_64

    :cond_58
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    .line 208
    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-nez v0, :cond_76

    :cond_64
    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPalmRejection:Z

    if-nez v0, :cond_76

    if-nez v1, :cond_76

    iget-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mChargingAnimationShow:Z

    if-nez v0, :cond_76

    iget-boolean p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mFingerprintAnimating:Z

    if-nez p0, :cond_76

    if-eqz v3, :cond_76

    const/4 p0, 0x1

    goto :goto_77

    :cond_76
    const/4 p0, 0x0

    :goto_77
    return p0
.end method

.method public getXOffset()I
    .registers 1

    .line 147
    iget p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mOffsetX:I

    return p0
.end method

.method public getYOffset()I
    .registers 1

    .line 151
    iget p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mOffsetY:I

    return p0
.end method

.method public isFirstBootUnlock()Z
    .registers 4

    .line 90
    iget v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mIsUnlock:I

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "is_unlock"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mIsUnlock:I

    .line 93
    :cond_13
    iget p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mIsUnlock:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    return v0
.end method

.method public notifyFPIconMove()V
    .registers 2

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->notifyFPIconMove(Z)V

    return-void
.end method

.method public notifyFPIconMove(Z)V
    .registers 7

    .line 110
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "UnderScreenFingerprintController"

    const-string v1, "notifyFPIconMove"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_46

    if-eqz p1, :cond_2f

    .line 116
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.flyme.systemui.fp_move"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_46

    .line 119
    :cond_2f
    iget-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mStartFpMove:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 120
    iget-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v0, 0x2

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mStartFpMove:Landroid/app/PendingIntent;

    .line 120
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public onHideKeyguard()V
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 282
    :cond_d
    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->reset()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 1

    return-void
.end method

.method public onShowBouncer()V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "UnderScreenFingerprintController"

    const-string v1, "onShowBouncer"

    .line 289
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 291
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPanelViewUp:Z

    .line 294
    iput-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mStatusPullDown:Z

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mBouncer:Z

    .line 296
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    :cond_2f
    return-void
.end method

.method public onShowKeyguard()V
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "UnderScreenFingerprintController"

    const-string v1, "onShowKeyguard"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mBouncer:Z

    .line 270
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    .line 271
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockPassword()Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v0, 0x1

    .line 272
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    goto :goto_3b

    .line 274
    :cond_38
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    :goto_3b
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPanelViewUp:Z

    .line 260
    iput-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mStatusPullDown:Z

    .line 261
    iput-boolean v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mBouncer:Z

    return-void
.end method

.method public resetPosition()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mMoveAlgoithm:Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->getColumns()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mMoveAlgoithm:Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;

    invoke-virtual {v1}, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->getRows()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPosition:I

    .line 101
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mMoveAlgoithm:Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;

    iget v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->getXOffset(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mOffsetX:I

    .line 102
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mMoveAlgoithm:Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;

    iget v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->getYOffset(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mOffsetY:I

    return-void
.end method

.method public setChargingAnimationShow(Z)V
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mChargingAnimationShow:Z

    return-void
.end method

.method public setFingerprintIconVisibile(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, p1, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(ZZ)V

    return-void
.end method

.method public setFingerprintIconVisibile(ZZ)V
    .registers 5

    .line 163
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 166
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set Fingerprint visibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  current state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintIconVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFromAod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UnderScreenFingerprintController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintIconVisible()Z

    move-result p2

    if-eq p1, p2, :cond_66

    if-eqz p1, :cond_51

    .line 168
    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->canSetFingerprintVisibble()Z

    move-result p2

    if-nez p2, :cond_53

    :cond_51
    if-nez p1, :cond_66

    .line 169
    :cond_53
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 170
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x212

    .line 171
    iput p1, p2, Landroid/os/Message;->what:I

    .line 172
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_66
    return-void
.end method

.method public setFingerprintIconVisibileFromAOD(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(ZZ)V

    return-void
.end method

.method public setPalmRejection(Z)V
    .registers 2

    .line 244
    iput-boolean p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPalmRejection:Z

    return-void
.end method

.method public setPanelview(Z)V
    .registers 2

    .line 240
    iput-boolean p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPanelViewUp:Z

    return-void
.end method

.method public setStatus(Z)V
    .registers 2

    .line 236
    iput-boolean p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mStatusPullDown:Z

    return-void
.end method

.method public stopFPIconMove()V
    .registers 3

    const-string v0, "UnderScreenFingerprintController"

    const-string/jumbo v1, "stopFPIconMove"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mStartFpMove:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public updateContentPosition()V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mMoveAlgoithm:Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;

    iget v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->getXOffset(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mOffsetX:I

    .line 139
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mMoveAlgoithm:Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;

    iget v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->getYOffset(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mOffsetY:I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xOffset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", yOffset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnderScreenFingerprintController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget v0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->FIRST_POSITION_X:I

    iget v1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mOffsetX:I

    add-int/2addr v0, v1

    sget v1, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->FIRST_POSITION_Y:I

    iget v2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mOffsetY:I

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->updateFODIconPosition(II)V

    .line 143
    iget v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->mPosition:I

    return-void
.end method
