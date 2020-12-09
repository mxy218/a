.class final Lcom/android/server/am/ServiceRecord;
.super Landroid/os/Binder;
.source "ServiceRecord.java"

# interfaces
.implements Landroid/content/ComponentName$WithComponentName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ServiceRecord$StartItem;
    }
.end annotation


# static fields
.field static final MAX_DELIVERY_COUNT:I = 0x3

.field static final MAX_DONE_EXECUTING_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final ams:Lcom/android/server/am/ActivityManagerService;

.field app:Lcom/android/server/am/ProcessRecord;

.field appInfo:Landroid/content/pm/ApplicationInfo;

.field final bindings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/IntentBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field callStart:Z

.field private final connections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field crashCount:I

.field final createRealTime:J

.field createdFromFg:Z

.field final definingPackageName:Ljava/lang/String;

.field final definingUid:I

.field delayed:Z

.field delayedStop:Z

.field final deliveredStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;"
        }
    .end annotation
.end field

.field destroyTime:J

.field destroying:Z

.field executeFg:Z

.field executeNesting:I

.field executingStart:J

.field final exported:Z

.field fgRequired:Z

.field fgWaiting:Z

.field foregroundId:I

.field foregroundNoti:Landroid/app/Notification;

.field foregroundServiceType:I

.field final instanceName:Landroid/content/ComponentName;

.field final intent:Landroid/content/Intent$FilterComparison;

.field isForeground:Z

.field isolatedProc:Lcom/android/server/am/ProcessRecord;

.field lastActivity:J

.field private lastStartId:I

.field private mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

.field private mHasBindingWhitelistingBgActivityStarts:Z

.field private mHasStartedWhitelistingBgActivityStarts:Z

.field private mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

.field final name:Landroid/content/ComponentName;

.field nextRestartTime:J

.field final packageName:Ljava/lang/String;

.field pendingConnectionGroup:I

.field pendingConnectionImportance:I

.field final pendingStarts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;"
        }
    .end annotation
.end field

.field final permission:Ljava/lang/String;

.field final processName:Ljava/lang/String;

.field restartCount:I

.field restartDelay:J

.field restartTime:J

.field restartTracker:Lcom/android/internal/app/procstats/ServiceState;

.field final restarter:Ljava/lang/Runnable;

.field final serviceInfo:Landroid/content/pm/ServiceInfo;

.field final shortInstanceName:Ljava/lang/String;

.field startRequested:Z

.field startingBgTimeout:J

.field final stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

.field stopIfKilled:Z

.field stringName:Ljava/lang/String;

.field totalRestartCount:I

.field tracker:Lcom/android/internal/app/procstats/ServiceState;

.field final userId:I

.field whitelistManager:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    .registers 12

    .line 483
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 484
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 485
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 486
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 487
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 488
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 489
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    .line 490
    iput p6, p0, Lcom/android/server/am/ServiceRecord;->definingUid:I

    .line 491
    iput-object p7, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 492
    iput-object p8, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 493
    iget-object p1, p8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 494
    iget-object p1, p8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 495
    iget p1, p8, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_62

    .line 496
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    goto :goto_66

    .line 498
    :cond_62
    iget-object p1, p8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 500
    :goto_66
    iget-object p1, p8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 501
    iget-boolean p1, p8, Landroid/content/pm/ServiceInfo;->exported:Z

    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->exported:Z

    .line 502
    iput-object p10, p0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 505
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 506
    iput-boolean p9, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 507
    return-void
.end method

.method private setHasStartedWhitelistingBgActivityStarts(Z)V
    .registers 3

    .line 689
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-eq v0, p1, :cond_9

    .line 690
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    .line 691
    invoke-direct {p0}, Lcom/android/server/am/ServiceRecord;->updateParentProcessBgActivityStartsWhitelistingToken()V

    .line 693
    :cond_9
    return-void
.end method

.method private updateParentProcessBgActivityStartsWhitelistingToken()V
    .registers 3

    .line 705
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_5

    .line 706
    return-void

    .line 708
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    if-eqz v1, :cond_e

    goto :goto_12

    .line 713
    :cond_e
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    goto :goto_17

    .line 711
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 715
    :goto_17
    return-void
.end method


# virtual methods
.method addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V
    .registers 5

    .line 605
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 606
    if-nez v0, :cond_14

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_14
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_20

    .line 614
    iget p2, p2, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->addBoundClientUid(I)V

    .line 616
    :cond_20
    return-void
