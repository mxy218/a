.class public Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;
.super Lcom/flyme/systemui/MzBatteryMeterView;
.source "FlymeBatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;


# static fields
.field private static LOW_LEVEL:I = 0x0

.field private static STATUS_BAR_BATTERY_CHARGE_ANIM:Ljava/lang/String; = "statusbar_battery_charge_anim"

.field private static TAG:Ljava/lang/String; = "FlymeBatteryMeterView"

.field private static mLastBatteryMeterView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

.field private static stat_sys_battery_charge:I

.field private static stat_sys_battery_low:I

.field private static stat_sys_battery_low_power_mode:I

.field private static stat_sys_battery_low_power_mode_level_inside:I

.field private static stat_sys_battery_normal:I

.field private static stat_sys_battery_normal_level_inside:I

.field private static stat_sys_battery_normal_level_inside_whitebg:I

.field private static stat_sys_battery_super_charge:I

.field private static stat_sys_battery_unknown:I


# instance fields
.field private mBatteryCharge:Landroid/graphics/drawable/Drawable;

.field private mBatteryChargeCore:Landroid/graphics/drawable/Drawable;

.field private mBatteryChargeCoreLevelInside:Landroid/graphics/drawable/Drawable;

.field private mBatteryChargeLevelInside:Landroid/graphics/drawable/Drawable;

.field private mBatteryFormatString:Ljava/lang/String;

.field private mBatteryLightAlpha:I

.field private mBatteryLightning:Landroid/graphics/drawable/Drawable;

.field private mBatteryLightningQuick:Landroid/graphics/drawable/Drawable;

.field private mBatteryLow:Landroid/graphics/drawable/Drawable;

.field private mBatteryLowCore:Landroid/graphics/drawable/Drawable;

.field private mBatteryLowCoreLevelInside:Landroid/graphics/drawable/Drawable;

.field private mBatteryLowLevelInside:Landroid/graphics/drawable/Drawable;

.field private mBatteryLowPowerMode:Landroid/graphics/drawable/Drawable;

.field private mBatteryLowPowerModeCore:Landroid/graphics/drawable/Drawable;

.field private mBatteryLowPowerModeCoreLevelInside:Landroid/graphics/drawable/Drawable;

.field private mBatteryLowPowerModeLevelInside:Landroid/graphics/drawable/Drawable;

.field private mBatteryNormal:Landroid/graphics/drawable/Drawable;

.field private mBatteryNormalCore:Landroid/graphics/drawable/Drawable;

.field private mBatteryNormalCoreLevelInside:Landroid/graphics/drawable/Drawable;

.field private mBatteryNormalLevelInside:Landroid/graphics/drawable/Drawable;

.field private mBatteryNormalLevelInsideWhiteBg:Landroid/graphics/drawable/Drawable;

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mBatteryPlugged:Landroid/graphics/drawable/Drawable;

.field private mBatteryPluggedCore:Landroid/graphics/drawable/Drawable;

.field private mBatteryPluggedCoreLevelInside:Landroid/graphics/drawable/Drawable;

.field private mBatteryPluggedLevelInside:Landroid/graphics/drawable/Drawable;

.field private final mBatteryStyleObserver:Landroid/database/ContentObserver;

.field private mBatterySuperCharge:Landroid/graphics/drawable/Drawable;

.field private mBatteryUnknown:Landroid/graphics/drawable/Drawable;

.field private mCharging:Z

.field private mClipWidth:I

.field private mDensity:I

.field private mDoChargeAnimation:Z

.field private mDoChargeHandler:Landroid/os/Handler;

.field private mDoChargeLevel:I

.field private mDoChargeRunnable:Ljava/lang/Runnable;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFilterColor:I

.field private mHasChangeColor:Z

.field private mHidePercentAnyWay:Z

.field private mInCutoutArea:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastLevel:I

.field private mLastPlugged:Z

.field private mLevelPosition:I

.field private mLowPowerMode:Z

.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mQuickCharging:Z

