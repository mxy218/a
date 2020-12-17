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

.field private static final NOTIFICATION_TEMPLATE_BASE:I = 0x109009e

.field static final POST_NOTIFICATION:Z = true

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
    .registers 13
    .param p1, "ams"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "servStats"  # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .param p3, "name"  # Landroid/content/ComponentName;
    .param p4, "instanceName"  # Landroid/content/ComponentName;
    .param p5, "definingPackageName"  # Ljava/lang/String;
    .param p6, "definingUid"  # I
    .param p7, "intent"  # Landroid/content/Intent$FilterComparison;
    .param p8, "sInfo"  # Landroid/content/pm/ServiceInfo;
    .param p9, "callerIsFg"  # Z
    .param p10, "restarter"  # Ljava/lang/Runnable;

    .line 488
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 489
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 490
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 491
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 492
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 493
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 494
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    .line 495
    iput p6, p0, Lcom/android/server/am/ServiceRecord;->definingUid:I

    .line 496
    iput-object p7, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 497
    iput-object p8, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 498
    iget-object v0, p8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 499
    iget-object v0, p8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 500
    iget v0, p8, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_62

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    goto :goto_66

    .line 503
    :cond_62
    iget-object v0, p8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 505
    :goto_66
    iget-object v0, p8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 506
    iget-boolean v0, p8, Landroid/content/pm/ServiceInfo;->exported:Z

    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->exported:Z

    .line 507
    iput-object p10, p0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 509
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 510
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 511
    iput-boolean p9, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 512
    return-void
.end method

.method private setHasStartedWhitelistingBgActivityStarts(Z)V
    .registers 3
    .param p1, "newValue"  # Z

    .line 694
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-eq v0, p1, :cond_9

    .line 695
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    .line 696
    invoke-direct {p0}, Lcom/android/server/am/ServiceRecord;->updateParentProcessBgActivityStartsWhitelistingToken()V

    .line 698
    :cond_9
    return-void
.end method

.method private updateParentProcessBgActivityStartsWhitelistingToken()V
    .registers 3

    .line 710
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_5

    .line 711
    return-void

    .line 713
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    if-eqz v1, :cond_e

    goto :goto_12

    .line 718
    :cond_e
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    goto :goto_17

    .line 716
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 720
    :goto_17
    return-void
.end method


# virtual methods
.method addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V
    .registers 6
    .param p1, "binder"  # Landroid/os/IBinder;
    .param p2, "c"  # Lcom/android/server/am/ConnectionRecord;

    .line 610
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 611
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v0, :cond_15

    .line 612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 613
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_21

    .line 619
    iget v2, p2, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessRecord;->addBoundClientUid(I)V

    .line 621
    :cond_21
    return-void
.end method

.method public cancelNotification()V
    .registers 5

    .line 938
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 939
    .local v0, "localPackageName":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 940
    .local v1, "localForegroundId":I
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ServiceRecord$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/am/ServiceRecord$2;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 955
    return-void
.end method

