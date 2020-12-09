.class public Lcom/android/server/appop/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;,
        Lcom/android/server/appop/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/appop/AppOpsService$Restriction;,
        Lcom/android/server/appop/AppOpsService$Shell;,
        Lcom/android/server/appop/AppOpsService$ChangeRec;,
        Lcom/android/server/appop/AppOpsService$ClientState;,
        Lcom/android/server/appop/AppOpsService$NotedCallback;,
        Lcom/android/server/appop/AppOpsService$ActiveCallback;,
        Lcom/android/server/appop/AppOpsService$ModeCallback;,
        Lcom/android/server/appop/AppOpsService$Op;,
        Lcom/android/server/appop/AppOpsService$Ops;,
        Lcom/android/server/appop/AppOpsService$UidState;,
        Lcom/android/server/appop/AppOpsService$Constants;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field static final DEBUG:Z = false

.field private static final NO_VERSION:I = -0x1

.field private static final OPS_RESTRICTED_ON_SUSPEND:[I

.field private static final PROCESS_STATE_TO_UID_STATE:[I

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final UID_ANY:I = -0x2

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$ActiveCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field final mConstants:Lcom/android/server/appop/AppOpsService$Constants;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

.field mLastRealtime:J

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mNotedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$NotedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfileOwners:Landroid/util/SparseIntArray;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 155
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    .line 181
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-void

    :array_12
    .array-data 4
        0x64
        0x64
        0xc8
        0x12c
        0x1f4
        0x190
        0x1f4
        0x1f4
        0x258
        0x258
        0x258
        0x258
        0x258
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
    .end array-data

    :array_42
    .array-data 4
        0x1c
        0x1b
        0x1a
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .registers 5

    .line 735
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 191
    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$1;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    .line 196
    new-instance v0, Lcom/android/server/appop/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 215
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {v0, p0}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 222
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 544
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 545
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 546
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 547
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 548
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 549
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 691
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 736
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 737
    new-instance v0, Landroid/util/AtomicFile;

    const-string v1, "appops"

    invoke-direct {v0, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 738
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 739
    new-instance p1, Lcom/android/server/appop/AppOpsService$Constants;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/appop/AppOpsService$Constants;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 740
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 741
    return-void
.end method

.method static synthetic access$1100(Ljava/lang/String;)I
    .registers 1

    .line 139
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/appop/AppOpsService;II)V
    .registers 3

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/appop/AppOpsService;II)V
    .registers 3

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->setAllPkgModesToDefault(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Z)V
    .registers 5

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300()[I
    .registers 1

    .line 139
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 5

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    .line 1542
    if-nez p4, :cond_3

    .line 1543
    return-object p0

    .line 1545
    :cond_3
    if-nez p0, :cond_a

    .line 1546
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1548
    :cond_a
    nop

    .line 1549
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1550
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_12
    if-ge v2, v0, :cond_57

    .line 1551
    invoke-virtual {p4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1552
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1553
    if-nez v5, :cond_2b

    .line 1554
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 1557
    :cond_2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1558
    move v6, v1

    :goto_30
    if-ge v6, v4, :cond_4a

    .line 1559
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 1560
    iget v8, v7, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    if-ne v8, p1, :cond_47

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 1561
    nop

    .line 1562
    const/4 v3, 0x1

    goto :goto_4a

    .line 1558
    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 1566
    :cond_4a
    :goto_4a
    if-nez v3, :cond_54

    .line 1567
    new-instance v4, Lcom/android/server/appop/AppOpsService$ChangeRec;

    invoke-direct {v4, p1, p2, p3}, Lcom/android/server/appop/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1570
    :cond_57
    return-object p0
.end method

.method private checkAudioOperationImpl(IIILjava/lang/String;)I
    .registers 6

    .line 1899
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/appop/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    .line 1903
    goto :goto_7

    .line 1900
    :catch_5
    move-exception v0

    .line 1902
    const/4 v0, 0x0

    .line 1905
    :goto_7
    if-eqz v0, :cond_29

    .line 1906
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Audio disabled for suspended package="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppOps"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    const/4 p1, 0x1

    return p1

    .line 1911
    :cond_29
    monitor-enter p0

    .line 1912
    :try_start_2a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I

    move-result p2

    .line 1913
    if-eqz p2, :cond_32

    .line 1914
    monitor-exit p0

    return p2

    .line 1916
    :cond_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_38

    .line 1917
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p1

    return p1

    .line 1916
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method private checkOperationImpl(IILjava/lang/String;Z)I
    .registers 5

    .line 1830
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 1831
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1832
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1833
    if-nez p3, :cond_e

    .line 1834
    const/4 p1, 0x1

    return p1

    .line 1836
    :cond_e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationUnchecked(IILjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method private checkOperationInternal(IILjava/lang/String;Z)I
    .registers 11

    .line 1818
    monitor-enter p0

    .line 1819
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 1820
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    .line 1821
    if-nez v0, :cond_b

    .line 1822
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Z)I

    move-result p1

    return p1

    .line 1824
    :cond_b
    new-instance v5, Lcom/android/server/appop/-$$Lambda$AppOpsService$gQy7GOuCV6GbjQtdNhNG6xld8I4;

    invoke-direct {v5, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$gQy7GOuCV6GbjQtdNhNG6xld8I4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;ZLcom/android/internal/util/function/QuadFunction;)I

    move-result p1

    return p1

    .line 1820
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private checkOperationUnchecked(IILjava/lang/String;Z)I
    .registers 11

    .line 1851
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1852
    return v1

    .line 1858
    :cond_8
    :try_start_8
    invoke-direct {p0, p2, p3}, Lcom/android/server/appop/AppOpsService;->verifyAndGetIsPrivileged(ILjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_c} :catch_5e

    .line 1862
    nop

    .line 1864
    monitor-enter p0

    .line 1865
    :try_start_e
    invoke-direct {p0, p2, p1, p3, v0}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1866
    monitor-exit p0

    return v1

    .line 1868
    :cond_16
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1869
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 1870
    if-eqz v0, :cond_3c

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1871
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3c

    .line 1872
    iget-object p2, v0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    .line 1873
    if-eqz p4, :cond_36

    goto :goto_3a

    :cond_36
    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result p2

    :goto_3a
    monitor-exit p0

    return p2

    .line 1875
    :cond_3c
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p2

    .line 1876
    if-nez p2, :cond_4e

    .line 1877
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p1

    monitor-exit p0

    return p1

    .line 1879
    :cond_4e
    if-eqz p4, :cond_55

    invoke-static {p2}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result p1

    goto :goto_59

    :cond_55
    invoke-virtual {p2}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result p1

    :goto_59
    monitor-exit p0

    return p1

    .line 1880
    :catchall_5b
    move-exception p1

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_e .. :try_end_5d} :catchall_5b

    throw p1

    .line 1859
    :catch_5e
    move-exception p2

    .line 1860
    const-string p3, "AppOps"

    const-string p4, "checkOperation"

    invoke-static {p3, p4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1861
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p1

    return p1
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .registers 5

    .line 1933
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 1934
    if-eqz p1, :cond_1d

    .line 1935
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$Restriction;

    .line 1936
    if-eqz p1, :cond_1d

    iget-object p2, p1, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {p2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 1937
    iget p1, p1, Lcom/android/server/appop/AppOpsService$Restriction;->mode:I

    return p1

    .line 1940
    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .registers 4

    .line 4522
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4523
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 4526
    return-void

    .line 4524
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must by called by the system"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 1056
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1057
    return-object v0

    .line 1059
    :cond_4
    nop

    .line 1060
    const/4 v1, 0x0

    if-nez p2, :cond_27

    .line 1061
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    nop

    :goto_e
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4e

    .line 1063
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/app/AppOpsManager$OpEntry;-><init>(II)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1066
    :cond_27
    nop

    :goto_28
    array-length v2, p2

    if-ge v1, v2, :cond_4d

    .line 1067
    aget v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 1068
    if-ltz v2, :cond_4a

    .line 1069
    if-nez v0, :cond_3a

    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    :cond_3a
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_4d
    move-object p2, v0

    .line 1076
    :cond_4e
    return-object p2
.end method

.method private collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 1033
    nop

    .line 1034
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1035
    const/4 v2, 0x0

    if-nez p2, :cond_24

    .line 1036
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    nop

    :goto_e
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 1038
    invoke-virtual {p1, v2}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 1039
    invoke-static {v3, v0, v1}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1042
    :cond_24
    const/4 v3, 0x0

    :goto_25
    array-length v4, p2

    if-ge v2, v4, :cond_43

    .line 1043
    aget v4, p2, v2

    invoke-virtual {p1, v4}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 1044
    if-eqz v4, :cond_40

    .line 1045
    if-nez v3, :cond_39

    .line 1046
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    :cond_39
    invoke-static {v4, v0, v1}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_43
    move-object p2, v3

    .line 1052
    :cond_44
    return-object p2
.end method

.method private commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .registers 19

    .line 2539
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    if-eqz v0, :cond_ea

    .line 2540
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    :goto_11
    if-ltz v9, :cond_ea

    .line 2541
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2542
    goto/16 :goto_e5

    .line 2544
    :cond_1d
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 2547
    invoke-static {v10}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    int-to-long v0, v0

    .line 2548
    iget v2, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    int-to-long v2, v2

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_32

    move v2, v8

    goto :goto_33

    :cond_32
    move v2, v3

    .line 2549
    :goto_33
    iget v4, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    int-to-long v4, v4

    cmp-long v0, v4, v0

    if-gtz v0, :cond_3b

    move v3, v8

    .line 2550
    :cond_3b
    if-ne v2, v3, :cond_3f

    .line 2551
    goto/16 :goto_e5

    .line 2554
    :cond_3f
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v11, 0x4

    if-eqz v0, :cond_6f

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2555
    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_6f

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2556
    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v11, :cond_6f

    .line 2557
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$u9c0eEYUUm25QC1meV06FHffZE0;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$u9c0eEYUUm25QC1meV06FHffZE0;

    .line 2559
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2557
    invoke-static {v1, v6, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_e5

    .line 2561
    :cond_6f
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/ArraySet;

    .line 2562
    if-eqz v12, :cond_e5

    .line 2563
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v13, v0

    :goto_80
    if-ltz v13, :cond_e5

    .line 2564
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2565
    iget v0, v14, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_e1

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2566
    invoke-virtual {v14, v0}, Lcom/android/server/appop/AppOpsService$ModeCallback;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_97

    .line 2567
    goto :goto_e1

    .line 2569
    :cond_97
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v15, v0

    :goto_9f
    if-ltz v15, :cond_e1

    .line 2570
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v0, v10}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    .line 2571
    if-nez v0, :cond_b2

    .line 2572
    goto :goto_dd

    .line 2574
    :cond_b2
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    if-ne v0, v11, :cond_dd

    .line 2575
    iget-object v5, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 2577
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2578
    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    .line 2575
    move-object/from16 v1, p0

    move-object v2, v14

    move-object v8, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2569
    :cond_dd
    :goto_dd
    add-int/lit8 v15, v15, -0x1

    const/4 v8, 0x1

    goto :goto_9f

    .line 2563
    :cond_e1
    :goto_e1
    add-int/lit8 v13, v13, -0x1

    const/4 v8, 0x1

    goto :goto_80

    .line 2540
    :cond_e5
    :goto_e5
    add-int/lit8 v9, v9, -0x1

    const/4 v8, 0x1

    goto/16 :goto_11

    .line 2586
    :cond_ea
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    iput v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 2587
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 2588
    return-void
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .line 3450
    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3451
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3452
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3453
    const-string v0, "  start [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3454
    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3455
    const-string v0, "  stop [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3456
    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3457
    const-string v0, "  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3458
    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3459
    const-string v0, "  get [--user <USER_ID>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3460
    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3461
    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3462
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3463
    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3464
    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3465
    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3466
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3467
    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3468
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3469
    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3470
    const-string v0, "    <PACKAGE> an Android package name or its UID if prefixed by --uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3471
    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3472
    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3473
    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3474
    const-string v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3475
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3

    .line 3713
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3714
    const-string v0, "  -h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3715
    const-string v0, "    Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3716
    const-string v0, "  --op [OP]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3717
    const-string v0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3718
    const-string v0, "  --mode [MODE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3719
    const-string v0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3720
    const-string v0, "  --package [PACKAGE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3721
    const-string v0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3722
    const-string v0, "  --watchers"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3723
    const-string v0, "    Only output the watcher sections."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3724
    return-void
.end method

.method private dumpStatesLocked(Ljava/io/PrintWriter;Lcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .registers 32

    .line 3729
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    iget v5, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-boolean v6, v1, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v7

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v8

    .line 3730
    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$900(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v12

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Landroid/app/AppOpsManager$OpEntry;-><init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V

    .line 3732
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v1

    .line 3733
    if-eqz v1, :cond_127

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_38

    goto/16 :goto_127

    .line 3737
    :cond_38
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 3738
    const/4 v5, 0x0

    :goto_3d
    if-ge v5, v4, :cond_126

    .line 3739
    invoke-virtual {v1, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 3741
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v8

    .line 3742
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v9

    .line 3744
    invoke-virtual {v13, v8, v8, v9}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v10

    .line 3746
    invoke-virtual {v13, v8, v8, v9}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v14

    .line 3748
    move/from16 p0, v4

    move v12, v5

    invoke-virtual {v13, v8, v8, v9}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v4

    .line 3750
    move-object/from16 p2, v1

    invoke-virtual {v13, v8, v9}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName(II)Ljava/lang/String;

    move-result-object v1

    .line 3751
    invoke-virtual {v13, v8, v9}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid(II)I

    move-result v8

    .line 3753
    const-wide/16 v16, 0x0

    cmp-long v9, v10, v16

    move-object/from16 v18, v13

    const-string v13, "]"

    move/from16 v19, v12

    const-string v12, ", pkg="

    move-wide/from16 v20, v14

    const-string/jumbo v14, "uid="

    const-string v15, " proxy["

    move-object/from16 v22, v13

    const-string v13, ")"

    move-object/from16 v23, v1

    const-string v1, " ("

    if-lez v9, :cond_d7

    .line 3754
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3755
    const-string v9, "Access: "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3756
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3757
    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3758
    invoke-virtual {v2, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 3759
    invoke-virtual/range {p5 .. p6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3760
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3761
    sub-long v10, v10, p3

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3762
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3763
    cmp-long v9, v4, v16

    if-lez v9, :cond_b6

    .line 3764
    const-string v9, " duration="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3765
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3767
    :cond_b6
    if-ltz v8, :cond_cf

    .line 3768
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3769
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3770
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 3771
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3772
    move-object/from16 v4, v23

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3773
    move-object/from16 v5, v22

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d3

    .line 3767
    :cond_cf
    move-object/from16 v5, v22

    move-object/from16 v4, v23

    .line 3775
    :goto_d3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_db

    .line 3753
    :cond_d7
    move-object/from16 v5, v22

    move-object/from16 v4, v23

    .line 3778
    :goto_db
    cmp-long v9, v20, v16

    if-lez v9, :cond_11c

    .line 3779
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3780
    const-string v9, "Reject: "

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3781
    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3782
    move-wide/from16 v6, v20

    invoke-virtual {v2, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 3783
    invoke-virtual/range {p5 .. p6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3784
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3785
    sub-long v6, v6, p3

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3786
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3787
    if-ltz v8, :cond_119

    .line 3788
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3789
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3790
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 3791
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3792
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3793
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3795
    :cond_119
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 3738
    :cond_11c
    add-int/lit8 v5, v19, 0x1

    move/from16 v4, p0

    move-object/from16 v1, p2

    move-object/from16 v13, v18

    goto/16 :goto_3d

    .line 3798
    :cond_126
    return-void

    .line 3734
    :cond_127
    :goto_127
    return-void
.end method

.method private enforceManageAppOpsModes(III)V
    .registers 6

    .line 1253
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1254
    return-void

    .line 1256
    :cond_7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1257
    monitor-enter p0

    .line 1258
    :try_start_c
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_23

    .line 1259
    if-ltz p3, :cond_23

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-ne p1, p2, :cond_23

    .line 1262
    monitor-exit p0

    return-void

    .line 1265
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_35

    .line 1266
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1267
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const/4 v0, 0x0

    .line 1266
    const-string v1, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-virtual {p1, v1, p2, p3, v0}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1268
    return-void

    .line 1265
    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1
.end method

.method private evalAllForegroundOpsLocked()V
    .registers 4

    .line 1699
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 1700
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1701
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1b

    .line 1702
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1699
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1705
    :cond_1e
    return-void
.end method

.method private static getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;
    .registers 14

    .line 1080
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    if-eqz v0, :cond_f

    .line 1081
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v0, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/appop/AppOpsService$Op;->continuing(JII)V

    .line 1084
    :cond_f
    new-instance p1, Landroid/app/AppOpsManager$OpEntry;

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-boolean v4, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v5

    .line 1085
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object p2

    move-object v6, p2

    goto :goto_2b

    :cond_2a
    move-object v6, v0

    .line 1086
    :goto_2b
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object p2

    if-eqz p2, :cond_3b

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object p2

    move-object v7, p2

    goto :goto_3c

    :cond_3b
    move-object v7, v0

    .line 1087
    :goto_3c
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object p2

    if-eqz p2, :cond_4c

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object p2

    move-object v8, p2

    goto :goto_4d

    :cond_4c
    move-object v8, v0

    .line 1088
    :goto_4d
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object p2

    if-eqz p2, :cond_5d

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object p2

    move-object v9, p2

    goto :goto_5e

    :cond_5d
    move-object v9, v0

    .line 1089
    :goto_5e
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$900(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object p2

    if-eqz p2, :cond_6e

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$900(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object p0

    move-object v10, p0

    goto :goto_6f

    :cond_6e
    move-object v10, v0

    :goto_6f
    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V

    .line 1090
    return-object p1
.end method

.method private getOpLocked(IILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Op;
    .registers 6

    .line 2750
    invoke-direct {p0, p2, p3, p5, p4}, Lcom/android/server/appop/AppOpsService;->getOpsRawNoVerifyLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p2

    .line 2751
    if-nez p2, :cond_8

    .line 2752
    const/4 p1, 0x0

    return-object p1

    .line 2754
    :cond_8
    invoke-direct {p0, p2, p1, p5}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p1

    return-object p1
.end method

.method private getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;
    .registers 7

    .line 2758
    invoke-virtual {p1, p2}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    .line 2759
    if-nez v0, :cond_18

    .line 2760
    if-nez p3, :cond_c

    .line 2761
    const/4 p1, 0x0

    return-object p1

    .line 2763
    :cond_c
    new-instance v0, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 2764
    invoke-virtual {p1, p2, v0}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2766
    :cond_18
    if-eqz p3, :cond_1d

    .line 2767
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 2769
    :cond_1d
    return-object v0
.end method

.method private getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;
    .registers 7

    .line 2660
    invoke-direct {p0, p1, p4}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p1

    .line 2661
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 2662
    return-object v0

    .line 2665
    :cond_8
    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v1, :cond_16

    .line 2666
    if-nez p4, :cond_f

    .line 2667
    return-object v0

    .line 2669
    :cond_f
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2672
    :cond_16
    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2673
    if-nez v1, :cond_2d

    .line 2674
    if-nez p4, :cond_23

    .line 2675
    return-object v0

    .line 2677
    :cond_23
    new-instance v1, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v1, p2, p1, p3}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;Z)V

    .line 2678
    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2680
    :cond_2d
    return-object v1
.end method

.method private getOpsRawNoVerifyLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;
    .registers 7

    .line 2697
    invoke-direct {p0, p1, p3}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p1

    .line 2698
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 2699
    return-object v0

    .line 2702
    :cond_8
    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v1, :cond_16

    .line 2703
    if-nez p3, :cond_f

    .line 2704
    return-object v0

    .line 2706
    :cond_f
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2709
    :cond_16
    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2710
    if-nez v1, :cond_2d

    .line 2711
    if-nez p3, :cond_23

    .line 2712
    return-object v0

    .line 2714
    :cond_23
    new-instance v1, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v1, p2, p1, p4}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;Z)V

    .line 2715
    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    :cond_2d
    return-object v1
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .registers 2

    .line 4565
    nop

    .line 4569
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4571
    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    .line 4574
    goto :goto_12

    .line 4572
    :catch_10
    move-exception p0

    .line 4576
    :cond_11
    const/4 p0, 0x0

    :goto_12
    if-nez p0, :cond_17

    .line 4577
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 4579
    :cond_17
    return-object p0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;
    .registers 4

    .line 2505
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2506
    if-nez v0, :cond_19

    .line 2507
    if-nez p2, :cond_e

    .line 2508
    const/4 p1, 0x0

    return-object p1

    .line 2510
    :cond_e
    new-instance v0, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v0, p1}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(I)V

    .line 2511
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1c

    .line 2513
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 2515
    :goto_1c
    return-object v0
.end method

.method private isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z
    .registers 5

    .line 2773
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-nez p1, :cond_a

    .line 2774
    const/4 p1, 0x0

    return p1

    .line 2776
    :cond_a
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 2777
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;Z)Z
    .registers 10

    .line 2782
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2783
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2785
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_39

    .line 2788
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 2789
    invoke-virtual {v4, p2, p3, v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2790
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_35

    .line 2792
    monitor-enter p0

    .line 2793
    :try_start_24
    invoke-direct {p0, p1, p3, p4, v0}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p1

    .line 2795
    if-eqz p1, :cond_30

    iget-boolean p1, p1, Lcom/android/server/appop/AppOpsService$Ops;->isPrivileged:Z

    if-eqz p1, :cond_30

    .line 2796
    monitor-exit p0

    return v2

    .line 2798
    :cond_30
    monitor-exit p0

    goto :goto_35

    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_32

    throw p1

    .line 2800
    :cond_35
    :goto_35
    return v0

    .line 2785
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2803
    :cond_39
    return v2
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 6

    .line 1921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1923
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1924
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1923
    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_16
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 1928
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1923
    return p1

    .line 1928
    :catchall_14
    move-exception p1

    goto :goto_1f

    .line 1925
    :catch_16
    move-exception p1

    .line 1926
    :try_start_17
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Could not talk to package manager service"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_14

    .line 1928
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public static synthetic lambda$AfBLuTvVESlqN91IyRX84hMV5nE(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$CVMS-lLMRyZYA1tmqvyuOloKBu0(Lcom/android/server/appop/AppOpsService;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updatePendingState(JI)V

    return-void
.end method

.method public static synthetic lambda$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$GUeKjlbzT65s86vaxy5gvOajuhw(Lcom/android/server/appop/AppOpsService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method public static synthetic lambda$NDUi03ZZuuR42-RDEIQ0UELKycc(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$gQy7GOuCV6GbjQtdNhNG6xld8I4(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Z)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$hqd76gFlOJ1gAuDYDPVUaSkXjTc(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$mfUWTdGevxEoIUv1cEPEFG0qAaI(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$u9c0eEYUUm25QC1meV06FHffZE0(Lcom/android/server/appop/AppOpsService;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZ)V

    return-void
.end method

.method private noteOperationImpl(IILjava/lang/String;)I
    .registers 11

    .line 2036
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2037
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2038
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2039
    if-nez v3, :cond_e

    .line 2040
    const/4 p1, 0x1

    return p1

    .line 2042
    :cond_e
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;I)I
    .registers 26

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v7, p6

    .line 2050
    const/4 v2, 0x2

    :try_start_b
    invoke-direct {v1, v8, v9}, Lcom/android/server/appop/AppOpsService;->verifyAndGetIsPrivileged(ILjava/lang/String;)Z

    move-result v3
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_f} :catch_13f

    .line 2054
    nop

    .line 2056
    monitor-enter p0

    .line 2057
    const/4 v4, 0x1

    :try_start_12
    invoke-direct {v1, v8, v9, v3, v4}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v5

    .line 2058
    if-nez v5, :cond_1d

    .line 2059
    invoke-direct {v1, v0, v8, v9, v4}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2063
    monitor-exit p0

    return v2

    .line 2065
    :cond_1d
    invoke-direct {v1, v5, v0, v4}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v2

    .line 2066
    invoke-direct {v1, v8, v0, v9, v3}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2067
    invoke-direct {v1, v0, v8, v9, v4}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2069
    monitor-exit p0

    return v4

    .line 2071
    :cond_2c
    iget-object v3, v5, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 2072
    iget-boolean v6, v2, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    if-eqz v6, :cond_9a

    .line 2073
    new-instance v6, Landroid/app/AppOpsManager$OpEntry;

    iget v11, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-boolean v12, v2, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v13

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v14

    .line 2074
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v15

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v16

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v17

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$900(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v18

    move-object v10, v6

    invoke-direct/range {v10 .. v18}, Landroid/app/AppOpsManager$OpEntry;-><init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V

    .line 2075
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Noting op not finished: uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v13, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 2076
    invoke-virtual {v6, v12, v13, v7}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " duration="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v13, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 2077
    invoke-virtual {v6, v12, v13, v7}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2075
    invoke-static {v10, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :cond_9a
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v6

    .line 2084
    iget-object v10, v3, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v10, :cond_dd

    iget-object v10, v3, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_dd

    .line 2085
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v6

    .line 2086
    if-eqz v6, :cond_dc

    .line 2090
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget v15, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v10, v2

    move/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v16, p6

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 2092
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v10, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move v11, v6

    move v6, v10

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;II)V

    .line 2094
    invoke-direct {v1, v0, v8, v9, v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2095
    monitor-exit p0

    return v11

    .line 2097
    :cond_dc
    goto :goto_115

    .line 2098
    :cond_dd
    if-eq v6, v0, :cond_e4

    invoke-direct {v1, v5, v6, v4}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v4

    goto :goto_e5

    :cond_e4
    move-object v4, v2

    .line 2099
    :goto_e5
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v6

    .line 2100
    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v4

    if-eqz v4, :cond_115

    .line 2104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget v15, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v10, v2

    move/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v16, p6

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 2106
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v10, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move v11, v6

    move v6, v10

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;II)V

    .line 2108
    invoke-direct {v1, v0, v8, v9, v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2109
    monitor-exit p0

    return v11

    .line 2114
    :cond_115
    :goto_115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget v15, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v10, v2

    move/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v16, p6

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/appop/AppOpsService$Op;->accessed(JILjava/lang/String;II)V

    .line 2116
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v5, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v2, v4

    move v3, v5

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;II)V

    .line 2118
    const/4 v2, 0x0

    invoke-direct {v1, v0, v8, v9, v2}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2120
    monitor-exit p0

    return v2

    .line 2121
    :catchall_13c
    move-exception v0

    monitor-exit p0
    :try_end_13e
    .catchall {:try_start_12 .. :try_end_13e} :catchall_13c

    throw v0

    .line 2051
    :catch_13f
    move-exception v0

    move-object v1, v0

    .line 2052
    const-string v0, "AppOps"

    const-string/jumbo v3, "noteOperation"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2053
    return v2
.end method

.method private notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ActiveCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 2387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2389
    :try_start_4
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2390
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_1b

    .line 2391
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_20

    .line 2393
    :try_start_11
    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v4, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_20

    .line 2396
    goto :goto_18

    .line 2394
    :catch_17
    move-exception v4

    .line 2390
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2399
    :cond_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2400
    nop

    .line 2401
    return-void

    .line 2399
    :catchall_20
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1515
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1516
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1517
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    .line 1515
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1519
    :cond_13
    return-void
.end method

.method private notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .registers 7

    .line 1523
    const/4 v0, -0x2

    if-eq p3, v0, :cond_c

    iget v0, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v0, :cond_c

    iget v0, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-eq v0, p3, :cond_c

    .line 1524
    return-void

    .line 1529
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1531
    :try_start_10
    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1b
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_1c

    .line 1535
    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1532
    :catch_1b
    move-exception p1

    .line 1535
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1536
    nop

    .line 1537
    return-void
.end method

.method private notifyOpChangedForAllPkgsInUid(IIZ)V
    .registers 21

    .line 1329
    move-object/from16 v7, p0

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1330
    nop

    .line 1332
    monitor-enter p0

    .line 1333
    :try_start_8
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move/from16 v8, p1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1334
    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v1, :cond_42

    .line 1335
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 1336
    move-object v4, v9

    move v3, v10

    :goto_1c
    if-ge v3, v2, :cond_43

    .line 1337
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1338
    if-eqz p3, :cond_2d

    iget v6, v5, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2d

    .line 1339
    goto :goto_3f

    .line 1342
    :cond_2d
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1343
    invoke-static {v6, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1344
    if-nez v4, :cond_3c

    .line 1345
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 1347
    :cond_3c
    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1334
    :cond_42
    move-object v4, v9

    .line 1351
    :cond_43
    array-length v1, v0

    move-object v11, v4

    move v2, v10

    :goto_46
    if-ge v2, v1, :cond_8a

    aget-object v3, v0, v2

    .line 1352
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1353
    if-eqz v4, :cond_87

    .line 1354
    if-nez v11, :cond_5b

    .line 1355
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 1357
    :cond_5b
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 1358
    move v6, v10

    :goto_60
    if-ge v6, v5, :cond_87

    .line 1359
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1360
    if-eqz p3, :cond_71

    iget v13, v12, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_71

    .line 1361
    goto :goto_84

    .line 1364
    :cond_71
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    .line 1365
    if-nez v13, :cond_81

    .line 1366
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 1367
    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    :cond_81
    invoke-virtual {v13, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1358
    :goto_84
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 1351
    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 1373
    :cond_8a
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_8 .. :try_end_8b} :catchall_ef

    .line 1375
    if-nez v11, :cond_8e

    .line 1376
    return-void

    .line 1379
    :cond_8e
    move v0, v10

    :goto_8f
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_ee

    .line 1380
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1381
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/util/ArraySet;

    .line 1382
    if-nez v13, :cond_bf

    .line 1383
    iget-object v13, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 1385
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v9

    check-cast v6, Ljava/lang/String;

    .line 1383
    move-object/from16 v2, p0

    move-object v3, v12

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_ea

    .line 1388
    :cond_bf
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v14

    .line 1389
    move v15, v10

    :goto_c4
    if-ge v15, v14, :cond_ea

    .line 1390
    invoke-virtual {v13, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 1391
    iget-object v5, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 1393
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1391
    move-object/from16 v2, p0

    move-object v3, v12

    move-object v9, v5

    move-object/from16 v5, v16

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1389
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_c4

    .line 1379
    :cond_ea
    :goto_ea
    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x0

    goto :goto_8f

    .line 1397
    :cond_ee
    return-void

    .line 1373
    :catchall_ef
    move-exception v0

    :try_start_f0
    monitor-exit p0
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw v0
.end method

.method private notifyOpChangedSync(IILjava/lang/String;I)V
    .registers 6

    .line 1400
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    .line 1401
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 1402
    if-eqz v0, :cond_d

    .line 1403
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;I)V

    .line 1405
    :cond_d
    return-void
.end method

.method private notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$NotedCallback;",
            ">;II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 2432
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2434
    :try_start_4
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2435
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_1b

    .line 2436
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_20

    .line 2438
    :try_start_11
    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    invoke-interface {v4, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsNotedCallback;->opNoted(IILjava/lang/String;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_20

    .line 2441
    goto :goto_18

    .line 2439
    :catch_17
    move-exception v4

    .line 2435
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2444
    :cond_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2445
    nop

    .line 2446
    return-void

    .line 2444
    :catchall_20
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private notifyWatchersOfChange(II)V
    .registers 5

    .line 4422
    monitor-enter p0

    .line 4423
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 4424
    if-nez v0, :cond_d

    .line 4425
    monitor-exit p0

    return-void

    .line 4427
    :cond_d
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 4428
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    .line 4430
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 4431
    return-void

    .line 4428
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method static onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I
    .registers 16

    .line 3478
    if-nez p1, :cond_7

    .line 3479
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 3481
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3482
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 3484
    const/4 v2, -0x1

    :try_start_10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_392

    :cond_19
    goto :goto_71

    :sswitch_1a
    const-string/jumbo v3, "read-settings"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x5

    goto :goto_72

    :sswitch_25
    const-string/jumbo v3, "start"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x6

    goto :goto_72

    :sswitch_30
    const-string/jumbo v3, "reset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x3

    goto :goto_72

    :sswitch_3b
    const-string/jumbo v3, "stop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x7

    goto :goto_72

    :sswitch_46
    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v5

    goto :goto_72

    :sswitch_51
    const-string v3, "get"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v4

    goto :goto_72

    :sswitch_5b
    const-string/jumbo v3, "query-op"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x2

    goto :goto_72

    :sswitch_66
    const-string/jumbo v3, "write-settings"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x4

    goto :goto_72

    :goto_71
    move v3, v2

    :goto_72
    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_3b4

    .line 3704
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_37a

    .line 3690
    :pswitch_7c  #0x7
    invoke-virtual {p0, v4, v1}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result p1

    .line 3691
    if-gez p1, :cond_83

    .line 3692
    return p1

    .line 3695
    :cond_83
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_95

    .line 3696
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {p1, v1, v3, v4, p0}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 3701
    return v5

    .line 3699
    :cond_95
    return v2

    .line 3676
    :pswitch_96  #0x6
    invoke-virtual {p0, v4, v1}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result p1

    .line 3677
    if-gez p1, :cond_9d

    .line 3678
    return p1

    .line 3681
    :cond_9d
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_b0

    .line 3682
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v9, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-interface/range {v6 .. v11}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 3687
    return v5

    .line 3685
    :cond_b0
    return v2

    .line 3664
    :pswitch_b1  #0x5
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3665
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3664
    invoke-direct {p1, v1, v3, v2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_c2} :catch_37b

    .line 3668
    :try_start_c2
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 3669
    const-string p0, "Last settings read."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_c2 .. :try_end_cc} :catchall_d1

    .line 3671
    :try_start_cc
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3672
    nop

    .line 3673
    return v5

    .line 3671
    :catchall_d1
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    .line 3649
    :pswitch_d6  #0x4
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3650
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3649
    invoke-direct {p1, v1, v3, v2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3651
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_e7} :catch_37b

    .line 3653
    :try_start_e7
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    monitor-enter p1
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_108

    .line 3654
    :try_start_ea
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v6, v6, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3655
    monitor-exit p1
    :try_end_f6
    .catchall {:try_start_ea .. :try_end_f6} :catchall_105

    .line 3656
    :try_start_f6
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 3657
    const-string p0, "Current settings written."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_f6 .. :try_end_100} :catchall_108

    .line 3659
    :try_start_100
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_103} :catch_37b

    .line 3660
    nop

    .line 3661
    return v5

    .line 3655
    :catchall_105
    move-exception p0

    :try_start_106
    monitor-exit p1
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    :try_start_107
    throw p0
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_108

    .line 3659
    :catchall_108
    move-exception p0

    :try_start_109
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    .line 3613
    :pswitch_10d  #0x3
    nop

    .line 3614
    const/4 p1, -0x2

    move v3, p1

    .line 3615
    :goto_110
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_140

    .line 3616
    const-string v7, "--user"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_127

    .line 3617
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 3618
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 3619
    goto :goto_110

    .line 3620
    :cond_127
    if-nez v6, :cond_12b

    .line 3621
    move-object v6, v4

    goto :goto_110

    .line 3623
    :cond_12b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error: Unsupported argument: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3624
    return v2

    .line 3629
    :cond_140
    if-ne v3, p1, :cond_146

    .line 3630
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 3633
    :cond_146
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {p0, v3, v6}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 3634
    const-string p0, "Reset all modes for: "

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3635
    if-ne v3, v2, :cond_158

    .line 3636
    const-string p0, "all users"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_161

    .line 3638
    :cond_158
    const-string/jumbo p0, "user "

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3640
    :goto_161
    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3641
    if-nez v6, :cond_16e

    .line 3642
    const-string p0, "all packages"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_177

    .line 3644
    :cond_16e
    const-string/jumbo p0, "package "

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3646
    :goto_177
    return v5

    .line 3585
    :pswitch_178  #0x2
    invoke-virtual {p0, v4, v1}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result p1

    .line 3586
    if-gez p1, :cond_17f

    .line 3587
    return p1

    .line 3589
    :cond_17f
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    new-array v1, v4, [I

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v3, v1, v5

    invoke-interface {p1, v1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p1

    .line 3591
    if-eqz p1, :cond_1dd

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_194

    goto :goto_1dd

    .line 3595
    :cond_194
    move v1, v5

    :goto_195
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1dc

    .line 3596
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$PackageOps;

    .line 3597
    nop

    .line 3598
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    .line 3599
    move v7, v5

    :goto_1ad
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1cf

    .line 3600
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 3601
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    iget v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-ne v9, v10, :cond_1cc

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    iget v9, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-ne v8, v9, :cond_1cc

    .line 3602
    nop

    .line 3603
    move v6, v4

    goto :goto_1d0

    .line 3599
    :cond_1cc
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ad

    :cond_1cf
    move v6, v5

    .line 3606
    :goto_1d0
    if-eqz v6, :cond_1d9

    .line 3607
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3595
    :cond_1d9
    add-int/lit8 v1, v1, 0x1

    goto :goto_195

    .line 3610
    :cond_1dc
    return v5

    .line 3592
    :cond_1dd
    :goto_1dd
    const-string p0, "No operations."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3593
    return v5

    .line 3518
    :pswitch_1e3  #0x1
    invoke-virtual {p0, v5, v1}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result p1

    .line 3519
    if-gez p1, :cond_1ea

    .line 3520
    return p1

    .line 3523
    :cond_1ea
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3524
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_226

    .line 3526
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 3528
    iget v7, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v7, v2, :cond_202

    new-array v7, v4, [I

    iget v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v8, v7, v5

    goto :goto_203

    :cond_202
    move-object v7, v6

    .line 3526
    :goto_203
    invoke-interface {v1, v3, v7}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v1

    .line 3529
    if-eqz v1, :cond_20c

    .line 3530
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3532
    :cond_20c
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3534
    iget v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v8, v2, :cond_21c

    new-array v6, v4, [I

    iget v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v4, v6, v5

    .line 3532
    :cond_21c
    invoke-interface {v1, v3, v7, v6}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v1

    .line 3535
    if-eqz v1, :cond_225

    .line 3536
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3538
    :cond_225
    goto :goto_238

    .line 3539
    :cond_226
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 3541
    iget v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v3, v2, :cond_234

    new-array v6, v4, [I

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v3, v6, v5

    .line 3539
    :cond_234
    invoke-interface {p1, v1, v6}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object p1

    .line 3543
    :goto_238
    if-eqz p1, :cond_2f2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_242

    goto/16 :goto_2f2

    .line 3551
    :cond_242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3552
    move p0, v5

    :goto_247
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_2f1

    .line 3553
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    .line 3554
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_25e

    .line 3555
    const-string v6, "Uid mode: "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3557
    :cond_25e
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    .line 3558
    move v6, v5

    :goto_263
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2ed

    .line 3559
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    .line 3560
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3561
    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3562
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    invoke-static {v8}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3563
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2a7

    .line 3564
    const-string v8, "; time="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3565
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v8

    sub-long v8, v3, v8

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3566
    const-string v8, " ago"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3568
    :cond_2a7
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2c2

    .line 3569
    const-string v8, "; rejectTime="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3570
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v8

    sub-long v8, v3, v8

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3571
    const-string v8, " ago"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3573
    :cond_2c2
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v8

    const-wide/16 v12, -0x1

    cmp-long v8, v8, v12

    if-nez v8, :cond_2d2

    .line 3574
    const-string v7, " (running)"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2e6

    .line 3575
    :cond_2d2
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2e6

    .line 3576
    const-string v8, "; duration="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3577
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v7

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3579
    :cond_2e6
    :goto_2e6
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 3558
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_263

    .line 3552
    :cond_2ed
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_247

    .line 3582
    :cond_2f1
    return v5

    .line 3544
    :cond_2f2
    :goto_2f2
    const-string p1, "No operations."

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3545
    iget p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-le p1, v2, :cond_31f

    iget p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    const/16 v1, 0x5b

    if-ge p1, v1, :cond_31f

    .line 3546
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default mode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 3547
    invoke-static {p0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p0

    .line 3546
    invoke-static {p0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3549
    :cond_31f
    return v5

    .line 3486
    :pswitch_320  #0x0
    invoke-virtual {p0, v4, v1}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result p1

    .line 3487
    if-gez p1, :cond_327

    .line 3488
    return p1

    .line 3490
    :cond_327
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 3491
    if-nez p1, :cond_333

    .line 3492
    const-string p0, "Error: Mode not specified."

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3493
    return v2

    .line 3496
    :cond_333
    invoke-static {p1, v1}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p1

    .line 3497
    if-gez p1, :cond_33a

    .line 3498
    return v2

    .line 3501
    :cond_33a
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-nez v1, :cond_34e

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_34e

    .line 3502
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, p0, p1}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_379

    .line 3504
    :cond_34e
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-eqz v1, :cond_370

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;
    :try_end_354
    .catch Landroid/os/RemoteException; {:try_start_109 .. :try_end_354} :catch_37b

    if-eqz v1, :cond_370

    .line 3506
    :try_start_356
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3507
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 3508
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    invoke-interface {v3, p0, v1, p1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_36d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_356 .. :try_end_36d} :catch_36e
    .catch Landroid/os/RemoteException; {:try_start_356 .. :try_end_36d} :catch_37b

    .line 3511
    goto :goto_379

    .line 3509
    :catch_36e
    move-exception p0

    .line 3510
    return v2

    .line 3513
    :cond_370
    :try_start_370
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v1, v3, p0, p1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_379
    .catch Landroid/os/RemoteException; {:try_start_370 .. :try_end_379} :catch_37b

    .line 3515
    :goto_379
    return v5

    .line 3704
    :goto_37a
    return p0

    .line 3706
    :catch_37b
    move-exception p0

    .line 3707
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3709
    return v2

    nop

    :sswitch_data_392
    .sparse-switch
        -0x658cadaf -> :sswitch_66
        -0x458a76fa -> :sswitch_5b
        0x18f56 -> :sswitch_51
        0x1bc62 -> :sswitch_46
        0x360802 -> :sswitch_3b
        0x6761d4f -> :sswitch_30
        0x68ac462 -> :sswitch_25
        0x7c514e7a -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_3b4
    .packed-switch 0x0
        :pswitch_320  #00000000
        :pswitch_1e3  #00000001
        :pswitch_178  #00000002
        :pswitch_10d  #00000003
        :pswitch_d6  #00000004
        :pswitch_b1  #00000005
        :pswitch_96  #00000006
        :pswitch_7c  #00000007
    .end packed-switch
.end method

.method private pruneOp(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V
    .registers 5

    .line 1231
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1232
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p3

    .line 1233
    if-eqz p3, :cond_37

    .line 1234
    iget p1, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p3, p1}, Lcom/android/server/appop/AppOpsService$Ops;->remove(I)V

    .line 1235
    invoke-virtual {p3}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result p1

    if-gtz p1, :cond_37

    .line 1236
    iget-object p1, p3, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 1237
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1238
    if-eqz v0, :cond_37

    .line 1239
    iget-object p3, p3, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2c

    .line 1241
    const/4 p3, 0x0

    iput-object p3, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1243
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 1244
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1250
    :cond_37
    return-void
.end method

.method private readOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;Z)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3033
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v10, Lcom/android/server/appop/AppOpsService$Op;

    .line 3034
    const-string/jumbo v11, "n"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v10, v1, v2, v3}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 3036
    iget v3, v10, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 3037
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    .line 3036
    const-string v4, "m"

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 3038
    invoke-static {v10, v3}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 3040
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 3042
    :cond_2a
    :goto_2a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_cf

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3a

    .line 3043
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v12, :cond_cf

    .line 3044
    :cond_3a
    if-eq v3, v4, :cond_2a

    const/4 v4, 0x4

    if-ne v3, v4, :cond_40

    .line 3045
    goto :goto_2a

    .line 3047
    :cond_40
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3048
    const-string/jumbo v4, "st"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 3049
    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    .line 3051
    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v13

    .line 3052
    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v14

    .line 3054
    const-wide/16 v8, 0x0

    const-string/jumbo v3, "t"

    invoke-static {v0, v3, v8, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    .line 3055
    const-string/jumbo v3, "r"

    invoke-static {v0, v3, v8, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    .line 3056
    const-string v3, "d"

    invoke-static {v0, v3, v8, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v19

    .line 3057
    const-string/jumbo v3, "pp"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3058
    const/4 v3, 0x0

    const-string/jumbo v4, "pu"

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    .line 3060
    cmp-long v3, v15, v8

    if-lez v3, :cond_90

    .line 3061
    move-object v3, v10

    move-wide v4, v15

    move/from16 v6, v22

    move-object/from16 v7, v21

    move-wide/from16 v23, v8

    move v8, v14

    move v9, v13

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/appop/AppOpsService$Op;->accessed(JILjava/lang/String;II)V

    goto :goto_92

    .line 3060
    :cond_90
    move-wide/from16 v23, v8

    .line 3063
    :goto_92
    cmp-long v3, v17, v23

    if-lez v3, :cond_a2

    .line 3064
    move-object v3, v10

    move-wide/from16 v4, v17

    move/from16 v6, v22

    move-object/from16 v7, v21

    move v8, v14

    move v9, v13

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 3066
    :cond_a2
    cmp-long v3, v19, v23

    if-lez v3, :cond_af

    .line 3067
    move-object v3, v10

    move-wide v4, v15

    move-wide/from16 v6, v19

    move v8, v14

    move v9, v13

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/appop/AppOpsService$Op;->running(JJII)V

    .line 3069
    :cond_af
    goto :goto_cd

    .line 3070
    :cond_b0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <op>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3070
    const-string v4, "AppOps"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3074
    :goto_cd
    goto/16 :goto_2a

    .line 3076
    :cond_cf
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_da

    .line 3077
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 3079
    :cond_da
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    .line 3080
    if-nez v0, :cond_f0

    .line 3081
    new-instance v0, Lcom/android/server/appop/AppOpsService$Ops;

    move/from16 v3, p4

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;Z)V

    .line 3082
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    :cond_f0
    iget v1, v10, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v0, v1, v10}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 3085
    return-void
.end method

.method private readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2965
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2966
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2968
    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_51

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    .line 2969
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_51

    .line 2970
    :cond_1c
    if-eq v2, v3, :cond_c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    .line 2971
    goto :goto_c

    .line 2974
    :cond_22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2975
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2976
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_50

    .line 2978
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <pkg>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2979
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2978
    const-string v3, "AppOps"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2982
    :goto_50
    goto :goto_c

    .line 2983
    :cond_51
    return-void
.end method

.method private readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2987
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2988
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v3

    .line 2989
    const-string/jumbo v4, "p"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2990
    nop

    .line 2991
    const-string v4, "AppOps"

    const/4 v5, 0x0

    if-nez v0, :cond_42

    .line 2993
    :try_start_1e
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2994
    if-eqz v0, :cond_3a

    .line 2995
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2996
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-interface {v0, p2, v5, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2997
    if-eqz v0, :cond_39

    .line 2998
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_34} :catch_3b

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_39

    move v5, v2

    .line 3001
    :cond_39
    goto :goto_41

    .line 3003
    :cond_3a
    return-void

    .line 3005
    :catch_3b
    move-exception v0

    .line 3006
    const-string v1, "Could not contact PackageManager"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3007
    :goto_41
    goto :goto_46

    .line 3009
    :cond_42
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 3011
    :goto_46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3013
    :cond_4a
    :goto_4a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v2, :cond_8c

    const/4 v6, 0x3

    if-ne v1, v6, :cond_59

    .line 3014
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_8c

    .line 3015
    :cond_59
    if-eq v1, v6, :cond_4a

    const/4 v6, 0x4

    if-ne v1, v6, :cond_5f

    .line 3016
    goto :goto_4a

    .line 3018
    :cond_5f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3019
    const-string/jumbo v6, "op"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 3020
    invoke-direct {p0, p1, v3, p2, v5}, Lcom/android/server/appop/AppOpsService;->readOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;Z)V

    goto :goto_8b

    .line 3022
    :cond_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3022
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3026
    :goto_8b
    goto :goto_4a

    .line 3027
    :cond_8c
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 3028
    return-void
.end method

.method private readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2937
    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2938
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 2940
    :cond_10
    :goto_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_78

    const/4 v6, 0x3

    if-ne v4, v6, :cond_20

    .line 2941
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_78

    .line 2942
    :cond_20
    if-eq v4, v6, :cond_10

    const/4 v6, 0x4

    if-ne v4, v6, :cond_26

    .line 2943
    goto :goto_10

    .line 2946
    :cond_26
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2947
    const-string/jumbo v6, "op"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 2948
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2949
    const-string v6, "m"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2950
    invoke-direct {p0, v2, v5}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v5

    .line 2951
    iget-object v7, v5, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v7, :cond_54

    .line 2952
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v5, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2954
    :cond_54
    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2955
    goto :goto_77

    .line 2956
    :cond_5a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <uid-ops>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2957
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2956
    const-string v5, "AppOps"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2960
    :goto_77
    goto :goto_10

    .line 2961
    :cond_78
    return-void
.end method

.method private removeUidsForUserLocked(I)V
    .registers 4

    .line 4513
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 4514
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 4515
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_1b

    .line 4516
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4513
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4519
    :cond_1e
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 4529
    if-nez p0, :cond_6

    .line 4530
    const-string/jumbo p0, "root"

    return-object p0

    .line 4531
    :cond_6
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_d

    .line 4532
    const-string p0, "com.android.shell"

    return-object p0

    .line 4533
    :cond_d
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_14

    .line 4534
    const-string p0, "media"

    return-object p0

    .line 4535
    :cond_14
    const/16 v0, 0x411

    if-ne p0, v0, :cond_1b

    .line 4536
    const-string p0, "audioserver"

    return-object p0

    .line 4537
    :cond_1b
    const/16 v0, 0x417

    if-ne p0, v0, :cond_22

    .line 4538
    const-string p0, "cameraserver"

    return-object p0

    .line 4539
    :cond_22
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_2b

    if-nez p1, :cond_2b

    .line 4540
    const-string p0, "android"

    return-object p0

    .line 4542
    :cond_2b
    return-object p1
.end method

.method private static resolveUid(Ljava/lang/String;)I
    .registers 8

    .line 4546
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 4547
    return v0

    .line 4549
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_5e

    :cond_10
    goto :goto_45

    :sswitch_11
    const-string v1, "audioserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v4

    goto :goto_46

    :sswitch_1b
    const-string/jumbo v1, "shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v6

    goto :goto_46

    :sswitch_26
    const-string v1, "media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v5

    goto :goto_46

    :sswitch_30
    const-string/jumbo v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v2

    goto :goto_46

    :sswitch_3b
    const-string v1, "cameraserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    move p0, v3

    goto :goto_46

    :goto_45
    move p0, v0

    :goto_46
    if-eqz p0, :cond_5d

    if-eq p0, v6, :cond_5a

    if-eq p0, v5, :cond_57

    if-eq p0, v4, :cond_54

    if-eq p0, v3, :cond_51

    .line 4561
    return v0

    .line 4559
    :cond_51
    const/16 p0, 0x417

    return p0

    .line 4557
    :cond_54
    const/16 p0, 0x411

    return p0

    .line 4555
    :cond_57
    const/16 p0, 0x3f5

    return p0

    .line 4553
    :cond_5a
    const/16 p0, 0x7d0

    return p0

    .line 4551
    :cond_5d
    return v2

    :sswitch_data_5e
    .sparse-switch
        -0x1dbbd58 -> :sswitch_3b
        0x3580e2 -> :sswitch_30
        0x62f6fe4 -> :sswitch_26
        0x6855e30 -> :sswitch_1b
        0x50251299 -> :sswitch_11
    .end sparse-switch
.end method

.method private scheduleFastWriteLocked()V
    .registers 5

    .line 2728
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_19

    .line 2729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 2730
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 2731
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2732
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2734
    :cond_19
    return-void
.end method

.method private scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V
    .registers 15

    .line 2359
    nop

    .line 2360
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2361
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    :goto_a
    if-ge v2, v0, :cond_32

    .line 2362
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2363
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    .line 2364
    if-eqz v1, :cond_2f

    .line 2365
    iget v3, v1, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v3, :cond_25

    iget v3, v1, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-eq v3, p2, :cond_25

    .line 2366
    goto :goto_2f

    .line 2368
    :cond_25
    if-nez v5, :cond_2c

    .line 2369
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2371
    :cond_2c
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2361
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2374
    :cond_32
    if-nez v5, :cond_35

    .line 2375
    return-void

    .line 2377
    :cond_35
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ;

    .line 2379
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 2377
    move-object v4, p0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2380
    return-void
.end method

.method private scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V
    .registers 15

    .line 2405
    nop

    .line 2406
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2407
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    :goto_a
    if-ge v2, v0, :cond_32

    .line 2408
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2409
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 2410
    if-eqz v1, :cond_2f

    .line 2411
    iget v3, v1, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-ltz v3, :cond_25

    iget v3, v1, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-eq v3, p2, :cond_25

    .line 2412
    goto :goto_2f

    .line 2414
    :cond_25
    if-nez v5, :cond_2c

    .line 2415
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2417
    :cond_2c
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2407
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2420
    :cond_32
    if-nez v5, :cond_35

    .line 2421
    return-void

    .line 2423
    :cond_35
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$AfBLuTvVESlqN91IyRX84hMV5nE;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$AfBLuTvVESlqN91IyRX84hMV5nE;

    .line 2425
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2423
    move-object v4, p0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2426
    return-void
.end method

.method private scheduleWriteLocked()V
    .registers 5

    .line 2721
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_11

    .line 2722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 2723
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2725
    :cond_11
    return-void
.end method

.method private setAllPkgModesToDefault(II)V
    .registers 9

    .line 1414
    monitor-enter p0

    .line 1415
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p2, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p2

    .line 1416
    if-nez p2, :cond_a

    .line 1417
    monitor-exit p0

    return-void

    .line 1420
    :cond_a
    iget-object p2, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1421
    if-nez p2, :cond_10

    .line 1422
    monitor-exit p0

    return-void

    .line 1425
    :cond_10
    nop

    .line 1427
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1428
    move v2, v0

    :goto_16
    if-ge v0, v1, :cond_38

    .line 1429
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1431
    invoke-virtual {v3, p1}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 1432
    if-nez v3, :cond_27

    .line 1433
    goto :goto_35

    .line 1436
    :cond_27
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    .line 1437
    invoke-static {v3}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v5

    if-eq v5, v4, :cond_35

    .line 1438
    invoke-static {v3, v4}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 1439
    const/4 v2, 0x1

    .line 1428
    :cond_35
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1443
    :cond_38
    if-eqz v2, :cond_3d

    .line 1444
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 1446
    :cond_3d
    monitor-exit p0

    .line 1447
    return-void

    .line 1446
    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 8

    .line 4396
    monitor-enter p0

    .line 4397
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_44

    .line 4399
    if-nez v0, :cond_1a

    .line 4401
    :try_start_b
    new-instance v0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    invoke-direct {v0, p0, p3}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_17
    .catchall {:try_start_b .. :try_end_10} :catchall_44

    .line 4404
    nop

    .line 4405
    :try_start_11
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 4402
    :catch_17
    move-exception p1

    .line 4403
    monitor-exit p0

    return-void

    .line 4408
    :cond_1a
    :goto_1a
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 4409
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object p4, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 4410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p5, -0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 4409
    invoke-static {p4, p0, p1, p5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4413
    :cond_34
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 4414
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4415
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->destroy()V

    .line 4417
    :cond_42
    monitor-exit p0

    .line 4418
    return-void

    .line 4417
    :catchall_44
    move-exception p1

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_11 .. :try_end_46} :catchall_44

    throw p1
.end method

.method private updatePendingState(JI)V
    .registers 6

    .line 951
    monitor-enter p0

    .line 952
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 953
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 954
    monitor-exit p0

    .line 955
    return-void

    .line 954
    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .registers 6

    .line 2524
    if-eqz p1, :cond_27

    .line 2525
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    .line 2526
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 2527
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    goto :goto_27

    .line 2529
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 2530
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    .line 2531
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 2536
    :cond_27
    :goto_27
    return-void
.end method

.method private upgradeLocked(I)V
    .registers 5

    .line 2921
    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    .line 2922
    return-void

    .line 2924
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading app-ops xml from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    const/4 v0, -0x1

    if-eq p1, v0, :cond_26

    goto :goto_29

    .line 2927
    :cond_26
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->upgradeRunAnyInBackgroundLocked()V

    .line 2932
    :goto_29
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 2933
    return-void
.end method

.method private upgradeRunAnyInBackgroundLocked()V
    .registers 12

    .line 2885
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7f

    .line 2886
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2887
    if-nez v2, :cond_15

    .line 2888
    goto :goto_7c

    .line 2890
    :cond_15
    iget-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/16 v4, 0x3f

    const/16 v5, 0x46

    if-eqz v3, :cond_30

    .line 2891
    iget-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 2892
    if-ltz v3, :cond_30

    .line 2893
    iget-object v6, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v7, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2894
    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 2893
    invoke-virtual {v6, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2897
    :cond_30
    iget-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_35

    .line 2898
    goto :goto_7c

    .line 2900
    :cond_35
    nop

    .line 2901
    move v3, v0

    move v6, v3

    :goto_38
    iget-object v7, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_75

    .line 2902
    iget-object v7, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2903
    if-eqz v7, :cond_72

    .line 2904
    invoke-virtual {v7, v4}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$Op;

    .line 2905
    if-eqz v8, :cond_72

    invoke-static {v8}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v9

    iget v10, v8, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    if-eq v9, v10, :cond_72

    .line 2906
    new-instance v6, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v10, v8, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {v6, v9, v10, v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 2908
    invoke-static {v8}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v8

    invoke-static {v6, v8}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 2909
    invoke-virtual {v7, v5, v6}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2910
    const/4 v6, 0x1

    .line 2901
    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 2914
    :cond_75
    if-eqz v6, :cond_7c

    .line 2915
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2885
    :cond_7c
    :goto_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2918
    :cond_7f
    return-void
.end method

.method private verifyAndGetIsPrivileged(ILjava/lang/String;)Z
    .registers 10

    .line 2599
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2601
    return v0

    .line 2605
    :cond_4
    monitor-enter p0

    .line 2606
    :try_start_5
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2607
    if-eqz v1, :cond_21

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_21

    .line 2608
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2610
    if-eqz v1, :cond_21

    .line 2611
    iget-boolean p1, v1, Lcom/android/server/appop/AppOpsService$Ops;->isPrivileged:Z

    monitor-exit p0

    return p1

    .line 2614
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_81

    .line 2616
    nop

    .line 2617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2621
    :try_start_27
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    const v4, 0x208c2000

    const/16 v5, 0x3e8

    .line 2627
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2622
    invoke-virtual {v3, p2, v4, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2628
    if-eqz v3, :cond_48

    .line 2629
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2630
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4e

    const/4 v0, 0x1

    goto :goto_4e

    .line 2633
    :cond_48
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v4
    :try_end_4c
    .catchall {:try_start_27 .. :try_end_4c} :catchall_7c

    .line 2634
    if-ltz v4, :cond_4e

    .line 2638
    :cond_4e
    :goto_4e
    if-ne v4, p1, :cond_55

    .line 2643
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2644
    nop

    .line 2646
    return v0

    .line 2639
    :cond_55
    :try_start_55
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Specified package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " under uid "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but it is really "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7c
    .catchall {:try_start_55 .. :try_end_7c} :catchall_7c

    .line 2643
    :catchall_7c
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2614
    :catchall_81
    move-exception p1

    :try_start_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p1
.end method

.method private verifyIncomingOp(I)V
    .registers 5

    .line 2498
    if-ltz p1, :cond_7

    const/16 v0, 0x5b

    if-ge p1, v0, :cond_7

    .line 2499
    return-void

    .line 2501
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .registers 6

    .line 2487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2488
    return-void

    .line 2490
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_12

    .line 2491
    return-void

    .line 2493
    :cond_12
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2494
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    .line 2493
    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2495
    return-void
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 5

    .line 4490
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "addHistoricalOps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4493
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/HistoricalRegistry;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 4494
    return-void
.end method

.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 11

    .line 1886
    monitor-enter p0

    .line 1887
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 1888
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    .line 1889
    if-nez v0, :cond_b

    .line 1890
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result p1

    return p1

    .line 1892
    :cond_b
    new-instance v5, Lcom/android/server/appop/-$$Lambda$AppOpsService$mfUWTdGevxEoIUv1cEPEFG0qAaI;

    invoke-direct {v5, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$mfUWTdGevxEoIUv1cEPEFG0qAaI;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result p1

    return p1

    .line 1888
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .registers 5

    .line 1813
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->checkOperationInternal(IILjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public checkOperationRaw(IILjava/lang/String;)I
    .registers 5

    .line 1808
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->checkOperationInternal(IILjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public checkPackage(ILjava/lang/String;)I
    .registers 3

    .line 1979
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetIsPrivileged(ILjava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_6} :catch_8

    .line 1983
    const/4 p1, 0x0

    return p1

    .line 1984
    :catch_8
    move-exception p1

    .line 1985
    const/4 p1, 0x2

    return p1
.end method

.method public clearHistory()V
    .registers 4

    .line 4506
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "clearHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4509
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory()V

    .line 4510
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 31

    .line 3802
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v1, p3

    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "AppOps"

    invoke-static {v0, v2, v10}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3804
    :cond_11
    nop

    .line 3805
    const/4 v0, 0x0

    .line 3806
    nop

    .line 3807
    nop

    .line 3808
    nop

    .line 3809
    nop

    .line 3811
    const/4 v2, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_100

    .line 3812
    move-object v6, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v0, v11

    move v2, v0

    :goto_22
    array-length v7, v1

    if-ge v0, v7, :cond_fa

    .line 3813
    aget-object v7, v1, v0

    .line 3814
    const-string v8, "-h"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 3815
    invoke-direct {v9, v10}, Lcom/android/server/appop/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3816
    return-void

    .line 3817
    :cond_33
    const-string v8, "-a"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    goto/16 :goto_bf

    .line 3819
    :cond_3d
    const-string v8, "--op"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 3820
    add-int/lit8 v0, v0, 0x1

    .line 3821
    array-length v4, v1

    if-lt v0, v4, :cond_50

    .line 3822
    const-string v0, "No argument for --op option"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3823
    return-void

    .line 3825
    :cond_50
    aget-object v4, v1, v0

    invoke-static {v4, v10}, Lcom/android/server/appop/AppOpsService$Shell;->access$1200(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v4

    .line 3826
    if-gez v4, :cond_bf

    .line 3827
    return-void

    .line 3829
    :cond_59
    const-string v8, "--package"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 3830
    add-int/lit8 v6, v0, 0x1

    .line 3831
    array-length v0, v1

    if-lt v6, v0, :cond_6c

    .line 3832
    const-string v0, "No argument for --package option"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3833
    return-void

    .line 3835
    :cond_6c
    aget-object v7, v1, v6

    .line 3837
    :try_start_6e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v8, 0xc02000

    invoke-interface {v0, v7, v8, v11}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_79} :catch_7a

    .line 3841
    goto :goto_7b

    .line 3840
    :catch_7a
    move-exception v0

    .line 3842
    :goto_7b
    if-gez v3, :cond_92

    .line 3843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3844
    return-void

    .line 3846
    :cond_92
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    move v3, v0

    move v0, v6

    move-object v6, v7

    goto :goto_bf

    .line 3847
    :cond_9a
    const-string v8, "--mode"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 3848
    add-int/lit8 v0, v0, 0x1

    .line 3849
    array-length v5, v1

    if-lt v0, v5, :cond_ad

    .line 3850
    const-string v0, "No argument for --mode option"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3851
    return-void

    .line 3853
    :cond_ad
    aget-object v5, v1, v0

    invoke-static {v5, v10}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v5

    .line 3854
    if-gez v5, :cond_bf

    .line 3855
    return-void

    .line 3857
    :cond_b6
    const-string v2, "--watchers"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 3858
    move v2, v12

    .line 3812
    :cond_bf
    :goto_bf
    add-int/2addr v0, v12

    goto/16 :goto_22

    .line 3859
    :cond_c2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e5

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_e5

    .line 3860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3861
    return-void

    .line 3863
    :cond_e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3864
    return-void

    .line 3812
    :cond_fa
    move v0, v2

    move v2, v3

    move v13, v4

    move v14, v5

    move-object v15, v6

    goto :goto_104

    .line 3811
    :cond_100
    move-object v15, v0

    move v13, v2

    move v14, v13

    move v0, v11

    .line 3869
    :goto_104
    monitor-enter p0

    .line 3870
    :try_start_105
    const-string v1, "Current AppOps Service state:"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3871
    if-nez v0, :cond_111

    .line 3872
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-virtual {v1, v10}, Lcom/android/server/appop/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 3874
    :cond_111
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3876
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 3877
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3878
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v6, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3879
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    .line 3880
    nop

    .line 3881
    if-gez v13, :cond_16c

    if-gez v14, :cond_16c

    if-nez v15, :cond_16c

    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_16c

    if-nez v0, :cond_16c

    .line 3883
    const-string v1, "  Profile owners:"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3884
    move v1, v11

    :goto_13f
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_169

    .line 3885
    const-string v3, "    User #"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3886
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3887
    const-string v3, ": "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3888
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v10, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3889
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3884
    add-int/lit8 v1, v1, 0x1

    goto :goto_13f

    .line 3891
    :cond_169
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3893
    :cond_16c
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1f5

    .line 3894
    nop

    .line 3895
    move v1, v11

    move v3, v1

    move v4, v3

    :goto_178
    iget-object v5, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_1f6

    .line 3896
    if-ltz v13, :cond_18b

    iget-object v5, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-eq v13, v5, :cond_18b

    .line 3897
    goto :goto_1f0

    .line 3899
    :cond_18b
    nop

    .line 3900
    iget-object v5, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 3901
    move/from16 v20, v4

    move/from16 v19, v11

    move v4, v3

    move/from16 v3, v19

    :goto_19b
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-ge v3, v12, :cond_1ed

    .line 3902
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 3903
    if-eqz v15, :cond_1b2

    iget v11, v12, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3904
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v2, v11, :cond_1b2

    .line 3905
    goto :goto_1e8

    .line 3907
    :cond_1b2
    nop

    .line 3908
    if-nez v4, :cond_1bb

    .line 3909
    const-string v4, "  Op mode watchers:"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3910
    const/4 v4, 0x1

    .line 3912
    :cond_1bb
    if-nez v19, :cond_1d6

    .line 3913
    const-string v11, "    Op "

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3914
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3915
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3916
    const/16 v19, 0x1

    .line 3918
    :cond_1d6
    const-string v11, "      #"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3919
    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/16 v20, 0x1

    .line 3901
    :goto_1e8
    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_19b

    :cond_1ed
    move v3, v4

    move/from16 v4, v20

    .line 3895
    :goto_1f0
    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_178

    .line 3923
    :cond_1f5
    const/4 v4, 0x0

    :cond_1f6
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_262

    if-gez v13, :cond_262

    .line 3924
    nop

    .line 3925
    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_203
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_262

    .line 3926
    if-eqz v15, :cond_21a

    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21a

    .line 3927
    goto :goto_25f

    .line 3929
    :cond_21a
    nop

    .line 3930
    if-nez v12, :cond_223

    .line 3931
    const-string v3, "  Package mode watchers:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3932
    const/4 v12, 0x1

    .line 3934
    :cond_223
    const-string v3, "    Pkg "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3935
    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3936
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 3937
    const/4 v4, 0x0

    :goto_241
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_25e

    .line 3938
    const-string v5, "      #"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3939
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3937
    add-int/lit8 v4, v4, 0x1

    goto :goto_241

    :cond_25e
    const/4 v4, 0x1

    .line 3925
    :goto_25f
    add-int/lit8 v1, v1, 0x1

    goto :goto_203

    .line 3943
    :cond_262
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_2b7

    if-gez v13, :cond_2b7

    .line 3944
    nop

    .line 3945
    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_26f
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b5

    .line 3946
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 3947
    if-eqz v15, :cond_28a

    iget v5, v3, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3948
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v2, v5, :cond_28a

    .line 3949
    goto :goto_2b2

    .line 3951
    :cond_28a
    nop

    .line 3952
    if-nez v12, :cond_293

    .line 3953
    const-string v4, "  All op mode watchers:"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3954
    const/4 v12, 0x1

    .line 3956
    :cond_293
    const-string v4, "    "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3957
    iget-object v4, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3958
    const-string v4, ": "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v4, 0x1

    .line 3945
    :goto_2b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_26f

    :cond_2b5
    move v12, v4

    goto :goto_2b8

    .line 3961
    :cond_2b7
    move v12, v4

    :goto_2b8
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_36a

    if-gez v14, :cond_36a

    .line 3962
    nop

    .line 3963
    nop

    .line 3964
    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_2c6
    iget-object v5, v9, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_366

    .line 3965
    iget-object v5, v9, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3966
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 3967
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-gtz v11, :cond_2dd

    .line 3968
    goto :goto_2fa

    .line 3970
    :cond_2dd
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    check-cast v11, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    .line 3971
    if-ltz v13, :cond_2ef

    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v19

    if-gez v19, :cond_2ef

    .line 3972
    goto :goto_2fa

    .line 3974
    :cond_2ef
    if-eqz v15, :cond_2fd

    iget v3, v11, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 3975
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-eq v2, v3, :cond_2fd

    .line 3976
    nop

    .line 3964
    :goto_2fa
    move-object/from16 v20, v6

    goto :goto_360

    .line 3978
    :cond_2fd
    if-nez v12, :cond_305

    .line 3979
    const-string v3, "  All op active watchers:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3980
    const/4 v12, 0x1

    .line 3982
    :cond_305
    const-string v3, "    "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3983
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3984
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 3983
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3985
    const-string v3, " ->"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3986
    const-string v3, "        ["

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3988
    const/4 v4, 0x0

    :goto_32a
    if-ge v4, v3, :cond_351

    .line 3989
    if-lez v4, :cond_336

    .line 3990
    move-object/from16 v20, v6

    const/16 v6, 0x20

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_338

    .line 3989
    :cond_336
    move-object/from16 v20, v6

    .line 3992
    :goto_338
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3993
    add-int/lit8 v6, v3, -0x1

    if-ge v4, v6, :cond_34c

    .line 3994
    const/16 v6, 0x2c

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 3988
    :cond_34c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, v20

    goto :goto_32a

    .line 3997
    :cond_351
    move-object/from16 v20, v6

    const-string v3, "]"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3998
    const-string v3, "        "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3999
    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3964
    :goto_360
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, v20

    goto/16 :goto_2c6

    :cond_366
    move-object/from16 v20, v6

    const/4 v12, 0x1

    goto :goto_36c

    .line 3961
    :cond_36a
    move-object/from16 v20, v6

    .line 4002
    :goto_36c
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_41a

    if-gez v14, :cond_41a

    .line 4003
    nop

    .line 4004
    nop

    .line 4005
    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_37a
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_417

    .line 4006
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 4007
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_392

    .line 4008
    const/4 v11, 0x0

    goto :goto_3ad

    .line 4010
    :cond_392
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 4011
    if-ltz v13, :cond_3a2

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_3a2

    .line 4012
    goto :goto_3ad

    .line 4014
    :cond_3a2
    if-eqz v15, :cond_3b0

    iget v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    .line 4015
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v2, v5, :cond_3b0

    .line 4016
    nop

    .line 4005
    :goto_3ad
    const/16 v6, 0x2c

    goto :goto_413

    .line 4018
    :cond_3b0
    if-nez v12, :cond_3b8

    .line 4019
    const-string v5, "  All op noted watchers:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4020
    const/4 v12, 0x1

    .line 4022
    :cond_3b8
    const-string v5, "    "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4023
    iget-object v5, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 4024
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 4023
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4025
    const-string v1, " ->"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4026
    const-string v1, "        ["

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4027
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4028
    move v5, v11

    :goto_3dd
    if-ge v5, v1, :cond_403

    .line 4029
    if-lez v5, :cond_3e7

    .line 4030
    const/16 v6, 0x20

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_3e9

    .line 4029
    :cond_3e7
    const/16 v6, 0x20

    .line 4032
    :goto_3e9
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4033
    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_3fe

    .line 4034
    const/16 v6, 0x2c

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_400

    .line 4033
    :cond_3fe
    const/16 v6, 0x2c

    .line 4028
    :goto_400
    add-int/lit8 v5, v5, 0x1

    goto :goto_3dd

    .line 4037
    :cond_403
    const/16 v6, 0x2c

    const-string v1, "]"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4038
    const-string v1, "        "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4039
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move v1, v5

    .line 4005
    :goto_413
    const/4 v3, 0x1

    add-int/2addr v1, v3

    goto/16 :goto_37a

    :cond_417
    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_41b

    .line 4002
    :cond_41a
    const/4 v11, 0x0

    .line 4042
    :goto_41b
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_4ce

    if-gez v14, :cond_4ce

    if-nez v0, :cond_4ce

    .line 4043
    nop

    .line 4044
    nop

    .line 4045
    move v1, v11

    move v2, v1

    :goto_42b
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_4cd

    .line 4046
    nop

    .line 4047
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 4048
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4c8

    .line 4049
    nop

    .line 4050
    move v12, v2

    move v2, v11

    move v4, v2

    move v5, v4

    :goto_449
    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4c7

    .line 4051
    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Op;

    .line 4052
    if-ltz v13, :cond_460

    iget v11, v6, Lcom/android/server/appop/AppOpsService$Op;->op:I

    if-eq v11, v13, :cond_460

    .line 4053
    goto :goto_4c3

    .line 4055
    :cond_460
    if-eqz v15, :cond_46b

    iget-object v11, v6, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_46b

    .line 4056
    goto :goto_4c3

    .line 4058
    :cond_46b
    if-nez v12, :cond_473

    .line 4059
    const-string v11, "  Clients:"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4060
    const/4 v12, 0x1

    .line 4062
    :cond_473
    if-nez v4, :cond_491

    .line 4063
    const-string v4, "    "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v4, ":"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4064
    const-string v4, "      "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4065
    const/4 v4, 0x1

    .line 4067
    :cond_491
    if-nez v5, :cond_499

    .line 4068
    const-string v5, "      Started ops:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4069
    const/4 v5, 0x1

    .line 4071
    :cond_499
    const-string v11, "        "

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "uid="

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v6, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 4072
    const-string v11, " pkg="

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v6, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4073
    const-string v11, " op="

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v6, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4050
    :goto_4c3
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x0

    goto :goto_449

    :cond_4c7
    move v2, v12

    .line 4045
    :cond_4c8
    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x0

    goto/16 :goto_42b

    :cond_4cd
    const/4 v12, 0x1

    .line 4078
    :cond_4ce
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_574

    if-gez v13, :cond_574

    if-eqz v15, :cond_574

    if-gez v14, :cond_574

    if-nez v0, :cond_574

    if-nez v0, :cond_574

    .line 4080
    nop

    .line 4081
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4e3
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_574

    .line 4082
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    .line 4083
    iget-object v4, v9, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4084
    move v5, v2

    const/4 v2, 0x0

    :goto_4ff
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_56f

    .line 4085
    if-nez v5, :cond_50f

    .line 4086
    const-string v5, "  Audio Restrictions:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4087
    nop

    .line 4088
    const/4 v5, 0x1

    const/4 v12, 0x1

    .line 4090
    :cond_50f
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 4091
    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4092
    const-string v11, " usage="

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4093
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Restriction;

    .line 4094
    const-string v11, ": mode="

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v11, v6, Lcom/android/server/appop/AppOpsService$Restriction;->mode:I

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4095
    iget-object v11, v6, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_568

    .line 4096
    const-string v11, "      Exceptions:"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4097
    const/4 v11, 0x0

    :goto_549
    move-object/from16 p3, v3

    iget-object v3, v6, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v11, v3, :cond_56a

    .line 4098
    const-string v3, "        "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4097
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p3

    goto :goto_549

    .line 4095
    :cond_568
    move-object/from16 p3, v3

    .line 4084
    :cond_56a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, p3

    goto :goto_4ff

    .line 4081
    :cond_56f
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto/16 :goto_4e3

    .line 4104
    :cond_574
    if-eqz v12, :cond_579

    .line 4105
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4107
    :cond_579
    const/4 v11, 0x0

    :goto_57a
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v11, v1, :cond_858

    .line 4108
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 4109
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 4110
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 4112
    if-nez v0, :cond_84c

    .line 4115
    if-gez v13, :cond_59b

    if-nez v15, :cond_59b

    if-ltz v14, :cond_597

    goto :goto_59b

    :cond_597
    move/from16 v21, v0

    goto/16 :goto_65c

    .line 4116
    :cond_59b
    :goto_59b
    if-ltz v13, :cond_5ac

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_5aa

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 4117
    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_5aa

    goto :goto_5ac

    :cond_5aa
    const/4 v3, 0x0

    goto :goto_5ad

    :cond_5ac
    :goto_5ac
    const/4 v3, 0x1

    .line 4118
    :goto_5ad
    if-nez v15, :cond_5b1

    const/4 v4, 0x1

    goto :goto_5b2

    :cond_5b1
    const/4 v4, 0x0

    .line 4119
    :goto_5b2
    if-gez v14, :cond_5b6

    const/4 v5, 0x1

    goto :goto_5b7

    :cond_5b6
    const/4 v5, 0x0

    .line 4120
    :goto_5b7
    if-nez v5, :cond_5d7

    if-eqz v2, :cond_5d7

    .line 4121
    move/from16 p3, v3

    const/4 v3, 0x0

    :goto_5be
    if-nez v5, :cond_5d4

    move/from16 v19, v4

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5db

    .line 4122
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-ne v4, v14, :cond_5cf

    .line 4123
    const/4 v5, 0x1

    .line 4121
    :cond_5cf
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v19

    goto :goto_5be

    :cond_5d4
    move/from16 v19, v4

    goto :goto_5db

    .line 4120
    :cond_5d7
    move/from16 p3, v3

    move/from16 v19, v4

    .line 4127
    :cond_5db
    :goto_5db
    if-eqz v6, :cond_63f

    .line 4128
    move/from16 v3, p3

    const/4 v4, 0x0

    .line 4129
    :goto_5e0
    if-eqz v3, :cond_5ea

    if-eqz v19, :cond_5ea

    if-nez v5, :cond_5e7

    goto :goto_5ea

    :cond_5e7
    move/from16 v21, v0

    goto :goto_643

    :cond_5ea
    :goto_5ea
    move/from16 v21, v0

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v4, v0, :cond_643

    .line 4131
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    .line 4132
    if-nez v3, :cond_603

    if-eqz v0, :cond_603

    invoke-virtual {v0, v13}, Lcom/android/server/appop/AppOpsService$Ops;->indexOfKey(I)I

    move-result v22

    if-ltz v22, :cond_603

    .line 4133
    const/4 v3, 0x1

    .line 4135
    :cond_603
    if-nez v5, :cond_62a

    .line 4136
    move/from16 p3, v3

    const/4 v3, 0x0

    :goto_608
    if-nez v5, :cond_625

    move/from16 v22, v5

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v5

    if-ge v3, v5, :cond_627

    .line 4137
    invoke-virtual {v0, v3}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v5

    if-ne v5, v14, :cond_620

    .line 4138
    const/4 v5, 0x1

    goto :goto_622

    .line 4137
    :cond_620
    move/from16 v5, v22

    .line 4136
    :goto_622
    add-int/lit8 v3, v3, 0x1

    goto :goto_608

    :cond_625
    move/from16 v22, v5

    .line 4142
    :cond_627
    move/from16 v5, v22

    goto :goto_62c

    .line 4135
    :cond_62a
    move/from16 p3, v3

    .line 4142
    :goto_62c
    if-nez v19, :cond_638

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_638

    .line 4143
    const/16 v19, 0x1

    .line 4130
    :cond_638
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, p3

    move/from16 v0, v21

    goto :goto_5e0

    .line 4127
    :cond_63f
    move/from16 v21, v0

    move/from16 v3, p3

    .line 4147
    :cond_643
    :goto_643
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_652

    if-nez v3, :cond_652

    .line 4148
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-lez v0, :cond_652

    .line 4149
    const/4 v3, 0x1

    .line 4152
    :cond_652
    if-eqz v3, :cond_849

    if-eqz v19, :cond_849

    if-nez v5, :cond_65c

    .line 4153
    move-wide/from16 v25, v7

    goto/16 :goto_850

    .line 4157
    :cond_65c
    :goto_65c
    const-string v0, "  Uid "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v10, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, ":"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4158
    const-string v0, "    state="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4159
    iget v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4160
    iget v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-eq v0, v3, :cond_68d

    .line 4161
    const-string v0, "    pendingState="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4162
    iget v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4164
    :cond_68d
    iget-wide v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v22, 0x0

    cmp-long v0, v3, v22

    if-eqz v0, :cond_6a2

    .line 4165
    const-string v0, "    pendingStateCommitTime="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4166
    iget-wide v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    invoke-static {v3, v4, v7, v8, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4167
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4169
    :cond_6a2
    iget v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    if-eqz v0, :cond_6b0

    .line 4170
    const-string v0, "    startNesting="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4171
    iget v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4173
    :cond_6b0
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_706

    if-ltz v14, :cond_6b9

    const/4 v0, 0x4

    if-ne v14, v0, :cond_706

    .line 4175
    :cond_6b9
    const-string v0, "    foregroundOps:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4176
    const/4 v0, 0x0

    :goto_6bf
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_6fc

    .line 4177
    if-ltz v13, :cond_6d2

    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-eq v13, v3, :cond_6d2

    .line 4178
    goto :goto_6f9

    .line 4180
    :cond_6d2
    const-string v3, "      "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4181
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4182
    const-string v3, ": "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4183
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_6f4

    const-string v3, "WATCHER"

    goto :goto_6f6

    :cond_6f4
    const-string v3, "SILENT"

    :goto_6f6
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4176
    :goto_6f9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6bf

    .line 4185
    :cond_6fc
    const-string v0, "    hasForegroundWatchers="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4186
    iget-boolean v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4188
    :cond_706
    nop

    .line 4190
    if-eqz v2, :cond_73d

    .line 4191
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 4192
    const/4 v1, 0x0

    :goto_70e
    if-ge v1, v0, :cond_73d

    .line 4193
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 4194
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 4195
    if-ltz v13, :cond_71d

    if-eq v13, v3, :cond_71d

    .line 4196
    goto :goto_73a

    .line 4198
    :cond_71d
    if-ltz v14, :cond_722

    if-eq v14, v4, :cond_722

    .line 4199
    goto :goto_73a

    .line 4201
    :cond_722
    const-string v5, "      "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4202
    const-string v3, ": mode="

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4192
    :goto_73a
    add-int/lit8 v1, v1, 0x1

    goto :goto_70e

    .line 4206
    :cond_73d
    if-nez v6, :cond_743

    .line 4207
    move-wide/from16 v25, v7

    goto/16 :goto_847

    .line 4210
    :cond_743
    const/4 v0, 0x0

    :goto_744
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_845

    .line 4211
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/appop/AppOpsService$Ops;

    .line 4212
    if-eqz v15, :cond_761

    iget-object v1, v12, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_761

    .line 4213
    move-object/from16 v24, v6

    move-wide/from16 v25, v7

    goto/16 :goto_83d

    .line 4215
    :cond_761
    nop

    .line 4216
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_764
    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v2

    if-ge v4, v2, :cond_839

    .line 4217
    invoke-virtual {v12, v4}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    .line 4218
    iget v2, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 4219
    if-ltz v13, :cond_778

    if-eq v13, v2, :cond_778

    .line 4220
    goto :goto_781

    .line 4222
    :cond_778
    if-ltz v14, :cond_78b

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v3

    if-eq v14, v3, :cond_78b

    .line 4223
    nop

    .line 4216
    :goto_781
    move/from16 v23, v4

    move-object/from16 v24, v6

    move-wide/from16 v25, v7

    move-object/from16 p3, v12

    goto/16 :goto_82f

    .line 4225
    :cond_78b
    if-nez v1, :cond_79f

    .line 4226
    const-string v1, "    Package "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4227
    const/16 v19, 0x1

    goto :goto_7a1

    .line 4225
    :cond_79f
    move/from16 v19, v1

    .line 4229
    :goto_7a1
    const-string v1, "      "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4230
    const-string v1, " ("

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4231
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 4232
    if-eq v1, v2, :cond_7ec

    .line 4233
    const-string v2, " / switch "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4234
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4235
    invoke-virtual {v12, v1}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Op;

    .line 4236
    if-eqz v2, :cond_7dc

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    goto :goto_7e0

    .line 4237
    :cond_7dc
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    .line 4238
    :goto_7e0
    const-string v2, "="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4240
    :cond_7ec
    const-string v1, "): "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4241
    const-string v22, "          "

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v23, v4

    move-object/from16 p3, v12

    move-object v12, v5

    move-wide/from16 v4, v16

    move-object/from16 v24, v6

    move-object/from16 v6, v20

    move-wide/from16 v25, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v22

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;Lcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    .line 4242
    iget-boolean v1, v12, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    if-eqz v1, :cond_81f

    .line 4243
    const-string v1, "          Running start at: "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4244
    iget-wide v1, v12, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    sub-long v7, v25, v1

    invoke-static {v7, v8, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4245
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4247
    :cond_81f
    iget v1, v12, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-eqz v1, :cond_82d

    .line 4248
    const-string v1, "          startNesting="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4249
    iget v1, v12, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4216
    :cond_82d
    move/from16 v1, v19

    :goto_82f
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v12, p3

    move-object/from16 v6, v24

    move-wide/from16 v7, v25

    goto/16 :goto_764

    :cond_839
    move-object/from16 v24, v6

    move-wide/from16 v25, v7

    .line 4210
    :goto_83d
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v24

    move-wide/from16 v7, v25

    goto/16 :goto_744

    :cond_845
    move-wide/from16 v25, v7

    .line 4107
    :goto_847
    const/4 v12, 0x1

    goto :goto_850

    .line 4152
    :cond_849
    move-wide/from16 v25, v7

    goto :goto_850

    .line 4112
    :cond_84c
    move/from16 v21, v0

    move-wide/from16 v25, v7

    .line 4107
    :goto_850
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v21

    move-wide/from16 v7, v25

    goto/16 :goto_57a

    .line 4254
    :cond_858
    move/from16 v21, v0

    if-eqz v12, :cond_85f

    .line 4255
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4258
    :cond_85f
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4259
    const/4 v1, 0x0

    :goto_866
    if-ge v1, v0, :cond_9d4

    .line 4260
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4261
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 4262
    nop

    .line 4264
    if-gez v14, :cond_9cc

    if-nez v21, :cond_9cc

    .line 4268
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v4, :cond_888

    .line 4269
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v11

    goto :goto_889

    :cond_888
    const/4 v11, 0x0

    .line 4270
    :goto_889
    if-lez v11, :cond_938

    if-nez v15, :cond_938

    .line 4271
    nop

    .line 4272
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_891
    if-ge v4, v11, :cond_934

    .line 4273
    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 4274
    iget-object v7, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Z

    .line 4275
    if-nez v7, :cond_8a4

    .line 4276
    goto :goto_8ad

    .line 4278
    :cond_8a4
    if-ltz v13, :cond_8b2

    array-length v8, v7

    if-ge v13, v8, :cond_8ad

    aget-boolean v8, v7, v13

    if-nez v8, :cond_8b2

    .line 4272
    :cond_8ad
    :goto_8ad
    move/from16 p3, v0

    const/4 v7, 0x1

    goto/16 :goto_92e

    .line 4282
    :cond_8b2
    if-nez v5, :cond_8ce

    .line 4283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  User restrictions for token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4284
    const/4 v5, 0x1

    .line 4286
    :cond_8ce
    if-nez v12, :cond_8d6

    .line 4287
    const-string v8, "      Restricted ops:"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4288
    const/4 v12, 0x1

    .line 4290
    :cond_8d6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 4291
    move/from16 p3, v0

    const-string v0, "["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4292
    array-length v0, v7

    .line 4293
    move/from16 v16, v5

    const/4 v5, 0x0

    :goto_8e6
    if-ge v5, v0, :cond_910

    .line 4294
    aget-boolean v17, v7, v5

    if-eqz v17, :cond_904

    .line 4295
    move/from16 v17, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    move-object/from16 v18, v7

    const/4 v7, 0x1

    if-le v0, v7, :cond_8fc

    .line 4296
    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4298
    :cond_8fc
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_909

    .line 4294
    :cond_904
    move/from16 v17, v0

    move-object/from16 v18, v7

    const/4 v7, 0x1

    .line 4293
    :goto_909
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v17

    move-object/from16 v7, v18

    goto :goto_8e6

    .line 4301
    :cond_910
    const/4 v7, 0x1

    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4302
    const-string v0, "        "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "user: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4303
    const-string v0, " restricted ops: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v5, v16

    .line 4272
    :goto_92e
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p3

    goto/16 :goto_891

    :cond_934
    move/from16 p3, v0

    const/4 v7, 0x1

    goto :goto_93c

    .line 4270
    :cond_938
    move/from16 p3, v0

    const/4 v7, 0x1

    .line 4307
    const/4 v5, 0x0

    :goto_93c
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_947

    .line 4308
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v11

    goto :goto_948

    :cond_947
    const/4 v11, 0x0

    .line 4309
    :goto_948
    if-lez v11, :cond_9ce

    if-gez v13, :cond_9ce

    .line 4310
    nop

    .line 4311
    move v12, v5

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_950
    if-ge v0, v11, :cond_9ce

    .line 4312
    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 4313
    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 4314
    if-nez v6, :cond_965

    .line 4315
    move-object/from16 v16, v3

    goto :goto_9c6

    .line 4318
    :cond_965
    if-eqz v15, :cond_982

    .line 4319
    nop

    .line 4320
    array-length v8, v6

    const/4 v7, 0x0

    :goto_96a
    if-ge v7, v8, :cond_97e

    move-object/from16 v16, v3

    aget-object v3, v6, v7

    .line 4321
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_979

    .line 4322
    nop

    .line 4323
    const/4 v3, 0x1

    goto :goto_981

    .line 4320
    :cond_979
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    goto :goto_96a

    :cond_97e
    move-object/from16 v16, v3

    const/4 v3, 0x0

    :goto_981
    goto :goto_985

    .line 4327
    :cond_982
    move-object/from16 v16, v3

    const/4 v3, 0x1

    .line 4329
    :goto_985
    if-nez v3, :cond_988

    .line 4330
    goto :goto_9c6

    .line 4332
    :cond_988
    if-nez v12, :cond_9a4

    .line 4333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  User restrictions for token "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4334
    const/4 v12, 0x1

    .line 4336
    :cond_9a4
    if-nez v4, :cond_9ac

    .line 4337
    const-string v3, "      Excluded packages:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4338
    const/4 v4, 0x1

    .line 4340
    :cond_9ac
    const-string v3, "        "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "user: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4341
    const-string v3, " packages: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4311
    :goto_9c6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v16

    const/4 v7, 0x1

    goto :goto_950

    .line 4264
    :cond_9cc
    move/from16 p3, v0

    .line 4259
    :cond_9ce
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p3

    goto/16 :goto_866

    .line 4345
    :cond_9d4
    monitor-exit p0

    .line 4348
    nop

    .line 4351
    return-void

    .line 4345
    :catchall_9d7
    move-exception v0

    monitor-exit p0
    :try_end_9d9
    .catchall {:try_start_105 .. :try_end_9d9} :catchall_9d7

    throw v0
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 12

    .line 2305
    invoke-direct {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2306
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2307
    invoke-static {p3, p4}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2308
    if-nez v6, :cond_d

    .line 2309
    return-void

    .line 2311
    :cond_d
    instance-of v0, p1, Lcom/android/server/appop/AppOpsService$ClientState;

    if-nez v0, :cond_12

    .line 2312
    return-void

    .line 2314
    :cond_12
    check-cast p1, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 2318
    :try_start_14
    invoke-direct {p0, p3, p4}, Lcom/android/server/appop/AppOpsService;->verifyAndGetIsPrivileged(ILjava/lang/String;)Z

    move-result v4
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_18} :catch_c1

    .line 2322
    nop

    .line 2324
    monitor-enter p0

    .line 2325
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, v6

    :try_start_1f
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v0

    .line 2326
    if-nez v0, :cond_27

    .line 2327
    monitor-exit p0

    return-void

    .line 2329
    :cond_27
    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_b2

    .line 2334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_be

    .line 2336
    :try_start_34
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 2337
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    .line 2336
    invoke-virtual {p1, v6, v1, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result p1

    if-gez p1, :cond_75

    .line 2338
    const-string p1, "AppOps"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finishing op="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for non-existing package="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in uid="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_34 .. :try_end_70} :catchall_ad

    .line 2344
    :try_start_70
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 2341
    return-void

    .line 2344
    :cond_75
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2345
    nop

    .line 2346
    const-string p1, "AppOps"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Operation not started: uid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget p3, p3, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " pkg="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " op="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2347
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2346
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    monitor-exit p0

    return-void

    .line 2344
    :catchall_ad
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2350
    :cond_b2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/appop/AppOpsService;->finishOperationLocked(Lcom/android/server/appop/AppOpsService$Op;Z)V

    .line 2351
    iget p1, v0, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-gtz p1, :cond_bc

    .line 2352
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 2354
    :cond_bc
    monitor-exit p0

    .line 2355
    return-void

    .line 2354
    :catchall_be
    move-exception p1

    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_70 .. :try_end_c0} :catchall_be

    throw p1

    .line 2319
    :catch_c1
    move-exception p1

    .line 2320
    const-string p2, "AppOps"

    const-string p3, "Cannot finishOperation"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2321
    return-void
.end method

.method finishOperationLocked(Lcom/android/server/appop/AppOpsService$Op;Z)V
    .registers 27

    .line 2457
    move-object/from16 v7, p1

    iget v9, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2458
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v10, v0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2459
    iget v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    const/4 v14, 0x1

    if-le v0, v14, :cond_1e

    if-eqz p2, :cond_10

    goto :goto_1e

    .line 2481
    :cond_10
    iget v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    sub-int/2addr v0, v14

    iput v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    .line 2482
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    sub-int/2addr v1, v14

    iput v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    goto/16 :goto_d6

    .line 2460
    :cond_1e
    :goto_1e
    iget v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-eq v0, v14, :cond_9e

    if-eqz p2, :cond_26

    goto/16 :goto_9e

    .line 2468
    :cond_26
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v1, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-boolean v2, v7, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v18

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v19

    .line 2469
    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v21

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v22

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$900(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v23

    move-object v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-direct/range {v15 .. v23}, Landroid/app/AppOpsManager$OpEntry;-><init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V

    .line 2470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2472
    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " duration="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    const/16 v4, 0x2bc

    .line 2473
    invoke-virtual {v0, v3, v4, v2}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " nesting="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2470
    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v14

    goto :goto_c6

    .line 2462
    :cond_9e
    :goto_9e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, v7, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    sub-long v15, v0, v2

    .line 2463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-wide v3, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$Op;->finished(JJII)V

    .line 2465
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v11, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v12, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v13, 0x1

    move v0, v14

    move-wide v14, v15

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/appop/HistoricalRegistry;->increaseOpAccessDuration(IILjava/lang/String;IIJ)V

    .line 2467
    nop

    .line 2476
    :goto_c6
    iget v1, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-lt v1, v0, :cond_d3

    .line 2477
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    iget v2, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    .line 2479
    :cond_d3
    const/4 v0, 0x0

    iput v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    .line 2484
    :goto_d6
    return-void
.end method

.method public getAppOpsServiceDelegate()Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .registers 2

    .line 1795
    monitor-enter p0

    .line 1796
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    monitor-exit p0

    return-object v0

    .line 1797
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/util/List;JJILandroid/os/RemoteCallback;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 1156
    move-object v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 1158
    move/from16 v4, p1

    invoke-virtual {v2, v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setUid(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1159
    move-object/from16 v5, p2

    invoke-virtual {v2, v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1160
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1161
    move/from16 v11, p8

    invoke-virtual {v2, v11}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1162
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    .line 1163
    const-string v2, "callback cannot be null"

    move-object/from16 v12, p9

    invoke-static {v12, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1166
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1165
    const-string v13, "android.permission.GET_APP_OPS_STATS"

    const-string v14, "getHistoricalOps"

    invoke-virtual {v2, v13, v3, v6, v14}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1168
    if-eqz v1, :cond_4c

    .line 1169
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    move-object v6, v1

    .line 1172
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/appop/HistoricalRegistry;->getHistoricalOps(ILjava/lang/String;[Ljava/lang/String;JJILandroid/os/RemoteCallback;)V

    .line 1174
    return-void
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/util/List;JJILandroid/os/RemoteCallback;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 1181
    move-object v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 1183
    move/from16 v4, p1

    invoke-virtual {v2, v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setUid(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1184
    move-object/from16 v5, p2

    invoke-virtual {v2, v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1185
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1186
    move/from16 v11, p8

    invoke-virtual {v2, v11}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1187
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    .line 1188
    const-string v2, "callback cannot be null"

    move-object/from16 v12, p9

    invoke-static {v12, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1191
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1190
    const-string v13, "android.permission.MANAGE_APPOPS"

    const-string v14, "getHistoricalOps"

    invoke-virtual {v2, v13, v3, v6, v14}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1193
    if-eqz v1, :cond_4c

    .line 1194
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    move-object v6, v1

    .line 1197
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/appop/HistoricalRegistry;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;[Ljava/lang/String;JJILandroid/os/RemoteCallback;)V

    .line 1199
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1127
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1128
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1127
    const/4 v3, 0x0

    const-string v4, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1129
    invoke-static {p1, p2}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1130
    if-nez p2, :cond_1b

    .line 1131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1133
    :cond_1b
    monitor-enter p0

    .line 1134
    const/4 v0, 0x0

    :try_start_1d
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p1

    .line 1136
    if-nez p1, :cond_25

    .line 1137
    monitor-exit p0

    return-object v3

    .line 1139
    :cond_25
    invoke-direct {p0, p1, p3}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1140
    if-nez p2, :cond_2d

    .line 1141
    monitor-exit p0

    return-object v3

    .line 1143
    :cond_2d
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    new-instance v0, Landroid/app/AppOpsManager$PackageOps;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v0, v1, p1, p2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1146
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    monitor-exit p0

    return-object p3

    .line 1148
    :catchall_42
    move-exception p1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_42

    throw p1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1095
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1096
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1095
    const/4 v3, 0x0

    const-string v4, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1097
    nop

    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_12
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1100
    const/4 v1, 0x0

    move v2, v1

    :goto_1a
    if-ge v2, v0, :cond_63

    .line 1101
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1102
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v5, :cond_60

    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1103
    goto :goto_60

    .line 1105
    :cond_31
    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1106
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1107
    move-object v6, v3

    move v3, v1

    :goto_39
    if-ge v3, v5, :cond_5f

    .line 1108
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1109
    invoke-direct {p0, v7, p1}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v8

    .line 1110
    if-eqz v8, :cond_5c

    .line 1111
    if-nez v6, :cond_4e

    .line 1112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    :cond_4e
    new-instance v9, Landroid/app/AppOpsManager$PackageOps;

    iget-object v10, v7, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v7, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v9, v10, v7, v8}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1116
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_5f
    move-object v3, v6

    .line 1100
    :cond_60
    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1120
    :cond_63
    monitor-exit p0

    .line 1121
    return-object v3

    .line 1120
    :catchall_65
    move-exception p1

    monitor-exit p0
    :try_end_67
    .catchall {:try_start_12 .. :try_end_67} :catchall_65

    throw p1
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4

    .line 1784
    monitor-enter p0

    .line 1785
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 1786
    if-nez v0, :cond_15

    .line 1787
    new-instance v0, Lcom/android/server/appop/AppOpsService$ClientState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appop/AppOpsService$ClientState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V

    .line 1788
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    :cond_15
    monitor-exit p0

    return-object v0

    .line 1791
    :catchall_17
    move-exception p1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1211
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1212
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1211
    const/4 v3, 0x0

    const-string v4, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1213
    monitor-enter p0

    .line 1214
    const/4 v0, 0x0

    :try_start_12
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p1

    .line 1215
    if-nez p1, :cond_1a

    .line 1216
    monitor-exit p0

    return-object v3

    .line 1218
    :cond_1a
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, p2}, Lcom/android/server/appop/AppOpsService;->collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1219
    if-nez p2, :cond_24

    .line 1220
    monitor-exit p0

    return-object v3

    .line 1222
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    new-instance v1, Landroid/app/AppOpsManager$PackageOps;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v1, v3, p1, p2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1225
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    monitor-exit p0

    return-object v0

    .line 1227
    :catchall_35
    move-exception p1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_12 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .registers 10

    .line 4448
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_12

    .line 4449
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4451
    return v1

    .line 4454
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4455
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4456
    if-nez p3, :cond_1c

    .line 4457
    return v1

    .line 4459
    :cond_1c
    monitor-enter p0

    .line 4460
    :try_start_1d
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_25
    if-ltz p3, :cond_52

    .line 4461
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 4462
    iget-object v3, v2, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_36
    if-ltz v3, :cond_4f

    .line 4463
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 4464
    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    if-ne v5, p1, :cond_4c

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-ne v4, p2, :cond_4c

    monitor-exit p0

    return v0

    .line 4462
    :cond_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_36

    .line 4460
    :cond_4f
    add-int/lit8 p3, p3, -0x1

    goto :goto_25

    .line 4467
    :cond_52
    monitor-exit p0

    .line 4468
    return v1

    .line 4467
    :catchall_54
    move-exception p1

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_1d .. :try_end_56} :catchall_54

    throw p1
.end method

.method public noteOperation(IILjava/lang/String;)I
    .registers 6

    .line 2025
    monitor-enter p0

    .line 2026
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2027
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_15

    .line 2028
    if-nez v0, :cond_b

    .line 2029
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;)I

    move-result p1

    return p1

    .line 2031
    :cond_b
    new-instance v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$hqd76gFlOJ1gAuDYDPVUaSkXjTc;

    invoke-direct {v1, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$hqd76gFlOJ1gAuDYDPVUaSkXjTc;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Lcom/android/internal/util/function/TriFunction;)I

    move-result p1

    return p1

    .line 2027
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public noteProxyOperation(IILjava/lang/String;ILjava/lang/String;)I
    .registers 15

    .line 1992
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 1993
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1995
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1996
    const/4 v7, 0x1

    if-nez p3, :cond_e

    .line 1997
    return v7

    .line 2000
    :cond_e
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v2, v1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1b

    move v8, v7

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    move v8, v0

    .line 2004
    :goto_1d
    if-eqz v8, :cond_22

    const/4 v0, 0x2

    move v6, v0

    goto :goto_24

    .line 2005
    :cond_22
    const/4 v0, 0x4

    move v6, v0

    .line 2006
    :goto_24
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;I)I

    move-result v0

    .line 2008
    if-nez v0, :cond_51

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, p4, :cond_37

    goto :goto_51

    .line 2012
    :cond_37
    invoke-static {p4, p5}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2013
    if-nez v3, :cond_3e

    .line 2014
    return v7

    .line 2016
    :cond_3e
    if-eqz v8, :cond_44

    const/16 p5, 0x8

    move v6, p5

    goto :goto_47

    .line 2017
    :cond_44
    const/16 p5, 0x10

    move v6, p5

    .line 2018
    :goto_47
    move-object v0, p0

    move v1, p1

    move v2, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1

    .line 2009
    :cond_51
    :goto_51
    return v0
.end method

.method public offsetHistory(J)V
    .registers 6

    .line 4482
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "offsetHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4485
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 4486
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 3446
    new-instance v0, Lcom/android/server/appop/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/appop/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3447
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 12

    .line 878
    monitor-enter p0

    .line 879
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 880
    if-nez v0, :cond_d

    .line 881
    monitor-exit p0

    return-void

    .line 884
    :cond_d
    const/4 v1, 0x0

    .line 887
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1a

    .line 888
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    .line 892
    :cond_1a
    if-eqz v1, :cond_30

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 893
    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_30

    .line 894
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 898
    :cond_30
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 899
    const/4 v2, 0x0

    move v3, v2

    :goto_38
    if-ge v3, v0, :cond_7e

    .line 900
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 901
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-nez v5, :cond_47

    .line 902
    goto :goto_7b

    .line 904
    :cond_47
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 905
    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_4f
    if-ltz v5, :cond_7b

    .line 906
    iget-object v7, v4, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Op;

    .line 907
    iget-object v8, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-ne p1, v8, :cond_78

    iget-object v8, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 908
    invoke-virtual {p0, v7, v6}, Lcom/android/server/appop/AppOpsService;->finishOperationLocked(Lcom/android/server/appop/AppOpsService$Op;Z)V

    .line 909
    iget-object v8, v4, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 910
    iget v8, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-gtz v8, :cond_78

    .line 911
    iget v7, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-direct {p0, v7, p1, p2, v2}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 905
    :cond_78
    add-int/lit8 v5, v5, -0x1

    goto :goto_4f

    .line 899
    :cond_7b
    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 918
    :cond_7e
    if-eqz v1, :cond_a2

    .line 919
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 921
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v0

    .line 922
    move v3, v2

    :goto_88
    if-ge v3, v0, :cond_a2

    .line 923
    invoke-virtual {v1, v3}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 924
    iget-boolean v5, v4, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    if-eqz v5, :cond_9f

    .line 925
    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v6, v4, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v4, v2}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 922
    :cond_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    .line 931
    :cond_a2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory(ILjava/lang/String;)V

    .line 932
    monitor-exit p0

    .line 933
    return-void

    .line 932
    :catchall_a9
    move-exception p1

    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_1 .. :try_end_ab} :catchall_a9

    throw p1
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .registers 2

    .line 2450
    if-nez p1, :cond_4

    .line 2451
    const/4 p1, -0x1

    return p1

    .line 2453
    :cond_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public publish(Landroid/content/Context;)V
    .registers 3

    .line 744
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 745
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "appops"

    invoke-static {v0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 746
    const-class p1, Landroid/app/AppOpsManagerInternal;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 747
    return-void
.end method

.method readState()V
    .registers 10

    .line 2807
    nop

    .line 2808
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 2809
    :try_start_4
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_4 .. :try_end_5} :catchall_1ae

    .line 2812
    :try_start_5
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_187
    .catchall {:try_start_5 .. :try_end_b} :catchall_185

    .line 2816
    nop

    .line 2817
    nop

    .line 2818
    :try_start_d
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_185

    .line 2820
    const/4 v2, -0x1

    :try_start_13
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2821
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2823
    :goto_20
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2b

    if-eq v4, v5, :cond_2b

    goto :goto_20

    .line 2828
    :cond_2b
    if-ne v4, v6, :cond_9a

    .line 2832
    const/4 v4, 0x0

    const-string/jumbo v6, "v"

    invoke-interface {v3, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2833
    if-eqz v4, :cond_3b

    .line 2834
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2837
    :cond_3b
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 2838
    :cond_3f
    :goto_3f
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_90

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4e

    .line 2839
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_90

    .line 2840
    :cond_4e
    if-eq v6, v7, :cond_3f

    const/4 v7, 0x4

    if-ne v6, v7, :cond_54

    .line 2841
    goto :goto_3f

    .line 2844
    :cond_54
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2845
    const-string/jumbo v7, "pkg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 2846
    invoke-direct {p0, v3}, Lcom/android/server/appop/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8f

    .line 2847
    :cond_65
    const-string/jumbo v7, "uid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 2848
    invoke-direct {p0, v3}, Lcom/android/server/appop/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8f

    .line 2850
    :cond_72
    const-string v6, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <app-ops>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2851
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2850
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8f
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_8f} :catch_14d
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_8f} :catch_12b
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_8f} :catch_109
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_8f} :catch_e8
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_8f} :catch_c7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_8f} :catch_a6
    .catchall {:try_start_13 .. :try_end_8f} :catchall_a3

    .line 2854
    :goto_8f
    goto :goto_3f

    .line 2855
    :cond_90
    nop

    .line 2869
    nop

    .line 2873
    :try_start_92
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_97
    .catchall {:try_start_92 .. :try_end_95} :catchall_185

    .line 2875
    :goto_95
    goto/16 :goto_16f

    .line 2874
    :catch_97
    move-exception v1

    .line 2876
    goto/16 :goto_16f

    .line 2829
    :cond_9a
    :try_start_9a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "no start tag found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a3
    .catch Ljava/lang/IllegalStateException; {:try_start_9a .. :try_end_a3} :catch_14d
    .catch Ljava/lang/NullPointerException; {:try_start_9a .. :try_end_a3} :catch_12b
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_a3} :catch_109
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9a .. :try_end_a3} :catch_e8
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a3} :catch_c7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9a .. :try_end_a3} :catch_a6
    .catchall {:try_start_9a .. :try_end_a3} :catchall_a3

    .line 2869
    :catchall_a3
    move-exception v2

    goto/16 :goto_17a

    .line 2866
    :catch_a6
    move-exception v3

    .line 2867
    :try_start_a7
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_a7 .. :try_end_bd} :catchall_a3

    .line 2869
    nop

    .line 2870
    :try_start_be
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_185

    .line 2873
    :try_start_c3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_97
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_185

    goto :goto_95

    .line 2864
    :catch_c7
    move-exception v3

    .line 2865
    :try_start_c8
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_c8 .. :try_end_de} :catchall_a3

    .line 2869
    nop

    .line 2870
    :try_start_df
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_e4
    .catchall {:try_start_df .. :try_end_e4} :catchall_185

    .line 2873
    :try_start_e4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_97
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_185

    goto :goto_95

    .line 2862
    :catch_e8
    move-exception v3

    .line 2863
    :try_start_e9
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_e9 .. :try_end_ff} :catchall_a3

    .line 2869
    nop

    .line 2870
    :try_start_100
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_105
    .catchall {:try_start_100 .. :try_end_105} :catchall_185

    .line 2873
    :try_start_105
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_97
    .catchall {:try_start_105 .. :try_end_108} :catchall_185

    goto :goto_95

    .line 2860
    :catch_109
    move-exception v3

    .line 2861
    :try_start_10a
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catchall {:try_start_10a .. :try_end_120} :catchall_a3

    .line 2869
    nop

    .line 2870
    :try_start_121
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_126
    .catchall {:try_start_121 .. :try_end_126} :catchall_185

    .line 2873
    :try_start_126
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_97
    .catchall {:try_start_126 .. :try_end_129} :catchall_185

    goto/16 :goto_95

    .line 2858
    :catch_12b
    move-exception v3

    .line 2859
    :try_start_12c
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_142
    .catchall {:try_start_12c .. :try_end_142} :catchall_a3

    .line 2869
    nop

    .line 2870
    :try_start_143
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_148
    .catchall {:try_start_143 .. :try_end_148} :catchall_185

    .line 2873
    :try_start_148
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14b} :catch_97
    .catchall {:try_start_148 .. :try_end_14b} :catchall_185

    goto/16 :goto_95

    .line 2856
    :catch_14d
    move-exception v3

    .line 2857
    :try_start_14e
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catchall {:try_start_14e .. :try_end_164} :catchall_a3

    .line 2869
    nop

    .line 2870
    :try_start_165
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_16a
    .catchall {:try_start_165 .. :try_end_16a} :catchall_185

    .line 2873
    :try_start_16a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16d} :catch_97
    .catchall {:try_start_16a .. :try_end_16d} :catchall_185

    goto/16 :goto_95

    .line 2877
    :goto_16f
    :try_start_16f
    monitor-exit p0
    :try_end_170
    .catchall {:try_start_16f .. :try_end_170} :catchall_185

    .line 2878
    :try_start_170
    monitor-exit v0
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_1ae

    .line 2879
    monitor-enter p0

    .line 2880
    :try_start_172
    invoke-direct {p0, v2}, Lcom/android/server/appop/AppOpsService;->upgradeLocked(I)V

    .line 2881
    monitor-exit p0

    .line 2882
    return-void

    .line 2881
    :catchall_177
    move-exception v0

    monitor-exit p0
    :try_end_179
    .catchall {:try_start_172 .. :try_end_179} :catchall_177

    throw v0

    .line 2870
    :goto_17a
    :try_start_17a
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_17f
    .catchall {:try_start_17a .. :try_end_17f} :catchall_185

    .line 2873
    :try_start_17f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_183
    .catchall {:try_start_17f .. :try_end_182} :catchall_185

    .line 2875
    goto :goto_184

    .line 2874
    :catch_183
    move-exception v1

    .line 2875
    :goto_184
    :try_start_184
    throw v2

    .line 2877
    :catchall_185
    move-exception v1

    goto :goto_1ac

    .line 2813
    :catch_187
    move-exception v1

    .line 2814
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No existing app ops "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; starting empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    monitor-exit p0
    :try_end_1aa
    .catchall {:try_start_184 .. :try_end_1aa} :catchall_185

    :try_start_1aa
    monitor-exit v0
    :try_end_1ab
    .catchall {:try_start_1aa .. :try_end_1ab} :catchall_1ae

    return-void

    .line 2877
    :goto_1ac
    :try_start_1ac
    monitor-exit p0
    :try_end_1ad
    .catchall {:try_start_1ac .. :try_end_1ad} :catchall_185

    :try_start_1ad
    throw v1

    .line 2878
    :catchall_1ae
    move-exception v1

    monitor-exit v0
    :try_end_1b0
    .catchall {:try_start_1ad .. :try_end_1b0} :catchall_1ae

    throw v1
.end method

.method public reloadNonHistoricalState()V
    .registers 6

    .line 1203
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1204
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1203
    const-string v3, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v4, "reloadNonHistoricalState"

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 1206
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 1207
    return-void
.end method

.method public removeUser(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4435
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 4436
    monitor-enter p0

    .line 4437
    :try_start_7
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4438
    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_1f

    .line 4439
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 4440
    invoke-virtual {v1, p1}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->removeUser(I)V

    .line 4438
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 4442
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->removeUidsForUserLocked(I)V

    .line 4443
    monitor-exit p0

    .line 4444
    return-void

    .line 4443
    :catchall_24
    move-exception p1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .registers 20

    .line 1587
    move-object/from16 v7, p0

    move-object/from16 v1, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1588
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1589
    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string/jumbo v13, "resetAllModes"

    const/4 v14, 0x0

    move v8, v2

    move v9, v3

    move/from16 v10, p1

    invoke-static/range {v8 .. v14}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1592
    nop

    .line 1593
    const/4 v5, -0x1

    if-eqz v1, :cond_2a

    .line 1595
    :try_start_1e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v6, 0x2000

    invoke-interface {v0, v1, v6, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    .line 1599
    goto :goto_2b

    .line 1597
    :catch_29
    move-exception v0

    .line 1602
    :cond_2a
    move v0, v5

    :goto_2b
    invoke-direct {v7, v2, v3, v0}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1604
    nop

    .line 1605
    monitor-enter p0

    .line 1606
    nop

    .line 1607
    :try_start_31
    iget-object v2, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v6, 0x0

    move-object v10, v6

    const/4 v9, 0x0

    :goto_3c
    if-ltz v2, :cond_17e

    .line 1608
    iget-object v11, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1610
    iget-object v12, v11, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1611
    if-eqz v12, :cond_b3

    iget v13, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v13, v0, :cond_54

    if-ne v0, v5, :cond_51

    goto :goto_54

    :cond_51
    move/from16 v16, v0

    goto :goto_b5

    .line 1612
    :cond_54
    :goto_54
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 1613
    sub-int/2addr v13, v3

    :goto_59
    if-ltz v13, :cond_b0

    .line 1614
    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 1615
    invoke-static {v14}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v15

    if-eqz v15, :cond_a6

    .line 1616
    invoke-virtual {v12, v13}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1617
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-gtz v15, :cond_70

    .line 1618
    iput-object v6, v11, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1620
    :cond_70
    iget v15, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v15}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    array-length v6, v15

    move-object v8, v10

    const/4 v10, 0x0

    :goto_79
    if-ge v10, v6, :cond_a2

    aget-object v3, v15, v10

    .line 1621
    iget v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move/from16 v16, v0

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1622
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1621
    invoke-static {v8, v14, v5, v3, v0}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0

    .line 1623
    iget v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v8, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1624
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 1623
    invoke-static {v0, v14, v5, v3, v8}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v8

    .line 1620
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    const/4 v3, 0x1

    const/4 v5, -0x1

    goto :goto_79

    :cond_a2
    move/from16 v16, v0

    move-object v10, v8

    goto :goto_a8

    .line 1615
    :cond_a6
    move/from16 v16, v0

    .line 1613
    :goto_a8
    add-int/lit8 v13, v13, -0x1

    move/from16 v0, v16

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    goto :goto_59

    :cond_b0
    move/from16 v16, v0

    goto :goto_b5

    .line 1611
    :cond_b3
    move/from16 v16, v0

    .line 1630
    :goto_b5
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_bb

    .line 1631
    const/4 v3, -0x1

    goto :goto_c7

    .line 1634
    :cond_bb
    const/4 v3, -0x1

    if-eq v4, v3, :cond_ca

    iget v0, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 1635
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v4, v0, :cond_ca

    .line 1637
    nop

    .line 1607
    :goto_c7
    const/4 v13, 0x1

    goto/16 :goto_175

    .line 1640
    :cond_ca
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1641
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1642
    const/4 v8, 0x0

    .line 1643
    :goto_d5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_160

    .line 1644
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1645
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1646
    if-eqz v1, :cond_f0

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f0

    .line 1648
    goto :goto_d5

    .line 1650
    :cond_f0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1651
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    :goto_fc
    if-ltz v12, :cond_154

    .line 1652
    invoke-virtual {v5, v12}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appop/AppOpsService$Op;

    .line 1653
    iget v15, v14, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v15

    if-eqz v15, :cond_150

    .line 1654
    invoke-static {v14}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v15

    iget v3, v14, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-eq v15, v3, :cond_150

    .line 1655
    iget v3, v14, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    invoke-static {v14, v3}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 1656
    nop

    .line 1657
    nop

    .line 1658
    iget-object v3, v14, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 1659
    iget v8, v14, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v9, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    iget v15, v14, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 1660
    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 1659
    invoke-static {v10, v8, v3, v6, v9}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v8

    .line 1661
    iget v9, v14, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v10, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1662
    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 1661
    invoke-static {v8, v9, v3, v6, v10}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v10

    .line 1663
    invoke-virtual {v14}, Lcom/android/server/appop/AppOpsService$Op;->hasAnyTime()Z

    move-result v3

    if-nez v3, :cond_14e

    .line 1664
    invoke-virtual {v5, v12}, Lcom/android/server/appop/AppOpsService$Ops;->removeAt(I)V

    .line 1651
    :cond_14e
    move v8, v13

    move v9, v8

    :cond_150
    add-int/lit8 v12, v12, -0x1

    const/4 v3, -0x1

    goto :goto_fc

    .line 1668
    :cond_154
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v3

    if-nez v3, :cond_15d

    .line 1669
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1671
    :cond_15d
    const/4 v3, -0x1

    goto/16 :goto_d5

    .line 1672
    :cond_160
    const/4 v13, 0x1

    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_16e

    .line 1673
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v3, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1675
    :cond_16e
    if-eqz v8, :cond_175

    .line 1676
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1607
    :cond_175
    :goto_175
    add-int/lit8 v2, v2, -0x1

    move v3, v13

    move/from16 v0, v16

    const/4 v5, -0x1

    const/4 v6, 0x0

    goto/16 :goto_3c

    .line 1680
    :cond_17e
    if-eqz v9, :cond_183

    .line 1681
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 1683
    :cond_183
    monitor-exit p0
    :try_end_184
    .catchall {:try_start_31 .. :try_end_184} :catchall_1d7

    .line 1684
    if-eqz v10, :cond_1d6

    .line 1685
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1686
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1687
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/ArrayList;

    .line 1688
    const/4 v10, 0x0

    :goto_1a9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1d5

    .line 1689
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 1690
    iget-object v11, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    iget v3, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 1692
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v3, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 1690
    move-object v1, v2

    move-object/from16 v2, p0

    move-object v3, v8

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1688
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a9

    .line 1694
    :cond_1d5
    goto :goto_18e

    .line 1696
    :cond_1d6
    return-void

    .line 1683
    :catchall_1d7
    move-exception v0

    :try_start_1d8
    monitor-exit p0
    :try_end_1d9
    .catchall {:try_start_1d8 .. :try_end_1d9} :catchall_1d7

    throw v0
.end method

.method public resetHistoryParameters()V
    .registers 4

    .line 4498
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "resetHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4501
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->resetHistoryParameters()V

    .line 4502
    return-void
.end method

.method public setAppOpsServiceDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .registers 2

    .line 1801
    monitor-enter p0

    .line 1802
    :try_start_1
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 1803
    monitor-exit p0

    .line 1804
    return-void

    .line 1803
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .registers 10

    .line 1946
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1947
    invoke-direct {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 1948
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1949
    monitor-enter p0

    .line 1950
    :try_start_12
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    .line 1951
    if-nez p3, :cond_26

    .line 1952
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 1953
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1955
    :cond_26
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1956
    if-eqz p4, :cond_53

    .line 1957
    new-instance v0, Lcom/android/server/appop/AppOpsService$Restriction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/appop/AppOpsService$Restriction;-><init>(Lcom/android/server/appop/AppOpsService$1;)V

    .line 1958
    iput p4, v0, Lcom/android/server/appop/AppOpsService$Restriction;->mode:I

    .line 1959
    if-eqz p5, :cond_50

    .line 1960
    array-length p4, p5

    .line 1961
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p4}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 1962
    const/4 v1, 0x0

    :goto_3e
    if-ge v1, p4, :cond_50

    .line 1963
    aget-object v2, p5, v1

    .line 1964
    if-eqz v2, :cond_4d

    .line 1965
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1962
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 1969
    :cond_50
    invoke-virtual {p3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1971
    :cond_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_12 .. :try_end_54} :catchall_69

    .line 1973
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object p3, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 1974
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, -0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1973
    invoke-static {p3, p0, p1, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1975
    return-void

    .line 1971
    :catchall_69
    move-exception p1

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p1
.end method

.method public setHistoryParameters(IJI)V
    .registers 14

    .line 4474
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "setHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4477
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    int-to-long v7, p4

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 4478
    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 13

    .line 1459
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1460
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1461
    nop

    .line 1462
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1466
    :try_start_13
    invoke-direct {p0, p2, p3}, Lcom/android/server/appop/AppOpsService;->verifyAndGetIsPrivileged(ILjava/lang/String;)Z

    move-result v6
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_17} :catch_8e

    .line 1470
    nop

    .line 1472
    monitor-enter p0

    .line 1473
    const/4 v0, 0x0

    :try_start_1a
    invoke-direct {p0, p2, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 1474
    const/4 v7, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    .line 1475
    const/4 v2, 0x0

    if-eqz v1, :cond_6f

    .line 1476
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v3

    if-eq v3, p4, :cond_6f

    .line 1477
    invoke-static {v1, p4}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 1478
    if-eqz v0, :cond_3a

    .line 1479
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1481
    :cond_3a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1482
    if-eqz v0, :cond_4d

    .line 1483
    nop

    .line 1484
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1486
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1488
    :cond_4d
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1489
    if-eqz v0, :cond_61

    .line 1490
    if-nez v2, :cond_5e

    .line 1491
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1493
    :cond_5e
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1495
    :cond_61
    iget v0, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    if-ne p4, v0, :cond_6c

    .line 1498
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/appop/AppOpsService;->pruneOp(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V

    .line 1500
    :cond_6c
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 1503
    :cond_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_1a .. :try_end_70} :catchall_8b

    .line 1504
    if-eqz v2, :cond_87

    .line 1505
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$NDUi03ZZuuR42-RDEIQ0UELKycc;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$NDUi03ZZuuR42-RDEIQ0UELKycc;

    .line 1507
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1505
    move-object v1, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1510
    :cond_87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;I)V

    .line 1511
    return-void

    .line 1503
    :catchall_8b
    move-exception p1

    :try_start_8c
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw p1

    .line 1467
    :catch_8e
    move-exception p1

    .line 1468
    const-string p2, "AppOps"

    const-string p3, "Cannot setMode"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1469
    return-void
.end method

.method public setUidMode(III)V
    .registers 9

    .line 1277
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1278
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1279
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1281
    monitor-enter p0

    .line 1282
    :try_start_13
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 1284
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    .line 1285
    const/4 v3, 0x0

    if-nez v2, :cond_3d

    .line 1286
    if-ne p3, v0, :cond_23

    .line 1287
    monitor-exit p0

    return-void

    .line 1289
    :cond_23
    new-instance v2, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v2, p2}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(I)V

    .line 1290
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1291
    iget-object v0, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1292
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1293
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    goto :goto_7f

    .line 1294
    :cond_3d
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v4, :cond_53

    .line 1295
    if-eq p3, v0, :cond_7f

    .line 1296
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1297
    iget-object v0, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1298
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    goto :goto_7f

    .line 1301
    :cond_53
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_65

    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ne v4, p3, :cond_65

    .line 1302
    monitor-exit p0

    return-void

    .line 1304
    :cond_65
    if-ne p3, v0, :cond_77

    .line 1305
    iget-object v0, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1306
    iget-object v0, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_7c

    .line 1307
    iput-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    goto :goto_7c

    .line 1310
    :cond_77
    iget-object v0, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1312
    :cond_7c
    :goto_7c
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 1314
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1315
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_13 .. :try_end_85} :catchall_8c

    .line 1317
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZ)V

    .line 1318
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;I)V

    .line 1319
    return-void

    .line 1315
    :catchall_8c
    move-exception p1

    :try_start_8d
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p1
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 11

    .line 4376
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 4377
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4378
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 4377
    const-string v4, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 4380
    :cond_1a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_3d

    .line 4381
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4383
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_3d

    .line 4385
    :cond_35
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4389
    :cond_3d
    :goto_3d
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4390
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4391
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 4392
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .registers 12

    .line 4361
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 4362
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4363
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4364
    const/4 v0, 0x0

    move v7, v0

    :goto_e
    const/16 v1, 0x5b

    if-ge v7, v1, :cond_27

    .line 4365
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v1

    .line 4366
    if-eqz v1, :cond_24

    .line 4367
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 4364
    :cond_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 4371
    :cond_27
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 1019
    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    nop

    .line 1021
    monitor-enter p0

    .line 1022
    :try_start_9
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1023
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 1024
    const/4 v1, 0x1

    .line 1026
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    .line 1027
    if-eqz v1, :cond_17

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 1030
    :cond_17
    return-void

    .line 1026
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I
    .registers 25

    .line 2218
    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct {v1, v8}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2219
    invoke-direct {v1, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2220
    invoke-static/range {p3 .. p4}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2221
    const/4 v10, 0x1

    if-nez v2, :cond_16

    .line 2222
    return v10

    .line 2224
    :cond_16
    move-object/from16 v11, p1

    check-cast v11, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 2228
    const/4 v3, 0x2

    :try_start_1b
    invoke-direct {v1, v8, v9}, Lcom/android/server/appop/AppOpsService;->verifyAndGetIsPrivileged(ILjava/lang/String;)Z

    move-result v4
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_1f} :catch_ea

    .line 2232
    nop

    .line 2234
    monitor-enter p0

    .line 2235
    :try_start_21
    invoke-direct {v1, v8, v2, v4, v10}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v5

    .line 2237
    if-nez v5, :cond_29

    .line 2240
    monitor-exit p0

    return v3

    .line 2242
    :cond_29
    invoke-direct {v1, v5, v0, v10}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v12

    .line 2243
    invoke-direct {v1, v8, v0, v2, v4}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2244
    monitor-exit p0

    return v10

    .line 2246
    :cond_35
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    .line 2247
    iget-object v7, v5, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 2250
    iget v3, v12, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2251
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v6, 0x3

    if-eqz v4, :cond_7a

    iget-object v4, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_7a

    .line 2252
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v7, v0, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v5

    .line 2253
    if-eqz v5, :cond_79

    if-eqz p5, :cond_5a

    if-eq v5, v6, :cond_79

    .line 2259
    :cond_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, -0x1

    const/16 v16, 0x0

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v18, 0x1

    move/from16 v17, v0

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 2261
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v6, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v7, 0x1

    move/from16 v4, p3

    move v0, v5

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;II)V

    .line 2263
    monitor-exit p0

    return v0

    .line 2265
    :cond_79
    goto :goto_ab

    .line 2266
    :cond_7a
    if-eq v2, v0, :cond_81

    invoke-direct {v1, v5, v2, v10}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v2

    goto :goto_82

    :cond_81
    move-object v2, v12

    .line 2267
    :goto_82
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v5

    .line 2268
    if-eqz v5, :cond_ab

    if-eqz p5, :cond_8c

    if-eq v5, v6, :cond_ab

    .line 2274
    :cond_8c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, -0x1

    const/16 v16, 0x0

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v18, 0x1

    move/from16 v17, v0

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 2276
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v6, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v7, 0x1

    move/from16 v4, p3

    move v0, v5

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;II)V

    .line 2278
    monitor-exit p0

    return v0

    .line 2283
    :cond_ab
    :goto_ab
    iget v2, v12, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-nez v2, :cond_d0

    .line 2284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v12, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    .line 2286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v2, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v12, v4, v5, v2, v10}, Lcom/android/server/appop/AppOpsService$Op;->started(JII)V

    .line 2288
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v6, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v13, 0x1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v14, v7

    move v7, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;II)V

    .line 2291
    invoke-direct {v1, v0, v8, v9, v10}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    goto :goto_d1

    .line 2283
    :cond_d0
    move-object v14, v7

    .line 2293
    :goto_d1
    iget v0, v12, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    add-int/2addr v0, v10

    iput v0, v12, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    .line 2294
    iget v0, v14, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    add-int/2addr v0, v10

    iput v0, v14, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    .line 2295
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v0, :cond_e4

    .line 2296
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2298
    :cond_e4
    monitor-exit p0

    .line 2300
    const/4 v0, 0x0

    return v0

    .line 2298
    :catchall_e7
    move-exception v0

    monitor-exit p0
    :try_end_e9
    .catchall {:try_start_21 .. :try_end_e9} :catchall_e7

    throw v0

    .line 2229
    :catch_ea
    move-exception v0

    move-object v1, v0

    .line 2230
    const-string v0, "AppOps"

    const-string/jumbo v2, "startOperation"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2231
    return v3
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 12

    .line 2126
    nop

    .line 2127
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2128
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2129
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 2131
    move v3, v4

    goto :goto_17

    .line 2129
    :cond_15
    const/4 v0, -0x1

    move v3, v0

    .line 2133
    :goto_17
    const/4 v6, 0x0

    if-eqz p1, :cond_34

    .line 2134
    const/16 v0, 0x5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2134
    invoke-static {p1, v6, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 2137
    :cond_34
    if-nez p2, :cond_37

    .line 2138
    return-void

    .line 2140
    :cond_37
    monitor-enter p0

    .line 2141
    :try_start_38
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 2142
    if-nez v0, :cond_56

    .line 2143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2144
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    goto :goto_57

    .line 2142
    :cond_56
    move-object v7, v0

    .line 2146
    :goto_57
    new-instance v8, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    .line 2148
    array-length p2, p1

    :goto_60
    if-ge v6, p2, :cond_6a

    aget v0, p1, v6

    .line 2149
    invoke-virtual {v7, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2148
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 2151
    :cond_6a
    monitor-exit p0

    .line 2152
    return-void

    .line 2151
    :catchall_6c
    move-exception p1

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_38 .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 5

    .line 1709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 1710
    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 14

    .line 1715
    nop

    .line 1716
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1717
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, -0x1

    const/16 v1, 0x5a

    invoke-static {p1, v7, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1724
    if-nez p4, :cond_23

    .line 1725
    return-void

    .line 1727
    :cond_23
    monitor-enter p0

    .line 1728
    if-eq p1, v7, :cond_2d

    :try_start_26
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    goto :goto_2d

    .line 1751
    :catchall_2b
    move-exception p1

    goto :goto_86

    .line 1729
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1730
    if-nez v0, :cond_4f

    .line 1731
    new-instance v8, Lcom/android/server/appop/AppOpsService$ModeCallback;

    const/4 v3, -0x1

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$ModeCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIII)V

    .line 1732
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-virtual {p3, p4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    .line 1734
    :cond_4f
    if-eq p1, v7, :cond_68

    .line 1735
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArraySet;

    .line 1736
    if-nez p3, :cond_65

    .line 1737
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 1738
    iget-object p4, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p4, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1740
    :cond_65
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1742
    :cond_68
    if-eqz p2, :cond_81

    .line 1743
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 1744
    if-nez p1, :cond_7e

    .line 1745
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 1746
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    :cond_7e
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1750
    :cond_81
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1751
    monitor-exit p0

    .line 1752
    return-void

    .line 1751
    :goto_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_26 .. :try_end_87} :catchall_2b

    throw p1
.end method

.method public startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .registers 12

    .line 2174
    nop

    .line 2175
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2176
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2177
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 2179
    move v3, v4

    goto :goto_17

    .line 2177
    :cond_15
    const/4 v0, -0x1

    move v3, v0

    .line 2181
    :goto_17
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Ops cannot be null or empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2182
    const/16 v0, 0x5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2183
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2182
    const/4 v6, 0x0

    invoke-static {p1, v6, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 2184
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    monitor-enter p0

    .line 2186
    :try_start_43
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 2187
    if-nez v0, :cond_61

    .line 2188
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2189
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    goto :goto_62

    .line 2187
    :cond_61
    move-object v7, v0

    .line 2191
    :goto_62
    new-instance v8, Lcom/android/server/appop/AppOpsService$NotedCallback;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$NotedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsNotedCallback;III)V

    .line 2193
    array-length p2, p1

    :goto_6b
    if-ge v6, p2, :cond_75

    aget v0, p1, v6

    .line 2194
    invoke-virtual {v7, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2193
    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    .line 2196
    :cond_75
    monitor-exit p0

    .line 2197
    return-void

    .line 2196
    :catchall_77
    move-exception p1

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_43 .. :try_end_79} :catchall_77

    throw p1
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 5

    .line 2156
    if-nez p1, :cond_3

    .line 2157
    return-void

    .line 2159
    :cond_3
    monitor-enter p0

    .line 2160
    :try_start_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 2161
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 2162
    if-nez p1, :cond_14

    .line 2163
    monitor-exit p0

    return-void

    .line 2165
    :cond_14
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2166
    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_27

    .line 2167
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$ActiveCallback;->destroy()V

    .line 2166
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 2169
    :cond_27
    monitor-exit p0

    .line 2170
    return-void

    .line 2169
    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 4

    .line 1756
    if-nez p1, :cond_3

    .line 1757
    return-void

    .line 1759
    :cond_3
    monitor-enter p0

    .line 1760
    :try_start_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1761
    if-eqz p1, :cond_5b

    .line 1762
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 1763
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1d
    if-ltz v0, :cond_38

    .line 1764
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1765
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1766
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_35

    .line 1767
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1763
    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 1770
    :cond_38
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_40
    if-ltz v0, :cond_5b

    .line 1771
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1772
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1773
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_58

    .line 1774
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1770
    :cond_58
    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    .line 1778
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1779
    monitor-exit p0

    .line 1780
    return-void

    .line 1779
    :catchall_60
    move-exception p1

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    .registers 5

    .line 2201
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    monitor-enter p0

    .line 2203
    :try_start_6
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 2204
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 2205
    if-nez p1, :cond_16

    .line 2206
    monitor-exit p0

    return-void

    .line 2208
    :cond_16
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2209
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_29

    .line 2210
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$NotedCallback;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$NotedCallback;->destroy()V

    .line 2209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 2212
    :cond_29
    monitor-exit p0

    .line 2213
    return-void

    .line 2212
    :catchall_2b
    move-exception p1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public systemReady()V
    .registers 11

    .line 750
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 751
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 753
    monitor-enter p0

    .line 754
    const/4 v0, 0x0

    .line 755
    :try_start_18
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_20
    if-ltz v1, :cond_b7

    .line 756
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$UidState;

    .line 758
    iget v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 759
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 760
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 761
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 762
    nop

    .line 763
    move v0, v2

    goto/16 :goto_b3

    .line 766
    :cond_42
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 767
    if-nez v4, :cond_47

    .line 768
    goto :goto_b3

    .line 771
    :cond_47
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 772
    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 773
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Ops;
    :try_end_5b
    .catchall {:try_start_18 .. :try_end_5b} :catchall_fd

    .line 774
    nop

    .line 776
    :try_start_5c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    const/16 v8, 0x2000

    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v9, v9, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 778
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 776
    invoke-interface {v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v6
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_70} :catch_71
    .catchall {:try_start_5c .. :try_end_70} :catchall_fd

    .line 780
    goto :goto_73

    .line 779
    :catch_71
    move-exception v6

    const/4 v6, -0x1

    .line 781
    :goto_73
    :try_start_73
    iget-object v7, v5, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v7, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v6, v7, :cond_a7

    .line 782
    const-string v0, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pruning old package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": new uid="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 785
    move v0, v2

    .line 787
    :cond_a7
    goto :goto_4f

    .line 789
    :cond_a8
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 790
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 755
    :cond_b3
    :goto_b3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_20

    .line 793
    :cond_b7
    if-eqz v0, :cond_bc

    .line 794
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 796
    :cond_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_73 .. :try_end_bd} :catchall_fd

    .line 798
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 799
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/appop/AppOpsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 827
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 829
    new-instance v1, Lcom/android/server/appop/AppOpsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$3;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 846
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v0

    if-nez v0, :cond_fc

    .line 847
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 849
    new-instance v1, Lcom/android/server/appop/AppOpsService$4;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManagerInternal;->addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V

    .line 875
    :cond_fc
    return-void

    .line 796
    :catchall_fd
    move-exception v0

    :try_start_fe
    monitor-exit p0
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v0
.end method

.method public uidRemoved(I)V
    .registers 3

    .line 936
    monitor-enter p0

    .line 937
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 938
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 939
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 941
    :cond_11
    monitor-exit p0

    .line 942
    return-void

    .line 941
    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public updateUidProcState(II)V
    .registers 23

    .line 958
    move-object/from16 v1, p0

    monitor-enter p0

    .line 959
    const/4 v0, 0x1

    move/from16 v2, p1

    :try_start_6
    invoke-direct {v1, v2, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v3

    .line 960
    sget-object v4, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    aget v4, v4, p2

    .line 961
    if-eqz v3, :cond_d4

    iget v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-eq v5, v4, :cond_d4

    .line 962
    iget v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 963
    iput v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 964
    iget v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-lt v4, v6, :cond_64

    const/16 v6, 0x190

    if-gt v4, v6, :cond_25

    iget v7, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-le v7, v6, :cond_25

    goto :goto_64

    .line 971
    :cond_25
    iget-wide v7, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_67

    .line 975
    iget v7, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v8, 0xc8

    if-gt v7, v8, :cond_38

    .line 976
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v6, v6, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    goto :goto_45

    .line 977
    :cond_38
    iget v7, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-gt v7, v6, :cond_41

    .line 978
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v6, v6, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    goto :goto_45

    .line 980
    :cond_41
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v6, v6, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 982
    :goto_45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v6

    .line 983
    iput-wide v8, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 985
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v11, Lcom/android/server/appop/-$$Lambda$AppOpsService$CVMS-lLMRyZYA1tmqvyuOloKBu0;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$CVMS-lLMRyZYA1tmqvyuOloKBu0;

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    .line 987
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 986
    invoke-static {v11, v1, v8, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    add-long/2addr v6, v12

    .line 985
    invoke-virtual {v10, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_67

    .line 970
    :cond_64
    :goto_64
    invoke-direct {v1, v3}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 989
    :cond_67
    :goto_67
    iget v2, v3, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    if-eqz v2, :cond_d4

    .line 992
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 993
    iget-object v2, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_76
    if-ltz v2, :cond_d4

    .line 994
    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/android/server/appop/AppOpsService$Ops;

    .line 995
    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v6

    sub-int/2addr v6, v0

    move v13, v6

    :goto_87
    if-ltz v13, :cond_d1

    .line 996
    invoke-virtual {v12, v13}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/android/server/appop/AppOpsService$Op;

    .line 997
    iget v6, v11, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-lez v6, :cond_c8

    .line 998
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v11, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    sub-long v16, v6, v8

    .line 1001
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v7, v11, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v8, v11, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v9, v11, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    const/16 v18, 0x1

    move v10, v5

    move-object/from16 p1, v11

    move/from16 v11, v18

    move-object/from16 v18, v12

    move/from16 v19, v13

    move-wide/from16 v12, v16

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/appop/HistoricalRegistry;->increaseOpAccessDuration(IILjava/lang/String;IIJ)V

    .line 1005
    const/4 v12, 0x1

    move-object/from16 v6, p1

    move-wide v7, v14

    move-wide/from16 v9, v16

    move v11, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/appop/AppOpsService$Op;->finished(JJII)V

    .line 1008
    move-object/from16 v6, p1

    iput-wide v14, v6, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    .line 1009
    invoke-virtual {v6, v14, v15, v4, v0}, Lcom/android/server/appop/AppOpsService$Op;->started(JII)V

    goto :goto_cc

    .line 997
    :cond_c8
    move-object/from16 v18, v12

    move/from16 v19, v13

    .line 995
    :goto_cc
    add-int/lit8 v13, v19, -0x1

    move-object/from16 v12, v18

    goto :goto_87

    .line 993
    :cond_d1
    add-int/lit8 v2, v2, -0x1

    goto :goto_76

    .line 1015
    :cond_d4
    monitor-exit p0

    .line 1016
    return-void

    .line 1015
    :catchall_d6
    move-exception v0

    monitor-exit p0
    :try_end_d8
    .catchall {:try_start_6 .. :try_end_d8} :catchall_d6

    throw v0
.end method

.method writeState()V
    .registers 29

    .line 3088
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 3091
    :try_start_5
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_2c8
    .catchall {:try_start_5 .. :try_end_b} :catchall_2c6

    .line 3095
    nop

    .line 3097
    const/4 v0, 0x0

    :try_start_d
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_2c6

    .line 3100
    :try_start_11
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3101
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3102
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3103
    const-string v7, "app-ops"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3104
    const-string/jumbo v7, "v"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3107
    monitor-enter p0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_37} :catch_2b7
    .catchall {:try_start_11 .. :try_end_37} :catchall_2c6

    .line 3108
    :try_start_37
    new-instance v6, Landroid/util/SparseArray;

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 3110
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 3111
    const/4 v9, 0x0

    :goto_49
    if-ge v9, v7, :cond_8d

    .line 3112
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AppOpsService$UidState;

    .line 3113
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 3115
    iget-object v10, v10, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3116
    if-eqz v10, :cond_8a

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-lez v12, :cond_8a

    .line 3117
    new-instance v12, Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/util/SparseIntArray;-><init>(I)V

    invoke-virtual {v6, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3119
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 3120
    const/4 v13, 0x0

    :goto_74
    if-ge v13, v12, :cond_8a

    .line 3121
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseIntArray;

    .line 3122
    invoke-virtual {v10, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 3123
    invoke-virtual {v10, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 3121
    invoke-virtual {v14, v15, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 3120
    add-int/lit8 v13, v13, 0x1

    goto :goto_74

    .line 3111
    :cond_8a
    add-int/lit8 v9, v9, 0x1

    goto :goto_49

    .line 3127
    :cond_8d
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_37 .. :try_end_8e} :catchall_2b4

    .line 3129
    :try_start_8e
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 3130
    const/4 v8, 0x0

    :goto_93
    if-ge v8, v7, :cond_f1

    .line 3131
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseIntArray;

    .line 3132
    if-eqz v9, :cond_ee

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_ee

    .line 3133
    const-string/jumbo v10, "uid"

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3134
    const-string/jumbo v10, "n"

    .line 3135
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 3134
    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3136
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    .line 3137
    const/4 v11, 0x0

    :goto_bc
    if-ge v11, v10, :cond_e8

    .line 3138
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 3139
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    .line 3140
    const-string/jumbo v14, "op"

    invoke-interface {v5, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3141
    const-string/jumbo v14, "n"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v0, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3142
    const-string v12, "m"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3143
    const-string/jumbo v12, "op"

    invoke-interface {v5, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3137
    add-int/lit8 v11, v11, 0x1

    goto :goto_bc

    .line 3145
    :cond_e8
    const-string/jumbo v9, "uid"

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3130
    :cond_ee
    add-int/lit8 v8, v8, 0x1

    goto :goto_93

    .line 3149
    :cond_f1
    if-eqz v4, :cond_2a5

    .line 3150
    nop

    .line 3151
    move-object v7, v0

    const/4 v6, 0x0

    :goto_f6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_29c

    .line 3152
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    .line 3153
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_124

    .line 3154
    if-eqz v7, :cond_114

    .line 3155
    const-string/jumbo v7, "pkg"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3157
    :cond_114
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3158
    const-string/jumbo v9, "pkg"

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3159
    const-string/jumbo v9, "n"

    invoke-interface {v5, v0, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3161
    :cond_124
    const-string/jumbo v9, "uid"

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3162
    const-string/jumbo v9, "n"

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3163
    monitor-enter p0
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_139} :catch_2b7
    .catchall {:try_start_8e .. :try_end_139} :catchall_2c6

    .line 3164
    :try_start_139
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v1, v9, v10, v11, v11}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v9

    .line 3168
    if-eqz v9, :cond_156

    .line 3169
    const-string/jumbo v10, "p"

    iget-boolean v9, v9, Lcom/android/server/appop/AppOpsService$Ops;->isPrivileged:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v0, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    goto :goto_161

    .line 3171
    :cond_156
    const-string/jumbo v9, "p"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3173
    :goto_161
    monitor-exit p0
    :try_end_162
    .catchall {:try_start_139 .. :try_end_162} :catchall_299

    .line 3174
    :try_start_162
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    .line 3175
    move v9, v11

    :goto_167
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_285

    .line 3176
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$OpEntry;

    .line 3177
    const-string/jumbo v12, "op"

    invoke-interface {v5, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3178
    const-string/jumbo v12, "n"

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3179
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v12

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v13

    invoke-static {v13}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v13

    if-eq v12, v13, :cond_1a2

    .line 3180
    const-string v12, "m"

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3183
    :cond_1a2
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v12

    .line 3184
    if-eqz v12, :cond_26b

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    if-gtz v13, :cond_1b6

    move-object/from16 v23, v4

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    goto/16 :goto_271

    .line 3189
    :cond_1b6
    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    .line 3190
    move v14, v11

    :goto_1bb
    if-ge v14, v13, :cond_25d

    .line 3191
    invoke-virtual {v12, v14}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v15

    .line 3193
    invoke-static/range {v15 .. v16}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v11

    .line 3194
    invoke-static/range {v15 .. v16}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v0

    .line 3196
    invoke-virtual {v10, v11, v11, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v17

    .line 3198
    invoke-virtual {v10, v11, v11, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v19

    .line 3200
    invoke-virtual {v10, v11, v11, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v21

    .line 3202
    move-object/from16 v23, v4

    invoke-virtual {v10, v11, v0}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 3203
    invoke-virtual {v10, v11, v0}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid(II)I

    move-result v0

    .line 3205
    const-wide/16 v24, 0x0

    cmp-long v11, v17, v24

    if-gtz v11, :cond_1f6

    cmp-long v26, v19, v24

    if-gtz v26, :cond_1f6

    cmp-long v26, v21, v24

    if-gtz v26, :cond_1f6

    if-nez v4, :cond_1f6

    if-gez v0, :cond_1f6

    .line 3207
    move-object/from16 v26, v7

    move-object/from16 v27, v8

    goto :goto_251

    .line 3210
    :cond_1f6
    move-object/from16 v26, v7

    const-string/jumbo v7, "st"

    move-object/from16 v27, v8

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3211
    const-string/jumbo v7, "n"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v8, v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3212
    if-lez v11, :cond_217

    .line 3213
    const-string/jumbo v7, "t"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v8, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3215
    :cond_217
    cmp-long v7, v19, v24

    if-lez v7, :cond_226

    .line 3216
    const-string/jumbo v7, "r"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v5, v11, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3218
    :cond_226
    cmp-long v7, v21, v24

    if-lez v7, :cond_234

    .line 3219
    const-string v7, "d"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v5, v11, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3221
    :cond_234
    if-eqz v4, :cond_23d

    .line 3222
    const-string/jumbo v7, "pp"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3224
    :cond_23d
    if-ltz v0, :cond_24a

    .line 3225
    const-string/jumbo v4, "pu"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-interface {v5, v7, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3227
    :cond_24a
    const-string/jumbo v0, "st"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3190
    :goto_251
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v23

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    const/4 v0, 0x0

    const/4 v11, 0x0

    goto/16 :goto_1bb

    .line 3230
    :cond_25d
    move-object/from16 v23, v4

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    const-string/jumbo v0, "op"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_279

    .line 3184
    :cond_26b
    move-object/from16 v23, v4

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    .line 3185
    :goto_271
    const-string/jumbo v0, "op"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3186
    nop

    .line 3175
    :goto_279
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v23

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    const/4 v0, 0x0

    const/4 v11, 0x0

    goto/16 :goto_167

    .line 3232
    :cond_285
    move-object/from16 v23, v4

    move-object/from16 v26, v7

    const-string/jumbo v0, "uid"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_290
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_290} :catch_2b7
    .catchall {:try_start_162 .. :try_end_290} :catchall_2c6

    .line 3151
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v23

    move-object/from16 v7, v26

    const/4 v0, 0x0

    goto/16 :goto_f6

    .line 3173
    :catchall_299
    move-exception v0

    :try_start_29a
    monitor-exit p0
    :try_end_29b
    .catchall {:try_start_29a .. :try_end_29b} :catchall_299

    :try_start_29b
    throw v0

    .line 3234
    :cond_29c
    if-eqz v7, :cond_2a5

    .line 3235
    const-string/jumbo v0, "pkg"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3239
    :cond_2a5
    const-string v0, "app-ops"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3240
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3241
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2b3
    .catch Ljava/io/IOException; {:try_start_29b .. :try_end_2b3} :catch_2b7
    .catchall {:try_start_29b .. :try_end_2b3} :catchall_2c6

    .line 3245
    goto :goto_2c4

    .line 3127
    :catchall_2b4
    move-exception v0

    :try_start_2b5
    monitor-exit p0
    :try_end_2b6
    .catchall {:try_start_2b5 .. :try_end_2b6} :catchall_2b4

    :try_start_2b6
    throw v0
    :try_end_2b7
    .catch Ljava/io/IOException; {:try_start_2b6 .. :try_end_2b7} :catch_2b7
    .catchall {:try_start_2b6 .. :try_end_2b7} :catchall_2c6

    .line 3242
    :catch_2b7
    move-exception v0

    .line 3243
    :try_start_2b8
    const-string v4, "AppOps"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3244
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3246
    :goto_2c4
    monitor-exit v2

    .line 3247
    return-void

    .line 3246
    :catchall_2c6
    move-exception v0

    goto :goto_2e1

    .line 3092
    :catch_2c8
    move-exception v0

    .line 3093
    const-string v1, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    monitor-exit v2

    return-void

    .line 3246
    :goto_2e1
    monitor-exit v2
    :try_end_2e2
    .catchall {:try_start_2b8 .. :try_end_2e2} :catchall_2c6

    throw v0
.end method
