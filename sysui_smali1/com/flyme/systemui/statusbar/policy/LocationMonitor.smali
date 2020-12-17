.class public Lcom/flyme/systemui/statusbar/policy/LocationMonitor;
.super Ljava/lang/Object;
.source "LocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;,
        Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;
    }
.end annotation


# static fields
.field private static final mHighPowerRequestAppOpArray:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mGpsNotificationsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

.field private mWhiteList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput v2, v0, v1

    .line 48
    sput-object v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mHighPowerRequestAppOpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->mz_gps_white_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mWhiteList:[Ljava/lang/String;

    const-string v0, "appops"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    .line 66
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    .line 67
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;-><init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V

    .line 75
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    new-instance p1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;-><init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_gps_in_using_kill_clicked"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_gps_in_using_deny_gps_request"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->updateNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Ljava/lang/String;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->killPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Ljava/lang/String;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->denyGpsRequest(Ljava/lang/String;)V

    return-void
.end method

.method private compareList(Ljava/util/List;Ljava/util/List;)Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 406
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;-><init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;)V

    .line 408
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 411
    iput-object p0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->removed:Ljava/util/List;

    .line 412
    iget-object p0, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->added:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_35

    .line 414
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 415
    iget-object p2, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->removed:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    .line 416
    iget-object p2, v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->added:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_35
    return-object v0
.end method

.method private denyGpsRequest(Ljava/lang/String;)V
    .registers 13

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 335
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 336
    iget v2, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x16

    const/4 v8, 0x1

    if-le v2, v3, :cond_13

    move v1, v8

    :cond_13
    const-string v2, "android.permission-group.LOCATION"

    const/16 v3, 0x80

    .line 337
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 339
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    if-eqz v1, :cond_43

    .line 349
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->hasFineLocationPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 350
    invoke-virtual {v0, p1, v1, v9}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 353
    :cond_2c
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->hasCoarseLocationPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 354
    invoke-virtual {v0, p1, v1, v9}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 357
    :cond_37
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->hasBackgroundLocationPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_97

    const-string p0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 358
    invoke-virtual {v0, p1, p0, v9}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_97

    .line 362
    :cond_43
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 363
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_51
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 364
    iget-object v2, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_66

    goto :goto_51

    .line 368
    :cond_66
    iget v3, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v3, v8}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 369
    iget-object v2, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v4, 0x8

    const/16 v5, 0x8

    move-object v1, v0

    move-object v3, p1

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_77} :catch_78

    goto :goto_51

    :catch_78
    move-exception p0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] location permission failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocationMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_97
    :goto_97
    return-void
.end method

