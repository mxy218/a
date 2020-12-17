.class public Lcom/android/server/policy/gesture/GestureSwitchController;
.super Ljava/lang/Object;
.source "GestureSwitchController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GestureSwitchController"


# instance fields
.field private mAvoidPowerKeyMisoperationEnabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mIsCTSRunning:Z

.field private mNavigationMode:I

.field private mThreeFingersScreenshotEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mDeviceProvisioned:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mThreeFingersScreenshotEnabled:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mAvoidPowerKeyMisoperationEnabled:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mIsCTSRunning:Z

    .line 32
    iput-object p1, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    .line 35
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureSwitchController;->initializeSettings()V

    .line 36
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureSwitchController;->registerSettingObserver()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/gesture/GestureSwitchController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureSwitchController;

    .line 21
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureSwitchController;->handleDeviceProvisionedChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/gesture/GestureSwitchController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureSwitchController;

    .line 21
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureSwitchController;->handleThressFingersScreenshotChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/gesture/GestureSwitchController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureSwitchController;

    .line 21
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureSwitchController;->handlePowerMisoperationChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/gesture/GestureSwitchController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureSwitchController;

    .line 21
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureSwitchController;->handleCTSStateChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/gesture/GestureSwitchController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureSwitchController;

    .line 21
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureSwitchController;->handleNavigationModeChanged()V

    return-void
.end method

.method private handleCTSStateChanged()V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "mz_cts_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    iput-boolean v1, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mIsCTSRunning:Z

    .line 119
    return-void
.end method

.method private handleDeviceProvisionedChanged()V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    iput-boolean v1, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mDeviceProvisioned:Z

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeviceProvisionedChanged mDeviceProvisioned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mDeviceProvisioned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureSwitchController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method private handleNavigationModeChanged()V
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mz_current_navigation_mode"

    const/4 v2, 0x2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mNavigationMode:I

    .line 128
    return-void
.end method

.method private handlePowerMisoperationChanged()V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "avoid_power_key_misoperation"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    iput-boolean v1, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mAvoidPowerKeyMisoperationEnabled:Z

    .line 111
    return-void
.end method

.method private handleThressFingersScreenshotChanged()V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "three_fingers_screenshot_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    iput-boolean v1, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mThreeFingersScreenshotEnabled:Z

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleThressFingersScreenshotChanged mThreeFingersScreenshotEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mThreeFingersScreenshotEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureSwitchController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method private initializeSettings()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureSwitchController;->handleDeviceProvisionedChanged()V

    .line 41
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureSwitchController;->handleThressFingersScreenshotChanged()V

    .line 42
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureSwitchController;->handlePowerMisoperationChanged()V

    .line 43
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureSwitchController;->handleCTSStateChanged()V

    .line 44
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureSwitchController;->handleNavigationModeChanged()V

    .line 45
    return-void
.end method

.method private registerSettingObserver()V
    .registers 7

    .line 58
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/gesture/GestureSwitchController$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/gesture/GestureSwitchController$1;-><init>(Lcom/android/server/policy/gesture/GestureSwitchController;Landroid/os/Handler;)V

    .line 58
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 66
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    const-string/jumbo v1, "three_fingers_screenshot_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/gesture/GestureSwitchController$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/policy/gesture/GestureSwitchController$2;-><init>(Lcom/android/server/policy/gesture/GestureSwitchController;Landroid/os/Handler;)V

    .line 66
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 74
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    .line 75
    const-string v1, "avoid_power_key_misoperation"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/gesture/GestureSwitchController$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/policy/gesture/GestureSwitchController$3;-><init>(Lcom/android/server/policy/gesture/GestureSwitchController;Landroid/os/Handler;)V

    .line 74
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 82
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    .line 83
    const-string/jumbo v1, "mz_cts_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/gesture/GestureSwitchController$4;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/policy/gesture/GestureSwitchController$4;-><init>(Lcom/android/server/policy/gesture/GestureSwitchController;Landroid/os/Handler;)V

    .line 82
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    .line 91
    const-string/jumbo v1, "mz_current_navigation_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/gesture/GestureSwitchController$5;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/policy/gesture/GestureSwitchController$5;-><init>(Lcom/android/server/policy/gesture/GestureSwitchController;Landroid/os/Handler;)V

    .line 90
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 98
    return-void
.end method


# virtual methods
.method public isAvoidPowerKeyMisoperationEnabled()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mAvoidPowerKeyMisoperationEnabled:Z

    return v0
.end method

.method public isCTSRunning()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mIsCTSRunning:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mDeviceProvisioned:Z

    return v0
.end method

.method public isMBack()Z
    .registers 3

    .line 131
    iget v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mNavigationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isSystemGestureMode()Z
    .registers 4

    .line 135
    iget v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mNavigationMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public isThreeFingersScreenshotEnabled()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController;->mThreeFingersScreenshotEnabled:Z

    return v0
.end method