.end method

.method public cancelNotification()V
    .registers 5

    .line 911
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 912
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 913
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ServiceRecord$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/am/ServiceRecord$2;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 928
    return-void
.end method

.method public clearDeliveredStartsLocked()V
    .registers 3

    .line 956
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 957
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 956
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 959
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 960
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "intent={"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 366
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "processName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v0, :cond_4a

    .line 369
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "permission="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    :cond_4a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 373
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_92

    .line 374
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "baseDir="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 376
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resDir="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    :cond_83
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "dataDir="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    :cond_92
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_b0

    .line 382
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isolatedProc="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 384
    :cond_b0
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_c2

    .line 385
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "whitelistManager="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 387
    :cond_c2
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    if-eqz v0, :cond_d3

    .line 388
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasBindingWhitelistingBgActivityStarts="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 391
    :cond_d3
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-eqz v0, :cond_e4

    .line 392
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasStartedWhitelistingBgActivityStarts="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 395
    :cond_e4
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_f5

    .line 396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "delayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 398
    :cond_f5
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v0, :cond_fd

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_11e

    .line 399
    :cond_fd
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isForeground="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 400
    const-string v0, " foregroundId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 401
    const-string v0, " foregroundNoti="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 403
    :cond_11e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "createTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-wide v5, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    invoke-static {v5, v6, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 405
    const-string v0, " startingBgTimeout="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 407
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 410
    const-string v0, " restartTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 412
    const-string v0, " createdFromFg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 413
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    if-eqz v0, :cond_174

    .line 414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " pendingConnectionGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 416
    const-string v0, " Importance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 418
    :cond_174
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v0, :cond_180

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v0, :cond_180

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v0, :cond_1b6

    .line 419
    :cond_180
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startRequested="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 420
    const-string v0, " delayedStop="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 421
    const-string v0, " stopIfKilled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 422
    const-string v0, " callStart="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 423
    const-string v0, " lastStartId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 425
    :cond_1b6
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v0, :cond_1de

    .line 426
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "executeNesting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 427
    const-string v0, " executeFg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 428
    const-string v0, " executingStart="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 430
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 432
    :cond_1de
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1ea

    iget-wide v5, p0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_204

    .line 433
    :cond_1ea
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "destroying="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 434
    const-string v0, " destroyTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget-wide v5, p0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    invoke-static {v5, v6, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 436
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 438
    :cond_204
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v0, :cond_218

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v0, :cond_218

    iget-wide v5, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_218

    iget-wide v5, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_244

    .line 440
    :cond_218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "restartCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 441
    const-string v0, " restartDelay="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 443
    const-string v0, " nextRestartTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 445
    const-string v0, " crashCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 447
    :cond_244
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25c

    .line 448
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Delivered Starts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 451
    :cond_25c
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_276

    .line 452
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Starts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 455
    :cond_276
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const-string v3, "  "

    if-lez v0, :cond_2d3

    .line 456
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Bindings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    move v0, v1

    :goto_289
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_2d3

    .line 458
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/IntentBindRecord;

    .line 459
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "* IntentBindRecord{"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 460
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v4}, Lcom/android/server/am/IntentBindRecord;->collectFlags()I

    move-result v5

    and-int/2addr v5, v2

    if-eqz v5, :cond_2b8

    .line 462
    const-string v5, " CREATE"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 464
    :cond_2b8
    const-string/jumbo v5, "}:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_289

    .line 468
    :cond_2d3
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_30e

    .line 469
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "All Connections:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    move v0, v1

    :goto_2e4
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_30e

    .line 471
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 472
    move v4, v1

    :goto_2f5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_30b

    .line 473
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 472
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f5

    .line 470
    :cond_30b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e4

    .line 477
    :cond_30e
    return-void
.end method