.field private mShowAnim:Landroid/animation/ValueAnimator;

.field private mShowBatteryPercent:Z

.field private mShowingCircleBattery:Z

.field private mToggleBatteryPercentObserver:Landroid/database/ContentObserver;

.field private mToggleChargeAnimationObserver:Landroid/database/ContentObserver;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_battery_normal:I

    sput v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_normal:I

    .line 64
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_battery_normal_level_inside:I

    sput v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_normal_level_inside:I

    .line 65
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_battery_normal_level_inside_whitebg:I

    sput v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_normal_level_inside_whitebg:I

    .line 66
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_battery_charge:I

    sput v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_charge:I

    .line 67
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_battery_super_charge:I

    sput v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_super_charge:I

    .line 68
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_battery_low:I

    sput v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_low:I

    .line 69
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_battery_low_power_mode:I

    sput v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_low_power_mode:I

    .line 70
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_battery_low_power_mode_level_inside:I

    sput v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_low_power_mode_level_inside:I

    .line 71
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_battery_unknown:I

    sput v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_unknown:I

    const/16 v0, 0x8

    .line 72
    sput v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->LOW_LEVEL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 157
    invoke-direct {p0, p1}, Lcom/flyme/systemui/MzBatteryMeterView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLevelPosition:I

    .line 103
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    .line 106
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    .line 109
    iput v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeLevel:I

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 116
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mHidePercentAnyWay:Z

    .line 119
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLowPowerMode:Z

    .line 121
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mInCutoutArea:Z

    .line 123
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 124
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$1;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 132
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$2;

    new-instance v0, Landroid/os/Handler;

    .line 133
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$2;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryStyleObserver:Landroid/database/ContentObserver;

    .line 282
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$6;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$6;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mToggleBatteryPercentObserver:Landroid/database/ContentObserver;

    .line 294
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$7;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$7;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mToggleChargeAnimationObserver:Landroid/database/ContentObserver;

    .line 304
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$8;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$8;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    .line 158
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->initBattery()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 561
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/MzBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    const/4 p2, 0x0

    .line 74
    iput p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLevelPosition:I

    .line 103
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    .line 106
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    .line 109
    iput p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeLevel:I

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 116
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mHidePercentAnyWay:Z

    .line 119
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLowPowerMode:Z

    .line 121
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mInCutoutArea:Z

    .line 123
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 124
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$1;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 132
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$2;

    new-instance p2, Landroid/os/Handler;

    .line 133
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$2;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryStyleObserver:Landroid/database/ContentObserver;

    .line 282
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$6;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$6;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mToggleBatteryPercentObserver:Landroid/database/ContentObserver;

    .line 294
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$7;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$7;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mToggleChargeAnimationObserver:Landroid/database/ContentObserver;

    .line 304
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$8;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$8;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    .line 562
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->initBattery()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 566
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/systemui/MzBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    const/4 p2, 0x0

    .line 74
    iput p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLevelPosition:I

    .line 103
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    .line 106
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    .line 109
    iput p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeLevel:I

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 116
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mHidePercentAnyWay:Z

    .line 119
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLowPowerMode:Z

    .line 121
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mInCutoutArea:Z

    .line 123
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 124
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$1;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 132
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$2;

    new-instance p2, Landroid/os/Handler;

    .line 133
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$2;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryStyleObserver:Landroid/database/ContentObserver;

    .line 282
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$6;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$6;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mToggleBatteryPercentObserver:Landroid/database/ContentObserver;

    .line 294
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$7;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$7;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mToggleChargeAnimationObserver:Landroid/database/ContentObserver;

    .line 304
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$8;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$8;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    .line 567
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->initBattery()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->toggleChargeAnimation()V

    return-void
.end method

.method static synthetic access$102(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Z)Z
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowingCircleBattery:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Z)Z
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLowPowerMode:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I
    .registers 2

    .line 51
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mClipWidth:I

    return p1
.end method

