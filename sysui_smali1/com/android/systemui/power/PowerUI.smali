.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;,
        Lcom/android/systemui/power/PowerUI$SoundType;,
        Lcom/android/systemui/power/PowerUI$UsbThermalEventListener;,
        Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;,
        Lcom/android/systemui/power/PowerUI$WarningsUI;,
        Lcom/android/systemui/power/PowerUI$Receiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final SIX_HOURS_MILLIS:J


# instance fields
.field mBatteryLevel:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBatteryStatus:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mDialogBucket:I

.field private mEnableSkinTemperatureWarning:Z

.field private mEnableUsbTemperatureAlarm:Z

.field private mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

.field private final mHandler:Landroid/os/Handler;

.field private mInvalidCharger:I

.field mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLowBatteryAlertCloseLevel:I

.field private final mLowBatteryReminderLevels:[I

.field mLowWarningShownThisChargeCycle:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNotifyBucket:I

.field private mPlugType:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

.field final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRingtone:Landroid/media/Ringtone;

.field private mScreenOffTime:J

.field mSevereWarningShownThisChargeCycle:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSkinThermalEventListener:Landroid/os/IThermalEventListener;

.field private mTemperatureDialog:Landroid/app/Dialog;

.field mThermalService:Landroid/os/IThermalService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUsbThermalEventListener:Landroid/os/IThermalEventListener;

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "PowerUI"

    const/4 v1, 0x3

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    const-wide/16 v0, 0x6

    .line 82
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/power/PowerUI;->SIX_HOURS_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 93
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 95
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 102
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const-wide/16 v0, -0x1

    .line 104
    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const/16 v0, 0x64

    .line 112
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/4 v0, 0x1

    .line 113
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v0, -0x1

    .line 934
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mNotifyBucket:I

    const/4 v0, -0x2

    .line 935
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mDialogBucket:I

    const/4 v0, 0x0

    .line 940
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerUI;)I
    .registers 1

    .line 73
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerUI;)V
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->onBatteryLow()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/power/PowerUI;I)I
    .registers 2

    .line 73
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerUI;)V
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->dissmissTemperatureAlert()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerUI;)V
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showTemperatureAlert()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/power/PowerUI;)I
    .registers 1

    .line 73
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/power/PowerUI;I)I
    .registers 2

    .line 73
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerUI;I)I
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerUI;)I
    .registers 1

    .line 73
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerUI;)[I
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerUI;)J
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/systemui/power/PowerUI;J)J
    .registers 3

    .line 73
    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerUI;)Lcom/flyme/systemui/statusbar/policy/PowerSaveController;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mPowerSaveController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerUI;)Z
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->phoneIsInUse()Z

    move-result p0

    return p0
.end method

.method private dissmissTemperatureAlert()V
    .registers 2

    .line 894
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mTemperatureDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 895
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 896
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mTemperatureDialog:Landroid/app/Dialog;

    :cond_a
    return-void
.end method

.method private findBatteryLevelBucket(I)I
    .registers 6

    .line 218
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_6

    return v1

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    if-le p1, v3, :cond_e

    return v2

    .line 224
    :cond_e
    array-length v0, v0

    sub-int/2addr v0, v1

    :goto_10
    if-ltz v0, :cond_1e

    .line 226
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_1b

    rsub-int/lit8 p0, v0, -0x1

    return p0

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 230
    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initThermalEventListeners()V
    .registers 1

    .line 559
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->doSkinThermalEventListenerRegistration()V

    .line 560
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->doUsbThermalEventListenerRegistration()V

    return-void
.end method

.method public static synthetic lambda$QV7l9YjJI0jIQa7PQUr5PFep9Kg(Lcom/android/systemui/power/PowerUI;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initThermalEventListeners()V

    return-void
.end method

.method private onBatteryLow()V
    .registers 1

    return-void
.end method

.method private phoneIsInUse()Z
    .registers 2

    .line 832
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 840
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private playAlarmSound()V
    .registers 3

    const-string v0, "file:///system/media/audio/ui/41_Hight_Temperature_Alarm.ogg"

    .line 901
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 903
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_18

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 904
    :cond_18
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1f

    .line 905
    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 906
    :cond_1f
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    .line 908
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_34

    const/4 v1, 0x5

    .line 909
    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 910
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    :cond_34
    return-void
.end method

.method private showTemperatureAlert()V
    .registers 1

    .line 889
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->playAlarmSound()V

    .line 890
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showTemperatureAlertDialog()V

    return-void
.end method

.method private showTemperatureAlertDialog()V
    .registers 4

    .line 916
    new-instance v0, Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$style;->Theme_Flyme_NoTitleBar_Fullscreen:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/power/PowerUI$MzTemperatureDialog;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Context;I)V

    .line 918
    new-instance v1, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 927
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 928
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mTemperatureDialog:Landroid/app/Dialog;

    return-void
