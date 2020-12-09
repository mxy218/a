.class final Lcom/android/server/LocationManagerService$Receiver;
.super Lcom/android/server/LocationManagerService$LinkedListenerBase;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# static fields
.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private final mAllowedResolutionLevel:I

.field private final mHideFromAppOps:Z

.field private final mKey:Ljava/lang/Object;

.field private final mListener:Landroid/location/ILocationListener;

.field private mOpHighPowerMonitoring:Z

.field private mOpMonitoring:Z

.field private mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V
    .registers 11

    .line 1374
    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    .line 1375
    new-instance v0, Lcom/android/server/location/CallerIdentity;

    invoke-direct {v0, p5, p4, p6}, Lcom/android/server/location/CallerIdentity;-><init>(IILjava/lang/String;)V

    const/4 p6, 0x0

    const-string v1, "LocationListener"

    invoke-direct {p0, v0, v1, p6}, Lcom/android/server/LocationManagerService$LinkedListenerBase;-><init>(Lcom/android/server/location/CallerIdentity;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 1364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1376
    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    .line 1377
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1378
    if-eqz p2, :cond_21

    .line 1379
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    goto :goto_23

    .line 1381
    :cond_21
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    .line 1383
    :goto_23
    invoke-static {p1, p4, p5}, Lcom/android/server/LocationManagerService;->access$3000(Lcom/android/server/LocationManagerService;II)I

    move-result p2

    iput p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1384
    if-eqz p7, :cond_32

    invoke-virtual {p7}, Landroid/os/WorkSource;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_32

    .line 1385
    goto :goto_33

    .line 1387
    :cond_32
    move-object p6, p7

    :goto_33
    iput-object p6, p0, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    .line 1388
    iput-boolean p8, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    .line 1390
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1393
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$3100(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object p1

    const-string p3, "*location*"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1394
    if-nez p6, :cond_56

    .line 1395
    new-instance p6, Landroid/os/WorkSource;

    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget p1, p1, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object p2, p2, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-direct {p6, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 1397
    :cond_56
    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p6}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1401
    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1402
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;ZLcom/android/server/LocationManagerService$1;)V
    .registers 10

    .line 1354
    invoke-direct/range {p0 .. p8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 1

    .line 1354
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/LocationManagerService$Receiver;Ljava/lang/String;Z)Z
    .registers 3

    .line 1354
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/android/server/LocationManagerService$Receiver;)I
    .registers 1

    .line 1354
    iget p0, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    return p0
.end method

.method static synthetic access$4900(Lcom/android/server/LocationManagerService$Receiver;)Ljava/lang/Object;
    .registers 1

    .line 1354
    iget-object p0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    return-object p0
.end method

