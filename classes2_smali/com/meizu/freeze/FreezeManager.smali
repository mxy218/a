.class public Lcom/meizu/freeze/FreezeManager;
.super Ljava/lang/Object;
.source "FreezeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/freeze/FreezeManager$FreezeHandler;
    }
.end annotation


# static fields
.field private static final FORCE_FREEZE:I = 0x1

.field private static final FORCE_STOP:I = 0x3

.field private static final FORCE_UNFREEZE:I = 0x2

.field private static final FREEZE_FAST_FREEZE:I = 0x4

.field private static final FREEZE_FAST_UNFREEZE:I = 0x5

.field private static final FREEZE_FAST_UNFREEZE_PIDS:I = 0x6

.field private static final FREEZE_VERSION:I = 0x3

.field private static final MAX_BINDER_TIME:I = 0x32

.field private static final SIGNAL_CONT:I = 0x12

.field private static final SIGNAL_FREEZE:I = 0x13

.field private static final TAG:Ljava/lang/String; = "FreezeManager"


# instance fields
.field private DEBUG:Z

.field private mEnabled:Z

.field private mFastList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFreezing:Z

.field private mFrozenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/meizu/freeze/FreezeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

.field private mItemCache:Lcom/meizu/freeze/ItemCache;

.field private mRfPids:[I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"  # Landroid/os/Looper;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/freeze/FreezeManager;->DEBUG:Z

    .line 60
    iput-boolean v0, p0, Lcom/meizu/freeze/FreezeManager;->mEnabled:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    .line 62
    iput-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mItemCache:Lcom/meizu/freeze/ItemCache;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/freeze/FreezeManager;->mFreezing:Z

    .line 64
    iput-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mItemCache:Lcom/meizu/freeze/ItemCache;

    if-nez v0, :cond_2b

    .line 71
    new-instance v0, Lcom/meizu/freeze/ItemCache;

    invoke-direct {v0}, Lcom/meizu/freeze/ItemCache;-><init>()V

    iput-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mItemCache:Lcom/meizu/freeze/ItemCache;

    .line 73
    :cond_2b
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    if-nez v0, :cond_36

    .line 74
    new-instance v0, Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    invoke-direct {v0, p0, p1}, Lcom/meizu/freeze/FreezeManager$FreezeHandler;-><init>(Lcom/meizu/freeze/FreezeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    .line 76
    :cond_36
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/freeze/FreezeManager;I[ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"  # Lcom/meizu/freeze/FreezeManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # [I
    .param p3, "x3"  # Ljava/lang/String;
    .param p4, "x4"  # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/freeze/FreezeManager;->handleForcefreeze(I[ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/freeze/FreezeManager;I[ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"  # Lcom/meizu/freeze/FreezeManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # [I
    .param p3, "x3"  # Ljava/lang/String;
    .param p4, "x4"  # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/freeze/FreezeManager;->handleForceUnfreeze(I[ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/freeze/FreezeManager;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/meizu/freeze/FreezeManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/meizu/freeze/FreezeManager;->handleForceStopFreeze(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/freeze/FreezeManager;[IILjava/lang/String;J)V
    .registers 6
    .param p0, "x0"  # Lcom/meizu/freeze/FreezeManager;
    .param p1, "x1"  # [I
    .param p2, "x2"  # I
    .param p3, "x3"  # Ljava/lang/String;
    .param p4, "x4"  # J

    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/meizu/freeze/FreezeManager;->handleFastFreeze([IILjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/freeze/FreezeManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/meizu/freeze/FreezeManager;

    .line 43
    invoke-direct {p0}, Lcom/meizu/freeze/FreezeManager;->handleFastUnfreeze()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/freeze/FreezeManager;[I)V
    .registers 2
    .param p0, "x0"  # Lcom/meizu/freeze/FreezeManager;
    .param p1, "x1"  # [I

    .line 43
    invoke-direct {p0, p1}, Lcom/meizu/freeze/FreezeManager;->handleFastUnfreezePids([I)V

    return-void
.end method

.method private addFastPid(I)V
    .registers 5
    .param p1, "pid"  # I

    .line 610
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 611
    :try_start_3
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    monitor-exit v0

    .line 613
    return-void

    .line 612
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private checkFrozenByPidLocked(I)Z
    .registers 8
    .param p1, "pid"  # I

    .line 494
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 495
    :try_start_3
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 496
    .local v2, "u":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/freeze/FreezeItem;

    .line 497
    .local v3, "item":Lcom/meizu/freeze/FreezeItem;
    if-eqz v3, :cond_3f

    .line 498
    iget-object v4, v3, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 499
    .local v5, "p":I
    if-ne v5, p1, :cond_3e

    .line 500
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 502
    .end local v5  # "p":I
    :cond_3e
    goto :goto_29

    .line 504
    .end local v2  # "u":Ljava/lang/Integer;
    .end local v3  # "item":Lcom/meizu/freeze/FreezeItem;
    :cond_3f
    goto :goto_d

    .line 505
    :cond_40
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 506
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private checkFrozenLocked(I)Z
    .registers 6
    .param p1, "uid"  # I

    .line 483
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 484
    :try_start_3
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 485
    .local v2, "u":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_22

    .line 486
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 488
    .end local v2  # "u":Ljava/lang/Integer;
    :cond_22
    goto :goto_d

    .line 489
    :cond_23
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 490
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private checkPermission()Z
    .registers 3

    .line 414
    invoke-static {}, Lcom/android/server/am/AmsExecutor;->getInstance()Lcom/android/server/am/AmsExecutor;

    move-result-object v0

    const-string v1, "android.permission.FORCE_FREEZE_PACKAGES"

    invoke-virtual {v0, v1}, Lcom/android/server/am/AmsExecutor;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    .line 424
    const/4 v0, 0x1

    return v0

    .line 416
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeze: Permission Denial: forceFreezePackage() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires android.permission.FORCE_FREEZE_PACKAGES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "FreezeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkUidAndPids(I[ILjava/lang/String;)Z
    .registers 10
    .param p1, "uid"  # I
    .param p2, "pids"  # [I
    .param p3, "pkg"  # Ljava/lang/String;

    .line 428
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const-string v2, "FreezeManager"

    if-gt p1, v0, :cond_1c

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freeze invalid package ( not common app uid) :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return v1

    .line 434
    :cond_1c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    array-length v4, p2

    if-ge v3, v4, :cond_4b

    .line 435
    aget v4, p2, v3

    invoke-static {v4}, Landroid/os/Process;->getUidForPid(I)I

    move-result v4

    .line 436
    .local v4, "procUid":I
    if-eqz v4, :cond_2e

    if-ne v4, v0, :cond_2b

    goto :goto_2e

    .line 434
    .end local v4  # "procUid":I
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 439
    .restart local v4  # "procUid":I
    :cond_2e
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Freeze invalid pids ( not common app uid) :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " procUid:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return v1

    .line 444
    .end local v3  # "i":I
    .end local v4  # "procUid":I
    :cond_4b
    if-nez p3, :cond_53

    .line 445
    const-string v0, "Freeze invalid package null"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return v1

    .line 449
    :cond_53
    const/4 v0, 0x1

    return v0
.end method

.method private clearFastList()V
    .registers 3

    .line 593
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 594
    :try_start_3
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 595
    monitor-exit v0

    .line 596
    return-void

    .line 595
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private dequeueFrozenPackage(I[ILjava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "uid"  # I
    .param p2, "pids"  # [I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "reason"  # Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 558
    :try_start_3
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/freeze/FreezeItem;

    .line 559
    .local v1, "item":Lcom/meizu/freeze/FreezeItem;
    const/4 v2, -0x1

    if-eqz v1, :cond_58

    .line 560
    if-eqz p2, :cond_48

    if-nez p3, :cond_17

    goto :goto_48

    .line 564
    :cond_17
    iget-object v3, v1, Lcom/meizu/freeze/FreezeItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 565
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mItemCache:Lcom/meizu/freeze/ItemCache;

    invoke-virtual {v2, v1}, Lcom/meizu/freeze/ItemCache;->store(Lcom/meizu/freeze/FreezeItem;)V

    .line 566
    invoke-direct {p0, v1}, Lcom/meizu/freeze/FreezeManager;->unfreezePids(Lcom/meizu/freeze/FreezeItem;)V

    goto :goto_50

    .line 568
    :cond_28
    const-string v3, "FreezeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find unfreeze package in frozen queue! uid :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", package name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    monitor-exit v0

    return v2

    .line 561
    :cond_48
    :goto_48
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mItemCache:Lcom/meizu/freeze/ItemCache;

    invoke-virtual {v2, v1}, Lcom/meizu/freeze/ItemCache;->store(Lcom/meizu/freeze/FreezeItem;)V

    .line 562
    invoke-direct {p0, v1}, Lcom/meizu/freeze/FreezeManager;->unfreezePids(Lcom/meizu/freeze/FreezeItem;)V

    .line 578
    :goto_50
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    monitor-exit v0

    return v2

    .line 574
    :cond_58
    const-string v3, "FreezeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find unfreeze item in frozen queue! uid :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", package name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    monitor-exit v0

    return v2

    .line 579
    .end local v1  # "item":Lcom/meizu/freeze/FreezeItem;
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method private dump()V
    .registers 10

    .line 693
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 694
    :try_start_3
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 695
    .local v2, "key":Ljava/lang/Integer;
    const-string v3, "FreezeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v3, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/freeze/FreezeItem;

    .line 697
    .local v3, "item":Lcom/meizu/freeze/FreezeItem;
    const-string v4, "FreezeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/meizu/freeze/FreezeItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v4, "FreezeManager"

    const-string v5, "pids: "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v4, v3, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 700
    .local v5, "pid":Ljava/lang/Integer;
    const-string v6, "FreezeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "     "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    nop

    .end local v5  # "pid":Ljava/lang/Integer;
    goto :goto_5c

    .line 702
    .end local v2  # "key":Ljava/lang/Integer;
    .end local v3  # "item":Lcom/meizu/freeze/FreezeItem;
    :cond_80
    goto :goto_d

    .line 703
    :cond_81
    monitor-exit v0

    .line 704
    return-void

    .line 703
    :catchall_83
    move-exception v1

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_3 .. :try_end_85} :catchall_83

    throw v1
.end method

.method private fastFreezePids([I)V
    .registers 3
    .param p1, "pids"  # [I

    .line 626
    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Lcom/meizu/freeze/FreezeManager;->handleFreeze([II)V

    .line 627
    invoke-static {}, Lcom/meizu/freeze/FreezeRecord;->getInstance()Lcom/meizu/freeze/FreezeRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/freeze/FreezeRecord;->addFastFreezeRecord([I)V

    .line 628
    return-void
.end method

.method private fastUnfreeze([I)V
    .registers 3
    .param p1, "pids"  # [I

    .line 631
    const/16 v0, 0x12

    invoke-direct {p0, p1, v0}, Lcom/meizu/freeze/FreezeManager;->handleFreeze([II)V

    .line 632
    invoke-static {}, Lcom/meizu/freeze/FreezeRecord;->getInstance()Lcom/meizu/freeze/FreezeRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/freeze/FreezeRecord;->addFastUnfreezeRecord()V

    .line 633
    return-void
.end method

.method private fastUnfreezePidsLocked([I)V
    .registers 8
    .param p1, "pids"  # [I

    .line 374
    monitor-enter p0

    .line 376
    const/4 v0, 0x0

    move v1, v0

    .local v1, "index":I
    :goto_3
    :try_start_3
    array-length v2, p1

    if-ge v1, v2, :cond_3a

    .line 377
    aget v2, p1, v1

    invoke-direct {p0, v2}, Lcom/meizu/freeze/FreezeManager;->checkFrozenByPidLocked(I)Z

    move-result v2

    .line 378
    .local v2, "isFrozen":Z
    if-eqz v2, :cond_37

    .line 379
    const-string v3, "FreezeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped fast unfreeze pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as has been force frozen!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-boolean v3, p0, Lcom/meizu/freeze/FreezeManager;->DEBUG:Z

    if-eqz v3, :cond_32

    .line 381
    invoke-direct {p0}, Lcom/meizu/freeze/FreezeManager;->dump()V

    .line 383
    :cond_32
    aget v3, p1, v1

    invoke-direct {p0, v3}, Lcom/meizu/freeze/FreezeManager;->removeFastPid(I)V

    .line 376
    .end local v2  # "isFrozen":Z
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 387
    .end local v1  # "index":I
    :cond_3a
    nop

    .line 389
    invoke-static {}, Lcom/android/server/am/AmsExecutor;->getInstance()Lcom/android/server/am/AmsExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/AmsExecutor;->handleUnfreezeRecordsLocked([I)V

    .line 391
    iget-boolean v1, p0, Lcom/meizu/freeze/FreezeManager;->DEBUG:Z

    if-eqz v1, :cond_76

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v1, "pidsBuilder":Ljava/lang/StringBuilder;
    move v2, v0

    .local v2, "index":I
    :goto_4c
    array-length v3, p1

    if-ge v2, v3, :cond_60

    .line 394
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 397
    .end local v2  # "index":I
    :cond_60
    const-string v2, "FreezeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fast unfreeze pids:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .end local v1  # "pidsBuilder":Ljava/lang/StringBuilder;
    :cond_76
    invoke-direct {p0, p1}, Lcom/meizu/freeze/FreezeManager;->fastUnfreeze([I)V

    .line 405
    nop

    .local v0, "index":I
    :goto_7a
    array-length v1, p1

    if-ge v0, v1, :cond_85

    .line 406
    aget v1, p1, v0

    invoke-direct {p0, v1}, Lcom/meizu/freeze/FreezeManager;->removeFastPid(I)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 410
    .end local v0  # "index":I
    :cond_85
    monitor-exit p0

    .line 411
    return-void

    .line 410
    :catchall_87
    move-exception v0

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    throw v0
.end method

.method private freezePids(Lcom/meizu/freeze/FreezeItem;)V
    .registers 3
    .param p1, "item"  # Lcom/meizu/freeze/FreezeItem;

    .line 616
    invoke-direct {p0, p1}, Lcom/meizu/freeze/FreezeManager;->freezePidsLocked(Lcom/meizu/freeze/FreezeItem;)V

    .line 617
    invoke-static {}, Lcom/meizu/freeze/FreezeRecord;->getInstance()Lcom/meizu/freeze/FreezeRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/freeze/FreezeRecord;->addUnfreezeRecord(Lcom/meizu/freeze/FreezeItem;)V

    .line 618
    return-void
.end method

.method private freezePidsLocked(Lcom/meizu/freeze/FreezeItem;)V
    .registers 7
    .param p1, "item"  # Lcom/meizu/freeze/FreezeItem;

    .line 636
    monitor-enter p0

    .line 637
    :try_start_1
    iget-object v0, p1, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 638
    .local v1, "pid":Ljava/lang/Integer;
    iget v2, p1, Lcom/meizu/freeze/FreezeItem;->mUid:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x13

    invoke-direct {p0, v2, v3, v4}, Lcom/meizu/freeze/FreezeManager;->handleFreeze(III)V

    .line 639
    const-string v2, "FreezeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Prepare freeze uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/meizu/freeze/FreezeItem;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    nop

    .end local v1  # "pid":Ljava/lang/Integer;
    goto :goto_7

    .line 641
    :cond_40
    monitor-exit p0

    .line 642
    return-void

    .line 641
    :catchall_42
    move-exception v0

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    throw v0
.end method

.method private getFreezePidsByUid(I)[I
    .registers 8
    .param p1, "uid"  # I

    .line 510
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 511
    :try_start_3
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/freeze/FreezeItem;

    .line 512
    .local v1, "item":Lcom/meizu/freeze/FreezeItem;
    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 513
    iget-object v3, v1, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 514
    .local v3, "size":I
    const/4 v4, 0x1

    if-ge v3, v4, :cond_1d

    monitor-exit v0

    return-object v2

    .line 515
    :cond_1d
    new-array v2, v3, [I

    .line 516
    .local v2, "pids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, v3, :cond_33

    .line 517
    iget-object v5, v1, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    .line 516
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 519
    .end local v4  # "i":I
    :cond_33
    monitor-exit v0

    return-object v2

    .line 521
    .end local v2  # "pids":[I
    .end local v3  # "size":I
    :cond_35
    monitor-exit v0

    return-object v2

    .line 522
    .end local v1  # "item":Lcom/meizu/freeze/FreezeItem;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private getPackageNameByUid(I)Ljava/lang/String;
    .registers 7
    .param p1, "uid"  # I

    .line 526
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 527
    :try_start_3
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 528
    .local v2, "u":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_31

    .line 529
    iget-object v3, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/freeze/FreezeItem;

    .line 530
    .local v3, "item":Lcom/meizu/freeze/FreezeItem;
    if-eqz v3, :cond_31

    .line 531
    iget-object v1, v3, Lcom/meizu/freeze/FreezeItem;->mPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 534
    .end local v2  # "u":Ljava/lang/Integer;
    .end local v3  # "item":Lcom/meizu/freeze/FreezeItem;
    :cond_31
    goto :goto_d

    .line 535
    :cond_32
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 536
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private getRealFastFreezePids()[I
    .registers 5

    .line 599
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 600
    :try_start_3
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_f

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 601
    :cond_f
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 602
    .local v1, "fpids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    iget-object v3, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 603
    iget-object v3, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 605
    .end local v2  # "i":I
    :cond_31
    monitor-exit v0

    return-object v1

    .line 606
    .end local v1  # "fpids":[I
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method private getUidByPkgAndUserId(Ljava/lang/String;I)I
    .registers 8
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 470
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 471
    :try_start_3
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 472
    .local v2, "u":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/freeze/FreezeItem;

    .line 473
    .local v3, "item":Lcom/meizu/freeze/FreezeItem;
    if-eqz v3, :cond_3d

    .line 474
    if-eqz p1, :cond_3d

    iget-object v4, v3, Lcom/meizu/freeze/FreezeItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_3d

    .line 475
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 477
    .end local v2  # "u":Ljava/lang/Integer;
    .end local v3  # "item":Lcom/meizu/freeze/FreezeItem;
    :cond_3d
    goto :goto_d

    .line 478
    :cond_3e
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 479
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private handleFastFreeze([IILjava/lang/String;J)V
    .registers 15
    .param p1, "pids"  # [I
    .param p2, "intervalTime"  # I
    .param p3, "pkgName"  # Ljava/lang/String;
    .param p4, "nowTime"  # J

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cur package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreezeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 278
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v4, p4, v2

    if-eqz v4, :cond_48

    .line 279
    sub-long v4, v0, p4

    .line 280
    .local v4, "during":J
    cmp-long v2, v4, v2

    if-ltz v2, :cond_2c

    const-wide/16 v2, 0x32

    cmp-long v2, v4, v2

    if-lez v2, :cond_48

    .line 281
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binder timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FreezeManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 285
    .end local v4  # "during":J
    :cond_48
    monitor-enter p0

    .line 286
    :try_start_49
    iget-boolean v2, p0, Lcom/meizu/freeze/FreezeManager;->mFreezing:Z

    if-nez v2, :cond_115

    if-lez p2, :cond_115

    .line 287
    const/4 v2, 0x0

    move v3, v2

    .local v3, "index":I
    :goto_51
    array-length v4, p1

    if-ge v3, v4, :cond_c3

    .line 288
    aget v4, p1, v3

    invoke-static {v4}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v4

    aget v5, p1, v3

    if-eq v4, v5, :cond_77

    .line 289
    const-string v4, "FreezeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isn\'t a process"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    goto :goto_c0

    .line 292
    :cond_77
    aget v4, p1, v3

    invoke-direct {p0, v4}, Lcom/meizu/freeze/FreezeManager;->checkFrozenByPidLocked(I)Z

    move-result v4

    .line 293
    .local v4, "isFrozen":Z
    invoke-static {}, Lcom/android/server/am/AmsExecutor;->getInstance()Lcom/android/server/am/AmsExecutor;

    move-result-object v5

    aget v6, p1, v3

    invoke-virtual {v5, v6, p3}, Lcom/android/server/am/AmsExecutor;->checkFreezeRefAndUpdateStatusLocked(ILjava/lang/String;)Z

    move-result v5

    .line 294
    .local v5, "willFreeze":Z
    if-nez v4, :cond_91

    if-eqz v5, :cond_91

    .line 295
    aget v6, p1, v3

    invoke-direct {p0, v6}, Lcom/meizu/freeze/FreezeManager;->addFastPid(I)V

    goto :goto_c0

    .line 297
    :cond_91
    const-string v6, "FreezeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped fast freeze pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, p1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " isFrozen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", willFreeze = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-boolean v6, p0, Lcom/meizu/freeze/FreezeManager;->DEBUG:Z

    if-eqz v6, :cond_c0

    .line 300
    invoke-direct {p0}, Lcom/meizu/freeze/FreezeManager;->dump()V

    .line 287
    .end local v4  # "isFrozen":Z
    .end local v5  # "willFreeze":Z
    :cond_c0
    :goto_c0
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 306
    .end local v3  # "index":I
    :cond_c3
    invoke-direct {p0}, Lcom/meizu/freeze/FreezeManager;->getRealFastFreezePids()[I

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    .line 309
    iget-object v3, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    if-eqz v3, :cond_115

    .line 310
    iget-boolean v3, p0, Lcom/meizu/freeze/FreezeManager;->DEBUG:Z

    if-eqz v3, :cond_105

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v3, "pidsBuilder":Ljava/lang/StringBuilder;
    nop

    .local v2, "index":I
    :goto_d7
    iget-object v4, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    array-length v4, v4

    if-ge v2, v4, :cond_ef

    .line 313
    iget-object v4, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_d7

    .line 316
    .end local v2  # "index":I
    :cond_ef
    const-string v2, "FreezeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fast freeze pids:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v3  # "pidsBuilder":Ljava/lang/StringBuilder;
    :cond_105
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    if-eqz v2, :cond_112

    .line 319
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    invoke-direct {p0, v2}, Lcom/meizu/freeze/FreezeManager;->fastFreezePids([I)V

    .line 320
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/meizu/freeze/FreezeManager;->scheduleFastUnfreeze(J)V

    .line 324
    :cond_112
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/freeze/FreezeManager;->mFreezing:Z

    .line 327
    :cond_115
    monitor-exit p0

    .line 328
    return-void

    .line 327
    :catchall_117
    move-exception v2

    monitor-exit p0
    :try_end_119
    .catchall {:try_start_49 .. :try_end_119} :catchall_117

    throw v2
.end method

.method private handleFastUnfreeze()V
    .registers 7

    .line 331
    monitor-enter p0

    .line 333
    const/4 v0, 0x0

    move v1, v0

    .local v1, "index":I
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    array-length v2, v2

    if-ge v1, v2, :cond_42

    .line 334
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lcom/meizu/freeze/FreezeManager;->checkFrozenByPidLocked(I)Z

    move-result v2

    .line 335
    .local v2, "isFrozen":Z
    if-eqz v2, :cond_3f

    .line 336
    const-string v3, "FreezeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped fast unfreeze pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as has been force frozen!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-boolean v3, p0, Lcom/meizu/freeze/FreezeManager;->DEBUG:Z

    if-eqz v3, :cond_38

    .line 338
    invoke-direct {p0}, Lcom/meizu/freeze/FreezeManager;->dump()V

    .line 340
    :cond_38
    iget-object v3, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/meizu/freeze/FreezeManager;->removeFastPid(I)V

    .line 333
    .end local v2  # "isFrozen":Z
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 344
    .end local v1  # "index":I
    :cond_42
    invoke-direct {p0}, Lcom/meizu/freeze/FreezeManager;->getRealFastFreezePids()[I

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    .line 345
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    if-eqz v1, :cond_95

    .line 347
    invoke-static {}, Lcom/android/server/am/AmsExecutor;->getInstance()Lcom/android/server/am/AmsExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    invoke-virtual {v1, v2}, Lcom/android/server/am/AmsExecutor;->handleUnfreezeRecordsLocked([I)V

    .line 349
    iget-boolean v1, p0, Lcom/meizu/freeze/FreezeManager;->DEBUG:Z

    if-eqz v1, :cond_8d

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v1, "pidsBuilder":Ljava/lang/StringBuilder;
    move v2, v0

    .local v2, "index":I
    :goto_5f
    iget-object v3, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    array-length v3, v3

    if-ge v2, v3, :cond_77

    .line 352
    iget-object v3, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 355
    .end local v2  # "index":I
    :cond_77
    const-string v2, "FreezeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fast unfreeze pids:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v1  # "pidsBuilder":Ljava/lang/StringBuilder;
    :cond_8d
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mRfPids:[I

    invoke-direct {p0, v1}, Lcom/meizu/freeze/FreezeManager;->fastUnfreeze([I)V

    .line 362
    invoke-direct {p0}, Lcom/meizu/freeze/FreezeManager;->clearFastList()V

    .line 364
    :cond_95
    iput-boolean v0, p0, Lcom/meizu/freeze/FreezeManager;->mFreezing:Z

    .line 365
    monitor-exit p0

    .line 366
    return-void

    .line 365
    :catchall_99
    move-exception v0

    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_3 .. :try_end_9b} :catchall_99

    throw v0
.end method

.method private handleFastUnfreezePids([I)V
    .registers 3
    .param p1, "pids"  # [I

    .line 369
    invoke-direct {p0, p1}, Lcom/meizu/freeze/FreezeManager;->fastUnfreezePidsLocked([I)V

    .line 370
    invoke-static {}, Lcom/meizu/freeze/FreezeRecord;->getInstance()Lcom/meizu/freeze/FreezeRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/freeze/FreezeRecord;->addFastUnfreezeRecord([I)V

    .line 371
    return-void
.end method

.method private handleForceStopFreeze(ILjava/lang/String;)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "pkg"  # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/freeze/FreezeItem;

    .line 263
    .local v1, "item":Lcom/meizu/freeze/FreezeItem;
    if-eqz v1, :cond_71

    .line 264
    if-eqz p2, :cond_40

    iget-object v2, v1, Lcom/meizu/freeze/FreezeItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_40

    .line 269
    :cond_1c
    const-string v2, "FreezeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Can\'t find remove killed package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from freeze list!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 265
    :cond_40
    :goto_40
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mItemCache:Lcom/meizu/freeze/ItemCache;

    invoke-virtual {v2, v1}, Lcom/meizu/freeze/ItemCache;->store(Lcom/meizu/freeze/FreezeItem;)V

    .line 266
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v2, "FreezeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Remove killed package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from freeze list!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v1  # "item":Lcom/meizu/freeze/FreezeItem;
    :cond_71
    :goto_71
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_73

    throw v1
.end method

.method private handleForceUnfreeze(I[ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "pids"  # [I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "reason"  # Ljava/lang/String;

    .line 231
    monitor-enter p0

    .line 232
    :try_start_1
    const-string v0, "FreezeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceUnfreeze uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0}, Lcom/meizu/freeze/FreezeManager;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 235
    monitor-exit p0

    return-void

    .line 239
    :cond_2f
    if-nez p2, :cond_3a

    .line 240
    invoke-direct {p0, p1}, Lcom/meizu/freeze/FreezeManager;->getFreezePidsByUid(I)[I

    move-result-object v0

    move-object p2, v0

    .line 241
    if-nez p2, :cond_3a

    .line 242
    monitor-exit p0

    return-void

    .line 245
    :cond_3a
    invoke-static {}, Lcom/android/server/am/AmsExecutor;->getInstance()Lcom/android/server/am/AmsExecutor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/AmsExecutor;->handleUnfreezeRecordsLocked([I)V

    .line 247
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/freeze/FreezeManager;->dequeueFrozenPackage(I[ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, "find":I
    if-gez v0, :cond_49

    .line 249
    monitor-exit p0

    return-void

    .line 253
    :cond_49
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/meizu/freeze/FreezeManager;->setWakeLockDisabledForUid(IZ)V

    .line 256
    invoke-direct {p0, p1, p3}, Lcom/meizu/freeze/FreezeManager;->restoreUpdatesForPowerSaveAsUser(ILjava/lang/String;)V

    .line 257
    .end local v0  # "find":I
    monitor-exit p0

    .line 258
    return-void

    .line 257
    :catchall_52
    move-exception v0

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_52

    throw v0
.end method

.method private handleForcefreeze(I[ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "uid"  # I
    .param p2, "pids"  # [I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "reason"  # Ljava/lang/String;

    .line 181
    monitor-enter p0

    .line 182
    :try_start_1
    const-string v0, "FreezeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceFreeze uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/meizu/freeze/FreezeManager;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 185
    monitor-exit p0

    return-void

    .line 189
    :cond_2f
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/freeze/FreezeManager;->checkUidAndPids(I[ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 190
    monitor-exit p0

    return-void

    .line 195
    :cond_37
    const/4 v0, 0x0

    .line 196
    .local v0, "isVisiblePkg":Z
    array-length v1, p2

    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v1, :cond_4d

    aget v3, p2, v2

    .line 197
    .local v3, "pid":I
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v4

    invoke-virtual {v4, v3, p3}, Lcom/meizu/pps/observer/PPSProcessManager;->isVisible(ILjava/lang/String;)Z

    move-result v4

    move v0, v4

    .line 198
    if-eqz v0, :cond_4a

    .line 199
    goto :goto_4d

    .line 196
    .end local v3  # "pid":I
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 203
    :cond_4d
    :goto_4d
    if-eqz v0, :cond_6f

    .line 204
    const-string v1, "FreezeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepare freeze top active package uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    monitor-exit p0

    return-void

    .line 209
    :cond_6f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/freeze/FreezeManager;->inqueueFrozenPackage(I[ILjava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/android/server/am/AmsExecutor;->getInstance()Lcom/android/server/am/AmsExecutor;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/AmsExecutor;->handleFrozenPendingIntentRecordLocked(ILjava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/android/server/am/AmsExecutor;->getInstance()Lcom/android/server/am/AmsExecutor;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/AmsExecutor;->handleFreezeServiceLocked([ILjava/lang/String;)V

    .line 219
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/meizu/freeze/FreezeManager;->setWakeLockDisabledForUid(IZ)V

    .line 222
    invoke-direct {p0, p1, p3}, Lcom/meizu/freeze/FreezeManager;->removeUpdatesForPowerSaveAsUser(ILjava/lang/String;)V

    .line 227
    .end local v0  # "isVisiblePkg":Z
    monitor-exit p0

    .line 228
    return-void

    .line 227
    :catchall_89
    move-exception v0

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_1 .. :try_end_8b} :catchall_89

    throw v0
.end method

.method private handleFreeze(III)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "pid"  # I
    .param p3, "sig"  # I

    .line 674
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xdc3371

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 675
    const-string v0, "FreezeManager"

    const/16 v1, 0x12

    const/16 v2, 0x13

    if-ne p3, v2, :cond_2c

    .line 676
    const-string v2, "Freeze: will freeze procs"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 677
    :cond_2c
    if-ne p3, v1, :cond_3c

    .line 678
    const-string v2, "Freeze: will unfreeze procs"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :goto_33
    invoke-static {p2, p3}, Landroid/os/Process;->sendSignal(II)V

    .line 686
    if-ne p3, v1, :cond_3b

    .line 687
    invoke-direct {p0, p2}, Lcom/meizu/freeze/FreezeManager;->notifyUnfreeze(I)V

    .line 690
    :cond_3b
    return-void

    .line 680
    :cond_3c
    return-void
.end method

.method private handleFreeze([II)V
    .registers 6
    .param p1, "pids"  # [I
    .param p2, "sig"  # I

    .line 654
    const-string v0, "FreezeManager"

    const/16 v1, 0x12

    const/16 v2, 0x13

    if-ne p2, v2, :cond_e

    .line 655
    const-string v2, "Freeze: will fast freeze procs"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 656
    :cond_e
    if-ne p2, v1, :cond_27

    .line 657
    const-string v2, "Freeze: will fast unfreeze procs"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :goto_15
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_16
    array-length v2, p1

    if-ge v0, v2, :cond_21

    .line 662
    aget v2, p1, v0

    invoke-static {v2, p2}, Landroid/os/Process;->sendSignal(II)V

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 667
    .end local v0  # "index":I
    :cond_21
    if-ne p2, v1, :cond_26

    .line 668
    invoke-direct {p0, p1}, Lcom/meizu/freeze/FreezeManager;->notifyUnfreeze([I)V

    .line 671
    :cond_26
    return-void

    .line 659
    :cond_27
    return-void
.end method

.method private inqueueFrozenPackage(I[ILjava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "uid"  # I
    .param p2, "pids"  # [I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "reason"  # Ljava/lang/String;

    .line 540
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 542
    :try_start_3
    invoke-direct {p0, p1}, Lcom/meizu/freeze/FreezeManager;->checkFrozenLocked(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 543
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_12
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mItemCache:Lcom/meizu/freeze/ItemCache;

    invoke-virtual {v1}, Lcom/meizu/freeze/ItemCache;->malloc()Lcom/meizu/freeze/FreezeItem;

    move-result-object v1

    .line 546
    .local v1, "item":Lcom/meizu/freeze/FreezeItem;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/meizu/freeze/FreezeItem;->reinitItem(I[ILjava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-direct {p0, v1}, Lcom/meizu/freeze/FreezeManager;->freezePids(Lcom/meizu/freeze/FreezeItem;)V

    .line 552
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    monitor-exit v0

    return v2

    .line 553
    .end local v1  # "item":Lcom/meizu/freeze/FreezeItem;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private notifyUnfreeze(I)V
    .registers 4
    .param p1, "pid"  # I

    .line 751
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 752
    .local v0, "pids":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 753
    invoke-direct {p0, v0}, Lcom/meizu/freeze/FreezeManager;->notifyUnfreeze([I)V

    .line 754
    return-void
.end method

.method private notifyUnfreeze([I)V
    .registers 3
    .param p1, "pids"  # [I

    .line 757
    invoke-static {}, Lcom/meizu/datamanager/PerfDataInject;->getInstance()Lcom/meizu/datamanager/PerfDataInject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/datamanager/PerfDataInject;->reportUnfreeze([I)V

    .line 758
    return-void
.end method

.method private removeFastPid(I)V
    .registers 5
    .param p1, "pid"  # I

    .line 583
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 584
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 585
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1f

    .line 586
    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mFastList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 584
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 589
    .end local v1  # "index":I
    :cond_22
    monitor-exit v0

    .line 590
    return-void

    .line 589
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private removeUpdatesForPowerSaveAsUser(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeze: freezePackageProcessesLocked removeUpdatesForPowerSaveAsUser : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreezeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 460
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/lm/LmsExecutor;->getInstance()Lcom/android/server/lm/LmsExecutor;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/server/lm/LmsExecutor;->removeUpdatesForPowerSave(Ljava/lang/String;I)V

    .line 461
    return-void
.end method

.method private restoreUpdatesForPowerSaveAsUser(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeze: unfreezePackageProcessesLocked restoreUpdatesForPowerSave : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreezeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 466
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/lm/LmsExecutor;->getInstance()Lcom/android/server/lm/LmsExecutor;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/server/lm/LmsExecutor;->restoreUpdatesForPowerSave(Ljava/lang/String;I)V

    .line 467
    return-void
.end method

.method private sendForceStopFreezeMessage(ILjava/lang/String;)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "pkg"  # Ljava/lang/String;

    .line 166
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 168
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 170
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 171
    return-void
.end method

.method private sendUnfreezeMessage([I)V
    .registers 4
    .param p1, "pids"  # [I

    .line 174
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 175
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 178
    return-void
.end method

.method private setWakeLockDisabledForUid(IZ)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "disable"  # Z

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeze: setWakeLockDisabledForUid  wakelock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreezeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/android/server/power/PowerExecutor;->getInstance()Lcom/android/server/power/PowerExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerExecutor;->setWakeLockDisabledForUid(IZ)V

    .line 455
    return-void
.end method

.method private unfreezePids(Lcom/meizu/freeze/FreezeItem;)V
    .registers 3
    .param p1, "item"  # Lcom/meizu/freeze/FreezeItem;

    .line 621
    invoke-direct {p0, p1}, Lcom/meizu/freeze/FreezeManager;->unfreezePidsLocked(Lcom/meizu/freeze/FreezeItem;)V

    .line 622
    invoke-static {}, Lcom/meizu/freeze/FreezeRecord;->getInstance()Lcom/meizu/freeze/FreezeRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/freeze/FreezeRecord;->addUnfreezeRecord(Lcom/meizu/freeze/FreezeItem;)V

    .line 623
    return-void
.end method

.method private unfreezePidsLocked(Lcom/meizu/freeze/FreezeItem;)V
    .registers 7
    .param p1, "item"  # Lcom/meizu/freeze/FreezeItem;

    .line 645
    monitor-enter p0

    .line 646
    :try_start_1
    iget-object v0, p1, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 647
    .local v1, "pid":Ljava/lang/Integer;
    iget v2, p1, Lcom/meizu/freeze/FreezeItem;->mUid:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x12

    invoke-direct {p0, v2, v3, v4}, Lcom/meizu/freeze/FreezeManager;->handleFreeze(III)V

    .line 648
    const-string v2, "FreezeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Prepare unfreeze uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/meizu/freeze/FreezeItem;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    nop

    .end local v1  # "pid":Ljava/lang/Integer;
    goto :goto_7

    .line 650
    :cond_40
    monitor-exit p0

    .line 651
    return-void

    .line 650
    :catchall_42
    move-exception v0

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    throw v0
.end method


# virtual methods
.method public checkFrozen(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 138
    invoke-direct {p0, p1}, Lcom/meizu/freeze/FreezeManager;->checkFrozenLocked(I)Z

    move-result v0

    return v0
.end method

.method public checkFrozenByPid(I)Z
    .registers 3
    .param p1, "pid"  # I

    .line 142
    invoke-direct {p0, p1}, Lcom/meizu/freeze/FreezeManager;->checkFrozenByPidLocked(I)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 151
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrozenMap size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 153
    .local v2, "key":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/meizu/freeze/FreezeManager;->mFrozenMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/freeze/FreezeItem;

    .line 155
    .local v3, "item":Lcom/meizu/freeze/FreezeItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/meizu/freeze/FreezeItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    const-string v4, "pids: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    iget-object v4, v3, Lcom/meizu/freeze/FreezeItem;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_70
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 158
    .local v5, "pid":Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .end local v5  # "pid":Ljava/lang/Integer;
    goto :goto_70

    .line 160
    .end local v2  # "key":Ljava/lang/Integer;
    .end local v3  # "item":Lcom/meizu/freeze/FreezeItem;
    :cond_91
    goto :goto_27

    .line 161
    :cond_92
    invoke-static {}, Lcom/meizu/freeze/FreezeRecord;->getInstance()Lcom/meizu/freeze/FreezeRecord;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/meizu/freeze/FreezeRecord;->dump(Ljava/io/PrintWriter;)V

    .line 162
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_9b
    move-exception v1

    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_3 .. :try_end_9d} :catchall_9b

    throw v1
.end method

.method public getFreezeVersion()I
    .registers 2

    .line 146
    const/4 v0, 0x3

    return v0
.end method

.method public scheduleFastFreeze([IILjava/lang/String;J)V
    .registers 14
    .param p1, "pids"  # [I
    .param p2, "intervalTime"  # I
    .param p3, "pkgName"  # Ljava/lang/String;
    .param p4, "nowTime"  # J

    .line 130
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    new-instance v7, Lcom/meizu/freeze/FastFreezeInfo;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/meizu/freeze/FastFreezeInfo;-><init>([IILjava/lang/String;J)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v7}, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method

.method public scheduleFastUnfreeze(J)V
    .registers 5
    .param p1, "intervalTime"  # J

    .line 134
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    return-void
.end method

.method public scheduleForceFreeze(I[ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "pids"  # [I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "reason"  # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    new-instance v1, Lcom/meizu/freeze/FreezeInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/meizu/freeze/FreezeInfo;-><init>(I[ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 80
    return-void
.end method

.method public scheduleForceStopFreeze(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "pkg"  # Ljava/lang/String;

    .line 87
    if-eqz p2, :cond_1b

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleForceStopFreeze packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreezeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/meizu/freeze/FreezeManager;->sendForceStopFreezeMessage(ILjava/lang/String;)V

    .line 91
    :cond_1b
    return-void
.end method

.method public scheduleForceUnfreeze(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 94
    invoke-direct {p0, p1}, Lcom/meizu/freeze/FreezeManager;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleForceUnfreeze packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FreezeManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    const/4 v2, 0x2

    new-instance v3, Lcom/meizu/freeze/FreezeInfo;

    invoke-direct {v3, p1, v0}, Lcom/meizu/freeze/FreezeInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 99
    :cond_2b
    return-void
.end method

.method public scheduleForceUnfreeze(I[I)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "pids"  # [I

    .line 102
    invoke-direct {p0, p1}, Lcom/meizu/freeze/FreezeManager;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_2c

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleForceUnfreeze packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FreezeManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    const/4 v2, 0x2

    new-instance v3, Lcom/meizu/freeze/FreezeInfo;

    invoke-direct {v3, p1, v0}, Lcom/meizu/freeze/FreezeInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2f

    .line 108
    :cond_2c
    invoke-direct {p0, p2}, Lcom/meizu/freeze/FreezeManager;->sendUnfreezeMessage([I)V

    .line 110
    :goto_2f
    return-void
.end method

.method public scheduleForceUnfreeze(I[ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "pids"  # [I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "reason"  # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/meizu/freeze/FreezeManager;->mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    new-instance v1, Lcom/meizu/freeze/FreezeInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/meizu/freeze/FreezeInfo;-><init>(I[ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    return-void
.end method

.method public scheduleForceUnfreeze(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/meizu/freeze/FreezeManager;->getUidByPkgAndUserId(Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, "uid":I
    const-string v1, " userId:"

    const-string v2, "FreezeManager"

    if-gez v0, :cond_25

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find valid uid with package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 118
    :cond_25
    invoke-direct {p0, v0}, Lcom/meizu/freeze/FreezeManager;->checkFrozenLocked(I)Z

    move-result v3

    .line 119
    .local v3, "frozen":Z
    if-nez v3, :cond_4e

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not frozen yet! with package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 123
    :cond_4e
    if-eqz p1, :cond_73

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduleForceUnfreeze as visible packageName = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/meizu/freeze/FreezeManager;->mHandler:Lcom/meizu/freeze/FreezeManager$FreezeHandler;

    const/4 v2, 0x2

    new-instance v4, Lcom/meizu/freeze/FreezeInfo;

    invoke-direct {v4, v0, p1}, Lcom/meizu/freeze/FreezeInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/meizu/freeze/FreezeManager$FreezeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 127
    :cond_73
    return-void
.end method
