.class public Lcom/android/systemui/power/PowerNotificationWarnings;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Lcom/android/systemui/power/PowerUI$WarningsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final DEBUG:Z

.field private static final SHOWING_STRINGS:[Ljava/lang/String;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mBatteryLevel:I

.field private mBucket:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mHighTempWarning:Z

.field private mInvalidCharger:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mOpenBatterySettings:Landroid/content/Intent;

.field private mPlaySound:Z

.field private final mPowerMan:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

.field private mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mScreenOffTime:J

.field private mShowAutoSaverSuggestion:Z

.field private mShowing:I

.field private mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mWarning:Z

.field private mWarningTriggerTimeMs:J

.field private showAlertAgain:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 85
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    const-string v0, "SHOWING_NOTHING"

    const-string v1, "SHOWING_WARNING"

    const-string v2, "SHOWING_SAVER"

    const-string v3, "SHOWING_INVALID_CHARGER"

    const-string v4, "SHOWING_AUTO_SAVER_SUGGESTION"

    .line 95
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    .line 131
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 132
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 133
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;)V
    .registers 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 142
    new-instance v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$1;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    const-string v0, "android.intent.action.POWER_USAGE_SUMMARY"

    .line 143
    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 863
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->showAlertAgain:Z

    .line 168
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v0, "power"

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    .line 171
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mKeyguard:Landroid/app/KeyguardManager;

    .line 172
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    invoke-virtual {p1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->init()V

    .line 173
    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showThermalShutdownDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showAutoSaverSuggestion()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissAutoSaverSuggestion()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->startBatterySaverSchedulePage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->mzSetSaverMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Bundle;)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->showStartSaverConfirmation(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissHighTemperatureWarningInternal()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showHighTemperatureDialog()V

    return-void
.end method

.method private dismissAutoSaverSuggestion()V
    .registers 2

    const/4 v0, 0x0

    .line 570
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowAutoSaverSuggestion:Z

    .line 571
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method private dismissHighTemperatureWarningInternal()V
    .registers 5

    .line 385
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "high_temp"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    return-void
.end method

.method private dismissInvalidChargerNotification()V
    .registers 3

    .line 553
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_b

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing invalid charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    .line 554
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 555
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method private dismissLowBatteryNotification()V
    .registers 3

    .line 523
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_b

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing low battery notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    .line 524
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 525
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method private getBatterySaverDescription()Ljava/lang/CharSequence;
    .registers 11

    .line 637
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->help_uri_battery_saver_learn_more_link_target:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 638
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 642
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v0, 0x10400f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 647
    :cond_1c
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x10400f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 649
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 650
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 655
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const-class v4, Landroid/text/Annotation;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/Annotation;

    array-length v4, v3

    :goto_3d
    if-ge v5, v4, :cond_66

    aget-object v6, v3, v5

    .line 656
    invoke-virtual {v6}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "url"

    .line 658
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f

    goto :goto_63

    .line 661
    :cond_4f
    invoke-virtual {v2, v6}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 662
    invoke-virtual {v2, v6}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 667
    new-instance v8, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    invoke-direct {v8, p0, v0}, Lcom/android/systemui/power/PowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v2, v8}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v1, v8, v7, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_66
    return-object v1
.end method

