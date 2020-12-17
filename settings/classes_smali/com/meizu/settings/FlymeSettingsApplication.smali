.class public Lcom/meizu/settings/FlymeSettingsApplication;
.super Landroid/app/Application;
.source "FlymeSettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;
    }
.end annotation


# instance fields
.field private mActivityCount:I

.field private mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

.field private mHandler:Landroid/os/Handler;

.field private mPowerSaveObserver:Landroid/database/ContentObserver;

.field private mThemeChanged:Z

.field private mThemeChangedListener:Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 46
    new-instance v0, Lcom/meizu/settings/FlymeSettingsApplication$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/FlymeSettingsApplication$1;-><init>(Lcom/meizu/settings/FlymeSettingsApplication;)V

    iput-object v0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/meizu/settings/FlymeSettingsApplication$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/FlymeSettingsApplication$2;-><init>(Lcom/meizu/settings/FlymeSettingsApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mPowerSaveObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/FlymeSettingsApplication;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsApplication;->maybeExit()V

    return-void
.end method

.method static synthetic access$108(Lcom/meizu/settings/FlymeSettingsApplication;)I
    .registers 3

    .line 36
    iget v0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mActivityCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mActivityCount:I

    return v0
.end method

.method static synthetic access$110(Lcom/meizu/settings/FlymeSettingsApplication;)I
    .registers 3

    .line 36
    iget v0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mActivityCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mActivityCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/settings/FlymeSettingsApplication;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsApplication;->checkIsPasswordNeedEnable()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/FlymeSettingsApplication;)Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mThemeChangedListener:Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/FlymeSettingsApplication;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mThemeChanged:Z

    return p1
.end method

.method private checkIsPasswordNeedEnable()V
    .registers 2

    .line 198
    new-instance v0, Lcom/meizu/settings/FlymeSettingsApplication$6;

    invoke-direct {v0, p0}, Lcom/meizu/settings/FlymeSettingsApplication$6;-><init>(Lcom/meizu/settings/FlymeSettingsApplication;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createActivityLifecycleCallbacks()Landroid/app/Application$ActivityLifecycleCallbacks;
    .registers 2

    .line 143
    new-instance v0, Lcom/meizu/settings/FlymeSettingsApplication$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/FlymeSettingsApplication$4;-><init>(Lcom/meizu/settings/FlymeSettingsApplication;)V

    return-object v0
.end method

.method private hasAlarmFeatureOpened()Z
    .registers 6

    .line 133
    invoke-static {p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->isPowerOFFOpened(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    .line 134
    invoke-static {p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->isPowerOnOpened(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    .line 135
    :goto_12
    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    move v3, v1

    .line 137
    :goto_1c
    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->isScheduleOnExist(Landroid/content/Context;)Z

    move-result p0

    if-nez v0, :cond_26

    if-nez v3, :cond_26

    if-eqz p0, :cond_27

    :cond_26
    move v1, v2

    :cond_27
    return v1
.end method

.method private isActivityExisted()Z
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActivityCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mActivityCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeSettingsApplication"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget p0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mActivityCount:I

    if-lez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private maybeExit()V
    .registers 4

    .line 114
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsApplication;->isActivityExisted()Z

    move-result v0

    .line 115
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsApplication;->hasAlarmFeatureOpened()Z

    move-result v1

    const-string v2, "FlymeSettingsApplication"

    if-nez v0, :cond_18

    if-nez v1, :cond_18

    const-string p0, "do system exit."

    .line 117
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 118
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    goto :goto_28

    :cond_18
    const-string v0, "activity or alarm exit, do not exit"

    .line 120
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_28

    .line 122
    iget-object p0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_28
    :goto_28
    return-void
.end method

.method private registerDeviceProvisionedObserver()V
    .registers 5

    const-string v0, "device_provisioned"

    .line 184
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/meizu/settings/FlymeSettingsApplication$5;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3, v0}, Lcom/meizu/settings/FlymeSettingsApplication$5;-><init>(Lcom/meizu/settings/FlymeSettingsApplication;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerNetworkStateChangeReceiver()V
    .registers 3

    .line 240
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isCTA()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 243
    :cond_7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    new-instance v1, Lcom/meizu/settings/FlymeSettingsApplication$8;

    invoke-direct {v1, p0}, Lcom/meizu/settings/FlymeSettingsApplication$8;-><init>(Lcom/meizu/settings/FlymeSettingsApplication;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerThemeChangeReceiver()V
    .registers 3

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.meizu.theme.change"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/meizu/settings/FlymeSettingsApplication$7;

    invoke-direct {v1, p0}, Lcom/meizu/settings/FlymeSettingsApplication$7;-><init>(Lcom/meizu/settings/FlymeSettingsApplication;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public isThemeChanged()Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mThemeChanged:Z

    return p0
.end method

.method public onCreate()V
    .registers 5

    .line 76
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "FlymeSettingsApplication"

    const-string/jumbo v1, "oncreate..."

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->init(Landroid/app/Application;)V

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.UPDATE_ACCESSIBILITY_PAGE_INDEX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    iget-object v0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mPowerSaveObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/meizu/settings/utils/MzUtils;->setOnPowerModeChangeListener(Landroid/content/Context;Landroid/database/ContentObserver;Z)V

    .line 86
    new-instance v0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    .line 87
    iget-object v0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    new-instance v2, Lcom/meizu/settings/FlymeSettingsApplication$3;

    invoke-direct {v2, p0}, Lcom/meizu/settings/FlymeSettingsApplication$3;-><init>(Lcom/meizu/settings/FlymeSettingsApplication;)V

    invoke-virtual {v0, v2}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->setOnEarphoneStateChangedListener(Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;)V

    .line 95
    iget-object v0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    if-eqz v0, :cond_3a

    .line 96
    invoke-virtual {v0}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->registerEarpodRecevier()V

    .line 99
    :cond_3a
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsApplication;->registerThemeChangeReceiver()V

    .line 100
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsApplication;->registerDeviceProvisionedObserver()V

    .line 101
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsApplication;->registerNetworkStateChangeReceiver()V

    .line 103
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsApplication;->createActivityLifecycleCallbacks()Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 105
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_5a

    .line 107
    iget-object v0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 110
    :cond_5a
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsApplication;->checkIsPasswordNeedEnable()V

    return-void
.end method

.method public resetThemeChangedState()V
    .registers 2

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mThemeChanged:Z

    return-void
.end method

.method public setOnThemeChangedListener(Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/meizu/settings/FlymeSettingsApplication;->mThemeChangedListener:Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;

    return-void
.end method
