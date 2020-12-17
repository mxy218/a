.class public Lcom/flyme/systemui/drivemode/DriveMode;
.super Ljava/lang/Object;
.source "DriveMode.java"


# static fields
.field private static mPreferences:Landroid/content/SharedPreferences;

.field public static modeOn:Z

.field private static sInstance:Lcom/flyme/systemui/drivemode/DriveMode;


# instance fields
.field private mConfig:Lcom/flyme/systemui/drivemode/DriveModeConfig;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/flyme/systemui/drivemode/DriveModeConfig;->getInstance()Lcom/flyme/systemui/drivemode/DriveModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/drivemode/DriveMode;->mConfig:Lcom/flyme/systemui/drivemode/DriveModeConfig;

    .line 34
    iput-object p1, p0, Lcom/flyme/systemui/drivemode/DriveMode;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "drive_mode"

    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/flyme/systemui/drivemode/DriveMode;->mPreferences:Landroid/content/SharedPreferences;

    .line 37
    sget-object v1, Lcom/flyme/systemui/drivemode/DriveMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "drive_mode_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3c

    .line 38
    sget-object v0, Lcom/flyme/systemui/drivemode/DriveMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    invoke-direct {p0}, Lcom/flyme/systemui/drivemode/DriveMode;->restoreNavigation()V

    .line 42
    iget-object v0, p0, Lcom/flyme/systemui/drivemode/DriveMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_drive_mode_navigationbar_filter_list"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    :cond_3c
    iget-object v0, p0, Lcom/flyme/systemui/drivemode/DriveMode;->mConfig:Lcom/flyme/systemui/drivemode/DriveModeConfig;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/drivemode/DriveModeConfig;->init(Landroid/content/Context;)V

    .line 47
    sget-object p1, Lcom/flyme/systemui/drivemode/DriveMode;->sInstance:Lcom/flyme/systemui/drivemode/DriveMode;

    if-eqz p1, :cond_46

    return-void

    .line 51
    :cond_46
    sput-object p0, Lcom/flyme/systemui/drivemode/DriveMode;->sInstance:Lcom/flyme/systemui/drivemode/DriveMode;

    return-void
.end method

.method public static isDriveModeNotification(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3

    .line 57
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.flyme.systemuiex"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static onTileLongClick()V
    .registers 4

    .line 77
    sget-object v0, Lcom/flyme/systemui/drivemode/DriveMode;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "drivemode_has_open"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 78
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.flyme.systemuitools"

    const-string v3, "com.flyme.systemuitools.drivemode.settings.DriveModeSettingsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v2, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_2b

    .line 82
    :cond_24
    sget-object v0, Lcom/flyme/systemui/drivemode/DriveMode;->sInstance:Lcom/flyme/systemui/drivemode/DriveMode;

    if-eqz v0, :cond_2b

    .line 83
    invoke-virtual {v0}, Lcom/flyme/systemui/drivemode/DriveMode;->onTileClick()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private restoreNavigation()V
    .registers 5

    .line 109
    sget-object v0, Lcom/flyme/systemui/drivemode/DriveMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SHOW_NAVIGATION_BAR"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "DriveMode"

    const-string v2, "restoreNavigation"

    .line 110
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/flyme/systemui/drivemode/DriveMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 112
    sget-object v0, Lcom/flyme/systemui/drivemode/DriveMode;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    .line 113
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "mz_show_navigation_bar"

    .line 112
    invoke-static {p0, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    sget-object v0, Lcom/flyme/systemui/drivemode/DriveMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "MZ_USE_FLYME_NAVIGATION_BAR"

    .line 115
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "mz_use_flyme_navigation_bar"

    .line 114
    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    sget-object p0, Lcom/flyme/systemui/drivemode/DriveMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_41
    return-void
.end method

.method public static shouldInterruptShowLock()Z
    .registers 2

    .line 73
    sget-boolean v0, Lcom/flyme/systemui/drivemode/DriveMode;->modeOn:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/flyme/systemui/drivemode/DriveMode;->sInstance:Lcom/flyme/systemui/drivemode/DriveMode;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/flyme/systemui/drivemode/DriveMode;->mConfig:Lcom/flyme/systemui/drivemode/DriveModeConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/drivemode/DriveModeConfig;->getConfig(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method


# virtual methods
.method public onStart()V
    .registers 4

    const/4 p0, 0x1

    .line 89
    sput-boolean p0, Lcom/flyme/systemui/drivemode/DriveMode;->modeOn:Z

    .line 90
    sget-object v0, Lcom/flyme/systemui/drivemode/DriveMode;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "drivemode_has_open"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 91
    sget-object v0, Lcom/flyme/systemui/drivemode/DriveMode;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1b
    return-void
.end method

.method public onStop()V
    .registers 1

    const/4 p0, 0x0

    .line 96
    sput-boolean p0, Lcom/flyme/systemui/drivemode/DriveMode;->modeOn:Z

    return-void
.end method

.method public onTileClick()V
    .registers 3

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "flyme.drivemode.ACTION_DRIVEMODE_TILE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/flyme/systemui/drivemode/DriveMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
