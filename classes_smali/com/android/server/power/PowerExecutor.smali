.class public Lcom/android/server/power/PowerExecutor;
.super Ljava/lang/Object;
.source "PowerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerExecutor$LazyHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SET_BLACK_LIST:I = 0x2

.field private static final SET_WHITE_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerExecutor"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mPms:Lcom/android/server/power/PowerManagerService;

.field private final mWakeLockBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLockWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerExecutor;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerExecutor;->mLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerExecutor;->mWakeLockWhiteList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerExecutor;->mWakeLockBlackList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/PowerExecutor;Ljava/lang/String;IZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/power/PowerExecutor;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # Z

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerExecutor;->setScreenWakeLockDisabledForPackageNameInner(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static getInstance()Lcom/android/server/power/PowerExecutor;
    .registers 1

    .line 58
    invoke-static {}, Lcom/android/server/power/PowerExecutor$LazyHolder;->access$100()Lcom/android/server/power/PowerExecutor;

    move-result-object v0

    return-object v0
.end method

.method private setScreenWakeLockDisabledForPackageNameInner(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "disable"  # Z

    .line 104
    iget-object v0, p0, Lcom/android/server/power/PowerExecutor;->mPms:Lcom/android/server/power/PowerManagerService;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerExecutor;->mPms:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setScreenWakeLockDisabledForPackageName(Ljava/lang/String;IZ)V

    .line 106
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private setWakeLockBlackList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/power/PowerExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerExecutor;->mWakeLockBlackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 115
    iget-object v1, p0, Lcom/android/server/power/PowerExecutor;->mWakeLockBlackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private setWakeLockWhiteList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/power/PowerExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/PowerExecutor;->mWakeLockWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 125
    iget-object v1, p0, Lcom/android/server/power/PowerExecutor;->mWakeLockWhiteList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method


# virtual methods
.method public initialize(Lcom/android/server/power/PowerManagerService;)V
    .registers 3
    .param p1, "ams"  # Lcom/android/server/power/PowerManagerService;

    .line 44
    iput-object p1, p0, Lcom/android/server/power/PowerExecutor;->mPms:Lcom/android/server/power/PowerManagerService;

    .line 45
    new-instance v0, Lcom/android/server/power/PowerExecutor$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerExecutor$1;-><init>(Lcom/android/server/power/PowerExecutor;)V

    iput-object v0, p0, Lcom/android/server/power/PowerExecutor;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method public isNeedDisable(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_6

    .line 89
    return v0

    .line 92
    :cond_6
    iget-object v1, p0, Lcom/android/server/power/PowerExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_9
    iget-object v2, p0, Lcom/android/server/power/PowerExecutor;->mWakeLockWhiteList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 94
    monitor-exit v1

    return v0

    .line 96
    :cond_13
    iget-object v2, p0, Lcom/android/server/power/PowerExecutor;->mWakeLockBlackList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 97
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 99
    :cond_1e
    monitor-exit v1

    .line 100
    return v0

    .line 99
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public setScreenWakeLockDisabledForPackageName(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "disable"  # Z

    .line 62
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 63
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 64
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 66
    xor-int/lit8 v1, p3, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 67
    iget-object v1, p0, Lcom/android/server/power/PowerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    return-void
.end method

.method public setWakeLockDisabledForUid(IZ)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "disable"  # Z

    .line 71
    iget-object v0, p0, Lcom/android/server/power/PowerExecutor;->mPms:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledForUidInternalForFreeze(IZ)V

    .line 72
    return-void
.end method

.method public setWakelockList(ILjava/util/List;)V
    .registers 5
    .param p1, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/power/PowerExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    .line 77
    :try_start_6
    invoke-direct {p0, p2}, Lcom/android/server/power/PowerExecutor;->setWakeLockWhiteList(Ljava/util/List;)V

    goto :goto_12

    .line 81
    :catchall_a
    move-exception v1

    goto :goto_14

    .line 78
    :cond_c
    const/4 v1, 0x2

    if-ne p1, v1, :cond_12

    .line 79
    invoke-direct {p0, p2}, Lcom/android/server/power/PowerExecutor;->setWakeLockBlackList(Ljava/util/List;)V

    .line 81
    :cond_12
    :goto_12
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_a

    throw v1
.end method
