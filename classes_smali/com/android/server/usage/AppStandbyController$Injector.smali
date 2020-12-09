.class Lcom/android/server/usage/AppStandbyController$Injector;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBootPhase:I

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mLooper:Landroid/os/Looper;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3

    .line 1588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1589
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 1590
    iput-object p2, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mLooper:Landroid/os/Looper;

    .line 1591
    return-void
.end method


# virtual methods
.method currentTimeMillis()J
    .registers 3

    .line 1629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method elapsedRealtime()J
    .registers 3

    .line 1625
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getActiveNetworkScorer()Ljava/lang/String;
    .registers 3

    .line 1680
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "network_score"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 1682
    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAppIdleSettings()Ljava/lang/String;
    .registers 3

    .line 1691
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_idle_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getBootPhase()I
    .registers 2

    .line 1616
    iget v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    return v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 1594
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDataSystemDirectory()Ljava/io/File;
    .registers 2

    .line 1651
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getLooper()Landroid/os/Looper;
    .registers 2

    .line 1598
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method getRunningUserIds()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1667
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method isAppIdleEnabled()Z
    .registers 6

    .line 1633
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1635
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "app_standby_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    .line 1637
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "adaptive_battery_management_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2d

    move v1, v2

    goto :goto_2e

    :cond_2d
    move v1, v3

    .line 1639
    :goto_2e
    if-eqz v0, :cond_33

    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    move v2, v3

    :goto_34
    return v2
.end method

.method public isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z
    .registers 4

    .line 1687
    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method isCharging()Z
    .registers 3

    .line 1643
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v0

    return v0
.end method

.method isDefaultDisplayOn()Z
    .registers 4

    .line 1671
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1672
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    const/4 v1, 0x1

    .line 1671
    :cond_f
    return v1
.end method

.method public isDeviceIdleMode()Z
    .registers 2

    .line 1697
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    return v0
.end method

.method isPackageEphemeral(ILjava/lang/String;)Z
    .registers 4

    .line 1659
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method isPackageInstalled(Ljava/lang/String;II)Z
    .registers 5

    .line 1663
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1647
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method noteEvent(ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1655
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V

    .line 1656
    return-void
.end method

.method onBootPhase(I)V
    .registers 4

    .line 1602
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_40

    .line 1603
    nop

    .line 1604
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1603
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1605
    nop

    .line 1606
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1605
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1607
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1608
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1610
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 1612
    :cond_40
    iput p1, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    .line 1613
    return-void
.end method

.method registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .registers 4

    .line 1676
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1677
    return-void
.end method