.method private getForgroundPackage()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 147
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_26

    :cond_18
    const/4 v0, 0x0

    .line 150
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 151
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private getUsingGpsApp()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mHighPowerRequestAppOpArray:[I

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_10

    return-object v0

    .line 114
    :cond_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_4e

    .line 116
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 117
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_25

    goto :goto_4b

    .line 122
    :cond_25
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v2

    :goto_2a
    if-ge v7, v6, :cond_4b

    .line 124
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 127
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    const/16 v10, 0x2a

    if-eq v9, v10, :cond_3b

    goto :goto_48

    .line 135
    :cond_3b
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_48

    .line 136
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    :goto_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_4b
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_4e
    return-object v0
.end method

.method private hasBackgroundLocationPermission(Ljava/lang/String;)Z
    .registers 3

    .line 439
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private hasCoarseLocationPermission(Ljava/lang/String;)Z
    .registers 3

    .line 451
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private hasFineLocationPermission(Ljava/lang/String;)Z
    .registers 3

    .line 445
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private killPackage(Ljava/lang/String;)V
    .registers 3

    .line 324
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 325
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized updateNotification()V
    .registers 18

    move-object/from16 v1, p0

    monitor-enter p0

    .line 155
    :try_start_3
    iget-object v0, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    .line 156
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->getUsingGpsApp()Ljava/util/List;

    move-result-object v2

    const-string v3, "LocationMonitor"

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APPS :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_258

    if-nez v2, :cond_2b

    .line 161
    monitor-exit p0

    return-void

    .line 165
    :cond_2b
    :try_start_2b
    iget-object v3, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mWhiteList:[Ljava/lang/String;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_2f
    if-ge v6, v4, :cond_3f

    aget-object v7, v3, v6

    .line 166
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 167
    invoke-interface {v2, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 173
    :cond_3f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 174
    :cond_43
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 175
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "android"

    .line 176
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 177
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_43

    .line 183
    :cond_5b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6e

    .line 187
    iget-object v3, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    if-eqz v3, :cond_7e

    .line 188
    iget-object v3, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    invoke-virtual {v3}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->cancel()V

    .line 189
    iput-object v4, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    goto :goto_7e

    .line 193
    :cond_6e
    iget-object v3, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    if-nez v3, :cond_7e

    .line 194
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    invoke-direct {v3, v1, v4}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;-><init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;)V

    iput-object v3, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    .line 195
    iget-object v3, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mTaskMoniterThread:Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_7e
    :goto_7e
    const-string v3, "LocationMonitor"

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mGpsNotificationsList "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    invoke-direct {v1, v3, v2}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->compareList(Ljava/util/List;Ljava/util/List;)Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;

    move-result-object v3

    const-string v6, "LocationMonitor"

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v6, v3, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_b9
    if-ge v7, v6, :cond_e5

    .line 205
    iget-object v8, v3, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LocationMonitor_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v10, v11}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 207
    iget-object v9, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_b9

    .line 211
    :cond_e5
    invoke-direct/range {p0 .. p0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->getForgroundPackage()Ljava/lang/String;

    move-result-object v6

    .line 213
    iget-object v7, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 215
    iget-object v8, v3, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->added:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_f6
    if-ge v9, v8, :cond_20e

    .line 219
    iget-object v10, v3, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$CompareResult;->added:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "LocationMonitor"

    .line 221
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is using GPS"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13a

    const-string v11, "LocationMonitor"

    .line 223
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is ForgroundPackage"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catchall {:try_start_2b .. :try_end_132} :catchall_258

    move-object/from16 v16, v3

    move-object v3, v4

    move-object v5, v7

    move v15, v8

    const/4 v12, 0x0

    goto/16 :goto_205

    :cond_13a
    const/16 v11, 0x80

    .line 228
    :try_start_13c
    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_140} :catch_1f8
    .catchall {:try_start_13c .. :try_end_140} :catchall_258

    .line 234
    :try_start_140
    invoke-virtual {v11, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 235
    iget-object v13, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/android/systemui/R$string;->location_is_in_using:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 239
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string v15, "com.meizu.safe.security.SHOW_SECAPPLIST"

    .line 243
    invoke-virtual {v14, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "packageName"

    .line 244
    invoke-virtual {v14, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "location_notify_name"

    const-string v5, "location_notify_id"

    .line 250
    new-instance v4, Landroid/app/NotificationChannel;

    move-object/from16 v16, v3

    const/4 v3, 0x1

    invoke-direct {v4, v5, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x0

    .line 253
    invoke-virtual {v4, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 255
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 257
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v15, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v4, v15, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v5, v7

    move v15, v8

    const-wide/16 v7, 0x0

    .line 258
    invoke-virtual {v4, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 259
    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 260
    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v7, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v12, 0x0

    invoke-static {v7, v8, v14, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v7, -0x2

    .line 263
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    sget v7, Lcom/android/systemui/R$drawable;->mz_noti_icon_gps_1px:I

    .line 264
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 272
    new-instance v7, Landroid/content/Intent;

    const-string v8, "action_gps_in_using_kill_clicked"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "package"

    .line 273
    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v8, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v12, 0x0

    invoke-static {v8, v11, v7, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 275
    iget-object v8, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v11, Lcom/android/systemui/R$string;->location_kill_process:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v12, v8, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 278
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    const/4 v7, 0x2

    .line 280
    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 283
    iget-object v7, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    sget v8, Lcom/android/systemui/R$drawable;->mz_noti_icon_gps_in_using:I

    iput v8, v7, Landroid/app/NotificationExt;->notificationIcon:I

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LocationMonitor_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v8

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v8, v4, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 289
    iget-object v4, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_205

    :catch_1f8
    move-object/from16 v16, v3

    move-object v3, v4

    move-object v5, v7

    move v15, v8

    const/4 v12, 0x0

    const-string v4, "LocationMonitor"

    const-string v7, "getApplicationInfo error"

    .line 230
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_205
    add-int/lit8 v9, v9, 0x1

    move-object v4, v3

    move-object v7, v5

    move v8, v15

    move-object/from16 v3, v16

    goto/16 :goto_f6

    .line 293
    :cond_20e
    iget-object v3, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 295
    :cond_214
    :goto_214
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_244

    .line 296
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 297
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_214

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocationMonitor_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 298
    invoke-virtual {v0, v5, v4, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 300
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_214

    .line 305
    :cond_244
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_256

    const-string v0, "LocationMonitor"

    const-string v2, "clear mGpsNotificationsList"

    .line 306
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, v1, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->mGpsNotificationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_256
    .catchall {:try_start_140 .. :try_end_256} :catchall_258

    .line 309
    :cond_256
    monitor-exit p0

    return-void

    :catchall_258
    move-exception v0

    monitor-exit p0

    throw v0
.end method