.method public clearDeliveredStartsLocked()V
    .registers 3

    .line 983
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 984
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 983
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 986
    .end local v0  # "i":I
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 987
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 14
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 368
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "intent={"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6, v1, v6}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 371
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "processName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 374
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "permission="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    :cond_4b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 377
    .local v7, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 378
    .local v9, "nowReal":J
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_93

    .line 379
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "baseDir="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 381
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resDir="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    :cond_84
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "dataDir="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    :cond_93
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_b2

    .line 387
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isolatedProc="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 389
    :cond_b2
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_c4

    .line 390
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "whitelistManager="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 392
    :cond_c4
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    if-eqz v0, :cond_d5

    .line 393
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasBindingWhitelistingBgActivityStarts="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 396
    :cond_d5
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-eqz v0, :cond_e6

    .line 397
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasStartedWhitelistingBgActivityStarts="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 400
    :cond_e6
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_f7

    .line 401
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "delayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 403
    :cond_f7
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v0, :cond_ff

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_121

    .line 404
    :cond_ff
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isForeground="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 405
    const-string v0, " foregroundId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 406
    const-string v0, " foregroundNoti="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 408
    :cond_121
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "createTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    invoke-static {v0, v1, v9, v10, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 410
    const-string v0, " startingBgTimeout="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    invoke-static {v0, v1, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 412
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 413
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-static {v0, v1, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 415
    const-string v0, " restartTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static {v0, v1, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 417
    const-string v0, " createdFromFg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 418
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    if-eqz v0, :cond_178

    .line 419
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " pendingConnectionGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 421
    const-string v0, " Importance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 423
    :cond_178
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v0, :cond_184

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v0, :cond_1ba

    .line 424
    :cond_184
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startRequested="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 425
    const-string v0, " delayedStop="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 426
    const-string v0, " stopIfKilled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 427
    const-string v0, " callStart="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 428
    const-string v0, " lastStartId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 430
    :cond_1ba
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v0, :cond_1e2

    .line 431
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "executeNesting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 432
    const-string v0, " executeFg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 433
    const-string v0, " executingStart="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    invoke-static {v0, v1, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 435
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 437
    :cond_1e2
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1ee

    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_208

    .line 438
    :cond_1ee
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "destroying="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 439
    const-string v0, " destroyTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    invoke-static {v3, v4, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 441
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 443
    :cond_208
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v0, :cond_21c

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v0, :cond_21c

    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_21c

    iget-wide v3, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_248

    .line 445
    :cond_21c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "restartCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 446
    const-string v0, " restartDelay="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 447
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {v0, v1, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 448
    const-string v0, " nextRestartTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static {v0, v1, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 450
    const-string v0, " crashCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 452
    :cond_248
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_261

    .line 453
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Delivered Starts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 456
    :cond_261
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27b

    .line 457
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Starts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 460
    :cond_27b
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const-string v1, "  "

    if-lez v0, :cond_2d8

    .line 461
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Bindings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28e
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d8

    .line 463
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/IntentBindRecord;

    .line 464
    .local v2, "b":Lcom/android/server/am/IntentBindRecord;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "* IntentBindRecord{"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v2}, Lcom/android/server/am/IntentBindRecord;->collectFlags()I

    move-result v3

    and-int/2addr v3, v6

    if-eqz v3, :cond_2bd

    .line 467
    const-string v3, " CREATE"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 469
    :cond_2bd
    const-string/jumbo v3, "}:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 462
    .end local v2  # "b":Lcom/android/server/am/IntentBindRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_28e

    .line 473
    .end local v0  # "i":I
    :cond_2d8
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_313

    .line 474
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "All Connections:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    .local v0, "conni":I
    :goto_2e9
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_313

    .line 476
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 477
    .local v2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2fa
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_310

    .line 478
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 477
    add-int/lit8 v3, v3, 0x1

    goto :goto_2fa

    .line 475
    .end local v2  # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3  # "i":I
    :cond_310
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e9

    .line 482
    .end local v0  # "conni":I
    :cond_313
    return-void
.end method

.method dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p4, "now"  # J
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

    .line 229
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ServiceRecord$StartItem;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 230
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_8d

    .line 231
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 232
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 233
    const-string v3, " id="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 234
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-eqz v3, :cond_32

    .line 235
    const-string v3, " dur="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    iget-wide v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    invoke-static {v3, v4, p4, p5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 238
    :cond_32
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-eqz v3, :cond_40

    .line 239
    const-string v3, " dc="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 241
    :cond_40
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-eqz v3, :cond_4e

    .line 242
    const-string v3, " dxc="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 244
    :cond_4e
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  intent="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_69

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6f

    .line 247
    :cond_69
    const-string/jumbo v3, "null"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    :goto_6f
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v3, :cond_80

    .line 249
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  neededGrants="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 252
    :cond_80
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v3, :cond_89

    .line 253
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 230
    .end local v2  # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 256
    .end local v1  # "i":I
    :cond_8d
    return-void
.end method

.method public findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;
    .registers 8
    .param p1, "id"  # I
    .param p2, "taskRemoved"  # Z
    .param p3, "remove"  # Z

    .line 773
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 774
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_24

    .line 775
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 776
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    if-ne v3, p1, :cond_21

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    if-ne v3, p2, :cond_21

    .line 777
    if-eqz p3, :cond_20

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 778
    :cond_20
    return-object v2

    .line 774
    .end local v2  # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 782
    .end local v1  # "i":I
    :cond_24
    const/4 v1, 0x0

    return-object v1
.end method

.method public forceClearTracker()V
    .registers 3

    .line 528
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_b

    .line 529
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 532
    :cond_b
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 1002
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

    .line 606
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getLastStartId()I
    .registers 2

    .line 786
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return v0
.end method

.method public getTracker()Lcom/android/internal/app/procstats/ServiceState;
    .registers 9

    .line 515
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_5

    .line 516
    return-object v0

    .line 518
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_36

    .line 519
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

    .line 522
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/procstats/ServiceState;->applyNewOwner(Ljava/lang/Object;)V

    .line 524
    :cond_36
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    return-object v0
.end method

.method public hasAutoCreateConnections()Z
    .registers 6

    .line 742
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "conni":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 743
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 744
    .local v2, "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_28

    .line 745
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_25

    .line 746
    return v1

    .line 744
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 742
    .end local v2  # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3  # "i":I
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 750
    .end local v0  # "conni":I
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$whitelistBgActivityStartsOnServiceStart$0$ServiceRecord()V
    .registers 4

    .line 670
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 671
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v2, :cond_11

    .line 675
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/am/ServiceRecord;->setHasStartedWhitelistingBgActivityStarts(Z)V

    goto :goto_1a

    .line 676
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1a

    .line 679
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    .line 680
    invoke-virtual {v1, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 682
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    .line 683
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 684
    return-void

    .line 683
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

    .line 790
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 791
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-ge v0, v1, :cond_c

    .line 792
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 794
    :cond_c
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return v0
.end method

.method public makeRestarting(IJ)V
    .registers 12
    .param p1, "memFactor"  # I
    .param p2, "now"  # J

    .line 535
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_35

    .line 536
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_30

    .line 537
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

    .line 542
    :cond_30
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_35

    .line 543
    return-void

    .line 546
    :cond_35
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 547
    return-void
.end method

.method public postNotification()V
    .registers 16

    .line 804
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 805
    .local v0, "appUid":I
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 806
    .local v9, "appPid":I
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v1, :cond_2a

    .line 809
    iget-object v10, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 810
    .local v10, "localPackageName":Ljava/lang/String;
    iget v11, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 811
    .local v11, "localForegroundId":I
    iget-object v12, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 812
    .local v12, "_foregroundNoti":Landroid/app/Notification;
    move-object v8, p0

    .line 813
    .local v8, "record":Lcom/android/server/am/ServiceRecord;
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v14, Lcom/android/server/am/ServiceRecord$1;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v12

    move-object v4, v10

    move v5, v0

    move v6, v9

    move v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ServiceRecord$1;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;Ljava/lang/String;IIILcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 933
    .end local v8  # "record":Lcom/android/server/am/ServiceRecord;
    .end local v10  # "localPackageName":Ljava/lang/String;
    .end local v11  # "localForegroundId":I
    .end local v12  # "_foregroundNoti":Landroid/app/Notification;
    :cond_2a
    return-void
.end method

.method removeConnection(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 624
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_c

    .line 627
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 629
    :cond_c
    return-void
.end method

.method public resetRestartCounter()V
    .registers 3

    .line 767
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 768
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 769
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 770
    return-void
.end method

.method public retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;
    .registers 7
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 724
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 725
    .local v0, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    .line 726
    .local v1, "i":Lcom/android/server/am/IntentBindRecord;
    if-nez v1, :cond_1a

    .line 727
    new-instance v2, Lcom/android/server/am/IntentBindRecord;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/IntentBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V

    move-object v1, v2

    .line 728
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_1a
    iget-object v2, v1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBindRecord;

    .line 731
    .local v2, "a":Lcom/android/server/am/AppBindRecord;
    if-eqz v2, :cond_25

    .line 732
    return-object v2

    .line 734
    :cond_25
    new-instance v3, Lcom/android/server/am/AppBindRecord;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/server/am/AppBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Lcom/android/server/am/ProcessRecord;)V

    move-object v2, v3

    .line 735
    iget-object v3, v1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    return-object v2
.end method

.method setHasBindingWhitelistingBgActivityStarts(Z)V
    .registers 3
    .param p1, "newValue"  # Z

    .line 649
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    if-eq v0, p1, :cond_9

    .line 650
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    .line 651
    invoke-direct {p0}, Lcom/android/server/am/ServiceRecord;->updateParentProcessBgActivityStartsWhitelistingToken()V

    .line 653
    :cond_9
    return-void
.end method

.method public setProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "_proc"  # Lcom/android/server/am/ProcessRecord;

    .line 550
    if-eqz p1, :cond_2e

    .line 554
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_15

    .line 555
    if-eq v0, p1, :cond_15

    .line 556
    nop

    .line 557
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 558
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 562
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-eqz v0, :cond_1b

    .line 563
    move-object v0, p1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    .line 564
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mHasBindingWhitelistingBgActivityStarts:Z

    if-eqz v0, :cond_27

    goto :goto_2b

    .line 568
    :cond_27
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    goto :goto_2e

    .line 566
    :cond_2b
    :goto_2b
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 571
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_40

    if-eq v0, p1, :cond_40

    .line 575
    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->mHasStartedWhitelistingBgActivityStarts:Z

    if-nez v1, :cond_3b

    .line 576
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 578
    :cond_3b
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 580
    :cond_40
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 581
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    if-lez v0, :cond_55

    if-eqz p1, :cond_55

    .line 582
    iput-object p0, p1, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    .line 583
    iput v0, p1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 584
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 585
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 588
    :cond_55
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "conni":I
    :goto_5d
    if-ltz v0, :cond_83

    .line 589
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 590
    .local v1, "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_80

    .line 591
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 592
    .local v3, "conn":Lcom/android/server/am/ConnectionRecord;
    if-eqz p1, :cond_7a

    .line 593
    invoke-virtual {v3}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    goto :goto_7d

    .line 595
    :cond_7a
    invoke-virtual {v3}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 590
    .end local v3  # "conn":Lcom/android/server/am/ConnectionRecord;
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 588
    .end local v1  # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v2  # "i":I
    :cond_80
    add-int/lit8 v0, v0, -0x1

    goto :goto_5d

    .line 600
    .end local v0  # "conni":I
    :cond_83
    if-eqz p1, :cond_88

    .line 601
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 603
    :cond_88
    return-void
.end method

.method public stripForegroundServiceFlagFromNotification()V
    .registers 6

    .line 958
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-nez v0, :cond_5

    .line 959
    return-void

    .line 962
    :cond_5
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 963
    .local v0, "localForegroundId":I
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 964
    .local v1, "localUserId":I
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 968
    .local v2, "localPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ServiceRecord$3;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/server/am/ServiceRecord$3;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 980
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 990
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 991
    return-object v0

    .line 993
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 994
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ServiceRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 997
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method updateHasBindingWhitelistingBgActivityStarts()V
    .registers 7

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "hasWhitelistingBinding":Z
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "conni":I
    :goto_9
    if-ltz v1, :cond_32

    .line 634
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 635
    .local v2, "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 636
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_29

    .line 637
    const/4 v0, 0x1

    .line 638
    goto :goto_2c

    .line 635
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 641
    .end local v3  # "i":I
    :cond_2c
    :goto_2c
    if-eqz v0, :cond_2f

    .line 642
    goto :goto_32

    .line 633
    .end local v2  # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 645
    .end local v1  # "conni":I
    :cond_32
    :goto_32
    invoke-virtual {p0, v0}, Lcom/android/server/am/ServiceRecord;->setHasBindingWhitelistingBgActivityStarts(Z)V

    .line 646
    return-void
.end method

.method public updateWhitelistManager()V
    .registers 7

    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    .line 755
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "conni":I
    :goto_b
    if-ltz v0, :cond_32

    .line 756
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 757
    .local v2, "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 758
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2c

    .line 759
    iput-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    .line 760
    return-void

    .line 757
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 755
    .end local v2  # "cr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3  # "i":I
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 764
    .end local v0  # "conni":I
    :cond_32
    return-void
.end method

.method whitelistBgActivityStartsOnServiceStart()V
    .registers 5

    .line 662
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ServiceRecord;->setHasStartedWhitelistingBgActivityStarts(Z)V

    .line 663
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_a

    .line 664
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mAppForStartedWhitelistingBgActivityStarts:Lcom/android/server/am/ProcessRecord;

    .line 668
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    if-nez v0, :cond_15

    .line 669
    new-instance v0, Lcom/android/server/am/-$$Lambda$ServiceRecord$LibDrdWU9t_vgStZ6swd0FNzHXc;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$ServiceRecord$LibDrdWU9t_vgStZ6swd0FNzHXc;-><init>(Lcom/android/server/am/ServiceRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    .line 688
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 689
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mStartedWhitelistingBgActivityStartsCleanUp:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 24
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 260
    .local v10, "token":J
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-wide v12, 0x10900000001L

    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 261
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    const-wide v14, 0x10800000002L

    invoke-virtual {v9, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 262
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2f

    .line 263
    const-wide v2, 0x10500000003L

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 265
    :cond_2f
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v1, :cond_45

    .line 266
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide v3, 0x10b00000004L

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 269
    :cond_45
    const-wide v1, 0x10900000005L

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 270
    const-wide v1, 0x10900000006L

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 271
    const-wide v1, 0x10900000007L

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 274
    .local v16, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 275
    .local v18, "nowReal":J
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_a8

    .line 276
    const-wide v1, 0x10b00000008L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 277
    .local v1, "appInfoToken":J
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 278
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    .line 279
    const-wide v3, 0x10900000002L

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 281
    :cond_99
    const-wide v3, 0x10900000003L

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 282
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 284
    .end local v1  # "appInfoToken":J
    :cond_a8
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_b4

    .line 285
    const-wide v2, 0x10b00000009L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/ProcessRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 287
    :cond_b4
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c0

    .line 288
    const-wide v2, 0x10b0000000aL

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/ProcessRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 290
    :cond_c0
    const-wide v1, 0x1080000000bL

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 291
    const-wide v1, 0x1080000000cL

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 292
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const-wide v12, 0x10500000001L

    if-nez v1, :cond_e1

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v1, :cond_fc

    .line 293
    :cond_e1
    const-wide v1, 0x10b0000000dL

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 294
    .local v1, "fgToken":J
    iget v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {v9, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 295
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, v9, v4, v5}, Landroid/app/Notification;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 296
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 298
    .end local v1  # "fgToken":J
    :cond_fc
    const-wide v2, 0x10b0000000eL

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    move-object/from16 v1, p1

    move-wide/from16 v6, v18

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 299
    const-wide v2, 0x10b0000000fL

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 301
    const-wide v2, 0x10b00000010L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 302
    const-wide v2, 0x10b00000011L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 303
    const-wide v1, 0x10800000012L

    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 305
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v1, :cond_140

    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v1, :cond_140

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v1, :cond_16f

    .line 306
    :cond_140
    const-wide v1, 0x10b00000013L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 307
    .local v1, "startToken":J
    const-wide v3, 0x10800000001L

    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 308
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {v9, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 309
    const-wide v3, 0x10800000003L

    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 310
    const-wide v3, 0x10500000005L

    iget v5, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {v9, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 311
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 314
    .end local v1  # "startToken":J
    :cond_16f
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v1, :cond_198

    .line 315
    const-wide v1, 0x10b00000014L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 316
    .local v6, "executNestingToken":J
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 317
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    invoke-virtual {v9, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 318
    const-wide v2, 0x10b00000003L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    move-object/from16 v1, p1

    move-wide v14, v6

    .end local v6  # "executNestingToken":J
    .local v14, "executNestingToken":J
    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 320
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 322
    .end local v14  # "executNestingToken":J
    :cond_198
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v14, 0x0

    if-nez v1, :cond_1a4

    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v1, v1, v14

    if-eqz v1, :cond_1b2

    .line 323
    :cond_1a4
    const-wide v2, 0x10b00000015L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    move-object/from16 v1, p1

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 325
    :cond_1b2
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v1, :cond_1c6

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v1, :cond_1c6

    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_1c6

    iget-wide v1, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    cmp-long v1, v1, v14

    if-eqz v1, :cond_1f9

    .line 326
    :cond_1c6
    const-wide v1, 0x10b00000016L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 327
    .local v14, "crashToken":J
    iget v1, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {v9, v12, v13, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 328
    const-wide v2, 0x10b00000002L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-object/from16 v1, p1

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 329
    const-wide v2, 0x10b00000003L

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 331
    const-wide v1, 0x10500000004L

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 332
    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 335
    .end local v14  # "crashToken":J
    :cond_1f9
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_222

    .line 336
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 337
    .local v7, "N":I
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_209
    if-ge v8, v7, :cond_222

    .line 338
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000017L

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 337
    add-int/lit8 v8, v8, 0x1

    goto :goto_209

    .line 342
    .end local v7  # "N":I
    .end local v8  # "i":I
    :cond_222
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_24b

    .line 343
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 344
    .restart local v7  # "N":I
    const/4 v1, 0x0

    move v8, v1

    .restart local v8  # "i":I
    :goto_232
    if-ge v8, v7, :cond_24b

    .line 345
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000018L

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 344
    add-int/lit8 v8, v8, 0x1

    goto :goto_232

    .line 348
    .end local v7  # "N":I
    .end local v8  # "i":I
    :cond_24b
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_26f

    .line 349
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 350
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25a
    if-ge v2, v1, :cond_26f

    .line 351
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    .line 352
    .local v3, "b":Lcom/android/server/am/IntentBindRecord;
    const-wide v4, 0x20b00000019L

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/server/am/IntentBindRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 350
    .end local v3  # "b":Lcom/android/server/am/IntentBindRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_25a

    .line 355
    .end local v1  # "N":I
    .end local v2  # "i":I
    :cond_26f
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_2a3

    .line 356
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 357
    .restart local v1  # "N":I
    const/4 v2, 0x0

    .local v2, "conni":I
    :goto_27e
    if-ge v2, v1, :cond_2a3

    .line 358
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 359
    .local v3, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_289
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2a0

    .line 360
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    const-wide v6, 0x20b0000001aL

    invoke-virtual {v5, v9, v6, v7}, Lcom/android/server/am/ConnectionRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 359
    add-int/lit8 v4, v4, 0x1

    goto :goto_289

    .line 357
    .end local v3  # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4  # "i":I
    :cond_2a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_27e

    .line 364
    .end local v1  # "N":I
    .end local v2  # "conni":I
    :cond_2a3
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 365
    return-void
.end method
