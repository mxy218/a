.class Lcom/android/server/LocationManagerService$LocDataCollection;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocDataCollection"
.end annotation


# static fields
.field private static final EVENT_LOC_MODE:Ljava/lang/String; = "event_loc_mode"

.field private static final EVENT_NOTIFY_LOC:Ljava/lang/String; = "event_notify_loc"

.field private static final EVENT_REMOVE:Ljava/lang/String; = "event_remove"

.field private static final EVENT_REQUEST:Ljava/lang/String; = "event_request"


# instance fields
.field private mNetworkAvailable:Z

.field private mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/content/Context;)V
    .registers 8
    .param p1, "this$0"  # Lcom/android/server/LocationManagerService;
    .param p2, "mContext"  # Landroid/content/Context;

    .line 4473
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    .line 4460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->mNetworkAvailable:Z

    .line 4461
    new-instance v1, Lcom/android/server/LocationManagerService$LocDataCollection$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$LocDataCollection$1;-><init>(Lcom/android/server/LocationManagerService$LocDataCollection;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 4474
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-nez v1, :cond_1f

    .line 4475
    invoke-static {p2}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    .line 4476
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$LocDataCollection;->eventLocMode()V

    .line 4479
    :cond_1f
    if-eqz p2, :cond_45

    .line 4480
    nop

    .line 4481
    const-string v1, "connectivity"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 4482
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 4483
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_37

    const/4 v0, 0x1

    :cond_37
    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->mNetworkAvailable:Z

    .line 4485
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4489
    .end local v1  # "cm":Landroid/net/ConnectivityManager;
    .end local v2  # "info":Landroid/net/NetworkInfo;
    :cond_45
    return-void
.end method

.method static synthetic access$5902(Lcom/android/server/LocationManagerService$LocDataCollection;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$LocDataCollection;
    .param p1, "x1"  # Z

    .line 4452
    iput-boolean p1, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->mNetworkAvailable:Z

    return p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "s"  # Ljava/lang/String;

    .line 4512
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    return-object v0
.end method

.method private hasActiveNet()Ljava/lang/String;
    .registers 3

    .line 4493
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->mNetworkAvailable:Z

    if-nez v0, :cond_e

    .line 4495
    const-string v0, "LocationManagerService"

    const-string v1, "LocDataCollection no connect!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4496
    const-string v0, "0"

    return-object v0

    .line 4498
    :cond_e
    const-string v0, "1"

    return-object v0
.end method

.method private isValidProvider(Ljava/lang/String;)Z
    .registers 3
    .param p1, "provider"  # Ljava/lang/String;

    .line 4503
    if-eqz p1, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 4504
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 4505
    const-string/jumbo v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4506
    :cond_19
    const/4 v0, 0x1

    return v0

    .line 4508
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final eventLocMode()V
    .registers 6

    .line 4516
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4517
    .local v0, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4519
    .local v1, "mode":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "loc_mode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4520
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-eqz v2, :cond_2b

    .line 4521
    const/4 v3, 0x0

    const-string v4, "event_loc_mode"

    invoke-virtual {v2, v4, v3, v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4522
    :cond_2b
    return-void
.end method

.method public eventRemove(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 6
    .param p1, "receiver"  # Lcom/android/server/LocationManagerService$Receiver;

    .line 4539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4540
    .local v0, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService$LocDataCollection;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pkgName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4541
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$LocDataCollection;->hasActiveNet()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onNet"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4542
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "receiver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4543
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-eqz v1, :cond_35

    .line 4544
    const/4 v2, 0x0

    const-string v3, "event_remove"

    invoke-virtual {v1, v3, v2, v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4545
    :cond_35
    return-void
.end method

.method public eventRequest(Lcom/android/server/LocationManagerService$Receiver;Landroid/location/LocationRequest;)V
    .registers 7
    .param p1, "receiver"  # Lcom/android/server/LocationManagerService$Receiver;
    .param p2, "locRequest"  # Landroid/location/LocationRequest;

    .line 4525
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService$LocDataCollection;->isValidProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 4526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventRequest provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " will not be collect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4527
    return-void

    .line 4529
    :cond_2a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4530
    .local v0, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService$LocDataCollection;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pkgName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4531
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService$LocDataCollection;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "provider"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4532
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$LocDataCollection;->hasActiveNet()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onNet"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4533
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "receiver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4534
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocDataCollection;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-eqz v1, :cond_6d

    .line 4535
    const/4 v2, 0x0

    const-string v3, "event_request"

    invoke-virtual {v1, v3, v2, v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4536
    :cond_6d
    return-void
.end method
