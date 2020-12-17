.class public Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
    }
.end annotation


# instance fields
.field private final mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryLevel:I

.field private mChargingSpeed:I

.field private mChargingWattage:I

.field private final mClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mDozing:Z

.field private mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private final mFastThreshold:I

.field private final mHandler:Landroid/os/Handler;

.field private mIndicationArea:Landroid/view/ViewGroup;

.field private mInitialTextColorState:Landroid/content/res/ColorStateList;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMessageToShowOnScreenOn:Ljava/lang/String;

.field private mPowerCharged:Z

.field private mPowerPluggedIn:Z

.field private mPowerPluggedInWired:Z

.field private mRestingIndication:Ljava/lang/String;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShakeAnim:Landroid/animation/AnimatorSet;

.field private final mSlowThreshold:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mTickReceiver:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mTransientIndication:Ljava/lang/CharSequence;

.field private mTransientTextColor:I

.field private mTransientTextColorState:Landroid/content/res/ColorStateList;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUnlockText:Ljava/lang/String;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisible:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .registers 15

    .line 145
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const-string v0, "Doze:KeyguardIndication"

    .line 146
    invoke-static {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v5

    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 147
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/phone/ShadeController;

    const-class v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 148
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 149
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v8

    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 150
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 151
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 145
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 132
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    .line 633
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 643
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 165
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 167
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_enterprise_disclosure:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 170
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 171
    iput-object p6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 172
    iput-object p7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 173
    iput-object p8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 174
    iput-object p9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 175
    iput-object p10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 177
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p3, :cond_57

    .line 178
    new-instance p6, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$bqGTofRbajWF7T9LSeA5X_gxSW8;

    invoke-direct {p6, p0}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$bqGTofRbajWF7T9LSeA5X_gxSW8;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 179
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    new-instance p6, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$KgoVbt1hJQ-ysK1ds1xLhviRDjE;

    invoke-direct {p6, p0}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$KgoVbt1hJQ-ysK1ds1xLhviRDjE;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :cond_57
    new-instance p3, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const-string p6, "KeyguardIndication"

    invoke-direct {p3, p5, p6}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 182
    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 185
    sget p4, Lcom/android/systemui/R$integer;->config_chargingSlowlyThreshold:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    .line 186
    sget p4, Lcom/android/systemui/R$integer;->config_chargingFastThreshold:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    .line 188
    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    const-string p3, "batterystats"

    .line 190
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    .line 189
    invoke-static {p3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->resetIndication()V

    .line 196
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockText:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    .line 197
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 199
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    .line 200
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p2, :cond_a6

    .line 201
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_ab

    :cond_a6
    const/4 p2, -0x1

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_ab
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    const/4 p2, 0x0

    .line 202
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    const-string p2, "device_policy"

    .line 205
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    .line 210
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 213
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/view/ViewGroup;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .registers 2

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .registers 2

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .registers 1

    .line 82
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .registers 1

    .line 82
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    return p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .registers 2

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->resetIndication()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showSwipeUpToUnlock()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->startFadeInAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    return p0
.end method

.method private canStartAnimator()Z
    .registers 3

    .line 991
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 992
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 993
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardBouncer()Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method private computePowerIndication()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method private handleLockClick(Landroid/view/View;)V
    .registers 3

    .line 236
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 239
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZ)V

    return-void
.end method

.method private handleLockLongClick(Landroid/view/View;)Z
    .registers 4

    .line 226
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/4 v0, 0x0

    const/16 v1, 0xbf

    invoke-virtual {p1, v1, v0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 228
    sget p1, Lcom/android/systemui/R$string;->keyguard_indication_trust_disabled:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 229
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onLockIconPressed()V

    .line 230
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$KgoVbt1hJQ-ysK1ds1xLhviRDjE(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleLockClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$bqGTofRbajWF7T9LSeA5X_gxSW8(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleLockLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private resetIndication()V
    .registers 5

    .line 912
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBootCompleteTime()I

    move-result v0

    .line 913
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldFaceRecognitionRun()Z

    move-result v1

    .line 914
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    .line 915
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->band_connected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockText:Ljava/lang/String;

    goto :goto_79

    .line 917
    :cond_3d
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockPassword()Z

    move-result v3

    if-eqz v3, :cond_6b

    if-nez v1, :cond_4d

    if-eqz v2, :cond_6b

    :cond_4d
    const/4 v1, 0x3

    if-ge v0, v1, :cond_6b

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 920
    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 921
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->keyguard_restart_unlock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockText:Ljava/lang/String;

    goto :goto_79

    .line 924
    :cond_6b
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->unlock_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockText:Ljava/lang/String;

    :goto_79
    return-void
.end method

.method private showSwipeUpToUnlock()V
    .registers 3

    .line 671
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_5

    return-void

    .line 675
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->keyguard_retry:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto :goto_35

    .line 678
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->keyguard_unlock:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x1388

    .line 680
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    :cond_35
    :goto_35
    return-void
.end method

.method private startFadeInAnimation()V
    .registers 4

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-nez v0, :cond_5

    return-void

    .line 1029
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1e

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1030
    fill-array-data v1, :array_2e

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_1e
    const/4 v0, 0x1

    .line 1033
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1035
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_2e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startFadeOutAnimation()V
    .registers 4

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-nez v0, :cond_5

    return-void

    .line 1042
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_27

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1043
    fill-array-data v1, :array_3a

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_27
    const/4 v0, 0x1

    .line 1068
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1070
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_38
    return-void

    nop

    :array_3a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private updateDisclosure()V
    .registers 7

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_5

    return-void

    .line 264
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez v1, :cond_3c

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 266
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 268
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->do_disclosure_with_name:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 271
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    sget v2, Lcom/android/systemui/R$string;->do_disclosure_generic:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(I)V

    .line 273
    :goto_36
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_43

    .line 275
    :cond_3c
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_43
    return-void
.end method


# virtual methods
.method public cancelAnimator()V
    .registers 3

    .line 1085
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x4

    .line 1086
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1088
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    .line 1089
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1091
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_16

    .line 1092
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_16
    return-void
.end method

.method public checkIndicationStatus()V
    .registers 7

    .line 972
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBootCompleteTime()I

    move-result v0

    .line 973
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldFaceRecognitionRun()Z

    move-result v1

    .line 974
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    .line 975
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->canStartAnimator()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 976
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isMusicViewShow()Z

    move-result v3

    if-nez v3, :cond_4a

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 978
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockTimes()I

    move-result v3

    if-lt v3, v4, :cond_68

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 979
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v3

    if-nez v3, :cond_68

    :cond_4a
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 980
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockPassword()Z

    move-result v3

    if-eqz v3, :cond_6c

    if-nez v1, :cond_5a

    if-eqz v2, :cond_6c

    :cond_5a
    if-ge v0, v4, :cond_6c

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 983
    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 984
    :cond_68
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    goto :goto_6f

    .line 986
    :cond_6c
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication(Z)V

    :goto_6f
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "KeyguardIndicationController:"

    .line 694
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mTransientTextColorState: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mInitialTextColorState: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPowerPluggedInWired: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPowerPluggedIn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPowerCharged: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mChargingSpeed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mChargingWattage: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mMessageToShowOnScreenOn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mDozing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBatteryLevel: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mTextView.getText(): "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-nez p3, :cond_f1

    const/4 p3, 0x0

    goto :goto_f5

    :cond_f1
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    :goto_f5
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  computePowerIndication(): "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public forceShowIndication()V
    .registers 3

    .line 901
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->cancelAnimator()V

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x1

    .line 903
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    return-void
.end method

.method protected getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_b

    .line 254
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 256
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method getTrustGrantedIndication()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 325
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->keyguard_indication_trust_unlocked:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideTransientIndication()V
    .registers 6

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7b

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBootCompleteTime()I

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldFaceRecognitionRun()Z

    move-result v1

    .line 389
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    .line 391
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockTimes()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_6d

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 392
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_6d

    .line 394
    :cond_40
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockPassword()Z

    move-result v3

    if-eqz v3, :cond_71

    if-nez v1, :cond_50

    if-eqz v2, :cond_71

    :cond_50
    if-ge v0, v4, :cond_71

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 397
    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-nez v0, :cond_71

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->keyguard_restart_unlock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    goto :goto_71

    .line 393
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUnlockText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    .line 401
    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    :cond_7b
    return-void
.end method

.method public hideTransientIndication(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 1076
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz p1, :cond_e

    .line 1077
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->startFadeOutAnimation()V

    goto :goto_e

    :cond_a
    const/4 p1, 0x0

    .line 1080
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    :cond_e
    :goto_e
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .registers 5

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 344
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 345
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 344
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onDozingChanged(Z)V
    .registers 2

    .line 716
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setDozing(Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .registers 3

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareShakeAnim(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 8

    .line 962
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 963
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3  # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f3ae148  # 0.73f

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 964
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$anim;->error_anim:I

    invoke-static {p0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    check-cast p0, Landroid/animation/AnimatorSet;

    .line 965
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 966
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 967
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-object v0
.end method

.method public setColor(I)V
    .registers 2

    .line 907
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    .line 908
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setDozing(Z)V
    .registers 3

    .line 685
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 688
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    const/4 p1, 0x0

    .line 689
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    .line 690
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method public setIndicationArea(Landroid/view/ViewGroup;)V
    .registers 3

    .line 217
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    .line 218
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_15

    .line 220
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1a

    :cond_15
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_1a
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 221
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_enterprise_disclosure:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 p1, 0x0

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .registers 2

    .line 630
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public setVisible(Z)V
    .registers 5

    .line 294
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    const/4 v2, 0x4

    :goto_a
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_15

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 298
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    :cond_15
    return-void
.end method

.method public showRecongnizeFailAnim(Ljava/lang/Runnable;)V
    .registers 4

    .line 930
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShakeAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_17

    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->prepareShakeAnim(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShakeAnim:Landroid/animation/AnimatorSet;

    .line 932
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShakeAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_22

    .line 950
    :cond_17
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 951
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 954
    :cond_22
    :goto_22
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p1, :cond_2b

    .line 955
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2b
    return-void
.end method

.method public showTransientIndication(I)V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/CharSequence;)V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 367
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    .line 368
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColorState:Landroid/content/res/ColorStateList;

    .line 369
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 373
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    const-wide/16 p1, 0x1388

    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    :cond_26
    const/4 p1, 0x0

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method public showTransientIndication(ZJ)V
    .registers 9

    .line 997
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBootCompleteTime()I

    move-result v0

    .line 998
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldFaceRecognitionRun()Z

    move-result v1

    .line 999
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    .line 1000
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result v3

    if-nez v3, :cond_59

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 1001
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUnlockTimes()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_59

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 1002
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockPassword()Z

    move-result v3

    if-eqz v3, :cond_a4

    if-nez v1, :cond_4b

    if-eqz v2, :cond_a4

    :cond_4b
    if-ge v0, v4, :cond_a4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 1005
    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_59
    if-eqz p1, :cond_84

    .line 1007
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-nez p1, :cond_a4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->canStartAnimator()Z

    move-result p1

    if-eqz p1, :cond_a4

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isMusicViewShow()Z

    move-result p1

    if-nez p1, :cond_a4

    .line 1008
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_74

    .line 1009
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1011
    :cond_74
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1012
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a4

    .line 1015
    :cond_84
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_a4

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 1016
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_a4

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1018
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isMusicViewShow()Z

    move-result p1

    if-nez p1, :cond_a4

    .line 1019
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method protected final updateIndication(Z)V
    .registers 4

    .line 472
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_indication_text_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 475
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, p1, :cond_24

    .line 476
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 477
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    :cond_24
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz p1, :cond_5f

    .line 488
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 489
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 490
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5f

    .line 492
    :cond_3f
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    const/4 v0, -0x1

    if-eqz p1, :cond_53

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object p1

    .line 497
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 498
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5f

    .line 501
    :cond_53
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 502
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5f
    :goto_5f
    return-void
.end method
