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

.field final mIdentity:Lcom/android/server/LocationManagerService$Identity;

.field private final mKey:Ljava/lang/Object;

.field private final mListener:Landroid/location/ILocationListener;

.field mLocationRequest:Landroid/location/LocationRequest;

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
    .registers 12
    .param p2, "listener"  # Landroid/location/ILocationListener;
    .param p3, "intent"  # Landroid/app/PendingIntent;
    .param p4, "pid"  # I
    .param p5, "uid"  # I
    .param p6, "packageName"  # Ljava/lang/String;
    .param p7, "workSource"  # Landroid/os/WorkSource;
    .param p8, "hideFromAppOps"  # Z

    .line 1515
    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    .line 1516
    new-instance v0, Lcom/android/server/location/CallerIdentity;

    invoke-direct {v0, p5, p4, p6}, Lcom/android/server/location/CallerIdentity;-><init>(IILjava/lang/String;)V

    const-string v1, "LocationListener"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/LocationManagerService$LinkedListenerBase;-><init>(Lcom/android/server/location/CallerIdentity;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 1505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1517
    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    .line 1518
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1519
    if-eqz p2, :cond_21

    .line 1520
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    goto :goto_23

    .line 1522
    :cond_21
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    .line 1524
    :goto_23
    invoke-static {p1, p4, p5}, Lcom/android/server/LocationManagerService;->access$3200(Lcom/android/server/LocationManagerService;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1526
    new-instance v0, Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {v0, p5, p4, p6}, Lcom/android/server/LocationManagerService$Identity;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    .line 1528
    if-eqz p7, :cond_39

    invoke-virtual {p7}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1529
    const/4 p7, 0x0

    .line 1531
    :cond_39
    iput-object p7, p0, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    .line 1532
    iput-boolean p8, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    .line 1534
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1537
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$3300(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object p1

    const-string v1, "*location*"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1538
    if-nez p7, :cond_5d

    .line 1539
    new-instance p1, Landroid/os/WorkSource;

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v0, v0, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    move-object p7, p1

    .line 1541
    :cond_5d
    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1545
    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1546
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;ZLcom/android/server/LocationManagerService$1;)V
    .registers 10
    .param p1, "x0"  # Lcom/android/server/LocationManagerService;
    .param p2, "x1"  # Landroid/location/ILocationListener;
    .param p3, "x2"  # Landroid/app/PendingIntent;
    .param p4, "x3"  # I
    .param p5, "x4"  # I
    .param p6, "x5"  # Ljava/lang/String;
    .param p7, "x6"  # Landroid/os/WorkSource;
    .param p8, "x7"  # Z
    .param p9, "x8"  # Lcom/android/server/LocationManagerService$1;

    .line 1488
    invoke-direct/range {p0 .. p8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$Receiver;

    .line 1488
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/LocationManagerService$Receiver;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$Receiver;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z

    .line 1488
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/LocationManagerService$Receiver;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$Receiver;

    .line 1488
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/LocationManagerService$Receiver;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$Receiver;

    .line 1488
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/LocationManagerService$Receiver;)Landroid/location/ILocationListener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$Receiver;

    .line 1488
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    return-object v0
.end method

.method private callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .registers 14
    .param p1, "provider"  # Ljava/lang/String;
    .param p2, "enabled"  # Z

    .line 1731
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1733
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 1735
    if-eqz p2, :cond_f

    .line 1736
    :try_start_b
    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_12

    .line 1738
    :cond_f
    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 1742
    :goto_12
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16

    .line 1745
    goto :goto_48

    .line 1743
    :catch_16
    move-exception v0

    .line 1744
    .local v0, "e":Landroid/os/RemoteException;
    return v2

    .line 1747
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_18
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1748
    .local v1, "providerIntent":Landroid/content/Intent;
    const-string/jumbo v3, "providerEnabled"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1750
    :try_start_23
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v7, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1751
    invoke-static {v6, v7}, Lcom/android/server/LocationManagerService;->access$3600(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    .line 1752
    invoke-static {v6}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1750
    move-object v6, v1

    move-object v7, p0

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1755
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_47
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_23 .. :try_end_47} :catch_49

    .line 1758
    nop

    .line 1760
    .end local v1  # "providerIntent":Landroid/content/Intent;
    :goto_48
    return v0

    .line 1756
    .restart local v1  # "providerIntent":Landroid/content/Intent;
    :catch_49
    move-exception v0

    .line 1757
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    return v2
.end method

.method private decrementPendingBroadcastsLocked()V
    .registers 4

    .line 1800
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_22

    .line 1802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1804
    .local v0, "identity":J
    :try_start_c
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1805
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 1808
    :cond_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1809
    goto :goto_22

    .line 1808
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1811
    .end local v0  # "identity":J
    :cond_22
    :goto_22
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .registers 6

    .line 1789
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1791
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1793
    .local v0, "identity":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    .line 1795
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1796
    nop

    .line 1797
    return-void

    .line 1795
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private updateMonitoring(ZZI)Z
    .registers 8
    .param p1, "allowMonitoring"  # Z
    .param p2, "currentlyMonitoring"  # Z
    .param p3, "op"  # I

    .line 1640
    const/4 v0, 0x0

    if-nez p2, :cond_1b

    .line 1641
    if-eqz p1, :cond_32

    .line 1642
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$3500(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v2, v2, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0

    .line 1646
    :cond_1b
    if-eqz p1, :cond_33

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    .line 1647
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$3500(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v2, v2, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_33

    .line 1654
    :cond_32
    return p2

    .line 1649
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$3500(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v2, v2, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1650
    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1765
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

    .line 1767
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1768
    :try_start_24
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1, p0}, Lcom/android/server/LocationManagerService;->access$3700(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1770
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_40

    .line 1773
    monitor-enter p0

    .line 1774
    :try_start_38
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 1775
    monitor-exit p0

    .line 1776
    return-void

    .line 1775
    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_3d

    throw v0

    .line 1772
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .registers 12
    .param p1, "location"  # Landroid/location/Location;

    .line 1701
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1703
    :try_start_5
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v2}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 1706
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11

    .line 1709
    goto :goto_48

    .line 1707
    :catch_11
    move-exception v0

    .line 1708
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 1711
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1712
    .local v0, "locationChanged":Landroid/content/Intent;
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-string/jumbo v3, "location"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1715
    :try_start_23
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v6, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1716
    invoke-static {v5, v6}, Lcom/android/server/LocationManagerService;->access$3600(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    .line 1717
    invoke-static {v5}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1715
    move-object v5, v0

    move-object v6, p0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1720
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_47
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_23 .. :try_end_47} :catch_4a

    .line 1723
    nop

    .line 1725
    .end local v0  # "locationChanged":Landroid/content/Intent;
    :goto_48
    const/4 v0, 0x1

    return v0

    .line 1721
    .restart local v0  # "locationChanged":Landroid/content/Intent;
    :catch_4a
    move-exception v2

    .line 1722
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    return v1
.end method

.method public callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 14
    .param p1, "provider"  # Ljava/lang/String;
    .param p2, "status"  # I
    .param p3, "extras"  # Landroid/os/Bundle;

    .line 1673
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1675
    :try_start_5
    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1678
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    .line 1681
    goto :goto_46

    .line 1679
    :catch_c
    move-exception v0

    .line 1680
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 1683
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1684
    .local v0, "statusChanged":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1685
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1687
    :try_start_21
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v6, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1688
    invoke-static {v5, v6}, Lcom/android/server/LocationManagerService;->access$3600(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    .line 1689
    invoke-static {v5}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1687
    move-object v5, v0

    move-object v6, p0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1692
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_45
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_21 .. :try_end_45} :catch_48

    .line 1695
    nop

    .line 1697
    .end local v0  # "statusChanged":Landroid/content/Intent;
    :goto_46
    const/4 v0, 0x1

    return v0

    .line 1693
    .restart local v0  # "statusChanged":Landroid/content/Intent;
    :catch_48
    move-exception v2

    .line 1694
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    return v1
.end method

.method public clearPendingBroadcastsLocked()V
    .registers 4

    .line 1814
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_21

    .line 1815
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1819
    .local v0, "identity":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1820
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    .line 1823
    :cond_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1824
    goto :goto_21

    .line 1823
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1826
    .end local v0  # "identity":J
    :cond_21
    :goto_21
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "otherObj"  # Ljava/lang/Object;

    .line 1550
    instance-of v0, p1, Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getListener()Landroid/location/ILocationListener;
    .registers 3

    .line 1666
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_5

    .line 1667
    return-object v0

    .line 1669
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 1555
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .registers 2

    .line 1658
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

    .line 1662
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
    .registers 8
    .param p1, "pendingIntent"  # Landroid/app/PendingIntent;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "resultCode"  # I
    .param p4, "resultData"  # Ljava/lang/String;
    .param p5, "resultExtras"  # Landroid/os/Bundle;

    .line 1781
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1782
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    .line 1783
    monitor-exit v0

    .line 1784
    return-void

    .line 1783
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1561
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Reciever["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_1f

    .line 1564
    const-string v1, " listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 1566
    :cond_1f
    const-string v1, " intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
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

    .line 1569
    .local v2, "p":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    .end local v2  # "p":Ljava/lang/String;
    goto :goto_2e

    .line 1571
    :cond_4f
    const-string v1, " monitoring location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1572
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateMonitoring(Z)V
    .registers 12
    .param p1, "allow"  # Z

    .line 1582
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    if-eqz v0, :cond_5

    .line 1583
    return-void

    .line 1586
    :cond_5
    const/4 v0, 0x0

    .line 1587
    .local v0, "requestingLocation":Z
    const/4 v1, 0x0

    .line 1588
    .local v1, "requestingHighPowerLocation":Z
    if-eqz p1, :cond_55

    .line 1591
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1592
    .local v3, "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v5, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v4

    .line 1593
    .local v4, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-nez v4, :cond_2a

    .line 1594
    goto :goto_13

    .line 1596
    :cond_2a
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v5

    if-nez v5, :cond_39

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v5, v3}, Lcom/android/server/LocationManagerService;->access$3400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 1597
    goto :goto_13

    .line 1600
    :cond_39
    const/4 v0, 0x1

    .line 1601
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v5

    .line 1602
    .local v5, "properties":Lcom/android/internal/location/ProviderProperties;
    if-eqz v5, :cond_54

    iget v6, v5, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_54

    iget-object v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1604
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-gez v6, :cond_54

    .line 1605
    const/4 v1, 0x1

    .line 1606
    goto :goto_55

    .line 1608
    .end local v3  # "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v4  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v5  # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_54
    goto :goto_13

    .line 1612
    :cond_55
    :goto_55
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    const/16 v3, 0x29

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    .line 1618
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 1619
    .local v2, "wasHighPowerMonitoring":Z
    iget-boolean v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    const/16 v4, 0x2a

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 1623
    iget-boolean v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    if-eq v3, v2, :cond_81

    .line 1625
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1626
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1628
    .end local v3  # "intent":Landroid/content/Intent;
    :cond_81
    return-void
.end method