.method private callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .registers 14

    .line 1587
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1589
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 1591
    if-eqz p2, :cond_f

    .line 1592
    :try_start_b
    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_12

    .line 1594
    :cond_f
    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 1598
    :goto_12
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16

    .line 1601
    goto :goto_47

    .line 1599
    :catch_16
    move-exception p1

    .line 1600
    return v2

    .line 1603
    :cond_18
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1604
    const-string/jumbo p1, "providerEnabled"

    invoke-virtual {v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1606
    :try_start_23
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v8

    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1607
    invoke-static {p1, p2}, Lcom/android/server/LocationManagerService;->access$3400(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v9

    const/4 p1, 0x0

    .line 1608
    invoke-static {p1}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1606
    move-object v7, p0

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1611
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_46
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_23 .. :try_end_46} :catch_48

    .line 1614
    nop

    .line 1616
    :goto_47
    return v0

    .line 1612
    :catch_48
    move-exception p1

    .line 1613
    return v2
.end method

.method private decrementPendingBroadcastsLocked()V
    .registers 4

    .line 1651
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_22

    .line 1653
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1655
    :try_start_c
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1656
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 1659
    :cond_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1660
    goto :goto_22

    .line 1659
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1662
    :cond_22
    :goto_22
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .registers 6

    .line 1640
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1642
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1644
    :try_start_a
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    .line 1646
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1647
    nop

    .line 1648
    return-void

    .line 1646
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private updateMonitoring(ZZI)Z
    .registers 7

    .line 1496
    const/4 v0, 0x0

    if-nez p2, :cond_1b

    .line 1497
    if-eqz p1, :cond_32

    .line 1498
    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$3300(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget p2, p2, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p3, p2, v1}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0

    .line 1502
    :cond_1b
    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    .line 1503
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$3300(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v1, v1, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_33

    .line 1510
    :cond_32
    return p2

    .line 1505
    :cond_33
    :goto_33
    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$3300(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget p2, p2, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p3, p2, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1506
    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1621
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListenerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_21
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1624
    :try_start_28
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1, p0}, Lcom/android/server/LocationManagerService;->access$3500(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1625
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 1626
    monitor-exit v0

    .line 1627
    return-void

    .line 1626
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .registers 12

    .line 1557
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1559
    :try_start_5
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v2}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 1562
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11

    .line 1565
    goto :goto_46

    .line 1563
    :catch_11
    move-exception p1

    .line 1564
    return v1

    .line 1567
    :cond_13
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1568
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-string p1, "location"

    invoke-virtual {v5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1571
    :try_start_22
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v7

    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1572
    invoke-static {p1, v0}, Lcom/android/server/LocationManagerService;->access$3400(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v8

    const/4 p1, 0x0

    .line 1573
    invoke-static {p1}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1571
    move-object v6, p0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1576
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_45
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_22 .. :try_end_45} :catch_48

    .line 1579
    nop

    .line 1581
    :goto_46
    const/4 p1, 0x1

    return p1

    .line 1577
    :catch_48
    move-exception p1

    .line 1578
    return v1
.end method

.method public callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 14

    .line 1529
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1531
    :try_start_5
    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1534
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    .line 1537
    goto :goto_45

    .line 1535
    :catch_c
    move-exception p1

    .line 1536
    return v1

    .line 1539
    :cond_e
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1540
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v5, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1541
    const-string/jumbo p1, "status"

    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1543
    :try_start_21
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v7

    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1544
    invoke-static {p1, p2}, Lcom/android/server/LocationManagerService;->access$3400(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v8

    const/4 p1, 0x0

    .line 1545
    invoke-static {p1}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1543
    move-object v6, p0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1548
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_44
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_21 .. :try_end_44} :catch_47

    .line 1551
    nop

    .line 1553
    :goto_45
    const/4 p1, 0x1

    return p1

    .line 1549
    :catch_47
    move-exception p1

    .line 1550
    return v1
.end method

.method public clearPendingBroadcastsLocked()V
    .registers 4

    .line 1665
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_21

    .line 1666
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1668
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1670
    :try_start_b
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1671
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    .line 1674
    :cond_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1675
    goto :goto_21

    .line 1674
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1677
    :cond_21
    :goto_21
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1406
    instance-of v0, p1, Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/LocationManagerService$Receiver;

    iget-object p1, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public getListener()Landroid/location/ILocationListener;
    .registers 3

    .line 1522
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_5

    .line 1523
    return-object v0

    .line 1525
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 1411
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .registers 2

    .line 1514
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isPendingIntent()Z
    .registers 2

    .line 1518
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1632
    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1633
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    .line 1634
    monitor-exit p1

    .line 1635
    return-void

    .line 1634
    :catchall_c
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1417
    const-string v1, "Reciever["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_1f

    .line 1420
    const-string v1, " listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 1422
    :cond_1f
    const-string v1, " intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    :goto_24
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1425
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    goto :goto_2e

    .line 1427
    :cond_4f
    const-string v1, " monitoring location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1428
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMonitoring(Z)V
    .registers 8

    .line 1438
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    if-eqz v0, :cond_5

    .line 1439
    return-void

    .line 1442
    :cond_5
    nop

    .line 1443
    nop

    .line 1444
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5c

    .line 1447
    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1448
    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v5, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v4

    .line 1449
    if-nez v4, :cond_2d

    .line 1450
    goto :goto_16

    .line 1452
    :cond_2d
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v5

    if-nez v5, :cond_3c

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v5, v3}, Lcom/android/server/LocationManagerService;->access$3200(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 1453
    goto :goto_16

    .line 1456
    :cond_3c
    nop

    .line 1457
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    .line 1458
    if-eqz v2, :cond_58

    iget v2, v2, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_58

    iget-object v2, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1460
    invoke-virtual {v2}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_58

    .line 1461
    nop

    .line 1462
    move v1, v0

    goto :goto_5d

    .line 1464
    :cond_58
    move v2, v0

    goto :goto_16

    .line 1447
    :cond_5a
    move v0, v2

    goto :goto_5d

    .line 1444
    :cond_5c
    move v0, v1

    .line 1468
    :goto_5d
    iget-boolean p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    const/16 v2, 0x29

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    .line 1474
    iget-boolean p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 1475
    const/16 v0, 0x2a

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 1479
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    if-eq v0, p1, :cond_87

    .line 1481
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1484
    :cond_87
    return-void
.end method