.method private getOpenPowerSaverIntent(Z)Landroid/app/PendingIntent;
    .registers 4

    if-eqz p1, :cond_9

    const-string p1, "PNW.startSaver"

    .line 781
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 783
    :cond_9
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.meizu.power.POWER_UI_MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.meizu.safe"

    .line 784
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getPowerManagerIntent(Z)Landroid/app/PendingIntent;
    .registers 7

    const/high16 v0, 0x8000000

    const/4 v1, 0x0

    if-eqz p1, :cond_44

    .line 791
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.meizu.power.PowerLowNotification"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPowerManagerActivty mBucket ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerUI.Notification"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v3, -0x1

    const/4 v4, 0x3

    if-ge v2, v3, :cond_2c

    move v2, v4

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x2

    :goto_2d
    const-string v3, "mode"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "resource"

    .line 794
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "enable"

    .line 795
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 796
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 798
    :cond_44
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.meizu.power.POWER_UI_MAIN"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.meizu.safe"

    .line 799
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private hasPowerManager()Z
    .registers 2

    .line 776
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v0, "com.meizu.battery"

    invoke-static {p0, v0}, Lcom/flyme/systemui/statusbar/utils/PackageUtils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isEnglishLocale()Z
    .registers 2

    .line 629
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 630
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private mzSetSaverMode()V
    .registers 4

    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.powermode.enter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 806
    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v2, -0x1

    if-ge v1, v2, :cond_e

    const/4 v1, 0x3

    goto :goto_f

    :cond_e
    const/4 v1, 0x2

    :goto_f
    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 807
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private mzShowWarningNotification(Z)V
    .registers 12

    .line 818
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->hasPowerManager()Z

    move-result v0

    .line 819
    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v2, -0x1

    if-ge v1, v2, :cond_c

    sget v1, Lcom/android/systemui/R$string;->mz_battery_super_battery_Text_format:I

    goto :goto_e

    :cond_c
    sget v1, Lcom/android/systemui/R$string;->mz_battery_low_battery_Text_format:I

    .line 820
    :goto_e
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    int-to-double v6, v4

    const-wide/high16 v8, 0x4059000000000000L  # 100.0

    div-double/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 822
    new-instance v4, Landroid/app/NotificationChannel;

    const/4 v6, 0x5

    const-string v7, "power_warning"

    invoke-direct {v4, v7, v7, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 823
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v6, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 825
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v6, Lcom/android/systemui/R$drawable;->mz_stat_sys_power_low:I

    .line 826
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 828
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 829
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->mz_battery_low_battery_title_format:I

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    .line 830
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v9

    .line 831
    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 832
    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-ge v4, v2, :cond_6a

    sget v2, Lcom/android/systemui/R$drawable;->low_power_red:I

    goto :goto_6c

    :cond_6a
    sget v2, Lcom/android/systemui/R$drawable;->low_power_yellow:I

    :goto_6c
    invoke-static {v3, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 833
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "PNW.dismissedWarning"

    .line 834
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 835
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 836
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$color;->battery_saver_mode_color:I

    .line 837
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 838
    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getPowerManagerIntent(Z)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 839
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz p1, :cond_a5

    move v2, v9

    :cond_a5
    const-string p1, "headsup"

    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 843
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->mz_open_power_saver:I

    .line 844
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 845
    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getOpenPowerSaverIntent(Z)Landroid/app/PendingIntent;

    move-result-object v0

    .line 843
    invoke-virtual {v1, v9, p1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 846
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    if-eqz p1, :cond_bf

    .line 848
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 850
    :cond_bf
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->showAlertAgain:Z

    const-string v0, "low_battery"

    if-eqz p1, :cond_ce

    .line 851
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    sget v2, Lcom/android/systemui/R$id;->notification_power:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 853
    :cond_ce
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->showAlertAgain:Z

    .line 854
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->mz_electricity_management:I

    invoke-static {p1, v1, v2}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;I)V

    .line 855
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    sget p1, Lcom/android/systemui/R$id;->notification_power:I

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10000000

    .line 354
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    .line 352
    invoke-static {v0, v1, p0, v1, p1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private setSaverMode(ZZ)V
    .registers 3

    .line 702
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(Landroid/content/Context;ZZ)Z

    return-void
.end method

.method private static settings(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    .line 359
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x5c800000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private showAutoSaverSuggestion()V
    .registers 2

    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowAutoSaverSuggestion:Z

    .line 566
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method private showAutoSaverSuggestionNotification()V
    .registers 5

    .line 323
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->HINTS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/R$drawable;->ic_power_saver:I

    .line 325
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 326
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 327
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->auto_saver_title:I

    .line 328
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->auto_saver_text:I

    .line 329
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "PNW.enableAutoSaver"

    .line 330
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string v2, "PNW.dismissAutoSaverSuggestion"

    .line 331
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 332
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->no_auto_saver_action:I

    .line 333
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PNW.autoSaverNoThanks"

    .line 334
    invoke-direct {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 332
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 336
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 338
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 339
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "auto_saver"

    const/16 v3, 0x31

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showHighTemperatureDialog()V
    .registers 4

    .line 413
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_5

    return-void

    .line 414
    :cond_5
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    .line 415
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 416
    sget v1, Lcom/android/systemui/R$string;->high_temp_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 417
    sget v1, Lcom/android/systemui/R$string;->high_temp_dialog_message:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 418
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x1

    .line 419
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 420
    new-instance v1, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$PU_JpsxNcz7jXGNa_DRkuMbEWwU;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$PU_JpsxNcz7jXGNa_DRkuMbEWwU;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 421
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 422
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method private showInvalidChargerNotification()V
    .registers 6

    .line 255
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/R$drawable;->mz_stat_sys_power_low:I

    .line 257
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 259
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 260
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->invalid_charger_title:I

    .line 261
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->invalid_charger_text:I

    .line 262
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 263
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 265
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 266
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "low_battery"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 268
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x2

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showLowBatteryWarningToast()V
    .registers 8

    .line 811
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-double v3, v1

    const-wide/high16 v5, 0x4059000000000000L  # 100.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 812
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->mz_toast_battery_low_percent_format:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 813
    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v2, -0x1

    if-ge v1, v2, :cond_25

    sget v1, Lcom/android/systemui/R$drawable;->toast_low_power_red:I

    goto :goto_27

    :cond_25
    sget v1, Lcom/android/systemui/R$drawable;->toast_low_power_yellow:I

    .line 814
    :goto_27
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v0}, Lcom/flyme/systemui/power/PowerToast;->showToast(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private showStartSaverConfirmation(Landroid/os/Bundle;)V
    .registers 7

    .line 580
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_5

    return-void

    .line 581
    :cond_5
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "extra_confirm_only"

    .line 582
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "extra_power_save_mode_trigger"

    .line 584
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "extra_power_save_mode_trigger_level"

    .line 587
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 588
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getBatterySaverDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 592
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->isEnglishLocale()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 593
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessageHyphenationFrequency(I)V

    .line 596
    :cond_2f
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessageMovementMethod(Landroid/text/method/MovementMethod;)V

    if-eqz v1, :cond_49

    .line 599
    sget v1, Lcom/android/systemui/R$string;->battery_saver_confirmation_title_generic:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const v1, 0x10401b2

    .line 600
    new-instance v2, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$i9YMNbne4kaewl8DwiUWlEIhHLU;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$i9YMNbne4kaewl8DwiUWlEIhHLU;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;II)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_5e

    .line 617
    :cond_49
    sget p1, Lcom/android/systemui/R$string;->battery_saver_confirmation_title:I

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 618
    sget p1, Lcom/android/systemui/R$string;->battery_saver_confirmation_ok:I

    new-instance v1, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$Uf-fCz3D5JaMRKgj_soLcPpUL04;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$Uf-fCz3D5JaMRKgj_soLcPpUL04;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p1, 0x1040000

    const/4 v1, 0x0

    .line 620
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    :goto_5e
    const/4 p1, 0x1

    .line 622
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 623
    new-instance p1, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$AE5LLn9E8Dx1b7_xgN4SxgDN7R4;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$AE5LLn9E8Dx1b7_xgN4SxgDN7R4;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 624
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 625
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method private showThermalShutdownDialog()V
    .registers 4

    .line 431
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_5

    return-void

    .line 432
    :cond_5
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    .line 433
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 434
    sget v1, Lcom/android/systemui/R$string;->thermal_shutdown_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 435
    sget v1, Lcom/android/systemui/R$string;->thermal_shutdown_dialog_message:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 436
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x1

    .line 437
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 438
    new-instance v1, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$O5nkGS5PG2ihQrXqunpOO_aZDms;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$O5nkGS5PG2ihQrXqunpOO_aZDms;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 439
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 440
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method private showUsbHighTemperatureAlarmInternal()V
    .registers 8

    .line 470
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_5

    return-void

    .line 474
    :cond_5
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 475
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const v2, 0x1010355

    .line 476
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 477
    sget v2, Lcom/android/systemui/R$string;->high_temp_alarm_title:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    const/4 v2, 0x1

    .line 478
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 479
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->high_temp_alarm_notify_message:I

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v3, 0x104000a

    .line 480
    new-instance v4, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$wL6F1WmvK9p9dyYXQnu9ScZBxSA;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$wL6F1WmvK9p9dyYXQnu9ScZBxSA;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 482
    sget v3, Lcom/android/systemui/R$string;->high_temp_alarm_help_care_steps:I

    new-instance v4, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$dkzsXROJlAvy2zSj_OYf-kxpKFc;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$dkzsXROJlAvy2zSj_OYf-kxpKFc;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 495
    new-instance v3, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$_C7Tc72CcSASuMrkeFnJC4Oj07o;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$_C7Tc72CcSASuMrkeFnJC4Oj07o;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 501
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x200080

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 503
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 504
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 506
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/16 v3, 0x13

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    .line 507
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mKeyguard:Landroid/app/KeyguardManager;

    .line 508
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v4, v2

    .line 506
    invoke-static {v0, v3, v4}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method

.method private startBatterySaverSchedulePage()V
    .registers 3

    .line 706
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.BATTERY_SAVER_SCHEDULE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 707
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 708
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateNotification()V
    .registers 2

    const/4 v0, 0x0

    .line 218
    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification(Z)V

    return-void
.end method

.method private updateNotification(Z)V
    .registers 6

    .line 222
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNotification mWarning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPlaySound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mInvalidCharger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI.Notification"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_31
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_3c

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showInvalidChargerNotification()V

    .line 226
    iput v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_7e

    .line 227
    :cond_3c
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_47

    .line 230
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->mzShowWarningNotification(Z)V

    const/4 p1, 0x1

    .line 232
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_7e

    .line 233
    :cond_47
    iget-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowAutoSaverSuggestion:Z

    if-eqz p1, :cond_56

    .line 238
    iget p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_53

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showAutoSaverSuggestionNotification()V

    .line 241
    :cond_53
    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_7e

    .line 243
    :cond_56
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const/4 v0, 0x2

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "low_battery"

    invoke-virtual {p1, v3, v0, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 244
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v1, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 245
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const/16 v0, 0x31

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "auto_saver"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 248
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    sget v0, Lcom/android/systemui/R$id;->notification_power:I

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 p1, 0x0

    .line 250
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    :goto_7e
    return-void
.end method


# virtual methods
.method public dismissHighTemperatureWarning()V
    .registers 2

    .line 373
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    if-nez v0, :cond_5

    return-void

    .line 376
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissHighTemperatureWarningInternal()V

    return-void
.end method

.method public dismissInvalidChargerWarning()V
    .registers 1

    .line 549
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissInvalidChargerNotification()V

    return-void
.end method

.method public dismissLowBatteryWarning()V
    .registers 3

    .line 518
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissing low battery warning: level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI.Notification"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_1c
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    return-void
.end method

.method dismissThermalShutdownWarning()V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 427
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "high_temp"

    const/16 v2, 0x27

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "mWarning="

    .line 178
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mPlaySound="

    .line 179
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mInvalidCharger="

    .line 180
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mShowing="

    .line 181
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mSaverConfirmation="

    .line 182
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const-string v1, "not null"

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    move-object v0, v1

    goto :goto_3b

    :cond_3a
    move-object v0, v2

    :goto_3b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mSaverEnabledConfirmation="

    .line 183
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHighTempWarning="

    .line 184
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mHighTempDialog="

    .line 185
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_58

    move-object v0, v1

    goto :goto_59

    :cond_58
    move-object v0, v2

    :goto_59
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mThermalShutdownDialog="

    .line 186
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_67

    move-object v0, v1

    goto :goto_68

    :cond_67
    move-object v0, v2

    :goto_68
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mUsbHighTempDialog="

    .line 188
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p0, :cond_75

    goto :goto_76

    :cond_75
    move-object v1, v2

    :goto_76
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isInvalidChargerWarningShowing()Z
    .registers 1

    .line 368
    iget-boolean p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    return p0
.end method

.method public synthetic lambda$showHighTemperatureDialog$0$PowerNotificationWarnings(Landroid/content/DialogInterface;)V
    .registers 2

    const/4 p1, 0x0

    .line 420
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method public synthetic lambda$showStartSaverConfirmation$7$PowerNotificationWarnings(IILandroid/content/DialogInterface;I)V
    .registers 5

    .line 602
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p3, "automatic_power_save_mode"

    .line 603
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "low_power_trigger_level"

    .line 607
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "low_power_warning_acknowledged"

    const/4 p2, 0x1

    .line 611
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public synthetic lambda$showStartSaverConfirmation$8$PowerNotificationWarnings(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 619
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(ZZ)V

    return-void
.end method

.method public synthetic lambda$showStartSaverConfirmation$9$PowerNotificationWarnings(Landroid/content/DialogInterface;)V
    .registers 2

    const/4 p1, 0x0

    .line 623
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method public synthetic lambda$showThermalShutdownDialog$1$PowerNotificationWarnings(Landroid/content/DialogInterface;)V
    .registers 2

    const/4 p1, 0x0

    .line 438
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method public synthetic lambda$showUsbHighTemperatureAlarm$2$PowerNotificationWarnings()V
    .registers 1

    .line 466
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showUsbHighTemperatureAlarmInternal()V

    return-void
.end method

.method public synthetic lambda$showUsbHighTemperatureAlarmInternal$3$PowerNotificationWarnings(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, 0x0

    .line 481
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method public synthetic lambda$showUsbHighTemperatureAlarmInternal$4$PowerNotificationWarnings(I)V
    .registers 2

    const/4 p1, 0x0

    .line 492
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method public synthetic lambda$showUsbHighTemperatureAlarmInternal$5$PowerNotificationWarnings(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 484
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->high_temp_alarm_help_url:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 486
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.HelpTrampoline"

    .line 487
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 489
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$aDUeHG-2fyaQA2OArgzN2VFmIKQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$aDUeHG-2fyaQA2OArgzN2VFmIKQ;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    const/4 p0, 0x1

    invoke-interface {p1, p2, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method public synthetic lambda$showUsbHighTemperatureAlarmInternal$6$PowerNotificationWarnings(Landroid/content/DialogInterface;)V
    .registers 5

    const/4 p1, 0x0

    .line 496
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 497
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x9

    .line 498
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mKeyguard:Landroid/app/KeyguardManager;

    .line 499
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/16 p0, 0x14

    .line 497
    invoke-static {p1, p0, v0}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method

.method public showHighTemperatureWarning()V
    .registers 6

    .line 391
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    .line 395
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/android/systemui/R$drawable;->ic_device_thermostat_24:I

    .line 397
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 398
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 399
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->high_temp_title:I

    .line 400
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->high_temp_notif_message:I

    .line 401
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 402
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "PNW.clickedTempWarning"

    .line 403
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "PNW.dismissedTempWarning"

    .line 404
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v3, 0x1010543

    .line 405
    invoke-static {v1, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 408
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 409
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const/4 v1, 0x4

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "high_temp"

    invoke-virtual {p0, v3, v1, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public showInvalidChargerWarning()V
    .registers 2

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 561
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method public showLowBatteryWarning(ZZ)V
    .registers 5

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show low battery warning: level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] playSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI.Notification"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    const/4 p1, 0x1

    .line 538
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 540
    invoke-direct {p0, p2}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification(Z)V

    if-eqz p2, :cond_38

    .line 542
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showLowBatteryWarningToast()V

    :cond_38
    return-void
.end method

.method public showThermalShutdownWarning()V
    .registers 5

    .line 445
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/R$drawable;->ic_device_thermostat_24:I

    .line 447
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 448
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 449
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->thermal_shutdown_title:I

    .line 450
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->thermal_shutdown_message:I

    .line 451
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 452
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "PNW.clickedThermalShutdownWarning"

    .line 453
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "PNW.dismissedThermalShutdownWarning"

    .line 455
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 454
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v3, 0x1010543

    .line 456
    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 458
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 459
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 460
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "high_temp"

    const/16 v3, 0x27

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public showUsbHighTemperatureAlarm()V
    .registers 3

    .line 466
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$BgW0sVGH4tN6GoBK_M1noXhk8wA;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$BgW0sVGH4tN6GoBK_M1noXhk8wA;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public update(IIJ)V
    .registers 7

    .line 199
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    if-ltz p2, :cond_9

    const-wide/16 v0, 0x0

    .line 201
    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarningTriggerTimeMs:J

    goto :goto_13

    .line 202
    :cond_9
    iget p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-ge p2, p1, :cond_13

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 206
    :cond_13
    :goto_13
    iget p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-eq p1, p2, :cond_1b

    if-ge p2, p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->showAlertAgain:Z

    .line 208
    iput p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 209
    iput-wide p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    return-void
.end method

.method public updateLowBatteryWarning()V
    .registers 1

    .line 513
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method

.method public userSwitched()V
    .registers 1

    .line 576
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    return-void
.end method