.method dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ServiceRecord$StartItem;",
            ">;J)V"
        }
    .end annotation

    .line 224
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 225
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_8d

    .line 226
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 227
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 228
    const-string v3, " id="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 229
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-eqz v3, :cond_32

    .line 230
    const-string v3, " dur="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget-wide v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    invoke-static {v3, v4, p4, p5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 233
    :cond_32
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-eqz v3, :cond_40

    .line 234
    const-string v3, " dc="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 236
    :cond_40
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-eqz v3, :cond_4e

    .line 237
    const-string v3, " dxc="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 239
    :cond_4e
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  intent="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_69

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6f

    .line 242
    :cond_69
    const-string/jumbo v3, "null"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    :goto_6f
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v3, :cond_80

    .line 244
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  neededGrants="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 247
    :cond_80
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v3, :cond_89

    .line 248
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 225
    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 251
    :cond_8d
    return-void
.end method

.method public findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;
    .registers 8

    .line 768
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 769
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_24

    .line 770
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 771
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    if-ne v3, p1, :cond_21

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    if-ne v3, p2, :cond_21

    .line 772
    if-eqz p3, :cond_20

    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 773
    :cond_20
    return-object v2

    .line 769
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 777
    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method public forceClearTracker()V
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_b

    .line 524
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 527
    :cond_b
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 975
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0
.end method

.method getConnections()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getLastStartId()I
    .registers 2

    .line 781
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return v0
.end method

.method public getTracker()Lcom/android/internal/app/procstats/ServiceState;
    .registers 9

    .line 510
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_5

    .line 511
    return-object v0

    .line 513
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_36

    .line 514
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 517
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/procstats/ServiceState;->applyNewOwner(Ljava/lang/Object;)V

    .line 519
    :cond_36
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    return-object v0
.end method

.method public hasAutoCreateConnections()Z
    .registers 6

    .line 737
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_2c

    .line 738
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 739
    nop

    :goto_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_29

    .line 740
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_26

    .line 741
    return v1

    .line 739
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 737
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 745
    :cond_2c
    return v2
.end method

.method public synthetic lambda$whitelistBgActivityStartsOnServiceStart$0$ServiceRecord()V
    .registers 4

    .line 665
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 666
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v2, :cond_11

    .line 670
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/am/ServiceRecord;->setHasStartedWhitelistingBgActivityStarts(Z)V

    goto :goto_1a

    .line 671
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1a

    .line 674
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    .line 675
    invoke-virtual {v1, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 677
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    .line 678
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 679
    return-void

    .line 678
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public makeNextStartId()I
    .registers 3

    .line 785
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 786
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-ge v0, v1, :cond_c

    .line 787
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 789
    :cond_c
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return v0
.end method

.method public makeRestarting(IJ)V
    .registers 12

    .line 530
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_35

    .line 531
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_30

    .line 532
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 537
    :cond_30
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_35

    .line 538
    return-void

    .line 541
    :cond_35
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 542
    return-void
.end method

.method public postNotification()V
    .registers 11

    .line 793
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 794
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 795
    iget v7, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v7, :cond_24

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v3, :cond_24

    .line 798
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 799
    nop

    .line 800
    nop

    .line 801
    nop

    .line 802
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v9, Lcom/android/server/am/ServiceRecord$1;

    move-object v1, v9

    move-object v2, p0

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ServiceRecord$1;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;Ljava/lang/String;IIILcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 906
    :cond_24
    return-void
.end method

.method removeConnection(Landroid/os/IBinder;)V
    .registers 3

    .line 619
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_c

    .line 622
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 624
    :cond_c
    return-void
.end method

.method public resetRestartCounter()V
    .registers 3

    .line 762
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 763
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 764
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 765
    return-void
.end method

.method public retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;
    .registers 5

    .line 719
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 720
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/IntentBindRecord;

    .line 721
    if-nez p1, :cond_19

    .line 722
    new-instance p1, Lcom/android/server/am/IntentBindRecord;

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/IntentBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V

    .line 723
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_19
    iget-object v0, p1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBindRecord;

    .line 726
    if-eqz v0, :cond_24

    .line 727
    return-object v0

    .line 729
    :cond_24
    new-instance v0, Lcom/android/server/am/AppBindRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/AppBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 730
    iget-object p1, p1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    return-object v0
.end method

.method setHasBindingWhitelistingBgActivityStarts(Z)V
    .registers 3

    .line 644
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    if-eq v0, p1, :cond_9

    .line 645
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    .line 646
    invoke-direct {p0}, Lcom/android/server/am/ServiceRecord;->updateParentProcessBgActivityStartsWhitelistingToken()V

    .line 648
    :cond_9
    return-void
.end method

.method public setProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 7

    .line 545
    if-eqz p1, :cond_2e

    .line 549
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_15

    .line 550
    if-eq v0, p1, :cond_15

    .line 551
    nop

    .line 552
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 557
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-eqz v0, :cond_1b

    .line 558
    move-object v0, p1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    .line 559
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    if-eqz v0, :cond_27

    goto :goto_2b

    .line 563
    :cond_27
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    goto :goto_2e

    .line 561
    :cond_2b
    :goto_2b
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 566
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_40

    if-eq v0, p1, :cond_40

    .line 570
    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-nez v1, :cond_3b

    .line 571
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 573
    :cond_3b
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 575
    :cond_40
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 576
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    const/4 v1, 0x0

    if-lez v0, :cond_55

    if-eqz p1, :cond_55

    .line 577
    iput-object p0, p1, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    .line 578
    iput v0, p1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 579
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 580
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    iput v1, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 583
    :cond_55
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5d
    if-ltz v0, :cond_83

    .line 584
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 585
    move v3, v1

    :goto_68
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_80

    .line 586
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 587
    if-eqz p1, :cond_7a

    .line 588
    invoke-virtual {v4}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    goto :goto_7d

    .line 590
    :cond_7a
    invoke-virtual {v4}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 585
    :goto_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 583
    :cond_80
    add-int/lit8 v0, v0, -0x1

    goto :goto_5d

    .line 595
    :cond_83
    if-eqz p1, :cond_88

    .line 596
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 598
    :cond_88
    return-void
.end method

.method public stripForegroundServiceFlagFromNotification()V
    .registers 6

    .line 931
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-nez v0, :cond_5

    .line 932
    return-void

    .line 935
    :cond_5
    nop

    .line 936
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 937
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 941
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ServiceRecord$3;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/server/am/ServiceRecord$3;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 953
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 963
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 964
    return-object v0

    .line 966
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 967
    const-string v1, "ServiceRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 970
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method updateHasBindingWhitelistingBgActivityStarts()V
    .registers 9

    .line 627
    nop

    .line 628
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ltz v0, :cond_35

    .line 629
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 630
    move v5, v2

    :goto_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2f

    .line 631
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    iget v6, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v7, 0x100000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2c

    .line 632
    nop

    .line 633
    move v3, v1

    goto :goto_2f

    .line 630
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 636
    :cond_2f
    :goto_2f
    if-eqz v3, :cond_32

    .line 637
    goto :goto_35

    .line 628
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 640
    :cond_35
    :goto_35
    invoke-virtual {p0, v3}, Lcom/android/server/am/ServiceRecord;->setHasBindingWhitelistingBgActivityStarts(Z)V

    .line 641
    return-void
.end method

.method public updateWhitelistManager()V
    .registers 8

    .line 749
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    .line 750
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_32

    .line 751
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 752
    move v4, v0

    :goto_16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2f

    .line 753
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget v5, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2c

    .line 754
    iput-boolean v2, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    .line 755
    return-void

    .line 752
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 750
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 759
    :cond_32
    return-void
.end method

.method whitelistBgActivityStartsOnServiceStart()V
    .registers 5

    .line 657
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ServiceRecord;->setHasStartedWhitelistingBgActivityStarts(Z)V

    .line 658
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_a

    .line 659
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    .line 663
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    if-nez v0, :cond_15

    .line 664
    new-instance v0, Lcom/android/server/am/-$$Lambda$ServiceRecord$LibDrdWU9t_vgStZ6swd0FNzHXc;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$ServiceRecord$LibDrdWU9t_vgStZ6swd0FNzHXc;-><init>(Lcom/android/server/am/ServiceRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    .line 683
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 684
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 686
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 21

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 255
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-wide v12, 0x10900000001L

    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 256
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v14, 0x0

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    move v1, v14

    :goto_1a
    const-wide v7, 0x10800000002L

    invoke-virtual {v9, v7, v8, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 257
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_30

    .line 258
    const-wide v2, 0x10500000003L

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 260
    :cond_30
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v1, :cond_4a

    .line 261
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide v3, 0x10b00000004L

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v2, p1

    move v7, v15

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 264
    :cond_4a
    const-wide v1, 0x10900000005L

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 265
    const-wide v1, 0x10900000006L

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 266
    const-wide v1, 0x10900000007L

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 270
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_ad

    .line 271
    const-wide v1, 0x10b00000008L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 272
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 273
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 274
    const-wide v3, 0x10900000002L

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 276
    :cond_9e
    const-wide v3, 0x10900000003L

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 277
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 279
    :cond_ad
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_b9

    .line 280
    const-wide v2, 0x10b00000009L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/ProcessRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 282
    :cond_b9
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c5

    .line 283
    const-wide v2, 0x10b0000000aL

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/ProcessRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 285
    :cond_c5
    const-wide v1, 0x1080000000bL

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 286
    const-wide v1, 0x1080000000cL

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 287
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const-wide v12, 0x10500000001L

    if-nez v1, :cond_e6

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v1, :cond_101

    .line 288
    :cond_e6
    const-wide v1, 0x10b0000000dL

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 289
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {v9, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 290
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, v9, v4, v5}, Landroid/app/Notification;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 291
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 293
    :cond_101
    const-wide v2, 0x10b0000000eL

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 294
    const-wide v2, 0x10b0000000fL

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    move-wide v6, v15

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 296
    const-wide v2, 0x10b00000010L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 297
    const-wide v2, 0x10b00000011L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 298
    const-wide v1, 0x10800000012L

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 300
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v1, :cond_149

    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v1, :cond_149

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v1, :cond_143

    goto :goto_149

    :cond_143
    const-wide v4, 0x10800000002L

    goto :goto_17d

    .line 301
    :cond_149
    :goto_149
    const-wide v1, 0x10b00000013L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 302
    const-wide v3, 0x10800000001L

    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 303
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    const-wide v4, 0x10800000002L

    invoke-virtual {v9, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 304
    const-wide v6, 0x10800000003L

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {v9, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 305
    const-wide v6, 0x10500000005L

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {v9, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 306
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 309
    :goto_17d
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v1, :cond_1a5

    .line 310
    const-wide v1, 0x10b00000014L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 311
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 312
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    invoke-virtual {v9, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 313
    const-wide v2, 0x10b00000003L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    move-object/from16 v1, p1

    move-wide v12, v6

    move-wide v6, v15

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 315
    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 317
    :cond_1a5
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v12, 0x0

    if-nez v1, :cond_1b1

    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v1, v1, v12

    if-eqz v1, :cond_1be

    .line 318
    :cond_1b1
    const-wide v2, 0x10b00000015L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    move-object/from16 v1, p1

    move-wide v6, v15

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 320
    :cond_1be
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v1, :cond_1d2

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v1, :cond_1d2

    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v1, v1, v12

    if-nez v1, :cond_1d2

    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    cmp-long v1, v1, v12

    if-eqz v1, :cond_209

    .line 321
    :cond_1d2
    const-wide v1, 0x10b00000016L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 322
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    const-wide v2, 0x10500000001L

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 323
    const-wide v2, 0x10b00000002L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-object/from16 v1, p1

    move-wide v6, v15

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 324
    const-wide v2, 0x10b00000003L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 326
    const-wide v1, 0x10500000004L

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 327
    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 330
    :cond_209
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_230

    .line 331
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 332
    move v8, v14

    :goto_218
    if-ge v8, v7, :cond_230

    .line 333
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000017L

    move-object/from16 v2, p1

    move-wide v5, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 332
    add-int/lit8 v8, v8, 0x1

    goto :goto_218

    .line 337
    :cond_230
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_257

    .line 338
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 339
    move v8, v14

    :goto_23f
    if-ge v8, v7, :cond_257

    .line 340
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000018L

    move-object/from16 v2, p1

    move-wide v5, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 339
    add-int/lit8 v8, v8, 0x1

    goto :goto_23f

    .line 343
    :cond_257
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_27b

    .line 344
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 345
    move v2, v14

    :goto_266
    if-ge v2, v1, :cond_27b

    .line 346
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    .line 347
    const-wide v4, 0x20b00000019L

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/server/am/IntentBindRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_266

    .line 350
    :cond_27b
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_2af

    .line 351
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 352
    move v2, v14

    :goto_28a
    if-ge v2, v1, :cond_2af

    .line 353
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 354
    move v4, v14

    :goto_295
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2ac

    .line 355
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    const-wide v6, 0x20b0000001aL

    invoke-virtual {v5, v9, v6, v7}, Lcom/android/server/am/ConnectionRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 354
    add-int/lit8 v4, v4, 0x1

    goto :goto_295

    .line 352
    :cond_2ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_28a

    .line 359
    :cond_2af
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 360
    return-void
.end method
