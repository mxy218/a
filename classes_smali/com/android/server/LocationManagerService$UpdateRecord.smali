.class Lcom/android/server/LocationManagerService$UpdateRecord;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRecord"
.end annotation


# instance fields
.field private mIsForegroundUid:Z

.field private mLastFixBroadcast:Landroid/location/Location;

.field private mLastStatusBroadcast:J

.field final mProvider:Ljava/lang/String;

.field private final mRealRequest:Landroid/location/LocationRequest;

.field private final mReceiver:Lcom/android/server/LocationManagerService$Receiver;

.field mRequest:Landroid/location/LocationRequest;

.field private mStackTrace:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 13
    .param p2, "provider"  # Ljava/lang/String;
    .param p3, "request"  # Landroid/location/LocationRequest;
    .param p4, "receiver"  # Lcom/android/server/LocationManagerService$Receiver;

    .line 2481
    iput-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2482
    iput-object p2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    .line 2483
    iput-object p3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    .line 2484
    iput-object p3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 2485
    iput-object p4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2486
    nop

    .line 2487
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$4300(Lcom/android/server/LocationManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    .line 2486
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$4400(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 2489
    iget-object v0, p4, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v0, v0, Lcom/android/server/location/CallerIdentity;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_33

    .line 2490
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    .line 2493
    :cond_33
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$4500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2494
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-nez v0, :cond_4c

    .line 2495
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 2496
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$4500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2498
    :cond_4c
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 2499
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2503
    :cond_55
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$4600(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v2

    iget-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object p1, p1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 2504
    invoke-virtual {p3}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v5

    iget-boolean v7, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 2503
    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/LocationRequestStatistics;->startRequesting(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 2506
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;Lcom/android/server/LocationManagerService$1;)V
    .registers 6
    .param p1, "x0"  # Lcom/android/server/LocationManagerService;
    .param p2, "x1"  # Ljava/lang/String;
    .param p3, "x2"  # Landroid/location/LocationRequest;
    .param p4, "x3"  # Lcom/android/server/LocationManagerService$Receiver;
    .param p5, "x4"  # Lcom/android/server/LocationManagerService$1;

    .line 2468
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2468
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2468
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p1, "x1"  # Z

    .line 2468
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->updateForeground(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2468
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p1, "x1"  # Z

    .line 2468
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/Location;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2468
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/server/LocationManagerService$UpdateRecord;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p1, "x1"  # Landroid/location/Location;

    .line 2468
    iput-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/server/LocationManagerService$UpdateRecord;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2468
    iget-wide v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    return-wide v0
.end method

.method static synthetic access$5402(Lcom/android/server/LocationManagerService$UpdateRecord;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p1, "x1"  # J

    .line 2468
    iput-wide p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    return-wide p1
.end method

.method private disposeLocked(Z)V
    .registers 12
    .param p1, "removeReceiver"  # Z

    .line 2521
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 2522
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$4600(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/location/LocationRequestStatistics;->stopRequesting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$4700(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationUsageLogger;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2529
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v6

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2530
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->isPendingIntent()Z

    move-result v7

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    .line 2532
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$4300(Lcom/android/server/LocationManagerService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v9

    .line 2524
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2535
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$4500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2536
    .local v1, "globalRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v1, :cond_49

    .line 2537
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2540
    :cond_49
    if-nez p1, :cond_4c

    return-void

    .line 2543
    :cond_4c
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 2544
    .local v2, "receiverRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2547
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_71

    .line 2548
    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-static {v3, v4}, Lcom/android/server/LocationManagerService;->access$3700(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2550
    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v4, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v4, v4, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2554
    :cond_71
    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/LocationManagerService;->access$4800(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V

    .line 2556
    return-void
.end method

.method private updateForeground(Z)V
    .registers 5
    .param p1, "isForeground"  # Z

    .line 2512
    iput-boolean p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 2513
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$4600(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/location/LocationRequestStatistics;->updateForeground(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2515
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 2560
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateRecord["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2561
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v2, v2, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2564
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    if-eqz v2, :cond_32

    .line 2565
    const-string v2, " foreground"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 2567
    :cond_32
    const-string v2, " background"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    :goto_37
    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2570
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2572
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    if-eqz v1, :cond_6f

    .line 2573
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2574
    .local v1, "tmp":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 2575
    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    .end local v1  # "tmp":Ljava/io/ByteArrayOutputStream;
    :cond_6f
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