.method static synthetic access$1402(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I
    .registers 2

    .line 51
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLightAlpha:I

    return p1
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Z
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->isShowingCircleBattery()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeLevel:I

    return p0
.end method

.method static synthetic access$302(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I
    .registers 2

    .line 51
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeLevel:I

    return p1
.end method

.method static synthetic access$400(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    return p0
.end method

.method static synthetic access$500(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Ljava/lang/Runnable;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Landroid/os/Handler;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Landroid/widget/TextView;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowBatteryPercent:Z

    return p0
.end method

.method static synthetic access$902(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I
    .registers 2

    .line 51
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLevelPosition:I

    return p1
.end method

.method private initBattery()V
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 179
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->actInMzNightMode(I)V

    .line 181
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/CutoutHelper;->isCutoutScreen()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    move v1, v0

    goto :goto_12

    :cond_11
    move v1, v2

    .line 182
    :goto_12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "statusbar_battery_percent"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLevelPosition:I

    .line 185
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDensity:I

    .line 186
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->status_bar_settings_battery_meter_format_simple:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryFormatString:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const-string v3, "batterymanager"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    const/4 v3, 0x4

    .line 189
    invoke-virtual {v1, v3}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    .line 190
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeHandler:Landroid/os/Handler;

    .line 191
    new-instance v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$3;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeRunnable:Ljava/lang/Runnable;

    .line 200
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->toggleChargeAnimation()V

    .line 201
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, -0x2

    const/4 v4, 0x0

    const-string v5, "mz_current_power_mode"

    invoke-static {v1, v5, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_74

    goto :goto_75

    :cond_74
    move v2, v4

    :goto_75
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLowPowerMode:Z

    .line 205
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->isShowingCircleBattery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowingCircleBattery:Z

    .line 206
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private isShowingCircleBattery()Z
    .registers 3

    .line 210
    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "statusbar_battery_style"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_12

    move v0, v1

    :cond_12
    return v0
.end method

.method private registerContentObservers()V
    .registers 6

    .line 571
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "statusbar_battery_percent"

    .line 573
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 575
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mToggleBatteryPercentObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 577
    sget-object v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->STATUS_BAR_BATTERY_CHARGE_ANIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 579
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mToggleChargeAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "mz_current_power_mode"

    .line 581
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 583
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "statusbar_battery_style"

    .line 585
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 586
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private toggleChargeAnimation()V
    .registers 5

    .line 315
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getBatteryHelper()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;->showChargingAnimation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    .line 316
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->STATUS_BAR_BATTERY_CHARGE_ANIM:Ljava/lang/String;

    .line 317
    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    const/4 v3, -0x2

    .line 316
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    .line 318
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    if-nez v0, :cond_34

    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getBatteryHelper()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;->showChargingAnimation()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    move v1, v2

    :cond_34
    :goto_34
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    .line 319
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    if-eqz v0, :cond_4c

    .line 320
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeLevel:I

    .line 321
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_53

    .line 323
    :cond_4c
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_53
    return-void
.end method

.method private unregisterContentObservers()V
    .registers 3

    .line 590
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mToggleBatteryPercentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 592
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mToggleChargeAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 593
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 594
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateFontSize()V
    .registers 2

    .line 397
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$dimen;->status_bar_clock_size:I

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method


# virtual methods
.method protected apply(Z)V
    .registers 10

    .line 402
    sget-object v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply,hashCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",showAnim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 403
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLevelPosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_46

    .line 406
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLowPowerMode:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLowPowerModeLevelInside:Landroid/graphics/drawable/Drawable;

    goto :goto_4f

    .line 407
    :cond_3b
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_43

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormalLevelInsideWhiteBg:Landroid/graphics/drawable/Drawable;

    goto :goto_4f

    .line 408
    :cond_43
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormalLevelInside:Landroid/graphics/drawable/Drawable;

    goto :goto_4f

    .line 409
    :cond_46
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLowPowerMode:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLowPowerMode:Landroid/graphics/drawable/Drawable;

    goto :goto_4f

    :cond_4d
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    .line 410
    :goto_4f
    iget v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    if-gez v3, :cond_5b

    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mCharging:Z

    if-eqz v3, :cond_58

    goto :goto_5b

    .line 429
    :cond_58
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryUnknown:Landroid/graphics/drawable/Drawable;

    goto :goto_86

    .line 411
    :cond_5b
    :goto_5b
    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mCharging:Z

    if-eqz v3, :cond_70

    .line 412
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mQuickCharging:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatterySuperCharge:Landroid/graphics/drawable/Drawable;

    goto :goto_86

    .line 413
    :cond_66
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLevelPosition:I

    if-ne v0, v1, :cond_6d

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryChargeLevelInside:Landroid/graphics/drawable/Drawable;

    goto :goto_86

    .line 414
    :cond_6d
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryCharge:Landroid/graphics/drawable/Drawable;

    goto :goto_86

    .line 416
    :cond_70
    iget v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_79

    .line 417
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLow:Landroid/graphics/drawable/Drawable;

    goto :goto_86

    .line 419
    :cond_79
    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastPlugged:Z

    if-eqz v3, :cond_86

    .line 420
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLevelPosition:I

    if-ne v0, v1, :cond_84

    .line 421
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPluggedLevelInside:Landroid/graphics/drawable/Drawable;

    goto :goto_86

    .line 423
    :cond_84
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPlugged:Landroid/graphics/drawable/Drawable;

    .line 431
    :cond_86
    :goto_86
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v3, :cond_115

    .line 432
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mHasChangeColor:Z

    if-eqz v3, :cond_10f

    if-eqz p1, :cond_10f

    .line 434
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mClipWidth:I

    .line 435
    iget p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mClipWidth:I

    if-eqz p1, :cond_10f

    .line 437
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_a6

    .line 438
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 440
    :cond_a6
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    .line 442
    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mCharging:Z

    const/4 v4, 0x0

    if-nez v3, :cond_bf

    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastPlugged:Z

    if-eqz v3, :cond_bd

    iget v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    const/16 v5, 0x9

    if-le v3, v5, :cond_bd

    goto :goto_bf

    :cond_bd
    move v3, v4

    goto :goto_c1

    :cond_bf
    :goto_bf
    const/16 v3, 0xff

    :goto_c1
    const/4 v5, 0x3

    new-array v6, v5, [I

    .line 443
    iget v7, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLightAlpha:I

    aput v7, v6, v4

    aput v4, v6, v2

    aput v3, v6, v1

    const-string v7, "alpha"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v5, v5, [I

    aput p1, v5, v4

    if-gez p1, :cond_d9

    move p1, v4

    :cond_d9
    aput p1, v5, v2

    aput v4, v5, v1

    const-string/jumbo p1, "width"

    .line 445
    invoke-static {p1, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 447
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v1, v4

    aput-object p1, v1, v2

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 448
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x10a

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 449
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$9;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$9;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 458
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;

    invoke-direct {v1, p0, v3}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 475
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 478
    :cond_10f
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 479
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_118

    .line 481
    :cond_115
    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    :goto_118
    return-void
.end method

.method protected changeFilterColor(Z)V
    .registers 5

    .line 486
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLightning:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 488
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mHasChangeColor:Z

    if-nez v0, :cond_f

    if-eqz p1, :cond_90

    :cond_f
    const/4 p1, 0x0

    .line 489
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 490
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 491
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryUnknown:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_89

    .line 492
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v0, 0x1020000

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 493
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->LOW_LEVEL:I

    if-ge v0, v1, :cond_3c

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLow:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_38

    goto :goto_3c

    .line 496
    :cond_38
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_43

    .line 494
    :cond_3c
    :goto_3c
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 498
    :goto_43
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_53

    .line 499
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormalCore:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_90

    .line 500
    :cond_53
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormalLevelInside:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_61

    .line 501
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormalCoreLevelInside:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_90

    .line 502
    :cond_61
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormalLevelInsideWhiteBg:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6d

    .line 503
    iget p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_90

    .line 504
    :cond_6d
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPluggedLevelInside:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_7b

    .line 505
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPluggedCoreLevelInside:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_90

    .line 507
    :cond_7b
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPlugged:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_90

    .line 508
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPluggedCore:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_90

    .line 512
    :cond_89
    iget p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_90
    :goto_90
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 163
    invoke-super {p0}, Lcom/flyme/systemui/MzBatteryMeterView;->onAttachedToWindow()V

    .line 164
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 165
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->registerContentObservers()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .registers 5

    .line 329
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mQuickCharging:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->onBatteryLevelChanged(IZZZ)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZZ)V
    .registers 9

    .line 335
    iget-object p4, p0, Lcom/flyme/systemui/MzBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p4}, Lcom/android/systemui/statusbar/policy/BatteryController;->isQuickCharging()Z

    move-result p4

    .line 336
    sget-object v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hashCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",pluggedIn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastPlugged:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",charging="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mCharging:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",quick="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mQuickCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    if-ne p1, v0, :cond_72

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastPlugged:Z

    if-ne v0, p2, :cond_72

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mCharging:Z

    if-ne v0, p3, :cond_72

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mQuickCharging:Z

    if-eq v0, p4, :cond_e2

    .line 344
    :cond_72
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->LOW_LEVEL:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_7b

    if-lt p1, v1, :cond_83

    :cond_7b
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->LOW_LEVEL:I

    if-ge v0, v1, :cond_85

    if-lt p1, v1, :cond_85

    .line 346
    :cond_83
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 348
    :cond_85
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mCharging:Z

    const/4 v1, 0x0

    if-eq v0, p3, :cond_8c

    move v0, v2

    goto :goto_8d

    :cond_8c
    move v0, v1

    .line 349
    :goto_8d
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    .line 350
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastPlugged:Z

    if-eqz p3, :cond_9b

    .line 351
    iget p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    const/16 p2, 0x64

    if-ge p1, p2, :cond_9b

    move p1, v2

    goto :goto_9c

    :cond_9b
    move p1, v1

    :goto_9c
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mCharging:Z

    .line 352
    iput-boolean p4, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mQuickCharging:Z

    .line 353
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->apply(Z)V

    if-eqz v0, :cond_a8

    .line 355
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->toggleChargeAnimation()V

    .line 357
    :cond_a8
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz p1, :cond_e2

    .line 358
    iget p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    if-gez p2, :cond_b6

    const-string p2, ""

    .line 359
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e2

    .line 361
    :cond_b6
    instance-of p3, p1, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;

    if-eqz p3, :cond_cd

    .line 362
    check-cast p1, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;

    sget p3, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->LOW_LEVEL:I

    if-ge p2, p3, :cond_c6

    iget-boolean p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mCharging:Z

    if-nez p2, :cond_c6

    move p2, v2

    goto :goto_c7

    :cond_c6
    move p2, v1

    :goto_c7
    const p3, -0x9bff1

    invoke-virtual {p1, p2, p3}, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->setLowColorMode(ZI)V

    .line 365
    :cond_cd
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryFormatString:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    iget p4, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_e2
    :goto_e2
    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    .line 382
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 388
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->refreshResource()V

    .line 389
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->updateFontSize()V

    .line 390
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 391
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryFormatString:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :cond_21
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    .line 640
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    .line 641
    iget p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    if-eq p2, p1, :cond_10

    .line 642
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    const/4 p1, 0x1

    .line 643
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mHasChangeColor:Z

    .line 644
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->apply(Z)V

    :cond_10
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 170
    invoke-super {p0}, Lcom/flyme/systemui/MzBatteryMeterView;->onDetachedFromWindow()V

    .line 171
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 172
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->unregisterContentObservers()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 519
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 520
    sget-object v0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeAnimation:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDoChargeLevel:I

    goto :goto_2a

    :cond_28
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    .line 522
    :goto_2a
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mQuickCharging:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLightningQuick:Landroid/graphics/drawable/Drawable;

    goto :goto_33

    :cond_31
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLightning:Landroid/graphics/drawable/Drawable;

    .line 523
    :goto_33
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 524
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v3, v0, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 525
    sget-object v2, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastBatteryMeterView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    const/4 v3, 0x1

    if-eq p0, v2, :cond_5a

    move v2, v3

    goto :goto_5b

    :cond_5a
    move v2, v6

    :goto_5b
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->changeFilterColor(Z)V

    .line 526
    sput-object p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastBatteryMeterView:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    .line 527
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 530
    iget v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLevelPosition:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_e7

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mHidePercentAnyWay:Z

    if-nez v2, :cond_e7

    .line 531
    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastPlugged:Z

    if-nez v2, :cond_79

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mCharging:Z

    if-eqz v2, :cond_77

    goto :goto_79

    :cond_77
    move v2, v6

    goto :goto_7a

    :cond_79
    :goto_79
    move v2, v3

    .line 532
    :goto_7a
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 534
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 535
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 536
    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 537
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$dimen;->status_bar_battery_percent_size:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 538
    sget v8, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->LOW_LEVEL:I

    if-ge v0, v8, :cond_a8

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mCharging:Z

    if-nez v0, :cond_a8

    const v0, -0x9bff1

    .line 539
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_ad

    .line 541
    :cond_a8
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mFilterColor:I

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 544
    :goto_ad
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 545
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v5, v6, v8, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 546
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 547
    iget-object v8, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    div-int/2addr v8, v4

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000  # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v8, v3

    .line 548
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 549
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    div-int/2addr v2, v4

    sub-int/2addr v3, v2

    add-int/2addr v3, v4

    int-to-float v0, v3

    int-to-float v2, v8

    .line 550
    invoke-virtual {p1, v5, v0, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 553
    :cond_e7
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLightAlpha:I

    if-lez v0, :cond_fe

    .line 554
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v1, v6, v6, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 555
    iget p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLightAlpha:I

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 556
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_fe
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 634
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 635
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->refreshResource()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 374
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 375
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 376
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mClipWidth:I

    add-int/2addr p1, v0

    .line 377
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public refreshResource()V
    .registers 4

    .line 599
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_normal:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    .line 600
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->battery_core:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormalCore:Landroid/graphics/drawable/Drawable;

    .line 601
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_normal_level_inside:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormalLevelInside:Landroid/graphics/drawable/Drawable;

    .line 602
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_normal_level_inside_whitebg:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormalLevelInsideWhiteBg:Landroid/graphics/drawable/Drawable;

    .line 603
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormalLevelInside:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->battery_core:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryNormalCoreLevelInside:Landroid/graphics/drawable/Drawable;

    .line 604
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_charge:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryCharge:Landroid/graphics/drawable/Drawable;

    .line 605
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_charge:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryChargeLevelInside:Landroid/graphics/drawable/Drawable;

    .line 606
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryCharge:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->battery_core:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryChargeCore:Landroid/graphics/drawable/Drawable;

    .line 607
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryChargeLevelInside:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->battery_core:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryChargeCoreLevelInside:Landroid/graphics/drawable/Drawable;

    .line 608
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_battery_plugged:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPlugged:Landroid/graphics/drawable/Drawable;

    .line 609
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPlugged:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->battery_core:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPluggedCore:Landroid/graphics/drawable/Drawable;

    .line 610
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_battery_plugged_level_inside:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPluggedLevelInside:Landroid/graphics/drawable/Drawable;

    .line 611
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPluggedLevelInside:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->battery_core:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPluggedCoreLevelInside:Landroid/graphics/drawable/Drawable;

    .line 612
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_low:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLow:Landroid/graphics/drawable/Drawable;

    .line 613
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_low:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLowLevelInside:Landroid/graphics/drawable/Drawable;

    .line 614
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLow:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->battery_core:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLowCore:Landroid/graphics/drawable/Drawable;

    .line 615
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLowLevelInside:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->battery_core:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLowCoreLevelInside:Landroid/graphics/drawable/Drawable;

    .line 616
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_low_power_mode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLowPowerMode:Landroid/graphics/drawable/Drawable;

    .line 617
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_low_power_mode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLowPowerModeLevelInside:Landroid/graphics/drawable/Drawable;

    .line 618
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLowPowerMode:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->battery_core:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLowPowerModeCore:Landroid/graphics/drawable/Drawable;

    .line 619
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLowPowerModeLevelInside:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->battery_core:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLowPowerModeCoreLevelInside:Landroid/graphics/drawable/Drawable;

    .line 620
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->mz_stat_sys_mcharge:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLightning:Landroid/graphics/drawable/Drawable;

    .line 621
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->mz_stat_sys_super_mcharge:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryLightningQuick:Landroid/graphics/drawable/Drawable;

    .line 622
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_super_charge:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatterySuperCharge:Landroid/graphics/drawable/Drawable;

    .line 623
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->stat_sys_battery_unknown:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryUnknown:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 624
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->apply(Z)V

    return-void
.end method

.method public setBatteryPercentView(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    const-string v0, "StatusBar"

    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p2, "StatusBarBatteryView"

    .line 148
    sput-object p2, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->TAG:Ljava/lang/String;

    goto :goto_19

    :cond_d
    const-string v0, "KeyguardStatusBar"

    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    const-string p2, "KeyguardStatusBarBatteryView"

    .line 150
    sput-object p2, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->TAG:Ljava/lang/String;

    .line 152
    :cond_19
    :goto_19
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->toggleBatteryPercent(Z)V

    return-void
.end method

.method public toggleBatteryPercent(Z)V
    .registers 11

    .line 216
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLevelPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 218
    :goto_9
    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowBatteryPercent:Z

    if-eq v3, v0, :cond_cb

    .line 219
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowBatteryPercent:Z

    .line 220
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v3, :cond_cb

    .line 222
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_34

    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowingCircleBattery:Z

    if-eqz v3, :cond_20

    goto :goto_34

    .line 275
    :cond_20
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 276
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowBatteryPercent:Z

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v4

    :goto_2f
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_cb

    .line 223
    :cond_34
    :goto_34
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryFormatString:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mLastLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_50

    .line 225
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_50
    const/high16 v3, -0x80000000

    const/4 v5, -0x1

    .line 227
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 228
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 229
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v3}, Landroid/widget/TextView;->measure(II)V

    if-eqz p1, :cond_c2

    .line 232
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    xor-int/lit8 v3, v0, 0x1

    if-eqz v0, :cond_6e

    neg-int v4, p1

    goto :goto_6f

    :cond_6e
    move v4, v2

    :goto_6f
    if-eqz v0, :cond_73

    move p1, v2

    goto :goto_74

    :cond_73
    neg-int p1, p1

    .line 237
    :goto_74
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v6, 0x3

    new-array v7, v6, [F

    int-to-float v3, v3

    aput v3, v7, v2

    if-eqz v0, :cond_82

    goto :goto_83

    :cond_82
    int-to-float v3, v0

    :goto_83
    aput v3, v7, v1

    int-to-float v3, v0

    const/4 v8, 0x2

    aput v3, v7, v8

    const-string v3, "alpha"

    .line 238
    invoke-static {v3, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v6, v6, [I

    aput v4, v6, v2

    if-eqz v0, :cond_96

    move v4, p1

    :cond_96
    aput v4, v6, v1

    aput p1, v6, v8

    const-string p1, "padding"

    .line 240
    invoke-static {p1, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v0, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    .line 242
    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    const-wide/16 v0, 0x10a

    .line 243
    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 244
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$4;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$4;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V

    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 256
    new-instance p1, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$5;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$5;-><init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V

    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 267
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_cb

    .line 269
    :cond_c2
    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mShowBatteryPercent:Z

    if-nez p1, :cond_cb

    .line 271
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_cb
    :goto_cb
    return-void
.end method
