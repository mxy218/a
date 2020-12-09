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

    .line 2215
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2216
    new-instance v0, Lcom/android/server/am/ActivityManagerService;

    sget-object v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;->sAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2217
    return-void
.end method

.method public static startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    .line 2221
    sput-object p1, Lcom/android/server/am/ActivityManagerService$Lifecycle;->sAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2222
    const-class p1, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getService()Lcom/android/server/am/ActivityManagerService;
    .registers 2

    .line 2249
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 4

    .line 2232
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iput p1, v0, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    .line 2233
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_15

    .line 2234
    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p1}, Lcom/android/server/am/BatteryStatsService;->systemServicesReady()V

    .line 2235
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p1}, Lcom/android/server/am/ActiveServices;->systemServicesReady()V

    goto :goto_26

    .line 2236
    :cond_15
    const/16 v1, 0x226

    if-ne p1, v1, :cond_1d

    .line 2237
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_26

    .line 2238
    :cond_1d
    const/16 v1, 0x258

    if-ne p1, v1, :cond_26

    .line 2239
    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual {p1}, Lcom/android/server/PackageWatchdog;->onPackagesReady()V

    .line 2241
    :cond_26
    :goto_26
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3

    .line 2245
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BatteryStatsService;->onCleanupUser(I)V

    .line 2246
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 2227
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)V

    .line 2228
    return-void
.end method
