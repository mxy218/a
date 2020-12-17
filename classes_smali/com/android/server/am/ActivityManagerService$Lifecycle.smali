.class public final Lcom/android/server/am/ActivityManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# static fields
.field private static sAtm:Lcom/android/server/wm/ActivityTaskManagerService;


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 2324
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2327
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/flyme/server/am/BootEvent;->setEnabled(Z)V

    .line 2329
    new-instance v0, Lcom/android/server/am/ActivityManagerService;

    sget-object v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;->sAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2331
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/FlymeActivityManagerService;->main(Lcom/android/server/am/ActivityManagerService;)V

    .line 2333
    return-void
.end method

.method public static startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 3
    .param p0, "ssm"  # Lcom/android/server/SystemServiceManager;
    .param p1, "atm"  # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2337
    sput-object p1, Lcom/android/server/am/ActivityManagerService$Lifecycle;->sAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2338
    const-class v0, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getService()Lcom/android/server/am/ActivityManagerService;
    .registers 2

    .line 2365
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"  # I

    .line 2348
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iput p1, v0, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    .line 2349
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_15

    .line 2350
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->systemServicesReady()V

    .line 2351
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices;->systemServicesReady()V

    goto :goto_26

    .line 2352
    :cond_15
    const/16 v1, 0x226

    if-ne p1, v1, :cond_1d

    .line 2353
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1300(Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_26

    .line 2354
    :cond_1d
    const/16 v1, 0x258

    if-ne p1, v1, :cond_26

    .line 2355
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual {v0}, Lcom/android/server/PackageWatchdog;->onPackagesReady()V

    .line 2357
    :cond_26
    :goto_26
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 2361
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BatteryStatsService;->onCleanupUser(I)V

    .line 2362
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 2343
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1200(Lcom/android/server/am/ActivityManagerService;)V

    .line 2344
    return-void
.end method
