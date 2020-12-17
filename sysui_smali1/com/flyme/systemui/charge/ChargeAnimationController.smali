.class public final Lcom/flyme/systemui/charge/ChargeAnimationController;
.super Ljava/lang/Object;
.source "ChargeAnimationController.java"


# static fields
.field private static sInstance:Lcom/flyme/systemui/charge/ChargeAnimationController;


# instance fields
.field private mAnimationStarted:Z

.field private mAttach:Z

.field private mCancel:Z

.field private mChargeView:Lcom/meizu/flyme/chargeview/ChargeView;

.field private mCharging:Z

.field private mChargingHint:Ljava/lang/String;

.field private mCompleted:Z

.field private mContent:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mPluggedInWired:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoveWindow:Ljava/lang/Runnable;

.field private mStartAnimation:Ljava/lang/Runnable;

.field private mSuperCharging:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWireChargeView:Lcom/meizu/flyme/wiredchargeview/WiredChargeView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 52
    new-instance v0, Lcom/flyme/systemui/charge/ChargeAnimationController$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/charge/ChargeAnimationController$1;-><init>(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    iput-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 64
    new-instance v0, Lcom/flyme/systemui/charge/ChargeAnimationController$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/charge/ChargeAnimationController$2;-><init>(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    iput-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 75
    new-instance v0, Lcom/flyme/systemui/charge/ChargeAnimationController$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/charge/ChargeAnimationController$3;-><init>(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    iput-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mRemoveWindow:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/flyme/systemui/charge/ChargeAnimationController$4;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/charge/ChargeAnimationController$4;-><init>(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    iput-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mStartAnimation:Ljava/lang/Runnable;

    .line 105
    iput-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/content/Context;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/charge/ChargeAnimationController;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->updateBatteryState(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/flyme/systemui/charge/ChargeAnimationController;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->startWireAnimation()V

    return-void
.end method

.method static synthetic access$1102(Lcom/flyme/systemui/charge/ChargeAnimationController;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mCompleted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/flyme/systemui/charge/ChargeAnimationController;)Ljava/lang/Runnable;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mRemoveWindow:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/flyme/systemui/charge/ChargeAnimationController;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mPluggedInWired:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/flyme/systemui/charge/ChargeAnimationController;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mSuperCharging:Z

    return p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/charge/ChargeAnimationController;I)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->updateChargingHint(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/systemui/charge/ChargeAnimationController;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->cancelCharingView()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/systemui/charge/ChargeAnimationController;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->stopAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/systemui/charge/ChargeAnimationController;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mAttach:Z

    return p0
.end method

.method static synthetic access$502(Lcom/flyme/systemui/charge/ChargeAnimationController;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mAttach:Z

    return p1
.end method

.method static synthetic access$600(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/view/WindowManager;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/flyme/systemui/charge/ChargeAnimationController;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mCancel:Z

    return p0
.end method

.method static synthetic access$802(Lcom/flyme/systemui/charge/ChargeAnimationController;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mCancel:Z

    return p1
.end method

.method static synthetic access$900(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/os/PowerManager;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method private cancelCharingView()V
    .registers 3

    const-string v0, "ChargeAnimationController"

    const-string v1, "remove charingview"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-boolean v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mCompleted:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mCancel:Z

    :cond_e
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemui/charge/ChargeAnimationController;
    .registers 3

    const-class v0, Lcom/flyme/systemui/charge/ChargeAnimationController;

    monitor-enter v0

    .line 109
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/charge/ChargeAnimationController;->sInstance:Lcom/flyme/systemui/charge/ChargeAnimationController;

    if-nez v1, :cond_e

    .line 110
    new-instance v1, Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/charge/ChargeAnimationController;->sInstance:Lcom/flyme/systemui/charge/ChargeAnimationController;

    .line 112
    :cond_e
    sget-object p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->sInstance:Lcom/flyme/systemui/charge/ChargeAnimationController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private loadCharingView(Z)V
    .registers 6

    .line 203
    iget-boolean v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mAttach:Z

    if-nez v0, :cond_55

    const-string v0, "ChargeAnimationController"

    const-string v1, "add CharingView"

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mAttach:Z

    const/4 v1, 0x0

    .line 206
    iput-boolean v1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mCompleted:Z

    const/16 v2, 0x8

    if-eqz p1, :cond_20

    .line 208
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mChargeView:Lcom/meizu/flyme/chargeview/ChargeView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mWireChargeView:Lcom/meizu/flyme/wiredchargeview/WiredChargeView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2a

    .line 211
    :cond_20
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mChargeView:Lcom/meizu/flyme/chargeview/ChargeView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mWireChargeView:Lcom/meizu/flyme/wiredchargeview/WiredChargeView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 214
    :goto_2a
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 215
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setChargingAnimationShow(Z)V

    .line 218
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    .line 219
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    :cond_55
    return-void
.end method

.method private startWireAnimation()V
    .registers 3

    const-string v0, "ChargeAnimationController"

    const-string/jumbo v1, "wire startAnimation"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mAnimationStarted:Z

    .line 298
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mWireChargeView:Lcom/meizu/flyme/wiredchargeview/WiredChargeView;

    invoke-virtual {p0}, Lcom/meizu/flyme/wiredchargeview/WiredChargeView;->start()V

    return-void
.end method

.method private stopAnimation()V
    .registers 3

    const-string v0, "ChargeAnimationController"

    const-string/jumbo v1, "stopAnimation"

    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mAnimationStarted:Z

    .line 285
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mChargeView:Lcom/meizu/flyme/chargeview/ChargeView;

    invoke-virtual {v0}, Lcom/meizu/flyme/chargeview/ChargeView;->stop()V

    .line 286
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mWireChargeView:Lcom/meizu/flyme/wiredchargeview/WiredChargeView;

    invoke-virtual {p0}, Lcom/meizu/flyme/wiredchargeview/WiredChargeView;->stop()V

    return-void
.end method

.method private updateBatteryState(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 11

    .line 231
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 232
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedInWired()Z

    move-result v1

    .line 233
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_15

    if-eqz v2, :cond_13

    goto :goto_15

    :cond_13
    move v5, v3

    goto :goto_16

    :cond_15
    :goto_15
    move v5, v4

    .line 235
    :goto_16
    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    const v7, 0x632ea0

    if-lt v6, v7, :cond_1f

    move v6, v3

    goto :goto_20

    :cond_1f
    move v6, v4

    .line 236
    :goto_20
    iput-boolean v1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mPluggedInWired:Z

    .line 237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pluggedIn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isCharged "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mCharging "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mCharging:Z

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",maxChargingWattage "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mSuperCharging "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mSuperCharging:Z

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",isPluggedInWired "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mAnimationStarted "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mAnimationStarted:Z

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isCharging = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " superCharging = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChargeAnimationController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :try_start_80
    iget-boolean p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mCharging:Z

    if-ne p1, v5, :cond_8c

    iget-boolean p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mSuperCharging:Z

    if-eq p1, v6, :cond_fb

    iget-boolean p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mAnimationStarted:Z

    if-eqz p1, :cond_fb

    .line 243
    :cond_8c
    iput-boolean v5, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mCharging:Z

    .line 244
    iput-boolean v6, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mSuperCharging:Z

    if-eqz v5, :cond_c2

    .line 246
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 247
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mRemoveWindow:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 248
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mWireChargeView:Lcom/meizu/flyme/wiredchargeview/WiredChargeView;

    iget-boolean v1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mSuperCharging:Z

    if-eqz v1, :cond_a7

    goto :goto_a8

    :cond_a7
    move v3, v4

    :goto_a8
    invoke-virtual {p1, v3}, Lcom/meizu/flyme/wiredchargeview/WiredChargeView;->setChargeType(I)V

    .line 249
    iget-boolean p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mAnimationStarted:Z

    if-nez p1, :cond_bc

    .line 250
    invoke-direct {p0, v4}, Lcom/flyme/systemui/charge/ChargeAnimationController;->loadCharingView(Z)V

    .line 251
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mStartAnimation:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, p0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_fb

    .line 253
    :cond_bc
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mWireChargeView:Lcom/meizu/flyme/wiredchargeview/WiredChargeView;

    invoke-virtual {p0}, Lcom/meizu/flyme/wiredchargeview/WiredChargeView;->refreshUI()V

    goto :goto_fb

    .line 256
    :cond_c2
    iget-boolean p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mAnimationStarted:Z

    if-eqz p1, :cond_cd

    .line 257
    invoke-direct {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->cancelCharingView()V

    .line 258
    invoke-direct {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->stopAnimation()V

    goto :goto_fb

    :cond_cd
    const-string p1, "cancel start animation,so remove window"

    .line 260
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 262
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mRemoveWindow:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_e0} :catch_e1

    goto :goto_fb

    :catch_e1
    move-exception p0

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "something error happened:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb
    :goto_fb
    return-void
.end method

.method private updateChargingHint(I)V
    .registers 4

    .line 302
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mChargeView:Lcom/meizu/flyme/chargeview/ChargeView;

    if-eqz v0, :cond_2d

    .line 303
    invoke-virtual {v0, p1}, Lcom/meizu/flyme/chargeview/ChargeView;->setBatteryPercentage(I)V

    .line 304
    iget-boolean v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mSuperCharging:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->super_charge_state:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 305
    :cond_18
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->normal_charge_state:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mChargingHint:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mChargeView:Lcom/meizu/flyme/chargeview/ChargeView;

    iget-object v1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mChargingHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/chargeview/ChargeView;->setChargeHint(Ljava/lang/String;)V

    .line 309
    :cond_2d
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mWireChargeView:Lcom/meizu/flyme/wiredchargeview/WiredChargeView;

    if-eqz p0, :cond_34

    .line 310
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/wiredchargeview/WiredChargeView;->setBatteryPercentage(I)V

    :cond_34
    return-void
.end method


# virtual methods
.method public init()V
    .registers 4

    const-string v0, "ChargeAnimationController"

    const-string v1, "init"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mPowerManager:Landroid/os/PowerManager;

    .line 118
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mWindowManager:Landroid/view/WindowManager;

    .line 120
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 121
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 123
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x1

    .line 124
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 125
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, 0x4

    .line 128
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    const/4 v1, 0x1

    .line 129
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v1, "ChargeAnimation"

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 133
    sget v1, Lcom/android/systemui/R$layout;->charge_view_animation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    .line 134
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->actInMzNightMode(I)V

    .line 135
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    sget v1, Lcom/android/systemui/R$id;->charge_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/chargeview/ChargeView;

    iput-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mChargeView:Lcom/meizu/flyme/chargeview/ChargeView;

    .line 138
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mChargeView:Lcom/meizu/flyme/chargeview/ChargeView;

    new-instance v1, Lcom/flyme/systemui/charge/ChargeAnimationController$5;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/charge/ChargeAnimationController$5;-><init>(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/chargeview/ChargeView;->setOnChargeViewAnimationListener(Lcom/meizu/flyme/chargeview/OnChargeViewAnimationListener;)V

    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mContent:Landroid/widget/RelativeLayout;

    sget v1, Lcom/android/systemui/R$id;->wire_charge_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/wiredchargeview/WiredChargeView;

    iput-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mWireChargeView:Lcom/meizu/flyme/wiredchargeview/WiredChargeView;

    .line 166
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mWireChargeView:Lcom/meizu/flyme/wiredchargeview/WiredChargeView;

    new-instance v1, Lcom/flyme/systemui/charge/ChargeAnimationController$6;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/charge/ChargeAnimationController$6;-><init>(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/wiredchargeview/WiredChargeView;->setOnChargeViewAnimationListener(Lcom/meizu/flyme/wiredchargeview/WiredChargeView$OnWiredChargeViewAnimationListener;)V

    .line 198
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v0

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    .line 199
    invoke-direct {p0, v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->updateChargingHint(I)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 3

    .line 275
    iget-boolean v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mAttach:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController;->mCompleted:Z

    if-nez v0, :cond_12

    const-string v0, "ChargeAnimationController"

    const-string v1, "onScreenTurnedOff"

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->cancelCharingView()V

    .line 279
    :cond_12
    invoke-direct {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->stopAnimation()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 1

    return-void
.end method
