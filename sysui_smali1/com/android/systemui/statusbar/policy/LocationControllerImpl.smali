.class public Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "LocationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final mHighPowerRequestAppOpArray:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAreActiveLocationRequests:Z

.field private final mCallbacksLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWhiteList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput v2, v0, v1

    .line 57
    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 10
    .param p2  # Landroid/os/Looper;
        .annotation runtime Ljavax/inject/Named;
            value = "background_looper"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .line 322
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->mz_gps_white_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mWhiteList:[Ljava/lang/String;

    .line 80
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.location.HIGH_POWER_REQUEST_CHANGE"

    .line 81
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.location.MODE_CHANGED"

    .line 82
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string p2, "appops"

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string/jumbo p2, "statusbar"

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/StatusBarManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    .line 94
    new-instance p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/lang/Object;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/ArrayList;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    return p0
.end method

.method private getUsingGpsApp()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p0

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_10

    return-object v0

    .line 290
    :cond_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsingGpsApp: runningPackages size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationControllerImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v4, v2

    :goto_2c
    if-ge v4, v1, :cond_a8

    .line 293
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 294
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_3b

    goto :goto_a5

    .line 298
    :cond_3b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUsingGpsApp: pkg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v2

    :goto_60
    if-ge v8, v7, :cond_a5

    .line 301
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$OpEntry;

    .line 302
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v10

    const/16 v11, 0x2a

    if-eq v10, v11, :cond_71

    goto :goto_a2

    .line 305
    :cond_71
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 306
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_7e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getUsingGpsApp: activePkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",isRunning="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 308
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a2
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    :cond_a5
    :goto_a5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_a8
    return-object v0
.end method

.method private isAllowGPSIconShowing()Z
    .registers 8

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->getUsingGpsApp()Ljava/util/List;

    move-result-object v0

    const-string v1, "LocationControllerImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    const-string p0, "isAllowGPSIconShowing: runningPackages null"

    .line 266
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 270
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mWhiteList:[Ljava/lang/String;

    array-length v3, p0

    move v4, v2

    :goto_13
    if-ge v4, v3, :cond_23

    aget-object v5, p0, v4

    .line 271
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 272
    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 276
    :cond_23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAllowGPSIconShowing: running app beside white list = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 279
    :cond_48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_4f

    const/4 v2, 0x1

    :cond_4f
    return v2
.end method

.method private isUserLocationRestricted(I)Z
    .registers 3

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 162
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-string v0, "no_share_location"

    .line 161
    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private updateActiveLocationRequests()V
    .registers 3

    .line 199
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isAllowGPSIconShowing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 206
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    if-eq v1, v0, :cond_12

    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_12
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 54
    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method

.method protected areActiveHighPowerLocationRequests()Z
    .registers 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    .line 171
    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_41

    .line 174
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_10
    if-ge v2, v1, :cond_41

    .line 176
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$PackageOps;

    .line 177
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 179
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v0

    :goto_23
    if-ge v5, v4, :cond_3e

    .line 181
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 184
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v7

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_3b

    .line 185
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 p0, 0x1

    return p0

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_41
    return v0
.end method

.method public isLocationActive()Z
    .registers 1

    .line 153
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    return p0
.end method

.method public isLocationEnabled()Z
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "location"

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 148
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive:action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LocationControllerImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.location.HIGH_POWER_REQUEST_CHANGE"

    .line 216
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    goto :goto_34

    :cond_26
    const-string p2, "android.location.MODE_CHANGED"

    .line 218
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 219
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_34
    :goto_34
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 54
    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method

.method public setLocationEnabled(Z)Z
    .registers 4

    .line 128
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 129
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isUserLocationRestricted(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 134
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/android/settingslib/Utils;->updateLocationEnabled(Landroid/content/Context;ZII)V

    const/4 p0, 0x1

    return p0
.end method
