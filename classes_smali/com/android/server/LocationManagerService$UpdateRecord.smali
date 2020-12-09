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
    .registers 12

    .line 2314
    iput-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2315
    iput-object p2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    .line 2316
    iput-object p3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    .line 2317
    iput-object p3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 2318
    iput-object p4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2319
    nop

    .line 2320
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$4100(Lcom/android/server/LocationManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    .line 2319
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$4200(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 2322
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_37

    iget-object p4, p4, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget p4, p4, Lcom/android/server/location/CallerIdentity;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p4, v0, :cond_37

    .line 2323
    new-instance p4, Ljava/lang/Throwable;

    invoke-direct {p4}, Ljava/lang/Throwable;-><init>()V

    iput-object p4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    .line 2326
    :cond_37
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$4300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    .line 2327
    if-nez p4, :cond_4f

    .line 2328
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 2329
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$4300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    :cond_4f
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 2332
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2336
    :cond_58
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$4400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v1

    iget-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object p1, p1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 2337
    invoke-virtual {p3}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 2336
    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/LocationRequestStatistics;->startRequesting(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 2339
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;Lcom/android/server/LocationManagerService$1;)V
    .registers 6

    .line 2301
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;
    .registers 1

    .line 2301
    iget-object p0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .registers 1

    .line 2301
    iget-boolean p0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V
    .registers 2

    .line 2301
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->updateForeground(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;
    .registers 1

    .line 2301
    iget-object p0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V
    .registers 2

    .line 2301
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/Location;
    .registers 1

    .line 2301
    iget-object p0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/android/server/LocationManagerService$UpdateRecord;Landroid/location/Location;)Landroid/location/Location;
    .registers 2

    .line 2301
    iput-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/server/LocationManagerService$UpdateRecord;)J
    .registers 3

    .line 2301
    iget-wide v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    return-wide v0
.end method

.method static synthetic access$5102(Lcom/android/server/LocationManagerService$UpdateRecord;J)J
    .registers 3

    .line 2301
    iput-wide p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    return-wide p1
.end method

.method private disposeLocked(Z)V
    .registers 12

    .line 2354
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v4, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 2355
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$4400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/android/server/location/LocationRequestStatistics;->stopRequesting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$4500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationUsageLogger;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2362
    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v6

    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2363
    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$Receiver;->isPendingIntent()Z

    move-result v7

    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    .line 2365
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$4100(Lcom/android/server/LocationManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v9

    .line 2357
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2368
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$4300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2369
    if-eqz v0, :cond_48

    .line 2370
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2373
    :cond_48
    if-nez p1, :cond_4b

    return-void

    .line 2376
    :cond_4b
    iget-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object p1, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 2377
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_61

    .line 2381
    iget-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-static {p1, v0}, Lcom/android/server/LocationManagerService;->access$3500(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2383
    :cond_61
    return-void
.end method

.method private updateForeground(Z)V
    .registers 5

    .line 2345
    iput-boolean p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 2346
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$4400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/location/LocationRequestStatistics;->updateForeground(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2348
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 2387
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateRecord["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2388
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2389
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2390
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v2, v2, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2391
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    if-eqz v2, :cond_32

    .line 2392
    const-string v2, " foreground"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 2394
    :cond_32
    const-string v2, " background"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2396
    :goto_37
    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2397
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2399
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    if-eqz v1, :cond_6f

    .line 2400
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2401
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 2402
    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2405
    :cond_6f
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2406
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
