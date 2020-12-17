.class public Lcom/android/server/hips/server/FlymeHipsService;
.super Lmeizu/hips/IFlymeHipsService$Stub;
.source "FlymeHipsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hips/server/FlymeHipsService$AdbStausObserver;,
        Lcom/android/server/hips/server/FlymeHipsService$ShutdownReceiver;,
        Lcom/android/server/hips/server/FlymeHipsService$IntelligentBackgroundReceiver;,
        Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ADDED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field private static final ACTION_INTELLIGENT_BACKGROUND:Ljava/lang/String; = "com.meizu.safe.alphame.data_broadcast"

.field private static final ACTION_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_FULLY_REMOVED"

.field private static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field private static final GET_FLYME_HIPS_SERVICE:Ljava/lang/String; = "flyme.permission.GET_FLYME_HIPS_SERVICE"


# instance fields
.field mContentOb:Lcom/android/server/hips/server/FlymeHipsService$AdbStausObserver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lmeizu/hips/IFlymeHipsService$Stub;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/hips/server/FlymeHipsService;->registerInstallOrUninstallReceiver(Landroid/content/Context;)V

    .line 50
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/hips/server/FlymeHipsService;->registerIntelligentBackgroundReceiver(Landroid/content/Context;)V

    .line 51
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/hips/server/FlymeHipsService;->registerShutdownReceiver(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/android/server/hips/server/FlymeHipsService;->registerAdbStatusObserver()V

    .line 55
    invoke-virtual {p0}, Lcom/android/server/hips/server/FlymeHipsService;->updateAdbStatus()V

    .line 57
    return-void
.end method

.method private registerAdbStatusObserver()V
    .registers 5

    .line 383
    new-instance v0, Lcom/android/server/hips/server/FlymeHipsService$AdbStausObserver;

    invoke-direct {v0, p0}, Lcom/android/server/hips/server/FlymeHipsService$AdbStausObserver;-><init>(Lcom/android/server/hips/server/FlymeHipsService;)V

    iput-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContentOb:Lcom/android/server/hips/server/FlymeHipsService$AdbStausObserver;

    .line 384
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContentOb:Lcom/android/server/hips/server/FlymeHipsService$AdbStausObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 386
    return-void
.end method

.method private registerInstallOrUninstallReceiver(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;

    invoke-direct {v1}, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method private registerIntelligentBackgroundReceiver(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.meizu.safe.alphame.data_broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/android/server/hips/server/FlymeHipsService$IntelligentBackgroundReceiver;

    invoke-direct {v1}, Lcom/android/server/hips/server/FlymeHipsService$IntelligentBackgroundReceiver;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method private registerShutdownReceiver(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/android/server/hips/server/FlymeHipsService$ShutdownReceiver;

    invoke-direct {v1}, Lcom/android/server/hips/server/FlymeHipsService$ShutdownReceiver;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method


# virtual methods
.method public enterOrExitMP3Mode(Z)V
    .registers 2
    .param p1, "isEnter"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    invoke-static {p1}, Lcom/android/server/hips/intercept/Interception;->enterOrExitMP3Mode(Z)V

    .line 348
    return-void
.end method

.method public getAppInterceptionRule(Ljava/lang/String;)I
    .registers 3
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 373
    invoke-static {p1}, Lcom/android/server/hips/intercept/Interception;->getAppInterceptionRule(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAutoRunVersion()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/android/server/hips/intercept/AutoRunInterception;->getAutoRunVersion()I

    move-result v0

    return v0
.end method

.method public getAutoRunWhiteListTimeStamp()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/android/server/hips/intercept/AutoRunInterception;->getAutoRunWhiteListTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterceptVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->getInterceptionVersion()I

    move-result v0

    return v0
.end method

.method public getLinkWakenRuleTimeStamp()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->getInterceptionTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLinkWakenVersion()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->getInterceptionVersion()I

    move-result v0

    return v0
.end method

.method public getPasswordModeSwitchState()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/android/server/hips/security/PasswordMode;->getInstance()Lcom/android/server/hips/security/PasswordMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/security/PasswordMode;->getPasswordModeSwitchState()Z

    move-result v0

    return v0
.end method

.method public getSecurityMarginItems()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/security/SecurityMargin;->getSecurityMarginItems()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityMarginSwitchState()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/security/SecurityMargin;->getSecurityMarginSwitchState()Z

    move-result v0

    return v0
.end method

.method public getSecurityMarginTimeStamp()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/security/SecurityMargin;->getSecurityMarginTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecurityMarginVersion()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/security/SecurityMargin;->getSecurityMarginVersion()I

    move-result v0

    return v0
.end method

.method public getUsbInstallInfo()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getInstance()Lcom/android/server/hips/intercept/UsbInstallInterception;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getAllUsbInstallItems()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUsbInstallSwitchState()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getInstance()Lcom/android/server/hips/intercept/UsbInstallInterception;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getUsbInstallSwitchState()I

    move-result v0

    return v0
.end method

.method public isInPasswordMode()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-static {}, Lcom/android/server/hips/security/PasswordMode;->getInstance()Lcom/android/server/hips/security/PasswordMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/security/PasswordMode;->isInPasswordMode()Z

    move-result v0

    return v0
.end method

.method public isInSecurityMargin()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/android/server/hips/security/SecurityMargin;->isInSecurityMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSecurityKBSwitchOn()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-static {}, Lcom/android/server/hips/security/PasswordMode;->getInstance()Lcom/android/server/hips/security/PasswordMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/security/PasswordMode;->isSecurityKBSwitchOn()Z

    move-result v0

    return v0
.end method

.method public isStopUsbInstall(Ljava/lang/String;)I
    .registers 5
    .param p1, "apkPath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_10

    .line 184
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_10
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/hips/server/UsbInstallManager;->getInstance(Landroid/content/Context;)Lcom/android/server/hips/server/UsbInstallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hips/server/UsbInstallManager;->isStopInstall(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAutoRunWhiteList(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 336
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hips/intercept/AutoRunInterception;->setAutoRunWhiteList(Ljava/util/ArrayList;Z)I

    move-result v1

    return v1
.end method

.method public setAutoRunWhiteListTimeStamp(J)V
    .registers 6
    .param p1, "timeStamp"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {p1, p2}, Lcom/android/server/hips/intercept/AutoRunInterception;->setAutoRunWhiteListTimeStamp(J)V

    .line 329
    return-void
.end method

.method public setLinkWakenRule(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 240
    const/4 v1, 0x0

    return v1
.end method

.method public setLinkWakenRuleTimeStamp(J)V
    .registers 6
    .param p1, "timeStamp"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {p1, p2}, Lcom/android/server/hips/intercept/Interception;->setInterceptionTimeStamp(J)V

    .line 227
    return-void
.end method

.method public setPasswordModeSwitchState(Z)V
    .registers 5
    .param p1, "isOn"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/android/server/hips/security/PasswordMode;->getInstance()Lcom/android/server/hips/security/PasswordMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hips/security/PasswordMode;->setPasswordModeSwitchState(Z)V

    .line 257
    return-void
.end method

.method public setSecurityMarginList(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 309
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hips/security/SecurityMargin;->setSecurityMarginItem(Ljava/util/ArrayList;Z)I

    move-result v1

    return v1
.end method

.method public setSecurityMarginSwitchState(Z)V
    .registers 5
    .param p1, "isOn"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hips/security/SecurityMargin;->setSecurityMarginSwitchState(Z)V

    .line 277
    return-void
.end method

.method public setSecurityMarginTimeStamp(J)V
    .registers 6
    .param p1, "timeStamp"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hips/security/SecurityMargin;->setSecurityMarginTimeStamp(J)V

    .line 296
    return-void
.end method

.method public setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "type"  # I
    .param p2, "pkgName"  # Ljava/lang/String;
    .param p3, "apkName"  # Ljava/lang/String;
    .param p4, "mode"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getInstance()Lcom/android/server/hips/intercept/UsbInstallInterception;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V

    .line 208
    return-void
.end method

.method public setUsbInstallSwitchState(Z)V
    .registers 5
    .param p1, "isOn"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getInstance()Lcom/android/server/hips/intercept/UsbInstallInterception;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hips/intercept/UsbInstallInterception;->setUsbInstallSwitchState(Z)V

    .line 194
    return-void
.end method

.method public setWhiteListForSleep(Ljava/util/List;II)V
    .registers 7
    .param p2, "time"  # I
    .param p3, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    const-string v1, "flyme.permission.GET_FLYME_HIPS_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public updateAdbStatus()V
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 378
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 379
    .local v1, "adbStatus":I
    invoke-static {v1}, Lcom/android/server/hips/intercept/Interception;->updateAdbStatus(I)V

    .line 380
    return-void
.end method

.method public updateAirInterceptionRule(Ljava/lang/String;)V
    .registers 2
    .param p1, "allRules"  # Ljava/lang/String;

    .line 363
    invoke-static {p1}, Lcom/android/server/hips/intercept/Interception;->updateAirInterceptionRule(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public updateAirInterceptionRules()V
    .registers 1

    .line 358
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->updateAirInterceptionRules()V

    .line 359
    return-void
.end method

.method public writeAppInterceptionRule(Ljava/lang/String;I)V
    .registers 3
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "perm"  # I

    .line 368
    invoke-static {p1, p2}, Lcom/android/server/hips/intercept/Interception;->writeAppInterceptionRule(Ljava/lang/String;I)V

    .line 369
    return-void
.end method
