.class public Lcom/meizu/settings/SettingsBootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsBootCompleteReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private createSchedulePowerReceiver()Landroid/content/BroadcastReceiver;
    .registers 1

    .line 75
    new-instance p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;

    invoke-direct {p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;-><init>()V

    return-object p0
.end method

.method private createSecurityReceiver()Landroid/content/BroadcastReceiver;
    .registers 1

    .line 79
    new-instance p0, Lcom/meizu/settings/security/FlymeSecurityReceiver;

    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecurityReceiver;-><init>()V

    return-object p0
.end method

.method private handleBootCompleted()V
    .registers 4

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/SettingsBootCompleteReceiver;->createSecurityReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    invoke-direct {p0}, Lcom/meizu/settings/SettingsBootCompleteReceiver;->createSchedulePowerReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 45
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_29

    .line 46
    :cond_24
    iget-object v0, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/language/FlymeRegion;->initDefaultCountValue(Landroid/content/Context;)V

    .line 50
    :cond_29
    invoke-direct {p0}, Lcom/meizu/settings/SettingsBootCompleteReceiver;->handleForceEnableFullScreenDrag()V

    .line 51
    invoke-direct {p0}, Lcom/meizu/settings/SettingsBootCompleteReceiver;->handleDeveloperOptionValue()V

    .line 53
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isCTA()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 54
    iget-object v0, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->refreshRAngleAppListFromNetwork()V

    .line 58
    :cond_3e
    iget-object v0, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "desktop_app_recommend"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    iget-object v0, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/meizu/settings/SettingsBootCompleteReceiver;->handleSecretModeData(Landroid/content/Context;)V

    return-void
.end method

.method private handleDeveloperOptionValue()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 98
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 99
    iget-object p0, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "mz_developer_option"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private handleForceEnableFullScreenDrag()V
    .registers 5

    .line 85
    iget-object p0, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "enable_full_screen_drag"

    .line 86
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_11

    move v0, v3

    :cond_11
    if-eqz v0, :cond_16

    .line 89
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_16
    return-void
.end method

.method private handleSecretModeData(Landroid/content/Context;)V
    .registers 6

    .line 103
    invoke-static {p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->getSecretsAppList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, ","

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "com.android.vending"

    .line 106
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 110
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    .line 113
    invoke-static {p1, v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->putSecretsAppList(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsBootCompleteReceiver, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "settings_boot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-object p1, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/meizu/settings/SettingsBootCompleteReceiver;->mIntent:Landroid/content/Intent;

    .line 71
    invoke-direct {p0}, Lcom/meizu/settings/SettingsBootCompleteReceiver;->handleBootCompleted()V

    return-void
.end method