.end method

.method private showWarnOnThermalShutdown()V
    .registers 8

    .line 635
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "powerui_prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, -0x1

    const-string v4, "boot_count"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 637
    :try_start_10
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_1a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_22

    :catch_1b
    const-string v5, "PowerUI"

    const-string v6, "Failed to read system boot count from Settings.Global.BOOT_COUNT"

    .line 640
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    if-le v3, v0, :cond_43

    .line 644
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 645
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 646
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getLastShutdownReason()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_43

    .line 648
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showThermalShutdownWarning()V

    :cond_43
    return-void
.end method


# virtual methods
.method declared-synchronized doSkinThermalEventListenerRegistration()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 565
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 568
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_temperature_warning"

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 570
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$integer;->config_showTemperatureWarning:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 568
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    :goto_23
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 572
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_78

    if-eq v1, v0, :cond_76

    .line 574
    :try_start_29
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    if-nez v0, :cond_34

    .line 575
    new-instance v0, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    .line 577
    :cond_34
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_45

    const-string/jumbo v0, "thermalservice"

    .line 579
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 578
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 581
    :cond_45
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    if-eqz v0, :cond_53

    .line 582
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    move-result v0

    goto :goto_65

    .line 585
    :cond_53
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    invoke-interface {v0, v1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result v0
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_5b} :catch_5c
    .catchall {:try_start_29 .. :try_end_5b} :catchall_78

    goto :goto_65

    :catch_5c
    move-exception v0

    :try_start_5d
    const-string v1, "PowerUI"

    const-string v4, "Exception while (un)registering skin thermal event listener."

    .line 588
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    :goto_65
    if-nez v0, :cond_76

    .line 592
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    if-nez v0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v2, v3

    :goto_6d
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    const-string v0, "PowerUI"

    const-string v1, "Failed to register or unregister skin thermal event listener."

    .line 593
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_78

    .line 596
    :cond_76
    monitor-exit p0

    return-void

    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doUsbThermalEventListenerRegistration()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 600
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 603
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_usb_temperature_alarm"

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 605
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$integer;->config_showUsbPortAlarm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 603
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    :goto_23
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 607
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_78

    if-eq v1, v0, :cond_76

    .line 609
    :try_start_29
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    if-nez v0, :cond_34

    .line 610
    new-instance v0, Lcom/android/systemui/power/PowerUI$UsbThermalEventListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$UsbThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    .line 612
    :cond_34
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_45

    const-string/jumbo v0, "thermalservice"

    .line 614
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 613
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 616
    :cond_45
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    if-eqz v0, :cond_53

    .line 617
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    const/4 v4, 0x4

    invoke-interface {v0, v1, v4}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    move-result v0

    goto :goto_65

    .line 620
    :cond_53
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    invoke-interface {v0, v1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result v0
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_5b} :catch_5c
    .catchall {:try_start_29 .. :try_end_5b} :catchall_78

    goto :goto_65

    :catch_5c
    move-exception v0

    :try_start_5d
    const-string v1, "PowerUI"

    const-string v4, "Exception while (un)registering usb thermal event listener."

    .line 623
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    :goto_65
    if-nez v0, :cond_76

    .line 627
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    if-nez v0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v2, v3

    :goto_6d
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    const-string v0, "PowerUI"

    const-string v1, "Failed to register or unregister usb thermal event listener."

    .line 628
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_78

    .line 631
    :cond_76
    monitor-exit p0

    return-void

    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const-string p1, "mLowBatteryAlertCloseLevel="

    .line 654
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "mLowBatteryReminderLevels="

    .line 656
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mBatteryLevel="

    .line 658
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mBatteryStatus="

    .line 660
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 661
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mPlugType="

    .line 662
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 663
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mInvalidCharger="

    .line 664
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 665
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mScreenOffTime="

    .line 666
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 667
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 668
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_76

    const-string p1, " ("

    .line 669
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p1, " ago)"

    .line 671
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    :cond_76
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p1, "soundTimeout="

    .line 674
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 675
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, "low_battery_sound_timeout"

    invoke-static {p1, v0, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "bucket: "

    .line 677
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mEnableSkinTemperatureWarning="

    .line 679
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 680
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "mEnableUsbTemperatureAlarm="

    .line 681
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 682
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 683
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {p0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method maybeShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 441
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getBatteryLevel()I

    const/4 p0, 0x0

    throw p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    if-eqz p1, :cond_14

    .line 177
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/power/-$$Lambda$PowerUI$QV7l9YjJI0jIQa7PQUr5PFep9Kg;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/-$$Lambda$PowerUI$QV7l9YjJI0jIQa7PQUr5PFep9Kg;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method playBatterySoundForCTA(Lcom/android/systemui/power/PowerUI$SoundType;)V
    .registers 7

    .line 844
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playBatterySoundForCTA:set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "key_system_tips_sound"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",soundPath="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "low_battery_sound"

    .line 847
    invoke-static {p1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "PowerUI"

    .line 846
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_b9

    .line 851
    invoke-static {p1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b9

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playBatterySoundForCTA: soundUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mRingtone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_b9

    .line 859
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_82

    if-eqz v0, :cond_96

    invoke-virtual {v0}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    :cond_82
    const-string v0, "playBatterySoundForCTA: 1"

    .line 860
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_8e

    .line 862
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 863
    :cond_8e
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    .line 866
    :cond_96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playBatterySoundForCTA: mRingtone="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    if-eqz p1, :cond_b9

    const/4 v0, 0x4

    .line 869
    invoke-virtual {p1, v0}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 870
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    :cond_b9
    return-void
.end method

.method refreshEstimateIfNeeded()Lcom/android/settingslib/fuelgauge/Estimate;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    if-nez v0, :cond_2a

    .line 425
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {p0}, Lcom/android/systemui/power/EnhancedEstimates;->getEstimate()Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object p0

    .line 426
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updated estimate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/fuelgauge/Estimate;->getEstimateMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-object p0

    .line 423
    :cond_2a
    invoke-virtual {v0}, Lcom/android/systemui/power/BatteryStateSnapshot;->getTimeRemainingMillis()J

    const/4 p0, 0x0

    throw p0
.end method

.method shouldDismissHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 517
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    const/4 p0, 0x0

    throw p0
.end method

.method shouldDismissLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 552
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver()Z

    const/4 p0, 0x0

    throw p0
.end method

.method shouldShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 485
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    const/4 p0, 0x0

    throw p0
.end method

.method shouldShowLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 540
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->getPlugged()Z

    const/4 p0, 0x0

    throw p0
.end method

.method public start()V
    .registers 6

    .line 119
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_17

    const-wide/16 v0, -0x1

    goto :goto_1b

    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_1b
    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 121
    const-class v0, Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/PowerUI$WarningsUI;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 122
    const-class v0, Lcom/android/systemui/power/EnhancedEstimates;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/EnhancedEstimates;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 125
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 131
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_trigger_level"

    .line 132
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showWarnOnThermalShutdown()V

    const-string/jumbo v0, "show_temperature_warning"

    .line 145
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/power/PowerUI$2;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 144
    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "show_usb_temperature_alarm"

    .line 156
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/power/PowerUI$3;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 155
    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initThermalEventListeners()V

    .line 167
    const-class v0, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerSaveController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    return-void
.end method

.method updateBatteryWarningLevels()V
    .registers 7

    .line 194
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->config_mz_lowBatteryWarningLevel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 195
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$integer;->config_mz_criticalBatteryWarningLevel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sub-int/2addr v2, v1

    .line 196
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$integer;->config_mz_urgentBatteryWarningLevel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sub-int/2addr v3, v1

    .line 197
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v3, 0x0

    .line 200
    aput v0, v4, v3

    .line 201
    aput v2, v4, v1

    .line 202
    aget v0, v4, v3

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return-void
.end method
