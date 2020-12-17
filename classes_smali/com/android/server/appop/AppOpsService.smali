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

.field private final mLooper:Landroid/os/Looper;

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

    .line 160
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    .line 186
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
    .param p1, "storagePath"  # Ljava/io/File;
    .param p2, "handler"  # Landroid/os/Handler;

    .line 734
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 199
    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$1;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    .line 204
    new-instance v0, Lcom/android/server/appop/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 220
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 223
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {v0, p0}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 230
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 548
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 549
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 550
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 551
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 552
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 553
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 695
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 735
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 736
    new-instance v0, Landroid/util/AtomicFile;

    const-string v1, "appops"

    invoke-direct {v0, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 737
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 738
    new-instance v0, Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$Constants;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 740
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mLooper:Landroid/os/Looper;

    .line 742
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 743
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"  # Ljava/lang/String;

    .line 144
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appop/AppOpsService;

    .line 144
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/appop/AppOpsService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/appop/AppOpsService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->setAllPkgModesToDefault(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;ZZ)I
    .registers 7
    .param p0, "x0"  # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # Ljava/lang/String;
    .param p4, "x4"  # Z
    .param p5, "x5"  # Z

    .line 144
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->checkOperationUnchecked(IILjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()[I
    .registers 1

    .line 144
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"  # Landroid/util/ArraySet;
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;
    .registers 14
    .param p1, "op"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
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

    .line 1556
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local p4, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez p4, :cond_3

    .line 1557
    return-object p0

    .line 1559
    :cond_3
    if-nez p0, :cond_b

    .line 1560
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p0, v0

    .line 1562
    :cond_b
    const/4 v0, 0x0

    .line 1563
    .local v0, "duplicate":Z
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1564
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_56

    .line 1565
    invoke-virtual {p4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1566
    .local v3, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1567
    .local v4, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    if-nez v4, :cond_2b

    .line 1568
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 1569
    invoke-virtual {p0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 1571
    :cond_2b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1572
    .local v5, "reportCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_30
    if-ge v6, v5, :cond_49

    .line 1573
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 1574
    .local v7, "report":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget v8, v7, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    if-ne v8, p1, :cond_46

    iget-object v8, v7, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 1575
    const/4 v0, 0x1

    .line 1576
    goto :goto_49

    .line 1572
    .end local v7  # "report":Lcom/android/server/appop/AppOpsService$ChangeRec;
    :cond_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 1580
    .end local v5  # "reportCount":I
    .end local v6  # "j":I
    :cond_49
    :goto_49
    if-nez v0, :cond_53

    .line 1581
    new-instance v5, Lcom/android/server/appop/AppOpsService$ChangeRec;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/appop/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1564
    .end local v3  # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v4  # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1584
    .end local v2  # "i":I
    :cond_56
    return-object p0
.end method

.method private checkAudioOperationImpl(IIILjava/lang/String;)I
    .registers 8
    .param p1, "code"  # I
    .param p2, "usage"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;

    .line 1915
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/android/server/appop/AppOpsService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    .line 1919
    .local v0, "suspended":Z
    goto :goto_7

    .line 1916
    .end local v0  # "suspended":Z
    :catch_5
    move-exception v0

    .line 1918
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 1921
    .local v0, "suspended":Z
    :goto_7
    if-eqz v0, :cond_29

    .line 1922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio disabled for suspended package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppOps"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    const/4 v1, 0x1

    return v1

    .line 1927
    :cond_29
    monitor-enter p0

    .line 1928
    :try_start_2a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I

    move-result v1

    .line 1929
    .local v1, "mode":I
    if-eqz v1, :cond_32

    .line 1930
    monitor-exit p0

    return v1

    .line 1932
    .end local v1  # "mode":I
    :cond_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_38

    .line 1933
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    return v1

    .line 1932
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private checkOperationImpl(IILjava/lang/String;Z)I
    .registers 7
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "raw"  # Z

    .line 1844
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 1845
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1846
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1847
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 1848
    const/4 v1, 0x1

    return v1

    .line 1850
    :cond_e
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationUnchecked(IILjava/lang/String;Z)I

    move-result v1

    return v1
.end method

.method private checkOperationInternal(IILjava/lang/String;Z)I
    .registers 12
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "raw"  # Z

    .line 1832
    monitor-enter p0

    .line 1833
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 1834
    .local v0, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1a

    .line 1835
    if-nez v0, :cond_b

    .line 1836
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Z)I

    move-result v1

    return v1

    .line 1838
    :cond_b
    new-instance v6, Lcom/android/server/appop/-$$Lambda$AppOpsService$gQy7GOuCV6GbjQtdNhNG6xld8I4;

    invoke-direct {v6, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$gQy7GOuCV6GbjQtdNhNG6xld8I4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;ZLcom/android/internal/util/function/QuadFunction;)I

    move-result v1

    return v1

    .line 1834
    .end local v0  # "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private checkOperationUnchecked(IILjava/lang/String;Z)I
    .registers 11
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "raw"  # Z

    .line 1858
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->checkOperationUnchecked(IILjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method private checkOperationUnchecked(IILjava/lang/String;ZZ)I
    .registers 14
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "raw"  # Z
    .param p5, "verify"  # Z

    .line 1874
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1875
    return v1

    .line 1877
    :cond_8
    monitor-enter p0

    .line 1878
    if-eqz p5, :cond_e

    .line 1879
    :try_start_b
    invoke-virtual {p0, p2, p3}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    .line 1881
    :cond_e
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1882
    monitor-exit p0

    return v1

    .line 1884
    :cond_16
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    move p1, v0

    .line 1885
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 1886
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v0, :cond_3e

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_3e

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1887
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3e

    .line 1888
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1889
    .local v1, "rawMode":I
    if-eqz p4, :cond_38

    move v2, v1

    goto :goto_3c

    :cond_38
    invoke-virtual {v0, p1, v1}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v2

    :goto_3c
    monitor-exit p0

    return v2

    .line 1891
    .end local v1  # "rawMode":I
    :cond_3e
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;ZZZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    .line 1892
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v1, :cond_51

    .line 1893
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    monitor-exit p0

    return v2

    .line 1895
    :cond_51
    if-eqz p4, :cond_58

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    goto :goto_5c

    :cond_58
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v2

    :goto_5c
    monitor-exit p0

    return v2

    .line 1896
    .end local v0  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1  # "op":Lcom/android/server/appop/AppOpsService$Op;
    :catchall_5e
    move-exception v0

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_b .. :try_end_60} :catchall_5e

    throw v0
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .registers 8
    .param p1, "code"  # I
    .param p2, "usage"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;

    .line 1949
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1950
    .local v0, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    if-eqz v0, :cond_1d

    .line 1951
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Restriction;

    .line 1952
    .local v1, "r":Lcom/android/server/appop/AppOpsService$Restriction;
    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1953
    iget v2, v1, Lcom/android/server/appop/AppOpsService$Restriction;->mode:I

    return v2

    .line 1956
    .end local v1  # "r":Lcom/android/server/appop/AppOpsService$Restriction;
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .registers 6
    .param p1, "function"  # Ljava/lang/String;

    .line 4494
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4495
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 4498
    return-void

    .line 4496
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;
    .registers 9
    .param p1, "uidOps"  # Landroid/util/SparseIntArray;
    .param p2, "ops"  # [I
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

    .line 1070
    if-nez p1, :cond_4

    .line 1071
    const/4 v0, 0x0

    return-object v0

    .line 1073
    :cond_4
    const/4 v0, 0x0

    .line 1074
    .local v0, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_28

    .line 1075
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1076
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_e
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 1077
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v1  # "j":I
    :cond_27
    goto :goto_4f

    .line 1080
    :cond_28
    const/4 v1, 0x0

    .restart local v1  # "j":I
    :goto_29
    array-length v2, p2

    if-ge v1, v2, :cond_4f

    .line 1081
    aget v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 1082
    .local v2, "index":I
    if-ltz v2, :cond_4c

    .line 1083
    if-nez v0, :cond_3c

    .line 1084
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 1086
    :cond_3c
    new-instance v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/AppOpsManager$OpEntry;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    .end local v2  # "index":I
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1090
    .end local v1  # "j":I
    :cond_4f
    :goto_4f
    return-object v0
.end method

.method private collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .registers 9
    .param p1, "pkgOps"  # Lcom/android/server/appop/AppOpsService$Ops;
    .param p2, "ops"  # [I
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

    .line 1047
    const/4 v0, 0x0

    .line 1048
    .local v0, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1049
    .local v1, "elapsedNow":J
    if-nez p2, :cond_25

    .line 1050
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 1051
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_e
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 1052
    invoke-virtual {p1, v3}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 1053
    .local v4, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-static {v4, v1, v2}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    .end local v4  # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .end local v3  # "j":I
    :cond_24
    goto :goto_45

    .line 1056
    :cond_25
    const/4 v3, 0x0

    .restart local v3  # "j":I
    :goto_26
    array-length v4, p2

    if-ge v3, v4, :cond_45

    .line 1057
    aget v4, p2, v3

    invoke-virtual {p1, v4}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 1058
    .restart local v4  # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v4, :cond_42

    .line 1059
    if-nez v0, :cond_3b

    .line 1060
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 1062
    :cond_3b
    invoke-static {v4, v1, v2}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    .end local v4  # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 1066
    .end local v3  # "j":I
    :cond_45
    :goto_45
    return-object v0
.end method

.method private commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .registers 22
    .param p1, "uidState"  # Lcom/android/server/appop/AppOpsService$UidState;

    .line 2554
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    if-eqz v0, :cond_129

    .line 2555
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "fgi":I
    :goto_11
    if-ltz v9, :cond_129

    .line 2556
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2557
    goto/16 :goto_122

    .line 2559
    :cond_1d
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 2562
    .local v10, "code":I
    invoke-static {v10}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    int-to-long v11, v0

    .line 2563
    .local v11, "firstUnrestrictedUidState":J
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    int-to-long v0, v0

    cmp-long v0, v0, v11

    const/4 v1, 0x0

    if-gtz v0, :cond_32

    move v0, v8

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    move v13, v0

    .line 2564
    .local v13, "resolvedLastFg":Z
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    int-to-long v2, v0

    cmp-long v0, v2, v11

    if-gtz v0, :cond_3c

    move v1, v8

    :cond_3c
    move v14, v1

    .line 2565
    .local v14, "resolvedNowFg":Z
    if-ne v13, v14, :cond_41

    .line 2566
    goto/16 :goto_122

    .line 2569
    :cond_41
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v15, 0x4

    if-eqz v0, :cond_71

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2570
    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_71

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2571
    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v15, :cond_71

    .line 2572
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$u9c0eEYUUm25QC1meV06FHffZE0;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$u9c0eEYUUm25QC1meV06FHffZE0;

    .line 2574
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2572
    invoke-static {v1, v6, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_122

    .line 2576
    :cond_71
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/ArraySet;

    .line 2577
    .local v5, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v5, :cond_121

    .line 2578
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v4, v0

    .local v4, "cbi":I
    :goto_82
    if-ltz v4, :cond_11d

    .line 2579
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2580
    .local v3, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    iget v0, v3, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_10f

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2581
    invoke-virtual {v3, v0}, Lcom/android/server/appop/AppOpsService$ModeCallback;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 2582
    move/from16 v17, v4

    move-object v8, v5

    goto/16 :goto_114

    .line 2584
    :cond_9d
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v2, v0

    .local v2, "pkgi":I
    :goto_a5
    if-ltz v2, :cond_107

    .line 2585
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v0, v10}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/appop/AppOpsService$Op;

    .line 2586
    .local v16, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v16, :cond_c1

    .line 2587
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    goto :goto_fb

    .line 2589
    :cond_c1
    invoke-static/range {v16 .. v16}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    if-ne v0, v15, :cond_f4

    .line 2590
    iget-object v1, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 2592
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v8, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v15, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2593
    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2590
    move-object v6, v1

    move-object/from16 v1, p0

    move/from16 v18, v2

    .end local v2  # "pkgi":I
    .local v18, "pkgi":I
    move-object v2, v3

    move-object/from16 v19, v3

    .end local v3  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .local v19, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    move-object/from16 v3, v17

    move/from16 v17, v4

    .end local v4  # "cbi":I
    .local v17, "cbi":I
    move-object v4, v8

    move-object v8, v5

    .end local v5  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v8, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    move-object v5, v15

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_fb

    .line 2589
    .end local v8  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17  # "cbi":I
    .end local v18  # "pkgi":I
    .end local v19  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v2  # "pkgi":I
    .restart local v3  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v4  # "cbi":I
    .restart local v5  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_f4
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    .line 2584
    .end local v2  # "pkgi":I
    .end local v3  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v4  # "cbi":I
    .end local v5  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v16  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v8  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v17  # "cbi":I
    .restart local v18  # "pkgi":I
    .restart local v19  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    :goto_fb
    add-int/lit8 v2, v18, -0x1

    const/4 v15, 0x4

    move-object/from16 v6, p0

    move-object v5, v8

    move/from16 v4, v17

    move-object/from16 v3, v19

    const/4 v8, 0x1

    .end local v18  # "pkgi":I
    .restart local v2  # "pkgi":I
    goto :goto_a5

    .end local v8  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17  # "cbi":I
    .end local v19  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v3  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v4  # "cbi":I
    .restart local v5  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_107
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    .end local v2  # "pkgi":I
    .end local v3  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v4  # "cbi":I
    .end local v5  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v8  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v17  # "cbi":I
    .restart local v18  # "pkgi":I
    .restart local v19  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    goto :goto_114

    .line 2580
    .end local v8  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17  # "cbi":I
    .end local v18  # "pkgi":I
    .end local v19  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v3  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v4  # "cbi":I
    .restart local v5  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_10f
    move-object/from16 v19, v3

    move/from16 v17, v4

    move-object v8, v5

    .line 2578
    .end local v3  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v4  # "cbi":I
    .end local v5  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v8  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v17  # "cbi":I
    :goto_114
    add-int/lit8 v4, v17, -0x1

    const/4 v15, 0x4

    move-object/from16 v6, p0

    move-object v5, v8

    const/4 v8, 0x1

    .end local v17  # "cbi":I
    .restart local v4  # "cbi":I
    goto/16 :goto_82

    .end local v8  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v5  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_11d
    move/from16 v17, v4

    move-object v8, v5

    .end local v4  # "cbi":I
    .end local v5  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v8  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v17  # "cbi":I
    goto :goto_122

    .line 2577
    .end local v8  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v17  # "cbi":I
    .restart local v5  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_121
    move-object v8, v5

    .line 2555
    .end local v5  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v10  # "code":I
    .end local v11  # "firstUnrestrictedUidState":J
    .end local v13  # "resolvedLastFg":Z
    .end local v14  # "resolvedNowFg":Z
    :goto_122
    add-int/lit8 v9, v9, -0x1

    const/4 v8, 0x1

    move-object/from16 v6, p0

    goto/16 :goto_11

    .line 2601
    .end local v9  # "fgi":I
    :cond_129
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    iput v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 2602
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 2603
    return-void
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"  # Ljava/io/PrintWriter;

    .line 3422
    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3423
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3424
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3425
    const-string v0, "  start [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3426
    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3427
    const-string v0, "  stop [--user <USER_ID>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3428
    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3429
    const-string v0, "  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3430
    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3431
    const-string v0, "  get [--user <USER_ID>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3432
    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3433
    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3434
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3435
    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3436
    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3437
    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3438
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3439
    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3440
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3441
    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3442
    const-string v0, "    <PACKAGE> an Android package name or its UID if prefixed by --uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3443
    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3444
    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3445
    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3446
    const-string v0, "              specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3447
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 3685
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3686
    const-string v0, "  -h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3687
    const-string v0, "    Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3688
    const-string v0, "  --op [OP]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3689
    const-string v0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3690
    const-string v0, "  --mode [MODE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3691
    const-string v0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3692
    const-string v0, "  --package [PACKAGE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3693
    const-string v0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3694
    const-string v0, "  --watchers"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3695
    const-string v0, "    Only output the watcher sections."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3696
    return-void
.end method

.method private dumpStatesLocked(Ljava/io/PrintWriter;Lcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .registers 36
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "op"  # Lcom/android/server/appop/AppOpsService$Op;
    .param p3, "now"  # J
    .param p5, "sdf"  # Ljava/text/SimpleDateFormat;
    .param p6, "date"  # Ljava/util/Date;
    .param p7, "prefix"  # Ljava/lang/String;

    .line 3701
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    new-instance v13, Landroid/app/AppOpsManager$OpEntry;

    iget v5, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-boolean v6, v1, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v7

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v8

    .line 3702
    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v12

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Landroid/app/AppOpsManager$OpEntry;-><init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V

    .line 3704
    .local v4, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v5

    .line 3705
    .local v5, "keys":Landroid/util/LongSparseArray;
    if-eqz v5, :cond_13d

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-gtz v6, :cond_3c

    move-object/from16 v22, v4

    move-object/from16 v16, v5

    goto/16 :goto_141

    .line 3709
    :cond_3c
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    .line 3710
    .local v6, "keyCount":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_41
    if-ge v7, v6, :cond_13c

    .line 3711
    invoke-virtual {v5, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    .line 3713
    .local v8, "key":J
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v10

    .line 3714
    .local v10, "uidState":I
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v11

    .line 3716
    .local v11, "flags":I
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v12

    .line 3718
    .local v12, "accessTime":J
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v14

    .line 3720
    .local v14, "rejectTime":J
    move-object/from16 v16, v5

    move/from16 v17, v6

    .end local v5  # "keys":Landroid/util/LongSparseArray;
    .end local v6  # "keyCount":I
    .local v16, "keys":Landroid/util/LongSparseArray;
    .local v17, "keyCount":I
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v5

    .line 3722
    .local v5, "accessDuration":J
    invoke-virtual {v4, v10, v11}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName(II)Ljava/lang/String;

    move-result-object v1

    .line 3723
    .local v1, "proxyPkg":Ljava/lang/String;
    move/from16 v18, v7

    .end local v7  # "k":I
    .local v18, "k":I
    invoke-virtual {v4, v10, v11}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid(II)I

    move-result v7

    .line 3725
    .local v7, "proxyUid":I
    const-wide/16 v19, 0x0

    cmp-long v21, v12, v19

    move-object/from16 v22, v4

    .end local v4  # "entry":Landroid/app/AppOpsManager$OpEntry;
    .local v22, "entry":Landroid/app/AppOpsManager$OpEntry;
    const-string v4, "]"

    move/from16 v23, v10

    .end local v10  # "uidState":I
    .local v23, "uidState":I
    const-string v10, ", pkg="

    move/from16 v24, v11

    .end local v11  # "flags":I
    .local v24, "flags":I
    const-string/jumbo v11, "uid="

    move-wide/from16 v25, v14

    .end local v14  # "rejectTime":J
    .local v25, "rejectTime":J
    const-string v14, " proxy["

    const-string v15, ")"

    move-object/from16 v27, v4

    const-string v4, " ("

    if-lez v21, :cond_da

    .line 3726
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3727
    const-string v3, "Access: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3728
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3729
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3730
    invoke-virtual {v2, v12, v13}, Ljava/util/Date;->setTime(J)V

    .line 3731
    invoke-virtual/range {p5 .. p6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3732
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3733
    move-object/from16 v21, v4

    sub-long v3, v12, p3

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3734
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3735
    cmp-long v3, v5, v19

    if-lez v3, :cond_bd

    .line 3736
    const-string v3, " duration="

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3737
    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3739
    :cond_bd
    if-ltz v7, :cond_d4

    .line 3740
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3741
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3742
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 3743
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3744
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3745
    move-object/from16 v3, v27

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d6

    .line 3739
    :cond_d4
    move-object/from16 v3, v27

    .line 3747
    :goto_d6
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_de

    .line 3725
    :cond_da
    move-object/from16 v21, v4

    move-object/from16 v3, v27

    .line 3750
    :goto_de
    cmp-long v4, v25, v19

    if-lez v4, :cond_128

    .line 3751
    move-object/from16 v4, p7

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3752
    const-string v4, "Reject: "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3753
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3754
    move-wide/from16 v19, v5

    move-wide/from16 v4, v25

    .end local v5  # "accessDuration":J
    .end local v25  # "rejectTime":J
    .local v4, "rejectTime":J
    .local v19, "accessDuration":J
    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 3755
    invoke-virtual/range {p5 .. p6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3756
    move-object/from16 v6, v21

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3757
    move-wide/from16 v25, v8

    .end local v8  # "key":J
    .local v25, "key":J
    sub-long v8, v4, p3

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3758
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3759
    if-ltz v7, :cond_124

    .line 3760
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3761
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 3763
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3764
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3765
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3767
    :cond_124
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_12e

    .line 3750
    .end local v4  # "rejectTime":J
    .end local v19  # "accessDuration":J
    .restart local v5  # "accessDuration":J
    .restart local v8  # "key":J
    .local v25, "rejectTime":J
    :cond_128
    move-wide/from16 v19, v5

    move-wide/from16 v4, v25

    move-wide/from16 v25, v8

    .line 3710
    .end local v1  # "proxyPkg":Ljava/lang/String;
    .end local v5  # "accessDuration":J
    .end local v7  # "proxyUid":I
    .end local v8  # "key":J
    .end local v12  # "accessTime":J
    .end local v23  # "uidState":I
    .end local v24  # "flags":I
    .end local v25  # "rejectTime":J
    :goto_12e
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v1, p2

    move-object/from16 v3, p7

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v4, v22

    .end local v18  # "k":I
    .local v7, "k":I
    goto/16 :goto_41

    .line 3770
    .end local v7  # "k":I
    .end local v16  # "keys":Landroid/util/LongSparseArray;
    .end local v17  # "keyCount":I
    .end local v22  # "entry":Landroid/app/AppOpsManager$OpEntry;
    .local v4, "entry":Landroid/app/AppOpsManager$OpEntry;
    .local v5, "keys":Landroid/util/LongSparseArray;
    .restart local v6  # "keyCount":I
    :cond_13c
    return-void

    .line 3705
    .end local v6  # "keyCount":I
    :cond_13d
    move-object/from16 v22, v4

    move-object/from16 v16, v5

    .line 3706
    .end local v4  # "entry":Landroid/app/AppOpsManager$OpEntry;
    .end local v5  # "keys":Landroid/util/LongSparseArray;
    .restart local v16  # "keys":Landroid/util/LongSparseArray;
    .restart local v22  # "entry":Landroid/app/AppOpsManager$OpEntry;
    :goto_141
    return-void
.end method

.method private enforceManageAppOpsModes(III)V
    .registers 10
    .param p1, "callingPid"  # I
    .param p2, "callingUid"  # I
    .param p3, "targetUid"  # I

    .line 1268
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1269
    return-void

    .line 1271
    :cond_7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1272
    .local v0, "callingUser":I
    monitor-enter p0

    .line 1273
    :try_start_c
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_23

    .line 1274
    if-ltz p3, :cond_23

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 1277
    monitor-exit p0

    return-void

    .line 1280
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_35

    .line 1281
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1282
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 1281
    const-string v5, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1283
    return-void

    .line 1280
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private evalAllForegroundOpsLocked()V
    .registers 4

    .line 1713
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidi":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 1714
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1715
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1b

    .line 1716
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1713
    .end local v1  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1719
    .end local v0  # "uidi":I
    :cond_1e
    return-void
.end method

.method private static getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;
    .registers 16
    .param p0, "op"  # Lcom/android/server/appop/AppOpsService$Op;
    .param p1, "elapsedNow"  # J

    .line 1094
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    if-eqz v0, :cond_10

    .line 1095
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/appop/AppOpsService$Op;->continuing(JII)V

    .line 1098
    :cond_10
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v5, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-boolean v6, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v7

    .line 1099
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v8, v1

    goto :goto_2c

    :cond_2b
    move-object v8, v2

    .line 1100
    :goto_2c
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v9, v1

    goto :goto_3d

    :cond_3c
    move-object v9, v2

    .line 1101
    :goto_3d
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v10, v1

    goto :goto_4e

    :cond_4d
    move-object v10, v2

    .line 1102
    :goto_4e
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    if-eqz v1, :cond_5e

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v11, v1

    goto :goto_5f

    :cond_5e
    move-object v11, v2

    .line 1103
    :goto_5f
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v1

    if-eqz v1, :cond_6f

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v1

    move-object v12, v1

    goto :goto_70

    :cond_6f
    move-object v12, v2

    :goto_70
    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Landroid/app/AppOpsManager$OpEntry;-><init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V

    .line 1104
    .local v0, "entry":Landroid/app/AppOpsManager$OpEntry;
    return-object v0
.end method

.method private getOpLocked(IILjava/lang/String;ZZZ)Lcom/android/server/appop/AppOpsService$Op;
    .registers 9
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "edit"  # Z
    .param p5, "verifyUid"  # Z
    .param p6, "isPrivileged"  # Z

    .line 2741
    if-eqz p5, :cond_8

    .line 2742
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    goto :goto_c

    .line 2744
    .end local v0  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_8
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/android/server/appop/AppOpsService;->getOpsRawNoVerifyLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 2747
    .restart local v0  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :goto_c
    if-nez v0, :cond_10

    .line 2748
    const/4 v1, 0x0

    return-object v1

    .line 2750
    :cond_10
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;
    .registers 8
    .param p1, "ops"  # Lcom/android/server/appop/AppOpsService$Ops;
    .param p2, "code"  # I
    .param p3, "edit"  # Z

    .line 2754
    invoke-virtual {p1, p2}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    .line 2755
    .local v0, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v0, :cond_19

    .line 2756
    if-nez p3, :cond_c

    .line 2757
    const/4 v1, 0x0

    return-object v1

    .line 2759
    :cond_c
    new-instance v1, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;I)V

    move-object v0, v1

    .line 2760
    invoke-virtual {p1, p2, v0}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2762
    :cond_19
    if-eqz p3, :cond_1e

    .line 2763
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 2765
    :cond_1e
    return-object v0
.end method

.method private getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;
    .registers 16
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "edit"  # Z
    .param p4, "uidMismatchExpected"  # Z

    .line 2607
    const-string v0, "AppOps"

    invoke-direct {p0, p1, p3}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v1

    .line 2608
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2609
    return-object v2

    .line 2612
    :cond_a
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_18

    .line 2613
    if-nez p3, :cond_11

    .line 2614
    return-object v2

    .line 2616
    :cond_11
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2619
    :cond_18
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2620
    .local v3, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v3, :cond_a6

    .line 2621
    if-nez p3, :cond_25

    .line 2622
    return-object v2

    .line 2624
    :cond_25
    const/4 v4, 0x0

    .line 2627
    .local v4, "isPrivileged":Z
    if-eqz p1, :cond_9b

    .line 2628
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2630
    .local v5, "ident":J
    const/4 v7, -0x1

    .line 2632
    .local v7, "pkgUid":I
    :try_start_2d
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/high16 v9, 0xc0000

    .line 2636
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2633
    invoke-interface {v8, p2, v9, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 2637
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_4b

    .line 2638
    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move v7, v9

    .line 2639
    iget v9, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_48

    const/4 v9, 0x1

    goto :goto_49

    :cond_48
    const/4 v9, 0x0

    :goto_49
    move v4, v9

    goto :goto_53

    .line 2642
    :cond_4b
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v9
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4f} :catch_56
    .catchall {:try_start_2d .. :try_end_4f} :catchall_54

    move v7, v9

    .line 2643
    if-ltz v7, :cond_53

    .line 2644
    const/4 v4, 0x0

    .line 2649
    .end local v8  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_53
    :goto_53
    goto :goto_5c

    .line 2662
    .end local v7  # "pkgUid":I
    :catchall_54
    move-exception v0

    goto :goto_97

    .line 2647
    .restart local v7  # "pkgUid":I
    :catch_56
    move-exception v8

    .line 2648
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_57
    const-string v9, "Could not contact PackageManager"

    invoke-static {v0, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2650
    .end local v8  # "e":Landroid/os/RemoteException;
    :goto_5c
    if-eq v7, p1, :cond_93

    .line 2653
    if-nez p4, :cond_8e

    .line 2654
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2655
    .local v8, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2656
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad call: specified package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " under uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " but it is really "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_57 .. :try_end_8e} :catchall_54

    .line 2659
    .end local v8  # "ex":Ljava/lang/RuntimeException;
    :cond_8e
    nop

    .line 2662
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2659
    return-object v2

    .line 2662
    .end local v7  # "pkgUid":I
    :cond_93
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2663
    goto :goto_9b

    .line 2662
    :goto_97
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2665
    .end local v5  # "ident":J
    :cond_9b
    :goto_9b
    new-instance v0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v0, p2, v1, v4}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;Z)V

    move-object v3, v0

    .line 2666
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2668
    .end local v4  # "isPrivileged":Z
    :cond_a6
    return-object v3
.end method

.method private getOpsRawNoVerifyLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;
    .registers 8
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "edit"  # Z
    .param p4, "isPrivileged"  # Z

    .line 2685
    invoke-direct {p0, p1, p3}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 2686
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2687
    return-object v1

    .line 2690
    :cond_8
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_16

    .line 2691
    if-nez p3, :cond_f

    .line 2692
    return-object v1

    .line 2694
    :cond_f
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2697
    :cond_16
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2698
    .local v2, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v2, :cond_2e

    .line 2699
    if-nez p3, :cond_23

    .line 2700
    return-object v1

    .line 2702
    :cond_23
    new-instance v1, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v1, p2, v0, p4}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;Z)V

    move-object v2, v1

    .line 2703
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2705
    :cond_2e
    return-object v2
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .registers 3
    .param p0, "uid"  # I

    .line 4537
    const/4 v0, 0x0

    .line 4541
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 4543
    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11

    move-object v0, v1

    .line 4546
    goto :goto_12

    .line 4544
    :catch_11
    move-exception v1

    .line 4548
    :cond_12
    :goto_12
    if-nez v0, :cond_17

    .line 4549
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 4551
    :cond_17
    return-object v0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;
    .registers 5
    .param p1, "uid"  # I
    .param p2, "edit"  # Z

    .line 2515
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2516
    invoke-static {p1}, Landroid/os/UserHandle;->convertMultiOpenUid(I)I

    move-result v0

    .line 2517
    .local v0, "newUid":I
    move p1, v0

    .line 2520
    .end local v0  # "newUid":I
    :cond_f
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2521
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_29

    .line 2522
    if-nez p2, :cond_1d

    .line 2523
    const/4 v1, 0x0

    return-object v1

    .line 2525
    :cond_1d
    new-instance v1, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v1, p1}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(I)V

    move-object v0, v1

    .line 2526
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2c

    .line 2528
    :cond_29
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 2530
    :goto_2c
    return-object v0
.end method

.method private isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z
    .registers 6
    .param p1, "code"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "uid"  # I

    .line 2769
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2770
    const/4 v0, 0x0

    return v0

    .line 2772
    :cond_a
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 2773
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;)Z
    .registers 12
    .param p1, "uid"  # I
    .param p2, "code"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 2777
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2778
    .local v0, "userHandle":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2780
    .local v1, "restrictionSetCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    const/4 v3, 0x0

    if-ge v2, v1, :cond_39

    .line 2783
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 2784
    .local v4, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    invoke-virtual {v4, p2, p3, v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 2785
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_35

    .line 2787
    monitor-enter p0

    .line 2788
    :try_start_24
    invoke-direct {p0, p1, p3, v6, v3}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v5

    .line 2790
    .local v5, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v5, :cond_30

    iget-boolean v7, v5, Lcom/android/server/appop/AppOpsService$Ops;->isPrivileged:Z

    if-eqz v7, :cond_30

    .line 2791
    monitor-exit p0

    return v3

    .line 2793
    .end local v5  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_30
    monitor-exit p0

    goto :goto_35

    :catchall_32
    move-exception v3

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_32

    throw v3

    .line 2795
    :cond_35
    :goto_35
    return v6

    .line 2780
    .end local v4  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2798
    .end local v2  # "i":I
    :cond_39
    return v3
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 1937
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1939
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1940
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1939
    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v2
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_16
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 1944
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1939
    return v2

    .line 1944
    :catchall_14
    move-exception v2

    goto :goto_1f

    .line 1941
    :catch_16
    move-exception v2

    .line 1942
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_17
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Could not talk to package manager service"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "identity":J
    .end local p0  # "this":Lcom/android/server/appop/AppOpsService;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "uid":I
    throw v3
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_14

    .line 1944
    .end local v2  # "re":Landroid/os/RemoteException;
    .restart local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/appop/AppOpsService;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "uid":I
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
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
    .registers 12
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 2060
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2061
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2062
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2063
    .local v7, "resolvedPackageName":Ljava/lang/String;
    if-nez v7, :cond_e

    .line 2064
    const/4 v0, 0x1

    return v0

    .line 2066
    :cond_e
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;I)I
    .registers 28
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "proxyUid"  # I
    .param p5, "proxyPackageName"  # Ljava/lang/String;
    .param p6, "flags"  # I

    .line 2072
    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v7, p6

    monitor-enter p0

    .line 2073
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_d
    invoke-direct {v1, v9, v10, v2, v0}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v3

    move-object v6, v3

    .line 2075
    .local v6, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v6, :cond_1a

    .line 2076
    invoke-direct {v1, v8, v9, v10, v2}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2080
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 2082
    :cond_1a
    invoke-direct {v1, v6, v8, v2}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v3

    move-object v5, v3

    .line 2083
    .local v5, "op":Lcom/android/server/appop/AppOpsService$Op;
    invoke-direct {v1, v9, v8, v10}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2084
    invoke-direct {v1, v8, v9, v10, v2}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2086
    monitor-exit p0

    return v2

    .line 2088
    :cond_2a
    iget-object v3, v6, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    move-object v4, v3

    .line 2089
    .local v4, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-boolean v3, v5, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    if-eqz v3, :cond_99

    .line 2090
    new-instance v3, Landroid/app/AppOpsManager$OpEntry;

    iget v12, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-boolean v13, v5, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v14

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v15

    .line 2091
    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v16

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v17

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v18

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v19

    move-object v11, v3

    invoke-direct/range {v11 .. v19}, Landroid/app/AppOpsManager$OpEntry;-><init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V

    .line 2092
    .local v3, "entry":Landroid/app/AppOpsManager$OpEntry;
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Noting op not finished: uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v14, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 2093
    invoke-virtual {v3, v13, v14, v7}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " duration="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v14, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 2094
    invoke-virtual {v3, v13, v14, v7}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2092
    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    .end local v3  # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_99
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    .line 2100
    .local v3, "switchCode":I
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mLooper:Landroid/os/Looper;

    if-eq v11, v12, :cond_ae

    const/4 v11, -0x1

    move/from16 v15, p4

    if-le v15, v11, :cond_b0

    .line 2101
    invoke-static {v9, v3, v10}, Lmeizu/security/FlymePermissionManager;->printPermissionTrace(IILjava/lang/String;)V

    goto :goto_b0

    .line 2100
    :cond_ae
    move/from16 v15, p4

    .line 2106
    :cond_b0
    :goto_b0
    iget-object v11, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v11, :cond_102

    iget-object v11, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v11

    if-ltz v11, :cond_102

    .line 2107
    iget-object v2, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v4, v8, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v2

    .line 2108
    .local v2, "uidMode":I
    if-eqz v2, :cond_f5

    .line 2112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget v0, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v11, v5

    move/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v16, v0

    move/from16 v17, p6

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 2114
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v11, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move v12, v2

    .end local v2  # "uidMode":I
    .local v12, "uidMode":I
    move-object v2, v0

    move v15, v3

    .end local v3  # "switchCode":I
    .local v15, "switchCode":I
    move/from16 v3, p1

    move-object v14, v4

    .end local v4  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v14, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move/from16 v4, p2

    move-object v13, v5

    .end local v5  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v13, "op":Lcom/android/server/appop/AppOpsService$Op;
    move-object/from16 v5, p3

    move-object v0, v6

    .end local v6  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move v6, v11

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;II)V

    .line 2116
    invoke-direct {v1, v8, v9, v10, v12}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2117
    monitor-exit p0

    return v12

    .line 2108
    .end local v0  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v12  # "uidMode":I
    .end local v13  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v14  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v15  # "switchCode":I
    .restart local v2  # "uidMode":I
    .restart local v3  # "switchCode":I
    .restart local v4  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v5  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v6  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_f5
    move v12, v2

    move v15, v3

    move-object v14, v4

    move-object v13, v5

    move-object v7, v6

    .line 2119
    .end local v2  # "uidMode":I
    .end local v3  # "switchCode":I
    .end local v4  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v5  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v6  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v7, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v13  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v14  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v15  # "switchCode":I
    move-object/from16 v20, v7

    move/from16 v19, v15

    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_153

    .line 2106
    .end local v7  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v14  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v15  # "switchCode":I
    .restart local v3  # "switchCode":I
    .restart local v4  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v5  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v6  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_102
    move v15, v3

    move-object v14, v4

    move-object v13, v5

    move-object v7, v6

    .line 2120
    .end local v3  # "switchCode":I
    .end local v4  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v5  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v6  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v7  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v13  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v14  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v15  # "switchCode":I
    if-eq v15, v8, :cond_10d

    invoke-direct {v1, v7, v15, v2}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v5

    goto :goto_10e

    :cond_10d
    move-object v5, v13

    :goto_10e
    move-object/from16 v18, v5

    .line 2121
    .local v18, "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v2

    move v6, v2

    .line 2122
    .local v6, "mode":I
    invoke-static/range {v18 .. v18}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    if-eqz v2, :cond_14c

    .line 2126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, v14, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v11, v13

    move-object v5, v13

    .end local v13  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v5  # "op":Lcom/android/server/appop/AppOpsService$Op;
    move-wide v12, v2

    move-object v4, v14

    .end local v14  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v4  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move/from16 v14, p4

    move/from16 v19, v15

    .end local v15  # "switchCode":I
    .local v19, "switchCode":I
    move-object/from16 v15, p5

    move/from16 v16, v0

    move/from16 v17, p6

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 2128
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v0, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move/from16 v3, p1

    move-object v15, v4

    .end local v4  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v15, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move/from16 v4, p2

    move-object v14, v5

    .end local v5  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v14, "op":Lcom/android/server/appop/AppOpsService$Op;
    move-object/from16 v5, p3

    move v11, v6

    .end local v6  # "mode":I
    .local v11, "mode":I
    move v6, v0

    move-object/from16 v20, v7

    .end local v7  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v20, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;II)V

    .line 2130
    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2131
    monitor-exit p0

    return v11

    .line 2122
    .end local v11  # "mode":I
    .end local v19  # "switchCode":I
    .end local v20  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v6  # "mode":I
    .restart local v7  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v13  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v14, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v15, "switchCode":I
    :cond_14c
    move v11, v6

    move-object/from16 v20, v7

    move/from16 v19, v15

    move-object v15, v14

    move-object v14, v13

    .line 2136
    .end local v6  # "mode":I
    .end local v7  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v18  # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .local v14, "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v15, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v19  # "switchCode":I
    .restart local v20  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :goto_153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget v2, v15, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v11, v14

    move-object v7, v14

    .end local v14  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v7, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v14, p4

    move-object v6, v15

    .end local v15  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v6, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move-object/from16 v15, p5

    move/from16 v16, v2

    move/from16 v17, p6

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/appop/AppOpsService$Op;->accessed(JILjava/lang/String;II)V

    .line 2138
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v3, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v11, v6, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object v12, v6

    .end local v6  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v12, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move v6, v11

    move-object v11, v7

    .end local v7  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v11, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;II)V

    .line 2140
    invoke-direct {v1, v8, v9, v10, v0}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 2142
    monitor-exit p0

    return v0

    .line 2143
    .end local v11  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v12  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v19  # "switchCode":I
    .end local v20  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :catchall_17e
    move-exception v0

    monitor-exit p0
    :try_end_180
    .catchall {:try_start_d .. :try_end_180} :catchall_17e

    throw v0
.end method

.method private notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .registers 12
    .param p2, "code"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "active"  # Z
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

    .line 2396
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2398
    .local v0, "identity":J
    :try_start_4
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2399
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_1b

    .line 2400
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_20

    .line 2402
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_start_11
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_20

    .line 2405
    goto :goto_18

    .line 2403
    :catch_17
    move-exception v5

    .line 2399
    .end local v4  # "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2408
    .end local v2  # "callbackCount":I
    .end local v3  # "i":I
    :cond_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2409
    nop

    .line 2410
    return-void

    .line 2408
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 7
    .param p2, "code"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
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

    .line 1529
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1530
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1531
    .local v1, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    .line 1529
    .end local v1  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1533
    .end local v0  # "i":I
    :cond_13
    return-void
.end method

.method private notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .registers 8
    .param p1, "callback"  # Lcom/android/server/appop/AppOpsService$ModeCallback;
    .param p2, "code"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;

    .line 1537
    const/4 v0, -0x2

    if-eq p3, v0, :cond_c

    iget v0, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v0, :cond_c

    iget v0, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-eq v0, p3, :cond_c

    .line 1538
    return-void

    .line 1543
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1545
    .local v0, "identity":J
    :try_start_10
    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1b
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_1c

    .line 1549
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1546
    :catch_1b
    move-exception v2

    .line 1549
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1550
    nop

    .line 1551
    return-void
.end method

.method private notifyOpChangedForAllPkgsInUid(IIZ)V
    .registers 21
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "onlyForeground"  # Z

    .line 1344
    move-object/from16 v7, p0

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 1345
    .local v8, "uidPackageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1347
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 1348
    :try_start_8
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_115

    move/from16 v9, p1

    :try_start_c
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_111

    .line 1349
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v0, :cond_45

    .line 1350
    :try_start_14
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 1351
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_45

    .line 1352
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1353
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz p3, :cond_2a

    iget v5, v4, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2a

    .line 1354
    goto :goto_3d

    .line 1357
    :cond_2a
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1358
    .local v5, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v5, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1359
    if-nez v1, :cond_3a

    .line 1360
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v6

    .line 1362
    :cond_3a
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_40

    .line 1351
    .end local v4  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v5  # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1388
    .end local v0  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v2  # "callbackCount":I
    .end local v3  # "i":I
    :catchall_40
    move-exception v0

    move-object/from16 v16, v8

    goto/16 :goto_11a

    .line 1366
    .restart local v0  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_45
    :try_start_45
    array-length v2, v8
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_111

    const/4 v3, 0x0

    move-object v10, v1

    .end local v1  # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v10, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_48
    if-ge v3, v2, :cond_9e

    :try_start_4a
    aget-object v1, v8, v3

    .line 1367
    .local v1, "uidPackageName":Ljava/lang/String;
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v0, v4

    .line 1368
    if-eqz v0, :cond_95

    .line 1369
    if-nez v10, :cond_5f

    .line 1370
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_98

    .end local v10  # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v4, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_60

    .line 1369
    .end local v4  # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v10  # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_5f
    move-object v4, v10

    .line 1372
    .end local v10  # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4  # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_60
    :try_start_60
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 1373
    .local v5, "callbackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_65
    if-ge v6, v5, :cond_8d

    .line 1374
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1375
    .local v10, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz p3, :cond_76

    iget v11, v10, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_76

    .line 1376
    goto :goto_8a

    .line 1379
    :cond_76
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 1380
    .local v11, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v11, :cond_87

    .line 1381
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v12

    .line 1382
    invoke-virtual {v4, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    :cond_87
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catchall {:try_start_60 .. :try_end_8a} :catchall_8f

    .line 1373
    .end local v10  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v11  # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_8a
    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    :cond_8d
    move-object v10, v4

    goto :goto_95

    .line 1388
    .end local v0  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v1  # "uidPackageName":Ljava/lang/String;
    .end local v5  # "callbackCount":I
    .end local v6  # "i":I
    :catchall_8f
    move-exception v0

    move-object v1, v4

    move-object/from16 v16, v8

    goto/16 :goto_11a

    .line 1366
    .end local v4  # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v0  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v10, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_95
    :goto_95
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 1388
    .end local v0  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_98
    move-exception v0

    move-object/from16 v16, v8

    move-object v1, v10

    goto/16 :goto_11a

    :cond_9e
    :try_start_9e
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_10c

    .line 1390
    if-nez v10, :cond_a2

    .line 1391
    return-void

    .line 1394
    :cond_a2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a3
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_10b

    .line 1395
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1396
    .local v11, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/ArraySet;

    .line 1397
    .local v12, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v12, :cond_d6

    .line 1398
    iget-object v13, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 1400
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x0

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 1398
    move-object/from16 v2, p0

    move-object v3, v11

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v16, v8

    goto :goto_106

    .line 1403
    :cond_d6
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 1404
    .local v13, "reportedPackageCount":I
    const/4 v1, 0x0

    move v14, v1

    .local v14, "j":I
    :goto_dc
    if-ge v14, v13, :cond_104

    .line 1405
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 1406
    .local v15, "reportedPackageName":Ljava/lang/String;
    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 1408
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1406
    move-object/from16 v2, p0

    move-object v3, v11

    move-object/from16 v16, v8

    move-object v8, v6

    .end local v8  # "uidPackageNames":[Ljava/lang/String;
    .local v16, "uidPackageNames":[Ljava/lang/String;
    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1404
    .end local v15  # "reportedPackageName":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v16

    goto :goto_dc

    .end local v16  # "uidPackageNames":[Ljava/lang/String;
    .restart local v8  # "uidPackageNames":[Ljava/lang/String;
    :cond_104
    move-object/from16 v16, v8

    .line 1394
    .end local v8  # "uidPackageNames":[Ljava/lang/String;
    .end local v11  # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v12  # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13  # "reportedPackageCount":I
    .end local v14  # "j":I
    .restart local v16  # "uidPackageNames":[Ljava/lang/String;
    :goto_106
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v16

    goto :goto_a3

    .line 1412
    .end local v0  # "i":I
    .end local v16  # "uidPackageNames":[Ljava/lang/String;
    .restart local v8  # "uidPackageNames":[Ljava/lang/String;
    :cond_10b
    return-void

    .line 1388
    :catchall_10c
    move-exception v0

    move-object/from16 v16, v8

    move-object v1, v10

    .end local v8  # "uidPackageNames":[Ljava/lang/String;
    .restart local v16  # "uidPackageNames":[Ljava/lang/String;
    goto :goto_11a

    .end local v10  # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v16  # "uidPackageNames":[Ljava/lang/String;
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8  # "uidPackageNames":[Ljava/lang/String;
    :catchall_111
    move-exception v0

    move-object/from16 v16, v8

    .end local v8  # "uidPackageNames":[Ljava/lang/String;
    .restart local v16  # "uidPackageNames":[Ljava/lang/String;
    goto :goto_11a

    .end local v16  # "uidPackageNames":[Ljava/lang/String;
    .restart local v8  # "uidPackageNames":[Ljava/lang/String;
    :catchall_115
    move-exception v0

    move/from16 v9, p1

    move-object/from16 v16, v8

    .end local v8  # "uidPackageNames":[Ljava/lang/String;
    .restart local v16  # "uidPackageNames":[Ljava/lang/String;
    :goto_11a
    :try_start_11a
    monitor-exit p0
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_11c

    throw v0

    :catchall_11c
    move-exception v0

    goto :goto_11a
.end method

.method private notifyOpChangedSync(IILjava/lang/String;I)V
    .registers 6
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "mode"  # I

    .line 1415
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    .line 1416
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 1417
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    if-eqz v0, :cond_d

    .line 1418
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;I)V

    .line 1420
    :cond_d
    return-void
.end method

.method private notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;I)V
    .registers 12
    .param p2, "code"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "result"  # I
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

    .line 2441
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2443
    .local v0, "identity":J
    :try_start_4
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2444
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_1b

    .line 2445
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_20

    .line 2447
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_start_11
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsNotedCallback;->opNoted(IILjava/lang/String;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_20

    .line 2450
    goto :goto_18

    .line 2448
    :catch_17
    move-exception v5

    .line 2444
    .end local v4  # "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2453
    .end local v2  # "callbackCount":I
    .end local v3  # "i":I
    :cond_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2454
    nop

    .line 2455
    return-void

    .line 2453
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private notifyWatchersOfChange(II)V
    .registers 5
    .param p1, "code"  # I
    .param p2, "uid"  # I

    .line 4394
    monitor-enter p0

    .line 4395
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 4396
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v0, :cond_d

    .line 4397
    monitor-exit p0

    return-void

    .line 4399
    :cond_d
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v0, v1

    .line 4400
    .local v0, "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_19

    .line 4402
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 4403
    return-void

    .line 4400
    .end local v0  # "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method static onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I
    .registers 22
    .param p0, "shell"  # Lcom/android/server/appop/AppOpsService$Shell;
    .param p1, "cmd"  # Ljava/lang/String;

    .line 3450
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_b

    .line 3451
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3453
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 3454
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 3456
    .local v4, "err":Ljava/io/PrintWriter;
    const/4 v5, -0x1

    :try_start_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_3ac

    :cond_1d
    goto :goto_75

    :sswitch_1e
    const-string/jumbo v0, "read-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x5

    goto :goto_76

    :sswitch_29
    const-string/jumbo v0, "start"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x6

    goto :goto_76

    :sswitch_34
    const-string/jumbo v0, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x3

    goto :goto_76

    :sswitch_3f
    const-string/jumbo v0, "stop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x7

    goto :goto_76

    :sswitch_4a
    const-string/jumbo v0, "set"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v7

    goto :goto_76

    :sswitch_55
    const-string v0, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v6

    goto :goto_76

    :sswitch_5f
    const-string/jumbo v0, "query-op"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x2

    goto :goto_76

    :sswitch_6a
    const-string/jumbo v0, "write-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x4

    goto :goto_76

    :goto_75
    move v0, v5

    :goto_76
    packed-switch v0, :pswitch_data_3ce

    .line 3676
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_395

    .line 3662
    :pswitch_7f  #0x7
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3663
    .local v0, "res":I
    if-gez v0, :cond_86

    .line 3664
    return v0

    .line 3667
    :cond_86
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_98

    .line 3668
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 3673
    return v7

    .line 3671
    :cond_98
    return v5

    .line 3648
    .end local v0  # "res":I
    :pswitch_99  #0x6
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3649
    .restart local v0  # "res":I
    if-gez v0, :cond_a0

    .line 3650
    return v0

    .line 3653
    :cond_a0
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_b3

    .line 3654
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 3659
    return v7

    .line 3657
    :cond_b3
    return v5

    .line 3636
    .end local v0  # "res":I
    :pswitch_b4  #0x5
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3637
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3636
    invoke-direct {v0, v6, v8, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_c5} :catch_396

    .line 3640
    .local v8, "token":J
    :try_start_c5
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 3641
    const-string v0, "Last settings read."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_c5 .. :try_end_cf} :catchall_d4

    .line 3643
    :try_start_cf
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3644
    nop

    .line 3645
    return v7

    .line 3643
    :catchall_d4
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3  # "pw":Ljava/io/PrintWriter;
    .end local v4  # "err":Ljava/io/PrintWriter;
    .end local p0  # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1  # "cmd":Ljava/lang/String;
    throw v0

    .line 3621
    .end local v8  # "token":J
    .restart local v3  # "pw":Ljava/io/PrintWriter;
    .restart local v4  # "err":Ljava/io/PrintWriter;
    .restart local p0  # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1  # "cmd":Ljava/lang/String;
    :pswitch_d9  #0x4
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3621
    invoke-direct {v0, v6, v8, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_ea
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_ea} :catch_396

    .line 3625
    .restart local v8  # "token":J
    :try_start_ea
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    monitor-enter v6
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_10b

    .line 3626
    :try_start_ed
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v10, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3627
    monitor-exit v6
    :try_end_f9
    .catchall {:try_start_ed .. :try_end_f9} :catchall_108

    .line 3628
    :try_start_f9
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 3629
    const-string v0, "Current settings written."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_103
    .catchall {:try_start_f9 .. :try_end_103} :catchall_10b

    .line 3631
    :try_start_103
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_106
    .catch Landroid/os/RemoteException; {:try_start_103 .. :try_end_106} :catch_396

    .line 3632
    nop

    .line 3633
    return v7

    .line 3627
    :catchall_108
    move-exception v0

    :try_start_109
    monitor-exit v6
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    .end local v3  # "pw":Ljava/io/PrintWriter;
    .end local v4  # "err":Ljava/io/PrintWriter;
    .end local v8  # "token":J
    .end local p0  # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1  # "cmd":Ljava/lang/String;
    :try_start_10a
    throw v0
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_10b

    .line 3631
    .restart local v3  # "pw":Ljava/io/PrintWriter;
    .restart local v4  # "err":Ljava/io/PrintWriter;
    .restart local v8  # "token":J
    .restart local p0  # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1  # "cmd":Ljava/lang/String;
    :catchall_10b
    move-exception v0

    :try_start_10c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3  # "pw":Ljava/io/PrintWriter;
    .end local v4  # "err":Ljava/io/PrintWriter;
    .end local p0  # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1  # "cmd":Ljava/lang/String;
    throw v0

    .line 3585
    .end local v8  # "token":J
    .restart local v3  # "pw":Ljava/io/PrintWriter;
    .restart local v4  # "err":Ljava/io/PrintWriter;
    .restart local p0  # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1  # "cmd":Ljava/lang/String;
    :pswitch_110  #0x3
    const/4 v0, 0x0

    .line 3586
    .local v0, "packageName":Ljava/lang/String;
    const/4 v6, -0x2

    move v8, v6

    .line 3587
    .local v8, "userId":I
    :goto_113
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .local v10, "argument":Ljava/lang/String;
    if-eqz v9, :cond_145

    .line 3588
    const-string v9, "--user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12c

    .line 3589
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 3590
    .local v9, "userStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v11

    move v8, v11

    .line 3591
    .end local v9  # "userStr":Ljava/lang/String;
    goto :goto_113

    .line 3592
    :cond_12c
    if-nez v0, :cond_130

    .line 3593
    move-object v0, v10

    goto :goto_113

    .line 3595
    :cond_130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Unsupported argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    return v5

    .line 3601
    .end local v10  # "argument":Ljava/lang/String;
    :cond_145
    if-ne v8, v6, :cond_14c

    .line 3602
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    move v8, v6

    .line 3605
    :cond_14c
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v6, v8, v0}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 3606
    const-string v6, "Reset all modes for: "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3607
    if-ne v8, v5, :cond_15e

    .line 3608
    const-string v6, "all users"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_167

    .line 3610
    :cond_15e
    const-string/jumbo v6, "user "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 3612
    :goto_167
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3613
    if-nez v0, :cond_174

    .line 3614
    const-string v6, "all packages"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17d

    .line 3616
    :cond_174
    const-string/jumbo v6, "package "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3618
    :goto_17d
    return v7

    .line 3557
    .end local v0  # "packageName":Ljava/lang/String;
    .end local v8  # "userId":I
    :pswitch_17e  #0x2
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v0

    .line 3558
    .local v0, "res":I
    if-gez v0, :cond_185

    .line 3559
    return v0

    .line 3561
    :cond_185
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    new-array v6, v6, [I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v9, v6, v7

    invoke-interface {v8, v6}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 3563
    .local v6, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_1e1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_19a

    goto :goto_1e1

    .line 3567
    :cond_19a
    move v8, v7

    .local v8, "i":I
    :goto_19b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1e0

    .line 3568
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 3569
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    const/4 v10, 0x0

    .line 3570
    .local v10, "hasMatch":Z
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 3571
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v12, v7

    .local v12, "j":I
    :goto_1b3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1d4

    .line 3572
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 3573
    .local v13, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    iget v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-ne v14, v15, :cond_1d1

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    iget v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-ne v14, v15, :cond_1d1

    .line 3574
    const/4 v10, 0x1

    .line 3575
    goto :goto_1d4

    .line 3571
    .end local v13  # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_1d1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b3

    .line 3578
    .end local v12  # "j":I
    :cond_1d4
    :goto_1d4
    if-eqz v10, :cond_1dd

    .line 3579
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3567
    .end local v9  # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10  # "hasMatch":Z
    .end local v11  # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_1dd
    add-int/lit8 v8, v8, 0x1

    goto :goto_19b

    .line 3582
    .end local v8  # "i":I
    :cond_1e0
    return v7

    .line 3564
    :cond_1e1
    :goto_1e1
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3565
    return v7

    .line 3490
    .end local v0  # "res":I
    .end local v6  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_1e7  #0x1
    invoke-virtual {v1, v7, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 3491
    .restart local v0  # "res":I
    if-gez v0, :cond_1ee

    .line 3492
    return v0

    .line 3495
    :cond_1ee
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3496
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v9, :cond_22b

    .line 3498
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 3500
    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_207

    new-array v12, v6, [I

    iget v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v13, v12, v7

    goto :goto_208

    :cond_207
    move-object v12, v10

    .line 3498
    :goto_208
    invoke-interface {v9, v11, v12}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v9

    .line 3501
    .local v9, "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v9, :cond_211

    .line 3502
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3504
    :cond_211
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3506
    iget v14, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v14, v5, :cond_221

    new-array v10, v6, [I

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v6, v10, v7

    .line 3504
    :cond_221
    invoke-interface {v11, v12, v13, v10}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v6

    .line 3507
    .end local v9  # "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v6, "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_22a

    .line 3508
    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3510
    .end local v6  # "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_22a
    goto :goto_23e

    .line 3511
    :cond_22b
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 3513
    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_239

    new-array v10, v6, [I

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v6, v10, v7

    .line 3511
    :cond_239
    invoke-interface {v9, v11, v10}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v6

    move-object v8, v6

    .line 3515
    :goto_23e
    if-eqz v8, :cond_306

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_24a

    move-object/from16 v19, v8

    goto/16 :goto_308

    .line 3523
    :cond_24a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 3524
    .local v9, "now":J
    move v6, v7

    .local v6, "i":I
    :goto_24f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_304

    .line 3525
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    .line 3526
    .local v11, "packageOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_266

    .line 3527
    const-string v12, "Uid mode: "

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3529
    :cond_266
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v12

    .line 3530
    .local v12, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v13, v7

    .local v13, "j":I
    :goto_26b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_2fd

    .line 3531
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$OpEntry;

    .line 3532
    .local v14, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3533
    const-string v15, ": "

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3534
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3535
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2b2

    .line 3536
    const-string v15, "; time="

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3537
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v15

    move-object/from16 v19, v8

    .end local v8  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v19, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    sub-long v7, v9, v15

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3538
    const-string v7, " ago"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2b4

    .line 3535
    .end local v19  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_2b2
    move-object/from16 v19, v8

    .line 3540
    .end local v8  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2b4
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v7

    cmp-long v7, v7, v17

    if-eqz v7, :cond_2cf

    .line 3541
    const-string v7, "; rejectTime="

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3542
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v7

    sub-long v7, v9, v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3543
    const-string v7, " ago"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3545
    :cond_2cf
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v7

    const-wide/16 v15, -0x1

    cmp-long v7, v7, v15

    if-nez v7, :cond_2df

    .line 3546
    const-string v7, " (running)"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f3

    .line 3547
    :cond_2df
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v7

    cmp-long v7, v7, v17

    if-eqz v7, :cond_2f3

    .line 3548
    const-string v7, "; duration="

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3549
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3551
    :cond_2f3
    :goto_2f3
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 3530
    .end local v14  # "ent":Landroid/app/AppOpsManager$OpEntry;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v19

    const/4 v7, 0x0

    goto/16 :goto_26b

    .end local v19  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_2fd
    move-object/from16 v19, v8

    .line 3524
    .end local v8  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v11  # "packageOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v12  # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v13  # "j":I
    .restart local v19  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_24f

    .line 3554
    .end local v6  # "i":I
    .end local v19  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_304
    const/4 v5, 0x0

    return v5

    .line 3515
    .end local v9  # "now":J
    :cond_306
    move-object/from16 v19, v8

    .line 3516
    .end local v8  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_308
    const-string v6, "No operations."

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3517
    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-le v6, v5, :cond_335

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    const/16 v7, 0x5b

    if-ge v6, v7, :cond_335

    .line 3518
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 3519
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v7

    .line 3518
    invoke-static {v7}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3521
    :cond_335
    const/4 v5, 0x0

    return v5

    .line 3458
    .end local v0  # "res":I
    .end local v19  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_337  #0x0
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    move v6, v0

    .line 3459
    .local v6, "res":I
    if-gez v6, :cond_33f

    .line 3460
    return v6

    .line 3462
    :cond_33f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 3463
    .local v7, "modeStr":Ljava/lang/String;
    if-nez v7, :cond_34c

    .line 3464
    const-string v0, "Error: Mode not specified."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3465
    return v5

    .line 3468
    :cond_34c
    invoke-static {v7, v4}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    move v8, v0

    .line 3469
    .local v8, "mode":I
    if-gez v8, :cond_354

    .line 3470
    return v5

    .line 3473
    :cond_354
    iget-boolean v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-nez v0, :cond_368

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_368

    .line 3474
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v0, v9, v10, v11, v8}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_393

    .line 3476
    :cond_368
    iget-boolean v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-eqz v0, :cond_38a

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;
    :try_end_36e
    .catch Landroid/os/RemoteException; {:try_start_10c .. :try_end_36e} :catch_396

    if-eqz v0, :cond_38a

    .line 3478
    :try_start_370
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3479
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 3480
    .local v0, "uid":I
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    invoke-interface {v9, v10, v0, v8}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_387
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_370 .. :try_end_387} :catch_388
    .catch Landroid/os/RemoteException; {:try_start_370 .. :try_end_387} :catch_396

    .line 3483
    .end local v0  # "uid":I
    goto :goto_393

    .line 3481
    :catch_388
    move-exception v0

    .line 3482
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5

    .line 3485
    .end local v0  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_38a
    :try_start_38a
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v0, v9, v10, v8}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_393
    .catch Landroid/os/RemoteException; {:try_start_38a .. :try_end_393} :catch_396

    .line 3487
    :goto_393
    const/4 v0, 0x0

    return v0

    .line 3676
    .end local v6  # "res":I
    .end local v7  # "modeStr":Ljava/lang/String;
    .end local v8  # "mode":I
    :goto_395
    return v0

    .line 3678
    :catch_396
    move-exception v0

    .line 3679
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3681
    .end local v0  # "e":Landroid/os/RemoteException;
    return v5

    :sswitch_data_3ac
    .sparse-switch
        -0x658cadaf -> :sswitch_6a
        -0x458a76fa -> :sswitch_5f
        0x18f56 -> :sswitch_55
        0x1bc62 -> :sswitch_4a
        0x360802 -> :sswitch_3f
        0x6761d4f -> :sswitch_34
        0x68ac462 -> :sswitch_29
        0x7c514e7a -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_3ce
    .packed-switch 0x0
        :pswitch_337  #00000000
        :pswitch_1e7  #00000001
        :pswitch_17e  #00000002
        :pswitch_110  #00000003
        :pswitch_d9  #00000004
        :pswitch_b4  #00000005
        :pswitch_99  #00000006
        :pswitch_7f  #00000007
    .end packed-switch
.end method

.method private pruneOp(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V
    .registers 8
    .param p1, "op"  # Lcom/android/server/appop/AppOpsService$Op;
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 1245
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1246
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 1248
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v0, :cond_37

    .line 1249
    iget v1, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Ops;->remove(I)V

    .line 1250
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v1

    if-gtz v1, :cond_37

    .line 1251
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 1252
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1253
    .local v2, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-eqz v2, :cond_37

    .line 1254
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1256
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1258
    :cond_2c
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1259
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1265
    .end local v0  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v1  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_37
    return-void
.end method

.method private readOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;Z)V
    .registers 35
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "uidState"  # Lcom/android/server/appop/AppOpsService$UidState;
    .param p3, "pkgName"  # Ljava/lang/String;
    .param p4, "isPrivileged"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3028
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 3029
    const-string/jumbo v4, "n"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v1, v2, v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 3031
    .local v3, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget v5, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 3032
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    .line 3031
    const-string/jumbo v6, "m"

    invoke-static {v0, v6, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 3033
    .local v5, "mode":I
    invoke-static {v3, v5}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 3035
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 3037
    .local v13, "outerDepth":I
    :cond_2b
    :goto_2b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v14, v6

    .local v14, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_d9

    const/4 v6, 0x3

    if-ne v14, v6, :cond_3c

    .line 3038
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v13, :cond_d9

    .line 3039
    :cond_3c
    if-eq v14, v6, :cond_2b

    const/4 v6, 0x4

    if-ne v14, v6, :cond_42

    .line 3040
    goto :goto_2b

    .line 3042
    :cond_42
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 3043
    .local v15, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "st"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 3044
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v16

    .line 3046
    .local v16, "key":J
    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v18

    .line 3047
    .local v18, "flags":I
    invoke-static/range {v16 .. v17}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v19

    .line 3049
    .local v19, "state":I
    const-wide/16 v11, 0x0

    const-string/jumbo v6, "t"

    invoke-static {v0, v6, v11, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v20

    .line 3050
    .local v20, "accessTime":J
    const-string/jumbo v6, "r"

    invoke-static {v0, v6, v11, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v22

    .line 3051
    .local v22, "rejectTime":J
    const-string v6, "d"

    invoke-static {v0, v6, v11, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v24

    .line 3052
    .local v24, "accessDuration":J
    const-string/jumbo v6, "pp"

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3053
    .local v26, "proxyPkg":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v7, "pu"

    invoke-static {v0, v7, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v27

    .line 3055
    .local v27, "proxyUid":I
    cmp-long v6, v20, v11

    if-lez v6, :cond_95

    .line 3056
    move-object v6, v3

    move-wide/from16 v7, v20

    move/from16 v9, v27

    move-object/from16 v10, v26

    move-wide/from16 v28, v11

    move/from16 v11, v19

    move/from16 v12, v18

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/appop/AppOpsService$Op;->accessed(JILjava/lang/String;II)V

    goto :goto_97

    .line 3055
    :cond_95
    move-wide/from16 v28, v11

    .line 3058
    :goto_97
    cmp-long v6, v22, v28

    if-lez v6, :cond_a9

    .line 3059
    move-object v6, v3

    move-wide/from16 v7, v22

    move/from16 v9, v27

    move-object/from16 v10, v26

    move/from16 v11, v19

    move/from16 v12, v18

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 3061
    :cond_a9
    cmp-long v6, v24, v28

    if-lez v6, :cond_b9

    .line 3062
    move-object v6, v3

    move-wide/from16 v7, v20

    move-wide/from16 v9, v24

    move/from16 v11, v19

    move/from16 v12, v18

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/appop/AppOpsService$Op;->running(JJII)V

    .line 3064
    .end local v16  # "key":J
    .end local v18  # "flags":I
    .end local v19  # "state":I
    .end local v20  # "accessTime":J
    .end local v22  # "rejectTime":J
    .end local v24  # "accessDuration":J
    .end local v26  # "proxyPkg":Ljava/lang/String;
    .end local v27  # "proxyUid":I
    :cond_b9
    goto :goto_d7

    .line 3065
    :cond_ba
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <op>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3066
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3065
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3069
    .end local v15  # "tagName":Ljava/lang/String;
    :goto_d7
    goto/16 :goto_2b

    .line 3071
    :cond_d9
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_e4

    .line 3072
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 3074
    :cond_e4
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Ops;

    .line 3075
    .local v4, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v4, :cond_fc

    .line 3076
    new-instance v6, Lcom/android/server/appop/AppOpsService$Ops;

    move/from16 v7, p4

    invoke-direct {v6, v2, v1, v7}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;Z)V

    move-object v4, v6

    .line 3077
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fe

    .line 3075
    :cond_fc
    move/from16 v7, p4

    .line 3079
    :goto_fe
    iget v6, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v4, v6, v3}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 3080
    return-void
.end method

.method private readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2960
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2961
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2963
    .local v1, "outerDepth":I
    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_52

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1d

    .line 2964
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_52

    .line 2965
    :cond_1d
    if-eq v3, v2, :cond_c

    const/4 v2, 0x4

    if-ne v3, v2, :cond_23

    .line 2966
    goto :goto_c

    .line 2969
    :cond_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2970
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2971
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_51

    .line 2973
    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <pkg>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2974
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2973
    const-string v5, "AppOps"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2977
    .end local v2  # "tagName":Ljava/lang/String;
    :goto_51
    goto :goto_c

    .line 2978
    :cond_52
    return-void
.end method

.method private readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 14
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2982
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2983
    .local v1, "uid":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v3

    .line 2984
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const-string/jumbo v4, "p"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2985
    .local v0, "isPrivilegedString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2986
    .local v4, "isPrivileged":Z
    const-string v5, "AppOps"

    if-nez v0, :cond_43

    .line 2988
    :try_start_1d
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 2989
    .local v6, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v6, :cond_3b

    .line 2990
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 2991
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v7, p2, v9, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 2992
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_3a

    .line 2993
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_34} :catch_3c

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_39

    move v9, v2

    :cond_39
    move v4, v9

    .line 2996
    .end local v7  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3a
    goto :goto_42

    .line 2998
    :cond_3b
    return-void

    .line 3000
    .end local v6  # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_3c
    move-exception v6

    .line 3001
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "Could not contact PackageManager"

    invoke-static {v5, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3002
    .end local v6  # "e":Landroid/os/RemoteException;
    :goto_42
    goto :goto_47

    .line 3004
    :cond_43
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 3006
    :goto_47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 3008
    .local v6, "outerDepth":I
    :cond_4b
    :goto_4b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    if-eq v7, v2, :cond_8e

    const/4 v7, 0x3

    if-ne v8, v7, :cond_5b

    .line 3009
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_8e

    .line 3010
    :cond_5b
    if-eq v8, v7, :cond_4b

    const/4 v7, 0x4

    if-ne v8, v7, :cond_61

    .line 3011
    goto :goto_4b

    .line 3013
    :cond_61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3014
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "op"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 3015
    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/appop/AppOpsService;->readOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;Z)V

    goto :goto_8d

    .line 3017
    :cond_72
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <pkg>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3017
    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3021
    .end local v7  # "tagName":Ljava/lang/String;
    :goto_8d
    goto :goto_4b

    .line 3022
    :cond_8e
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 3023
    return-void
.end method

.method private readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2932
    const-string/jumbo v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2933
    .local v2, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 2935
    .local v3, "outerDepth":I
    :cond_10
    :goto_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_7a

    const/4 v4, 0x3

    if-ne v5, v4, :cond_21

    .line 2936
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_7a

    .line 2937
    :cond_21
    if-eq v5, v4, :cond_10

    const/4 v4, 0x4

    if-ne v5, v4, :cond_27

    .line 2938
    goto :goto_10

    .line 2941
    :cond_27
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2942
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "op"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 2943
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2944
    .local v7, "code":I
    const-string/jumbo v8, "m"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2945
    .local v8, "mode":I
    invoke-direct {p0, v2, v6}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v6

    .line 2946
    .local v6, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v9, v6, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v9, :cond_56

    .line 2947
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v9, v6, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2949
    :cond_56
    iget-object v9, v6, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2950
    .end local v6  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v7  # "code":I
    .end local v8  # "mode":I
    goto :goto_79

    .line 2951
    :cond_5c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <uid-ops>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2951
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2955
    .end local v4  # "tagName":Ljava/lang/String;
    :goto_79
    goto :goto_10

    .line 2956
    :cond_7a
    return-void
.end method

.method private removeUidsForUserLocked(I)V
    .registers 5
    .param p1, "userHandle"  # I

    .line 4485
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 4486
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 4487
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 4488
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4485
    .end local v1  # "uid":I
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4491
    .end local v0  # "i":I
    :cond_1e
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "uid"  # I
    .param p1, "packageName"  # Ljava/lang/String;

    .line 4501
    if-nez p0, :cond_6

    .line 4502
    const-string/jumbo v0, "root"

    return-object v0

    .line 4503
    :cond_6
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_d

    .line 4504
    const-string v0, "com.android.shell"

    return-object v0

    .line 4505
    :cond_d
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_15

    .line 4506
    const-string/jumbo v0, "media"

    return-object v0

    .line 4507
    :cond_15
    const/16 v0, 0x411

    if-ne p0, v0, :cond_1c

    .line 4508
    const-string v0, "audioserver"

    return-object v0

    .line 4509
    :cond_1c
    const/16 v0, 0x417

    if-ne p0, v0, :cond_23

    .line 4510
    const-string v0, "cameraserver"

    return-object v0

    .line 4511
    :cond_23
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_2c

    if-nez p1, :cond_2c

    .line 4512
    const-string v0, "android"

    return-object v0

    .line 4514
    :cond_2c
    return-object p1
.end method

.method private static resolveUid(Ljava/lang/String;)I
    .registers 8
    .param p0, "packageName"  # Ljava/lang/String;

    .line 4518
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 4519
    return v0

    .line 4521
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_60

    :cond_10
    goto :goto_46

    :sswitch_11
    const-string v1, "audioserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v4

    goto :goto_47

    :sswitch_1b
    const-string/jumbo v1, "shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v6

    goto :goto_47

    :sswitch_26
    const-string/jumbo v1, "media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v5

    goto :goto_47

    :sswitch_31
    const-string/jumbo v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_47

    :sswitch_3c
    const-string v1, "cameraserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_47

    :goto_46
    move v1, v0

    :goto_47
    if-eqz v1, :cond_5e

    if-eq v1, v6, :cond_5b

    if-eq v1, v5, :cond_58

    if-eq v1, v4, :cond_55

    if-eq v1, v3, :cond_52

    .line 4533
    return v0

    .line 4531
    :cond_52
    const/16 v0, 0x417

    return v0

    .line 4529
    :cond_55
    const/16 v0, 0x411

    return v0

    .line 4527
    :cond_58
    const/16 v0, 0x3f5

    return v0

    .line 4525
    :cond_5b
    const/16 v0, 0x7d0

    return v0

    .line 4523
    :cond_5e
    return v2

    nop

    :sswitch_data_60
    .sparse-switch
        -0x1dbbd58 -> :sswitch_3c
        0x3580e2 -> :sswitch_31
        0x62f6fe4 -> :sswitch_26
        0x6855e30 -> :sswitch_1b
        0x50251299 -> :sswitch_11
    .end sparse-switch
.end method

.method private scheduleFastWriteLocked()V
    .registers 5

    .line 2716
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_19

    .line 2717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 2718
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 2719
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2720
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2722
    :cond_19
    return-void
.end method

.method private scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V
    .registers 15
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "active"  # Z

    .line 2368
    const/4 v0, 0x0

    .line 2369
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2370
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_31

    .line 2371
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2372
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    .line 2373
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    if-eqz v4, :cond_2e

    .line 2374
    iget v5, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v5, :cond_23

    iget v5, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_23

    .line 2375
    goto :goto_2e

    .line 2377
    :cond_23
    if-nez v0, :cond_2b

    .line 2378
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 2380
    :cond_2b
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2370
    .end local v3  # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v4  # "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2383
    .end local v2  # "i":I
    :cond_31
    if-nez v0, :cond_34

    .line 2384
    return-void

    .line 2386
    :cond_34
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ;

    .line 2388
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 2386
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2389
    return-void
.end method

.method private scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V
    .registers 15
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "result"  # I

    .line 2414
    const/4 v0, 0x0

    .line 2415
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2416
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_31

    .line 2417
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2418
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 2419
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    if-eqz v4, :cond_2e

    .line 2420
    iget v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-ltz v5, :cond_23

    iget v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_23

    .line 2421
    goto :goto_2e

    .line 2423
    :cond_23
    if-nez v0, :cond_2b

    .line 2424
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 2426
    :cond_2b
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2416
    .end local v3  # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v4  # "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2429
    .end local v2  # "i":I
    :cond_31
    if-nez v0, :cond_34

    .line 2430
    return-void

    .line 2432
    :cond_34
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$AfBLuTvVESlqN91IyRX84hMV5nE;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$AfBLuTvVESlqN91IyRX84hMV5nE;

    .line 2434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2432
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2435
    return-void
.end method

.method private scheduleWriteLocked()V
    .registers 5

    .line 2709
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_11

    .line 2710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 2711
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2713
    :cond_11
    return-void
.end method

.method private setAllPkgModesToDefault(II)V
    .registers 12
    .param p1, "code"  # I
    .param p2, "uid"  # I

    .line 1429
    monitor-enter p0

    .line 1430
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p2, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 1431
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_a

    .line 1432
    monitor-exit p0

    return-void

    .line 1435
    :cond_a
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1436
    .local v1, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-nez v1, :cond_10

    .line 1437
    monitor-exit p0

    return-void

    .line 1440
    :cond_10
    const/4 v2, 0x0

    .line 1442
    .local v2, "scheduleWrite":Z
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1443
    .local v3, "numPkgs":I
    const/4 v4, 0x0

    .local v4, "pkgNum":I
    :goto_16
    if-ge v4, v3, :cond_38

    .line 1444
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1446
    .local v5, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v5, p1}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Op;

    .line 1447
    .local v6, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v6, :cond_27

    .line 1448
    goto :goto_35

    .line 1451
    :cond_27
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v7

    .line 1452
    .local v7, "defaultMode":I
    invoke-static {v6}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v8

    if-eq v8, v7, :cond_35

    .line 1453
    invoke-static {v6, v7}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 1454
    const/4 v2, 0x1

    .line 1443
    .end local v5  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v6  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v7  # "defaultMode":I
    :cond_35
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1458
    .end local v4  # "pkgNum":I
    :cond_38
    if-eqz v2, :cond_3d

    .line 1459
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 1461
    .end local v0  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v2  # "scheduleWrite":Z
    .end local v3  # "numPkgs":I
    :cond_3d
    monitor-exit p0

    .line 1462
    return-void

    .line 1461
    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method private setMode(IILjava/lang/String;IZZ)V
    .registers 16
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "mode"  # I
    .param p5, "verifyUid"  # Z
    .param p6, "isPrivileged"  # Z

    .line 1482
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1483
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1484
    const/4 v0, 0x0

    .line 1485
    .local v0, "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1486
    monitor-enter p0

    .line 1487
    const/4 v1, 0x0

    :try_start_15
    invoke-direct {p0, p2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v1

    move-object v8, v1

    .line 1488
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;ZZZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    .line 1489
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v1, :cond_70

    .line 1490
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    if-eq v2, p4, :cond_70

    .line 1491
    invoke-static {v1, p4}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 1492
    if-eqz v8, :cond_37

    .line 1493
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1495
    :cond_37
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1496
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v2, :cond_4c

    .line 1497
    if-nez v0, :cond_49

    .line 1498
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v3

    .line 1500
    :cond_49
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1502
    :cond_4c
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    move-object v2, v3

    .line 1503
    if-eqz v2, :cond_62

    .line 1504
    if-nez v0, :cond_5f

    .line 1505
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v3

    .line 1507
    :cond_5f
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1509
    :cond_62
    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-ne p4, v3, :cond_6d

    .line 1512
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/appop/AppOpsService;->pruneOp(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V

    .line 1514
    :cond_6d
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 1517
    .end local v1  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v2  # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v8  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_15 .. :try_end_71} :catchall_8d

    .line 1518
    if-eqz v0, :cond_89

    .line 1519
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/appop/-$$Lambda$AppOpsService$NDUi03ZZuuR42-RDEIQ0UELKycc;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$NDUi03ZZuuR42-RDEIQ0UELKycc;

    .line 1521
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1519
    move-object v3, p0

    move-object v4, v0

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1524
    :cond_89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;I)V

    .line 1525
    return-void

    .line 1517
    :catchall_8d
    move-exception v1

    :try_start_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 11
    .param p1, "code"  # I
    .param p2, "restricted"  # Z
    .param p3, "token"  # Landroid/os/IBinder;
    .param p4, "userHandle"  # I
    .param p5, "exceptionPackages"  # [Ljava/lang/String;

    .line 4368
    monitor-enter p0

    .line 4369
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_45

    .line 4371
    .local v0, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    if-nez v0, :cond_1b

    .line 4373
    :try_start_b
    new-instance v1, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    invoke-direct {v1, p0, p3}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_18
    .catchall {:try_start_b .. :try_end_10} :catchall_45

    move-object v0, v1

    .line 4376
    nop

    .line 4377
    :try_start_12
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 4374
    :catch_18
    move-exception v1

    .line 4375
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit p0

    return-void

    .line 4380
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 4381
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 4382
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4381
    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4385
    :cond_35
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 4386
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4387
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->destroy()V

    .line 4389
    .end local v0  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_43
    monitor-exit p0

    .line 4390
    return-void

    .line 4389
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private updatePendingState(JI)V
    .registers 6
    .param p1, "currentTime"  # J
    .param p3, "uid"  # I

    .line 962
    monitor-enter p0

    .line 963
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 964
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 965
    monitor-exit p0

    .line 966
    return-void

    .line 965
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .registers 6
    .param p1, "uidState"  # Lcom/android/server/appop/AppOpsService$UidState;

    .line 2539
    if-eqz p1, :cond_27

    .line 2540
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    .line 2541
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 2542
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    goto :goto_27

    .line 2544
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 2545
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    .line 2546
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 2551
    :cond_27
    :goto_27
    return-void
.end method

.method private upgradeLocked(I)V
    .registers 5
    .param p1, "oldVersion"  # I

    .line 2916
    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    .line 2917
    return-void

    .line 2919
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

    .line 2920
    const/4 v0, -0x1

    if-eq p1, v0, :cond_26

    goto :goto_29

    .line 2922
    :cond_26
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->upgradeRunAnyInBackgroundLocked()V

    .line 2927
    :goto_29
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 2928
    return-void
.end method

.method private upgradeRunAnyInBackgroundLocked()V
    .registers 12

    .line 2880
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7d

    .line 2881
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2882
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v1, :cond_14

    .line 2883
    goto :goto_7a

    .line 2885
    :cond_14
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/16 v3, 0x3f

    const/16 v4, 0x46

    if-eqz v2, :cond_2f

    .line 2886
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 2887
    .local v2, "idx":I
    if-ltz v2, :cond_2f

    .line 2888
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2889
    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 2888
    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2892
    .end local v2  # "idx":I
    :cond_2f
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_34

    .line 2893
    goto :goto_7a

    .line 2895
    :cond_34
    const/4 v2, 0x0

    .line 2896
    .local v2, "changed":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_36
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_73

    .line 2897
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2898
    .local v6, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v6, :cond_70

    .line 2899
    invoke-virtual {v6, v3}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Op;

    .line 2900
    .local v7, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v7, :cond_70

    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v8

    iget v9, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v9}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v9

    if-eq v8, v9, :cond_70

    .line 2901
    new-instance v8, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v9, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v10, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v4}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;I)V

    .line 2903
    .local v8, "copy":Lcom/android/server/appop/AppOpsService$Op;
    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 2904
    invoke-virtual {v6, v4, v8}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 2905
    const/4 v2, 0x1

    .line 2896
    .end local v6  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v7  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v8  # "copy":Lcom/android/server/appop/AppOpsService$Op;
    :cond_70
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 2909
    .end local v5  # "j":I
    :cond_73
    if-eqz v2, :cond_7a

    .line 2910
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2880
    .end local v1  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2  # "changed":Z
    :cond_7a
    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2913
    .end local v0  # "i":I
    :cond_7d
    return-void
.end method

.method private verifyIncomingOp(I)V
    .registers 5
    .param p1, "op"  # I

    .line 2507
    if-ltz p1, :cond_7

    const/16 v0, 0x5b

    if-ge p1, v0, :cond_7

    .line 2508
    return-void

    .line 2510
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"  # I

    .line 2496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2497
    return-void

    .line 2499
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 2500
    return-void

    .line 2502
    :cond_12
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2503
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 2502
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2504
    return-void
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 5
    .param p1, "ops"  # Landroid/app/AppOpsManager$HistoricalOps;

    .line 4462
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "addHistoricalOps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4465
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/HistoricalRegistry;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 4466
    return-void
.end method

.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 12
    .param p1, "code"  # I
    .param p2, "usage"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;

    .line 1902
    monitor-enter p0

    .line 1903
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 1904
    .local v0, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1a

    .line 1905
    if-nez v0, :cond_b

    .line 1906
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result v1

    return v1

    .line 1908
    :cond_b
    new-instance v6, Lcom/android/server/appop/-$$Lambda$AppOpsService$mfUWTdGevxEoIUv1cEPEFG0qAaI;

    invoke-direct {v6, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$mfUWTdGevxEoIUv1cEPEFG0qAaI;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result v1

    return v1

    .line 1904
    .end local v0  # "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public checkOperation(IILjava/lang/String;)I
    .registers 5
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 1827
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->checkOperationInternal(IILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public checkOperationRaw(IILjava/lang/String;)I
    .registers 5
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 1822
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->checkOperationInternal(IILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)I
    .registers 5
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 1995
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    monitor-enter p0

    .line 1997
    const/4 v0, 0x1

    :try_start_5
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 1999
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v0, :cond_e

    .line 2000
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 2002
    :cond_e
    const/4 v1, 0x2

    monitor-exit p0

    return v1

    .line 2004
    .end local v0  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public clearHistory()V
    .registers 4

    .line 4478
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "clearHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4481
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory()V

    .line 4482
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 40
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 3774
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "AppOps"

    invoke-static {v0, v1, v10}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 3776
    :cond_11
    const/4 v0, -0x1

    .line 3777
    .local v0, "dumpOp":I
    const/4 v1, 0x0

    .line 3778
    .local v1, "dumpPackage":Ljava/lang/String;
    const/4 v2, -0x1

    .line 3779
    .local v2, "dumpUid":I
    const/4 v3, -0x1

    .line 3780
    .local v3, "dumpMode":I
    const/4 v4, 0x0

    .line 3781
    .local v4, "dumpWatchers":Z
    const/4 v12, 0x0

    .line 3783
    .local v12, "dumpHistory":Z
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v11, :cond_101

    .line 3784
    const/4 v5, 0x0

    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .end local v0  # "dumpOp":I
    .local v2, "dumpOp":I
    .local v3, "dumpUid":I
    .local v4, "dumpMode":I
    .local v5, "i":I
    .local v6, "dumpWatchers":Z
    :goto_20
    array-length v0, v11

    if-ge v5, v0, :cond_fb

    .line 3785
    aget-object v7, v11, v5

    .line 3786
    .local v7, "arg":Ljava/lang/String;
    const-string v0, "-h"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3787
    invoke-direct {v9, v10}, Lcom/android/server/appop/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3788
    return-void

    .line 3789
    :cond_31
    const-string v0, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto/16 :goto_c0

    .line 3791
    :cond_3b
    const-string v0, "--op"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 3792
    add-int/lit8 v5, v5, 0x1

    .line 3793
    array-length v0, v11

    if-lt v5, v0, :cond_4e

    .line 3794
    const-string v0, "No argument for --op option"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3795
    return-void

    .line 3797
    :cond_4e
    aget-object v0, v11, v5

    invoke-static {v0, v10}, Lcom/android/server/appop/AppOpsService$Shell;->access$1100(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    .line 3798
    .end local v2  # "dumpOp":I
    .restart local v0  # "dumpOp":I
    if-gez v0, :cond_57

    .line 3799
    return-void

    .line 3798
    :cond_57
    move v2, v0

    goto :goto_c0

    .line 3801
    .end local v0  # "dumpOp":I
    .restart local v2  # "dumpOp":I
    :cond_59
    const-string v0, "--package"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 3802
    add-int/lit8 v5, v5, 0x1

    .line 3803
    array-length v0, v11

    if-lt v5, v0, :cond_6c

    .line 3804
    const-string v0, "No argument for --package option"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3805
    return-void

    .line 3807
    :cond_6c
    aget-object v1, v11, v5

    .line 3809
    :try_start_6e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v8, 0xc02000

    invoke-interface {v0, v1, v8, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_79} :catch_7b

    move v3, v0

    .line 3813
    goto :goto_7c

    .line 3812
    :catch_7b
    move-exception v0

    .line 3814
    :goto_7c
    if-gez v3, :cond_93

    .line 3815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3816
    return-void

    .line 3818
    :cond_93
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    move v3, v0

    .end local v3  # "dumpUid":I
    .local v0, "dumpUid":I
    goto :goto_c0

    .line 3819
    .end local v0  # "dumpUid":I
    .restart local v3  # "dumpUid":I
    :cond_99
    const-string v0, "--mode"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 3820
    add-int/lit8 v5, v5, 0x1

    .line 3821
    array-length v0, v11

    if-lt v5, v0, :cond_ac

    .line 3822
    const-string v0, "No argument for --mode option"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3823
    return-void

    .line 3825
    :cond_ac
    aget-object v0, v11, v5

    invoke-static {v0, v10}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    .line 3826
    .end local v4  # "dumpMode":I
    .local v0, "dumpMode":I
    if-gez v0, :cond_b5

    .line 3827
    return-void

    .line 3826
    :cond_b5
    move v4, v0

    goto :goto_c0

    .line 3829
    .end local v0  # "dumpMode":I
    .restart local v4  # "dumpMode":I
    :cond_b7
    const-string v0, "--watchers"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 3830
    const/4 v6, 0x1

    .line 3784
    .end local v7  # "arg":Ljava/lang/String;
    :goto_c0
    add-int/2addr v5, v14

    goto/16 :goto_20

    .line 3831
    .restart local v7  # "arg":Ljava/lang/String;
    :cond_c3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e6

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_e6

    .line 3832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown option: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3833
    return-void

    .line 3835
    :cond_e6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown command: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3836
    return-void

    .line 3784
    .end local v7  # "arg":Ljava/lang/String;
    :cond_fb
    move v8, v2

    move v15, v6

    move-object v2, v1

    move v1, v3

    move v3, v4

    goto :goto_108

    .line 3783
    .end local v5  # "i":I
    .end local v6  # "dumpWatchers":Z
    .local v0, "dumpOp":I
    .local v2, "dumpUid":I
    .local v3, "dumpMode":I
    .local v4, "dumpWatchers":Z
    :cond_101
    move v8, v0

    move v15, v4

    move/from16 v34, v2

    move-object v2, v1

    move/from16 v1, v34

    .line 3841
    .end local v0  # "dumpOp":I
    .end local v4  # "dumpWatchers":Z
    .local v1, "dumpUid":I
    .local v2, "dumpPackage":Ljava/lang/String;
    .local v8, "dumpOp":I
    .local v15, "dumpWatchers":Z
    :goto_108
    monitor-enter p0

    .line 3842
    :try_start_109
    const-string v0, "Current AppOps Service state:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_109 .. :try_end_10e} :catchall_c27

    .line 3843
    if-nez v12, :cond_125

    if-nez v15, :cond_125

    .line 3844
    :try_start_112
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-virtual {v0, v10}, Lcom/android/server/appop/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V
    :try_end_117
    .catchall {:try_start_112 .. :try_end_117} :catchall_118

    goto :goto_125

    .line 4317
    :catchall_118
    move-exception v0

    move/from16 v22, v1

    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v28, v15

    move v12, v8

    goto/16 :goto_c32

    .line 3846
    :cond_125
    :goto_125
    :try_start_125
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3847
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3848
    .local v4, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3849
    .local v6, "nowElapsed":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 3850
    .local v16, "nowUptime":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v18, v6

    .end local v6  # "nowElapsed":J
    .local v18, "nowElapsed":J
    move-object v6, v0

    .line 3851
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V
    :try_end_144
    .catchall {:try_start_125 .. :try_end_144} :catchall_c27

    .line 3852
    .local v7, "date":Ljava/util/Date;
    const/4 v0, 0x0

    .line 3853
    .local v0, "needSep":Z
    if-gez v8, :cond_187

    if-gez v3, :cond_187

    if-nez v2, :cond_187

    :try_start_14b
    iget-object v14, v9, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v14, :cond_187

    if-nez v15, :cond_187

    if-nez v12, :cond_187

    .line 3855
    const-string v14, "  Profile owners:"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3856
    move v14, v13

    .local v14, "poi":I
    :goto_159
    iget-object v13, v9, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-ge v14, v13, :cond_184

    .line 3857
    const-string v13, "    User #"

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3858
    iget-object v13, v9, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 3859
    const-string v13, ": "

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3860
    iget-object v13, v9, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    invoke-static {v10, v13}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3861
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3856
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_159

    .line 3863
    .end local v14  # "poi":I
    :cond_184
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_187
    .catchall {:try_start_14b .. :try_end_187} :catchall_118

    .line 3865
    :cond_187
    :try_start_187
    iget-object v13, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13
    :try_end_18d
    .catchall {:try_start_187 .. :try_end_18d} :catchall_c27

    if-lez v13, :cond_22d

    if-nez v12, :cond_22d

    .line 3866
    const/4 v13, 0x0

    .line 3867
    .local v13, "printedHeader":Z
    const/4 v14, 0x0

    move/from16 v21, v14

    move v14, v0

    move/from16 v0, v21

    .local v0, "i":I
    .local v14, "needSep":Z
    :goto_198
    :try_start_198
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v0, v11, :cond_22e

    .line 3868
    if-ltz v8, :cond_1ac

    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    if-eq v8, v11, :cond_1ac

    .line 3869
    goto/16 :goto_227

    .line 3871
    :cond_1ac
    const/4 v11, 0x0

    .line 3872
    .local v11, "printedOpHeader":Z
    move/from16 v21, v11

    .end local v11  # "printedOpHeader":Z
    .local v21, "printedOpHeader":Z
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 3873
    .local v11, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/16 v20, 0x0

    move/from16 v22, v20

    move/from16 v34, v22

    move/from16 v22, v13

    move/from16 v13, v34

    .local v13, "j":I
    .local v22, "printedHeader":Z
    :goto_1c1
    move/from16 v23, v14

    .end local v14  # "needSep":Z
    .local v23, "needSep":Z
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v14

    if-ge v13, v14, :cond_221

    .line 3874
    invoke-virtual {v11, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 3875
    .local v14, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v2, :cond_1de

    move-object/from16 v24, v11

    .end local v11  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v24, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    iget v11, v14, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3876
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v1, v11, :cond_1e0

    .line 3877
    move/from16 v14, v23

    goto :goto_21c

    .line 3875
    .end local v24  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v11  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_1de
    move-object/from16 v24, v11

    .line 3879
    .end local v11  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v24  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_1e0
    const/4 v11, 0x1

    .line 3880
    .end local v23  # "needSep":Z
    .local v11, "needSep":Z
    if-nez v22, :cond_1ed

    .line 3881
    move/from16 v23, v11

    .end local v11  # "needSep":Z
    .restart local v23  # "needSep":Z
    const-string v11, "  Op mode watchers:"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3882
    const/16 v22, 0x1

    goto :goto_1ef

    .line 3880
    .end local v23  # "needSep":Z
    .restart local v11  # "needSep":Z
    :cond_1ed
    move/from16 v23, v11

    .line 3884
    .end local v11  # "needSep":Z
    .restart local v23  # "needSep":Z
    :goto_1ef
    if-nez v21, :cond_20a

    .line 3885
    const-string v11, "    Op "

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3886
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3887
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3888
    const/16 v21, 0x1

    .line 3890
    :cond_20a
    const-string v11, "      #"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3891
    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_21a
    .catchall {:try_start_198 .. :try_end_21a} :catchall_118

    move/from16 v14, v23

    .line 3873
    .end local v23  # "needSep":Z
    .local v14, "needSep":Z
    :goto_21c
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v24

    goto :goto_1c1

    .end local v14  # "needSep":Z
    .end local v24  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v11, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v23  # "needSep":Z
    :cond_221
    move-object/from16 v24, v11

    .end local v11  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v24  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    move/from16 v13, v22

    move/from16 v14, v23

    .line 3867
    .end local v21  # "printedOpHeader":Z
    .end local v22  # "printedHeader":Z
    .end local v23  # "needSep":Z
    .end local v24  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v13, "printedHeader":Z
    .restart local v14  # "needSep":Z
    :goto_227
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, p3

    goto/16 :goto_198

    .line 3895
    .end local v13  # "printedHeader":Z
    .end local v14  # "needSep":Z
    .local v0, "needSep":Z
    :cond_22d
    move v14, v0

    .end local v0  # "needSep":Z
    .restart local v14  # "needSep":Z
    :cond_22e
    :try_start_22e
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_234
    .catchall {:try_start_22e .. :try_end_234} :catchall_c27

    if-lez v0, :cond_2aa

    if-gez v8, :cond_2aa

    if-nez v12, :cond_2aa

    .line 3896
    const/4 v0, 0x0

    .line 3897
    .local v0, "printedHeader":Z
    const/4 v11, 0x0

    move v13, v11

    .local v13, "i":I
    :goto_23d
    :try_start_23d
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v13, v11, :cond_2aa

    .line 3898
    if-eqz v2, :cond_254

    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_254

    .line 3899
    goto :goto_2a7

    .line 3901
    :cond_254
    const/4 v14, 0x1

    .line 3902
    if-nez v0, :cond_25d

    .line 3903
    const-string v11, "  Package mode watchers:"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3904
    const/4 v0, 0x1

    .line 3906
    :cond_25d
    const-string v11, "    Pkg "

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3907
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3908
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 3909
    .restart local v11  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/16 v20, 0x0

    move/from16 v21, v20

    move/from16 v22, v0

    move/from16 v0, v21

    .local v0, "j":I
    .restart local v22  # "printedHeader":Z
    :goto_282
    move/from16 v21, v14

    .end local v14  # "needSep":Z
    .local v21, "needSep":Z
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v14

    if-ge v0, v14, :cond_2a3

    .line 3910
    const-string v14, "      #"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v14, ": "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3911
    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_29e
    .catchall {:try_start_23d .. :try_end_29e} :catchall_118

    .line 3909
    add-int/lit8 v0, v0, 0x1

    move/from16 v14, v21

    goto :goto_282

    :cond_2a3
    move/from16 v14, v21

    move/from16 v0, v22

    .line 3897
    .end local v11  # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v21  # "needSep":Z
    .end local v22  # "printedHeader":Z
    .local v0, "printedHeader":Z
    .restart local v14  # "needSep":Z
    :goto_2a7
    add-int/lit8 v13, v13, 0x1

    goto :goto_23d

    .line 3915
    .end local v0  # "printedHeader":Z
    .end local v13  # "i":I
    :cond_2aa
    :try_start_2aa
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_2b0
    .catchall {:try_start_2aa .. :try_end_2b0} :catchall_c27

    if-lez v0, :cond_311

    if-gez v8, :cond_311

    if-nez v12, :cond_311

    .line 3916
    const/4 v0, 0x0

    .line 3917
    .restart local v0  # "printedHeader":Z
    const/4 v11, 0x0

    move v13, v11

    .restart local v13  # "i":I
    :goto_2b9
    :try_start_2b9
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v13, v11, :cond_30d

    .line 3918
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 3919
    .local v11, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v2, :cond_2d8

    move/from16 v21, v14

    .end local v14  # "needSep":Z
    .restart local v21  # "needSep":Z
    iget v14, v11, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 3920
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-eq v1, v14, :cond_2da

    .line 3921
    move/from16 v14, v21

    goto :goto_30a

    .line 3919
    .end local v21  # "needSep":Z
    .restart local v14  # "needSep":Z
    :cond_2d8
    move/from16 v21, v14

    .line 3923
    .end local v14  # "needSep":Z
    .restart local v21  # "needSep":Z
    :cond_2da
    const/4 v14, 0x1

    .line 3924
    .end local v21  # "needSep":Z
    .restart local v14  # "needSep":Z
    if-nez v0, :cond_2e6

    .line 3925
    move/from16 v22, v0

    .end local v0  # "printedHeader":Z
    .restart local v22  # "printedHeader":Z
    const-string v0, "  All op mode watchers:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3926
    const/4 v0, 0x1

    .end local v22  # "printedHeader":Z
    .restart local v0  # "printedHeader":Z
    goto :goto_2e8

    .line 3924
    :cond_2e6
    move/from16 v22, v0

    .line 3928
    :goto_2e8
    move/from16 v21, v0

    .end local v0  # "printedHeader":Z
    .local v21, "printedHeader":Z
    const-string v0, "    "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3929
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3930
    const-string v0, ": "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_308
    .catchall {:try_start_2b9 .. :try_end_308} :catchall_118

    move/from16 v0, v21

    .line 3917
    .end local v11  # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v21  # "printedHeader":Z
    .restart local v0  # "printedHeader":Z
    :goto_30a
    add-int/lit8 v13, v13, 0x1

    goto :goto_2b9

    :cond_30d
    move/from16 v22, v0

    move/from16 v21, v14

    .line 3933
    .end local v0  # "printedHeader":Z
    .end local v13  # "i":I
    :cond_311
    :try_start_311
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_317
    .catchall {:try_start_311 .. :try_end_317} :catchall_c27

    if-lez v0, :cond_3d3

    if-gez v3, :cond_3d3

    .line 3934
    const/4 v14, 0x1

    .line 3935
    const/4 v0, 0x0

    .line 3936
    .restart local v0  # "printedHeader":Z
    const/16 v20, 0x0

    move/from16 v21, v20

    move/from16 v34, v21

    move/from16 v21, v0

    move/from16 v0, v34

    .local v0, "watcherNum":I
    .restart local v21  # "printedHeader":Z
    :goto_327
    :try_start_327
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v0, v11, :cond_3ce

    .line 3937
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3938
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 3939
    .local v11, "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v23

    if-gtz v23, :cond_340

    .line 3940
    move/from16 v24, v14

    goto :goto_361

    .line 3942
    :cond_340
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    move-object/from16 v13, v24

    .line 3943
    .local v13, "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    if-ltz v8, :cond_354

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v24

    if-gez v24, :cond_354

    .line 3944
    move/from16 v24, v14

    goto :goto_361

    .line 3946
    :cond_354
    if-eqz v2, :cond_364

    move/from16 v24, v14

    .end local v14  # "needSep":Z
    .local v24, "needSep":Z
    iget v14, v13, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 3947
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-eq v1, v14, :cond_366

    .line 3948
    nop

    .line 3936
    .end local v11  # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v13  # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v24  # "needSep":Z
    .restart local v14  # "needSep":Z
    :goto_361
    move-wide/from16 v26, v4

    .end local v14  # "needSep":Z
    .restart local v24  # "needSep":Z
    goto :goto_3c6

    .line 3946
    .end local v24  # "needSep":Z
    .restart local v11  # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .restart local v13  # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .restart local v14  # "needSep":Z
    :cond_364
    move/from16 v24, v14

    .line 3950
    .end local v14  # "needSep":Z
    .restart local v24  # "needSep":Z
    :cond_366
    if-nez v21, :cond_36f

    .line 3951
    const-string v14, "  All op active watchers:"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3952
    const/16 v21, 0x1

    .line 3954
    :cond_36f
    const-string v14, "    "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3955
    iget-object v14, v9, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3956
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    .line 3955
    invoke-static {v14}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3957
    const-string v14, " ->"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3958
    const-string v14, "        ["

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 3960
    .local v14, "opCount":I
    const/16 v25, 0x0

    move-wide/from16 v26, v4

    move/from16 v4, v25

    .local v4, "opNum":I
    .local v26, "now":J
    :goto_399
    if-ge v4, v14, :cond_3b9

    .line 3961
    if-lez v4, :cond_3a2

    .line 3962
    const/16 v5, 0x20

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3964
    :cond_3a2
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3965
    add-int/lit8 v5, v14, -0x1

    if-ge v4, v5, :cond_3b6

    .line 3966
    const/16 v5, 0x2c

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3960
    :cond_3b6
    add-int/lit8 v4, v4, 0x1

    goto :goto_399

    .line 3969
    .end local v4  # "opNum":I
    :cond_3b9
    const-string v4, "]"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3970
    const-string v4, "        "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3971
    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_3c6
    .catchall {:try_start_327 .. :try_end_3c6} :catchall_118

    .line 3936
    .end local v11  # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v13  # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v14  # "opCount":I
    :goto_3c6
    add-int/lit8 v0, v0, 0x1

    move/from16 v14, v24

    move-wide/from16 v4, v26

    goto/16 :goto_327

    .end local v24  # "needSep":Z
    .end local v26  # "now":J
    .local v4, "now":J
    .local v14, "needSep":Z
    :cond_3ce
    move-wide/from16 v26, v4

    move/from16 v24, v14

    .end local v4  # "now":J
    .end local v14  # "needSep":Z
    .restart local v24  # "needSep":Z
    .restart local v26  # "now":J
    goto :goto_3d5

    .line 3933
    .end local v0  # "watcherNum":I
    .end local v21  # "printedHeader":Z
    .end local v24  # "needSep":Z
    .end local v26  # "now":J
    .restart local v4  # "now":J
    .restart local v14  # "needSep":Z
    :cond_3d3
    move-wide/from16 v26, v4

    .line 3974
    .end local v4  # "now":J
    .restart local v26  # "now":J
    :goto_3d5
    :try_start_3d5
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_3db
    .catchall {:try_start_3d5 .. :try_end_3db} :catchall_c27

    if-lez v0, :cond_488

    if-gez v3, :cond_488

    .line 3975
    const/4 v14, 0x1

    .line 3976
    const/4 v0, 0x0

    .line 3977
    .local v0, "printedHeader":Z
    const/4 v4, 0x0

    move v5, v4

    .restart local v5  # "i":I
    :goto_3e3
    :try_start_3e3
    iget-object v4, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v5, v4, :cond_488

    .line 3978
    iget-object v4, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 3979
    .local v4, "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-gtz v11, :cond_3fb

    .line 3980
    goto/16 :goto_484

    .line 3982
    :cond_3fb
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/AppOpsService$NotedCallback;

    move-object v11, v13

    .line 3983
    .local v11, "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    if-ltz v8, :cond_40d

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v13

    if-gez v13, :cond_40d

    .line 3984
    goto/16 :goto_484

    .line 3986
    :cond_40d
    if-eqz v2, :cond_418

    iget v13, v11, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    .line 3987
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v1, v13, :cond_418

    .line 3988
    goto :goto_484

    .line 3990
    :cond_418
    if-nez v0, :cond_420

    .line 3991
    const-string v13, "  All op noted watchers:"

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3992
    const/4 v0, 0x1

    .line 3994
    :cond_420
    const-string v13, "    "

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3995
    iget-object v13, v9, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 3996
    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    .line 3995
    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3997
    const-string v13, " ->"

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3998
    const-string v13, "        ["

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3999
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 4000
    .local v13, "opCount":I
    const/4 v5, 0x0

    :goto_445
    if-ge v5, v13, :cond_471

    .line 4001
    if-lez v5, :cond_451

    .line 4002
    move/from16 v21, v0

    const/16 v0, 0x20

    .end local v0  # "printedHeader":Z
    .restart local v21  # "printedHeader":Z
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_455

    .line 4001
    .end local v21  # "printedHeader":Z
    .restart local v0  # "printedHeader":Z
    :cond_451
    move/from16 v21, v0

    const/16 v0, 0x20

    .line 4004
    .end local v0  # "printedHeader":Z
    .restart local v21  # "printedHeader":Z
    :goto_455
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4005
    add-int/lit8 v0, v13, -0x1

    if-ge v5, v0, :cond_46a

    .line 4006
    const/16 v0, 0x2c

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_46c

    .line 4005
    :cond_46a
    const/16 v0, 0x2c

    .line 4000
    :goto_46c
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v21

    goto :goto_445

    .line 4009
    .end local v21  # "printedHeader":Z
    .restart local v0  # "printedHeader":Z
    :cond_471
    move/from16 v21, v0

    const/16 v0, 0x2c

    .end local v0  # "printedHeader":Z
    .restart local v21  # "printedHeader":Z
    const-string v0, "]"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4010
    const-string v0, "        "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4011
    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_482
    .catchall {:try_start_3e3 .. :try_end_482} :catchall_118

    move/from16 v0, v21

    .line 3977
    .end local v4  # "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v11  # "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    .end local v13  # "opCount":I
    .end local v21  # "printedHeader":Z
    .restart local v0  # "printedHeader":Z
    :goto_484
    const/4 v4, 0x1

    add-int/2addr v5, v4

    goto/16 :goto_3e3

    .line 4014
    .end local v0  # "printedHeader":Z
    .end local v5  # "i":I
    :cond_488
    :try_start_488
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_48e
    .catchall {:try_start_488 .. :try_end_48e} :catchall_c27

    if-lez v0, :cond_56a

    if-gez v3, :cond_56a

    if-nez v15, :cond_56a

    if-nez v12, :cond_56a

    .line 4015
    const/4 v14, 0x1

    .line 4016
    const/4 v0, 0x0

    .line 4017
    .restart local v0  # "printedHeader":Z
    const/4 v4, 0x0

    move v5, v4

    .restart local v5  # "i":I
    :goto_49a
    :try_start_49a
    iget-object v4, v9, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v5, v4, :cond_558

    .line 4018
    const/4 v4, 0x0

    .line 4019
    .local v4, "printedClient":Z
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 4020
    .local v11, "cs":Lcom/android/server/appop/AppOpsService$ClientState;
    iget-object v13, v11, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_4b1
    .catchall {:try_start_49a .. :try_end_4b1} :catchall_55d

    if-lez v13, :cond_54c

    .line 4021
    const/4 v13, 0x0

    .line 4022
    .local v13, "printedStarted":Z
    const/16 v20, 0x0

    move/from16 v21, v20

    move/from16 v34, v21

    move/from16 v21, v0

    move/from16 v0, v34

    .local v0, "j":I
    .restart local v21  # "printedHeader":Z
    :goto_4be
    move/from16 v22, v1

    .end local v1  # "dumpUid":I
    .local v22, "dumpUid":I
    :try_start_4c0
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_547

    .line 4023
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Op;

    .line 4024
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-ltz v8, :cond_4d9

    move/from16 v23, v14

    .end local v14  # "needSep":Z
    .restart local v23  # "needSep":Z
    iget v14, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    if-eq v14, v8, :cond_4db

    .line 4025
    goto :goto_53f

    .line 4024
    .end local v23  # "needSep":Z
    .restart local v14  # "needSep":Z
    :cond_4d9
    move/from16 v23, v14

    .line 4027
    .end local v14  # "needSep":Z
    .restart local v23  # "needSep":Z
    :cond_4db
    if-eqz v2, :cond_4e6

    iget-object v14, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4e6

    .line 4028
    goto :goto_53f

    .line 4030
    :cond_4e6
    if-nez v21, :cond_4ef

    .line 4031
    const-string v14, "  Clients:"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4032
    const/16 v21, 0x1

    .line 4034
    :cond_4ef
    if-nez v4, :cond_50d

    .line 4035
    const-string v14, "    "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v14, v9, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4036
    const-string v14, "      "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4037
    const/4 v4, 0x1

    .line 4039
    :cond_50d
    if-nez v13, :cond_515

    .line 4040
    const-string v14, "      Started ops:"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4041
    const/4 v13, 0x1

    .line 4043
    :cond_515
    const-string v14, "        "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v14, "uid="

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 4044
    const-string v14, " pkg="

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4045
    const-string v14, " op="

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_53f
    .catchall {:try_start_4c0 .. :try_end_53f} :catchall_625

    .line 4022
    .end local v1  # "op":Lcom/android/server/appop/AppOpsService$Op;
    :goto_53f
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v22

    move/from16 v14, v23

    goto/16 :goto_4be

    .end local v23  # "needSep":Z
    .restart local v14  # "needSep":Z
    :cond_547
    move/from16 v23, v14

    .end local v14  # "needSep":Z
    .restart local v23  # "needSep":Z
    move/from16 v0, v21

    goto :goto_550

    .line 4020
    .end local v13  # "printedStarted":Z
    .end local v21  # "printedHeader":Z
    .end local v22  # "dumpUid":I
    .end local v23  # "needSep":Z
    .local v0, "printedHeader":Z
    .local v1, "dumpUid":I
    .restart local v14  # "needSep":Z
    :cond_54c
    move/from16 v22, v1

    move/from16 v23, v14

    .line 4017
    .end local v1  # "dumpUid":I
    .end local v4  # "printedClient":Z
    .end local v11  # "cs":Lcom/android/server/appop/AppOpsService$ClientState;
    .end local v14  # "needSep":Z
    .restart local v22  # "dumpUid":I
    .restart local v23  # "needSep":Z
    :goto_550
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v22

    move/from16 v14, v23

    goto/16 :goto_49a

    .end local v22  # "dumpUid":I
    .end local v23  # "needSep":Z
    .restart local v1  # "dumpUid":I
    .restart local v14  # "needSep":Z
    :cond_558
    move/from16 v22, v1

    move/from16 v23, v14

    .end local v1  # "dumpUid":I
    .end local v14  # "needSep":Z
    .restart local v22  # "dumpUid":I
    .restart local v23  # "needSep":Z
    goto :goto_56c

    .line 4317
    .end local v0  # "printedHeader":Z
    .end local v5  # "i":I
    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7  # "date":Ljava/util/Date;
    .end local v16  # "nowUptime":J
    .end local v18  # "nowElapsed":J
    .end local v22  # "dumpUid":I
    .end local v23  # "needSep":Z
    .end local v26  # "now":J
    .restart local v1  # "dumpUid":I
    :catchall_55d
    move-exception v0

    move/from16 v22, v1

    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v28, v15

    move v12, v8

    .end local v1  # "dumpUid":I
    .restart local v22  # "dumpUid":I
    goto/16 :goto_c32

    .line 4014
    .end local v22  # "dumpUid":I
    .restart local v1  # "dumpUid":I
    .restart local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7  # "date":Ljava/util/Date;
    .restart local v14  # "needSep":Z
    .restart local v16  # "nowUptime":J
    .restart local v18  # "nowElapsed":J
    .restart local v26  # "now":J
    :cond_56a
    move/from16 v22, v1

    .line 4050
    .end local v1  # "dumpUid":I
    .restart local v22  # "dumpUid":I
    :goto_56c
    :try_start_56c
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_572
    .catchall {:try_start_56c .. :try_end_572} :catchall_c1d

    if-lez v0, :cond_61f

    if-gez v8, :cond_61f

    if-eqz v2, :cond_61f

    if-gez v3, :cond_61f

    if-nez v15, :cond_61f

    if-nez v15, :cond_61f

    .line 4052
    const/4 v0, 0x0

    .line 4053
    .restart local v0  # "printedHeader":Z
    const/4 v1, 0x0

    move v4, v1

    .local v4, "o":I
    :goto_581
    :try_start_581
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_61f

    .line 4054
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    .line 4055
    .local v1, "op":Ljava/lang/String;
    iget-object v5, v9, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 4056
    .local v5, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    const/4 v11, 0x0

    move v13, v11

    .local v13, "i":I
    :goto_59d
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v13, v11, :cond_617

    .line 4057
    if-nez v0, :cond_5ad

    .line 4058
    const-string v11, "  Audio Restrictions:"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4059
    const/4 v0, 0x1

    .line 4060
    const/4 v11, 0x1

    move v14, v11

    .line 4062
    :cond_5ad
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 4063
    .local v11, "usage":I
    move/from16 v21, v0

    .end local v0  # "printedHeader":Z
    .restart local v21  # "printedHeader":Z
    const-string v0, "    "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4064
    const-string v0, " usage="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4065
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Restriction;

    .line 4066
    .local v0, "r":Lcom/android/server/appop/AppOpsService$Restriction;
    move-object/from16 v23, v1

    .end local v1  # "op":Ljava/lang/String;
    .local v23, "op":Ljava/lang/String;
    const-string v1, ": mode="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/server/appop/AppOpsService$Restriction;->mode:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4067
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_60c

    .line 4068
    const-string v1, "      Exceptions:"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4069
    const/4 v1, 0x0

    move/from16 v24, v1

    .local v1, "j":I
    :goto_5ed
    move-object/from16 v24, v5

    .end local v5  # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    .local v24, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_60e

    .line 4070
    const-string v5, "        "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4069
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v24

    goto :goto_5ed

    .line 4067
    .end local v1  # "j":I
    .end local v24  # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    .restart local v5  # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    :cond_60c
    move-object/from16 v24, v5

    .line 4056
    .end local v0  # "r":Lcom/android/server/appop/AppOpsService$Restriction;
    .end local v5  # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    .end local v11  # "usage":I
    .restart local v24  # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    :cond_60e
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v5, v24

    goto :goto_59d

    .end local v21  # "printedHeader":Z
    .end local v23  # "op":Ljava/lang/String;
    .end local v24  # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    .local v0, "printedHeader":Z
    .local v1, "op":Ljava/lang/String;
    .restart local v5  # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    :cond_617
    move-object/from16 v23, v1

    move-object/from16 v24, v5

    .line 4053
    .end local v1  # "op":Ljava/lang/String;
    .end local v5  # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    .end local v13  # "i":I
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_581

    .line 4076
    .end local v0  # "printedHeader":Z
    .end local v4  # "o":I
    :cond_61f
    if-eqz v14, :cond_630

    .line 4077
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_624
    .catchall {:try_start_581 .. :try_end_624} :catchall_625

    goto :goto_630

    .line 4317
    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7  # "date":Ljava/util/Date;
    .end local v14  # "needSep":Z
    .end local v16  # "nowUptime":J
    .end local v18  # "nowElapsed":J
    .end local v26  # "now":J
    :catchall_625
    move-exception v0

    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v28, v15

    move v12, v8

    goto/16 :goto_c32

    .line 4079
    .restart local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7  # "date":Ljava/util/Date;
    .restart local v14  # "needSep":Z
    .restart local v16  # "nowUptime":J
    .restart local v18  # "nowElapsed":J
    .restart local v26  # "now":J
    :cond_630
    :goto_630
    const/4 v1, 0x0

    move v0, v1

    .local v0, "i":I
    :goto_632
    :try_start_632
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_a2a

    .line 4080
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    move-object v11, v1

    .line 4081
    .local v11, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object v13, v1

    .line 4082
    .local v13, "opModes":Landroid/util/SparseIntArray;
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_648
    .catchall {:try_start_632 .. :try_end_648} :catchall_c1d

    move-object v4, v1

    .line 4084
    .local v4, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-nez v15, :cond_a04

    if-eqz v12, :cond_65f

    .line 4085
    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v29, v14

    move/from16 v28, v15

    move-wide/from16 v4, v26

    move v12, v8

    move-wide/from16 v26, v18

    const/16 v18, 0x0

    goto/16 :goto_a18

    .line 4087
    :cond_65f
    if-gez v8, :cond_66e

    if-nez v2, :cond_66e

    if-ltz v3, :cond_666

    goto :goto_66e

    :cond_666
    move/from16 v25, v12

    move/from16 v29, v14

    move/from16 v28, v15

    goto/16 :goto_75c

    .line 4088
    :cond_66e
    :goto_66e
    if-ltz v8, :cond_67f

    :try_start_670
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_67d

    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 4089
    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_67d

    goto :goto_67f

    :cond_67d
    const/4 v1, 0x0

    goto :goto_680

    :cond_67f
    :goto_67f
    const/4 v1, 0x1

    .line 4090
    .local v1, "hasOp":Z
    :goto_680
    if-nez v2, :cond_684

    const/4 v5, 0x1

    goto :goto_685

    :cond_684
    const/4 v5, 0x0

    .line 4091
    .local v5, "hasPackage":Z
    :goto_685
    if-gez v3, :cond_68a

    const/16 v21, 0x1

    goto :goto_68c

    :cond_68a
    const/16 v21, 0x0

    .line 4092
    .local v21, "hasMode":Z
    :goto_68c
    if-nez v21, :cond_6b2

    if-eqz v13, :cond_6b2

    .line 4093
    const/16 v23, 0x0

    move/from16 v34, v23

    move/from16 v23, v1

    move/from16 v1, v34

    .local v1, "opi":I
    .local v23, "hasOp":Z
    :goto_698
    if-nez v21, :cond_6af

    move/from16 v24, v5

    .end local v5  # "hasPackage":Z
    .local v24, "hasPackage":Z
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_6b6

    .line 4094
    invoke-virtual {v13, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5
    :try_end_6a6
    .catchall {:try_start_670 .. :try_end_6a6} :catchall_625

    if-ne v5, v3, :cond_6aa

    .line 4095
    const/16 v21, 0x1

    .line 4093
    :cond_6aa
    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v24

    goto :goto_698

    .end local v24  # "hasPackage":Z
    .restart local v5  # "hasPackage":Z
    :cond_6af
    move/from16 v24, v5

    .end local v5  # "hasPackage":Z
    .restart local v24  # "hasPackage":Z
    goto :goto_6b6

    .line 4092
    .end local v23  # "hasOp":Z
    .end local v24  # "hasPackage":Z
    .local v1, "hasOp":Z
    .restart local v5  # "hasPackage":Z
    :cond_6b2
    move/from16 v23, v1

    move/from16 v24, v5

    .line 4099
    .end local v1  # "hasOp":Z
    .end local v5  # "hasPackage":Z
    .restart local v23  # "hasOp":Z
    .restart local v24  # "hasPackage":Z
    :cond_6b6
    :goto_6b6
    if-eqz v4, :cond_733

    .line 4100
    const/4 v1, 0x0

    move/from16 v25, v12

    move/from16 v5, v24

    move v12, v1

    move/from16 v1, v23

    .line 4101
    .end local v23  # "hasOp":Z
    .end local v24  # "hasPackage":Z
    .restart local v1  # "hasOp":Z
    .restart local v5  # "hasPackage":Z
    .local v12, "pkgi":I
    .local v25, "dumpHistory":Z
    :goto_6c0
    if-eqz v1, :cond_6cc

    if-eqz v5, :cond_6cc

    if-nez v21, :cond_6c7

    goto :goto_6cc

    :cond_6c7
    move/from16 v29, v14

    move/from16 v28, v15

    goto :goto_729

    :cond_6cc
    :goto_6cc
    move/from16 v28, v15

    .end local v15  # "dumpWatchers":Z
    .local v28, "dumpWatchers":Z
    :try_start_6ce
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v12, v15, :cond_727

    .line 4103
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/AppOpsService$Ops;

    .line 4104
    .local v15, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v1, :cond_6e5

    if-eqz v15, :cond_6e5

    invoke-virtual {v15, v8}, Lcom/android/server/appop/AppOpsService$Ops;->indexOfKey(I)I

    move-result v23

    if-ltz v23, :cond_6e5

    .line 4105
    const/4 v1, 0x1

    .line 4107
    :cond_6e5
    if-nez v21, :cond_70f

    .line 4108
    const/16 v23, 0x0

    move/from16 v34, v23

    move/from16 v23, v1

    move/from16 v1, v34

    .local v1, "opi":I
    .restart local v23  # "hasOp":Z
    :goto_6ef
    if-nez v21, :cond_70c

    move/from16 v29, v14

    .end local v14  # "needSep":Z
    .local v29, "needSep":Z
    invoke-virtual {v15}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v14

    if-ge v1, v14, :cond_713

    .line 4109
    invoke-virtual {v15, v1}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appop/AppOpsService$Op;

    invoke-static {v14}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v14

    if-ne v14, v3, :cond_707

    .line 4110
    const/16 v21, 0x1

    .line 4108
    :cond_707
    add-int/lit8 v1, v1, 0x1

    move/from16 v14, v29

    goto :goto_6ef

    .end local v29  # "needSep":Z
    .restart local v14  # "needSep":Z
    :cond_70c
    move/from16 v29, v14

    .end local v14  # "needSep":Z
    .restart local v29  # "needSep":Z
    goto :goto_713

    .line 4107
    .end local v23  # "hasOp":Z
    .end local v29  # "needSep":Z
    .local v1, "hasOp":Z
    .restart local v14  # "needSep":Z
    :cond_70f
    move/from16 v23, v1

    move/from16 v29, v14

    .line 4114
    .end local v1  # "hasOp":Z
    .end local v14  # "needSep":Z
    .restart local v23  # "hasOp":Z
    .restart local v29  # "needSep":Z
    :cond_713
    :goto_713
    if-nez v5, :cond_71e

    iget-object v1, v15, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_71b
    .catchall {:try_start_6ce .. :try_end_71b} :catchall_72c

    if-eqz v1, :cond_71e

    .line 4115
    const/4 v5, 0x1

    .line 4102
    .end local v15  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_71e
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v23

    move/from16 v15, v28

    move/from16 v14, v29

    goto :goto_6c0

    .line 4101
    .end local v23  # "hasOp":Z
    .end local v29  # "needSep":Z
    .restart local v1  # "hasOp":Z
    .restart local v14  # "needSep":Z
    :cond_727
    move/from16 v29, v14

    .line 4119
    .end local v12  # "pkgi":I
    .end local v14  # "needSep":Z
    .restart local v29  # "needSep":Z
    :goto_729
    move/from16 v24, v5

    goto :goto_73b

    .line 4317
    .end local v0  # "i":I
    .end local v1  # "hasOp":Z
    .end local v4  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v5  # "hasPackage":Z
    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7  # "date":Ljava/util/Date;
    .end local v11  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v13  # "opModes":Landroid/util/SparseIntArray;
    .end local v16  # "nowUptime":J
    .end local v18  # "nowElapsed":J
    .end local v21  # "hasMode":Z
    .end local v26  # "now":J
    .end local v29  # "needSep":Z
    :catchall_72c
    move-exception v0

    move-object v11, v2

    move/from16 v32, v3

    move v12, v8

    goto/16 :goto_c32

    .line 4099
    .end local v25  # "dumpHistory":Z
    .end local v28  # "dumpWatchers":Z
    .restart local v0  # "i":I
    .restart local v4  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7  # "date":Ljava/util/Date;
    .restart local v11  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v12, "dumpHistory":Z
    .restart local v13  # "opModes":Landroid/util/SparseIntArray;
    .restart local v14  # "needSep":Z
    .local v15, "dumpWatchers":Z
    .restart local v16  # "nowUptime":J
    .restart local v18  # "nowElapsed":J
    .restart local v21  # "hasMode":Z
    .restart local v23  # "hasOp":Z
    .restart local v24  # "hasPackage":Z
    .restart local v26  # "now":J
    :cond_733
    move/from16 v25, v12

    move/from16 v29, v14

    move/from16 v28, v15

    .end local v12  # "dumpHistory":Z
    .end local v14  # "needSep":Z
    .end local v15  # "dumpWatchers":Z
    .restart local v25  # "dumpHistory":Z
    .restart local v28  # "dumpWatchers":Z
    .restart local v29  # "needSep":Z
    move/from16 v1, v23

    .line 4119
    .end local v23  # "hasOp":Z
    .restart local v1  # "hasOp":Z
    :goto_73b
    :try_start_73b
    iget-object v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_73d
    .catchall {:try_start_73b .. :try_end_73d} :catchall_9ee

    if-eqz v5, :cond_74a

    if-nez v1, :cond_74a

    .line 4120
    :try_start_741
    iget-object v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5
    :try_end_747
    .catchall {:try_start_741 .. :try_end_747} :catchall_72c

    if-lez v5, :cond_74a

    .line 4121
    const/4 v1, 0x1

    .line 4124
    :cond_74a
    if-eqz v1, :cond_9f5

    if-eqz v24, :cond_9f5

    if-nez v21, :cond_75c

    .line 4125
    move-object v11, v2

    move/from16 v32, v3

    move v12, v8

    move-wide/from16 v4, v26

    move-wide/from16 v26, v18

    const/16 v18, 0x0

    goto/16 :goto_a18

    .line 4129
    .end local v1  # "hasOp":Z
    .end local v21  # "hasMode":Z
    .end local v24  # "hasPackage":Z
    :cond_75c
    :goto_75c
    :try_start_75c
    const-string v1, "  Uid "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v10, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v1, ":"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4130
    const-string v1, "    state="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4131
    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4132
    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v5, v11, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I
    :try_end_77d
    .catchall {:try_start_75c .. :try_end_77d} :catchall_9ee

    if-eq v1, v5, :cond_78d

    .line 4133
    :try_start_77f
    const-string v1, "    pendingState="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4134
    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_78d
    .catchall {:try_start_77f .. :try_end_78d} :catchall_72c

    .line 4136
    :cond_78d
    :try_start_78d
    iget-wide v14, v11, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J
    :try_end_78f
    .catchall {:try_start_78d .. :try_end_78f} :catchall_9ee

    const-wide/16 v23, 0x0

    cmp-long v1, v14, v23

    if-eqz v1, :cond_7a6

    .line 4137
    :try_start_795
    const-string v1, "    pendingStateCommitTime="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4138
    iget-wide v14, v11, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    move-object v12, v6

    move-wide/from16 v5, v18

    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v18  # "nowElapsed":J
    .local v5, "nowElapsed":J
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {v14, v15, v5, v6, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4139
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_7a5
    .catchall {:try_start_795 .. :try_end_7a5} :catchall_72c

    goto :goto_7a9

    .line 4136
    .end local v5  # "nowElapsed":J
    .end local v12  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v18  # "nowElapsed":J
    :cond_7a6
    move-object v12, v6

    move-wide/from16 v5, v18

    .line 4141
    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v18  # "nowElapsed":J
    .restart local v5  # "nowElapsed":J
    .restart local v12  # "sdf":Ljava/text/SimpleDateFormat;
    :goto_7a9
    :try_start_7a9
    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I
    :try_end_7ab
    .catchall {:try_start_7a9 .. :try_end_7ab} :catchall_9ee

    if-eqz v1, :cond_7b7

    .line 4142
    :try_start_7ad
    const-string v1, "    startNesting="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4143
    iget v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(I)V
    :try_end_7b7
    .catchall {:try_start_7ad .. :try_end_7b7} :catchall_72c

    .line 4145
    :cond_7b7
    :try_start_7b7
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_7b9
    .catchall {:try_start_7b7 .. :try_end_7b9} :catchall_9ee

    if-eqz v1, :cond_80e

    if-ltz v3, :cond_7c0

    const/4 v1, 0x4

    if-ne v3, v1, :cond_80e

    .line 4147
    :cond_7c0
    :try_start_7c0
    const-string v1, "    foregroundOps:"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4148
    const/4 v1, 0x0

    move v14, v1

    .local v14, "j":I
    :goto_7c7
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v14, v1, :cond_804

    .line 4149
    if-ltz v8, :cond_7da

    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-eq v8, v1, :cond_7da

    .line 4150
    goto :goto_801

    .line 4152
    :cond_7da
    const-string v1, "      "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4153
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4154
    const-string v1, ": "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4155
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_7fc

    const-string v1, "WATCHER"

    goto :goto_7fe

    :cond_7fc
    const-string v1, "SILENT"

    :goto_7fe
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4148
    :goto_801
    add-int/lit8 v14, v14, 0x1

    goto :goto_7c7

    .line 4157
    .end local v14  # "j":I
    :cond_804
    const-string v1, "    hasForegroundWatchers="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4158
    iget-boolean v1, v11, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4160
    :cond_80e
    const/4 v14, 0x1

    .line 4162
    .end local v29  # "needSep":Z
    .local v14, "needSep":Z
    if-eqz v13, :cond_864

    .line 4163
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 4164
    .local v1, "opModeCount":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_816
    if-ge v15, v1, :cond_85f

    .line 4165
    invoke-virtual {v13, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v18

    move/from16 v19, v18

    .line 4166
    .local v19, "code":I
    invoke-virtual {v13, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    move/from16 v21, v18

    .line 4167
    .local v21, "mode":I
    if-ltz v8, :cond_82f

    move/from16 v18, v1

    move/from16 v1, v19

    .end local v19  # "code":I
    .local v1, "code":I
    .local v18, "opModeCount":I
    if-eq v8, v1, :cond_833

    .line 4168
    move-wide/from16 v23, v5

    goto :goto_858

    .line 4167
    .end local v18  # "opModeCount":I
    .local v1, "opModeCount":I
    .restart local v19  # "code":I
    :cond_82f
    move/from16 v18, v1

    move/from16 v1, v19

    .line 4170
    .end local v19  # "code":I
    .local v1, "code":I
    .restart local v18  # "opModeCount":I
    :cond_833
    if-ltz v3, :cond_83c

    move-wide/from16 v23, v5

    move/from16 v5, v21

    .end local v21  # "mode":I
    .local v5, "mode":I
    .local v23, "nowElapsed":J
    if-eq v3, v5, :cond_840

    .line 4171
    goto :goto_858

    .line 4170
    .end local v23  # "nowElapsed":J
    .local v5, "nowElapsed":J
    .restart local v21  # "mode":I
    :cond_83c
    move-wide/from16 v23, v5

    move/from16 v5, v21

    .line 4173
    .end local v21  # "mode":I
    .local v5, "mode":I
    .restart local v23  # "nowElapsed":J
    :cond_840
    const-string v6, "      "

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4174
    const-string v6, ": mode="

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_858
    .catchall {:try_start_7c0 .. :try_end_858} :catchall_72c

    .line 4164
    .end local v1  # "code":I
    .end local v5  # "mode":I
    :goto_858
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v18

    move-wide/from16 v5, v23

    goto :goto_816

    .end local v18  # "opModeCount":I
    .end local v23  # "nowElapsed":J
    .local v1, "opModeCount":I
    .local v5, "nowElapsed":J
    :cond_85f
    move/from16 v18, v1

    move-wide/from16 v23, v5

    .end local v1  # "opModeCount":I
    .end local v5  # "nowElapsed":J
    .restart local v18  # "opModeCount":I
    .restart local v23  # "nowElapsed":J
    goto :goto_866

    .line 4162
    .end local v15  # "j":I
    .end local v18  # "opModeCount":I
    .end local v23  # "nowElapsed":J
    .restart local v5  # "nowElapsed":J
    :cond_864
    move-wide/from16 v23, v5

    .line 4178
    .end local v5  # "nowElapsed":J
    .restart local v23  # "nowElapsed":J
    :goto_866
    if-nez v4, :cond_875

    .line 4179
    move-object v11, v2

    move/from16 v32, v3

    move-object v6, v12

    move-wide/from16 v4, v26

    const/16 v18, 0x0

    move v12, v8

    move-wide/from16 v26, v23

    goto/16 :goto_a1a

    .line 4182
    :cond_875
    const/4 v1, 0x0

    move v5, v1

    move v15, v5

    .local v15, "pkgi":I
    :goto_878
    :try_start_878
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v15, v1, :cond_9de

    .line 4183
    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;
    :try_end_884
    .catchall {:try_start_878 .. :try_end_884} :catchall_9ee

    move-object v5, v1

    .line 4184
    .local v5, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v2, :cond_8a0

    :try_start_887
    iget-object v1, v5, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_88d
    .catchall {:try_start_887 .. :try_end_88d} :catchall_72c

    if-nez v1, :cond_8a0

    .line 4185
    move/from16 v32, v3

    move-object/from16 v20, v4

    move-object/from16 v31, v11

    move-object v6, v12

    move-wide/from16 v4, v26

    const/16 v18, 0x0

    move-object v11, v2

    move v12, v8

    move-wide/from16 v26, v23

    goto/16 :goto_9c5

    .line 4187
    :cond_8a0
    const/4 v1, 0x0

    .line 4188
    .local v1, "printedPackage":Z
    const/16 v18, 0x0

    move/from16 v6, v18

    .local v6, "j":I
    :goto_8a5
    move-object/from16 v19, v2

    .end local v2  # "dumpPackage":Ljava/lang/String;
    .local v19, "dumpPackage":Ljava/lang/String;
    :try_start_8a7
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v2

    if-ge v6, v2, :cond_9b3

    .line 4189
    invoke-virtual {v5, v6}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Op;

    .line 4190
    .local v2, "op":Lcom/android/server/appop/AppOpsService$Op;
    move-object/from16 v20, v4

    .end local v4  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v20, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I
    :try_end_8b7
    .catchall {:try_start_8a7 .. :try_end_8b7} :catchall_9d6

    .line 4191
    .local v4, "opCode":I
    if-ltz v8, :cond_8be

    if-eq v8, v4, :cond_8be

    .line 4192
    move/from16 v21, v6

    goto :goto_8c9

    .line 4194
    :cond_8be
    if-ltz v3, :cond_8e5

    move/from16 v21, v6

    .end local v6  # "j":I
    .local v21, "j":I
    :try_start_8c2
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v6

    if-eq v3, v6, :cond_8e7

    .line 4195
    nop

    .line 4188
    .end local v2  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v4  # "opCode":I
    .end local v21  # "j":I
    .restart local v6  # "j":I
    :goto_8c9
    move/from16 v32, v3

    move-object/from16 v31, v11

    move-object v6, v12

    move-object/from16 v11, v19

    move v12, v8

    move/from16 v34, v21

    move-object/from16 v21, v5

    move-wide/from16 v4, v26

    move-wide/from16 v26, v23

    move/from16 v23, v34

    .end local v6  # "j":I
    .restart local v21  # "j":I
    goto/16 :goto_99f

    .line 4317
    .end local v0  # "i":I
    .end local v1  # "printedPackage":Z
    .end local v5  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v7  # "date":Ljava/util/Date;
    .end local v11  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v12  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v13  # "opModes":Landroid/util/SparseIntArray;
    .end local v14  # "needSep":Z
    .end local v15  # "pkgi":I
    .end local v16  # "nowUptime":J
    .end local v20  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v21  # "j":I
    .end local v23  # "nowElapsed":J
    .end local v26  # "now":J
    :catchall_8dd
    move-exception v0

    move/from16 v32, v3

    move v12, v8

    move-object/from16 v11, v19

    goto/16 :goto_c32

    .line 4194
    .restart local v0  # "i":I
    .restart local v1  # "printedPackage":Z
    .restart local v2  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v4  # "opCode":I
    .restart local v5  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v6  # "j":I
    .restart local v7  # "date":Ljava/util/Date;
    .restart local v11  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v12  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v13  # "opModes":Landroid/util/SparseIntArray;
    .restart local v14  # "needSep":Z
    .restart local v15  # "pkgi":I
    .restart local v16  # "nowUptime":J
    .restart local v20  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v23  # "nowElapsed":J
    .restart local v26  # "now":J
    :cond_8e5
    move/from16 v21, v6

    .line 4197
    .end local v6  # "j":I
    .restart local v21  # "j":I
    :cond_8e7
    if-nez v1, :cond_8fc

    .line 4198
    const-string v6, "    Package "

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8f8
    .catchall {:try_start_8c2 .. :try_end_8f8} :catchall_8dd

    .line 4199
    const/4 v1, 0x1

    move/from16 v29, v1

    goto :goto_8fe

    .line 4197
    :cond_8fc
    move/from16 v29, v1

    .line 4201
    .end local v1  # "printedPackage":Z
    .local v29, "printedPackage":Z
    :goto_8fe
    :try_start_8fe
    const-string v1, "      "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4202
    const-string v1, " ("

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4203
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1
    :try_end_91e
    .catchall {:try_start_8fe .. :try_end_91e} :catchall_9d6

    move v6, v1

    .line 4204
    .local v6, "switchOp":I
    if-eq v6, v4, :cond_94d

    .line 4205
    :try_start_921
    const-string v1, " / switch "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4206
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4207
    invoke-virtual {v5, v6}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Op;

    .line 4208
    .local v1, "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v1, :cond_93a

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v30

    goto :goto_93e

    .line 4209
    :cond_93a
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v30

    :goto_93e
    nop

    .line 4210
    .local v30, "mode":I
    move-object/from16 v31, v1

    .end local v1  # "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    .local v31, "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    const-string v1, "="

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_94d
    .catchall {:try_start_921 .. :try_end_94d} :catchall_8dd

    .line 4212
    .end local v30  # "mode":I
    .end local v31  # "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    :cond_94d
    :try_start_94d
    const-string v1, "): "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4213
    const-string v30, "          "
    :try_end_954
    .catchall {:try_start_94d .. :try_end_954} :catchall_9d6

    move-object/from16 v1, p0

    move-object/from16 v31, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v2

    .end local v2  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v11, "dumpPackage":Ljava/lang/String;
    .local v19, "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v31, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move-object/from16 v2, p2

    move/from16 v32, v3

    .end local v3  # "dumpMode":I
    .local v32, "dumpMode":I
    move-object/from16 v3, v19

    move-object/from16 v33, v12

    move v12, v8

    .end local v8  # "dumpOp":I
    .local v12, "dumpOp":I
    .local v33, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v8, v30

    move/from16 v30, v6

    move-object/from16 v6, v33

    move-wide/from16 v34, v23

    move/from16 v24, v4

    move/from16 v23, v21

    move-object/from16 v21, v5

    move-wide/from16 v4, v26

    move-wide/from16 v26, v34

    .end local v5  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v33  # "sdf":Ljava/text/SimpleDateFormat;
    .local v4, "now":J
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    .local v21, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v23, "j":I
    .local v24, "opCode":I
    .local v26, "nowElapsed":J
    .local v30, "switchOp":I
    :try_start_977
    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;Lcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    .line 4214
    move-object/from16 v1, v19

    .end local v19  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-boolean v2, v1, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    if-eqz v2, :cond_98f

    .line 4215
    const-string v2, "          Running start at: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4216
    iget-wide v2, v1, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    sub-long v2, v26, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4217
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4219
    :cond_98f
    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-eqz v2, :cond_99d

    .line 4220
    const-string v2, "          startNesting="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4221
    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4188
    .end local v1  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v24  # "opCode":I
    .end local v30  # "switchOp":I
    :cond_99d
    move/from16 v1, v29

    .end local v29  # "printedPackage":Z
    .local v1, "printedPackage":Z
    :goto_99f
    add-int/lit8 v2, v23, 0x1

    move v8, v12

    move-wide/from16 v23, v26

    move/from16 v3, v32

    move-wide/from16 v26, v4

    move-object v12, v6

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move v6, v2

    move-object v2, v11

    move-object/from16 v11, v31

    .end local v23  # "j":I
    .local v2, "j":I
    goto/16 :goto_8a5

    .end local v2  # "j":I
    .end local v20  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v21  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v31  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v32  # "dumpMode":I
    .restart local v3  # "dumpMode":I
    .local v4, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v5  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v6, "j":I
    .restart local v8  # "dumpOp":I
    .local v11, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    .local v19, "dumpPackage":Ljava/lang/String;
    .local v23, "nowElapsed":J
    .local v26, "now":J
    :cond_9b3
    move/from16 v32, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v31, v11

    move-object/from16 v11, v19

    move-wide/from16 v4, v26

    move-wide/from16 v26, v23

    move/from16 v23, v6

    move-object v6, v12

    move v12, v8

    .line 4182
    .end local v1  # "printedPackage":Z
    .end local v3  # "dumpMode":I
    .end local v5  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v8  # "dumpOp":I
    .end local v19  # "dumpPackage":Ljava/lang/String;
    .end local v23  # "nowElapsed":J
    .local v4, "now":J
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    .local v11, "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .restart local v20  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v26, "nowElapsed":J
    .restart local v31  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v32  # "dumpMode":I
    :goto_9c5
    add-int/lit8 v15, v15, 0x1

    move-object v2, v11

    move v8, v12

    move-wide/from16 v23, v26

    move-object/from16 v11, v31

    move/from16 v3, v32

    move-wide/from16 v26, v4

    move-object v12, v6

    move-object/from16 v4, v20

    goto/16 :goto_878

    .line 4317
    .end local v0  # "i":I
    .end local v4  # "now":J
    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7  # "date":Ljava/util/Date;
    .end local v11  # "dumpPackage":Ljava/lang/String;
    .end local v12  # "dumpOp":I
    .end local v13  # "opModes":Landroid/util/SparseIntArray;
    .end local v14  # "needSep":Z
    .end local v15  # "pkgi":I
    .end local v16  # "nowUptime":J
    .end local v20  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v26  # "nowElapsed":J
    .end local v31  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v32  # "dumpMode":I
    .restart local v3  # "dumpMode":I
    .restart local v8  # "dumpOp":I
    .restart local v19  # "dumpPackage":Ljava/lang/String;
    :catchall_9d6
    move-exception v0

    move/from16 v32, v3

    move v12, v8

    move-object/from16 v11, v19

    .end local v3  # "dumpMode":I
    .end local v8  # "dumpOp":I
    .end local v19  # "dumpPackage":Ljava/lang/String;
    .restart local v11  # "dumpPackage":Ljava/lang/String;
    .restart local v12  # "dumpOp":I
    .restart local v32  # "dumpMode":I
    goto/16 :goto_c32

    .line 4182
    .end local v32  # "dumpMode":I
    .restart local v0  # "i":I
    .local v2, "dumpPackage":Ljava/lang/String;
    .restart local v3  # "dumpMode":I
    .local v4, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v7  # "date":Ljava/util/Date;
    .restart local v8  # "dumpOp":I
    .local v11, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    .restart local v13  # "opModes":Landroid/util/SparseIntArray;
    .restart local v14  # "needSep":Z
    .restart local v15  # "pkgi":I
    .restart local v16  # "nowUptime":J
    .restart local v23  # "nowElapsed":J
    .local v26, "now":J
    :cond_9de
    move/from16 v32, v3

    move-object/from16 v20, v4

    move-object/from16 v31, v11

    move-object v6, v12

    move-wide/from16 v4, v26

    const/16 v18, 0x0

    move-object v11, v2

    move v12, v8

    move-wide/from16 v26, v23

    .end local v2  # "dumpPackage":Ljava/lang/String;
    .end local v3  # "dumpMode":I
    .end local v8  # "dumpOp":I
    .end local v23  # "nowElapsed":J
    .local v4, "now":J
    .restart local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .local v11, "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .restart local v20  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v26, "nowElapsed":J
    .restart local v31  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v32  # "dumpMode":I
    goto :goto_a1a

    .line 4317
    .end local v0  # "i":I
    .end local v4  # "now":J
    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7  # "date":Ljava/util/Date;
    .end local v11  # "dumpPackage":Ljava/lang/String;
    .end local v12  # "dumpOp":I
    .end local v13  # "opModes":Landroid/util/SparseIntArray;
    .end local v14  # "needSep":Z
    .end local v15  # "pkgi":I
    .end local v16  # "nowUptime":J
    .end local v20  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v26  # "nowElapsed":J
    .end local v31  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v32  # "dumpMode":I
    .restart local v2  # "dumpPackage":Ljava/lang/String;
    .restart local v3  # "dumpMode":I
    .restart local v8  # "dumpOp":I
    :catchall_9ee
    move-exception v0

    move-object v11, v2

    move/from16 v32, v3

    move v12, v8

    .end local v2  # "dumpPackage":Ljava/lang/String;
    .end local v3  # "dumpMode":I
    .end local v8  # "dumpOp":I
    .restart local v11  # "dumpPackage":Ljava/lang/String;
    .restart local v12  # "dumpOp":I
    .restart local v32  # "dumpMode":I
    goto/16 :goto_c32

    .line 4124
    .end local v12  # "dumpOp":I
    .end local v32  # "dumpMode":I
    .restart local v0  # "i":I
    .local v1, "hasOp":Z
    .restart local v2  # "dumpPackage":Ljava/lang/String;
    .restart local v3  # "dumpMode":I
    .local v4, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7  # "date":Ljava/util/Date;
    .restart local v8  # "dumpOp":I
    .local v11, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v13  # "opModes":Landroid/util/SparseIntArray;
    .restart local v16  # "nowUptime":J
    .local v18, "nowElapsed":J
    .local v21, "hasMode":Z
    .local v24, "hasPackage":Z
    .local v26, "now":J
    .local v29, "needSep":Z
    :cond_9f5
    move/from16 v32, v3

    move-object/from16 v20, v4

    move v12, v8

    move-object/from16 v31, v11

    move-wide/from16 v4, v26

    move-object v11, v2

    move-wide/from16 v26, v18

    const/16 v18, 0x0

    .end local v2  # "dumpPackage":Ljava/lang/String;
    .end local v3  # "dumpMode":I
    .end local v8  # "dumpOp":I
    .end local v18  # "nowElapsed":J
    .local v4, "now":J
    .local v11, "dumpPackage":Ljava/lang/String;
    .restart local v12  # "dumpOp":I
    .restart local v20  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v26, "nowElapsed":J
    .restart local v31  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v32  # "dumpMode":I
    goto :goto_a18

    .line 4084
    .end local v1  # "hasOp":Z
    .end local v20  # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v21  # "hasMode":Z
    .end local v24  # "hasPackage":Z
    .end local v25  # "dumpHistory":Z
    .end local v28  # "dumpWatchers":Z
    .end local v29  # "needSep":Z
    .end local v31  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v32  # "dumpMode":I
    .restart local v2  # "dumpPackage":Ljava/lang/String;
    .restart local v3  # "dumpMode":I
    .local v4, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v8  # "dumpOp":I
    .local v11, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v12, "dumpHistory":Z
    .restart local v14  # "needSep":Z
    .local v15, "dumpWatchers":Z
    .restart local v18  # "nowElapsed":J
    .local v26, "now":J
    :cond_a04
    move/from16 v32, v3

    move-object/from16 v20, v4

    move-object/from16 v31, v11

    move/from16 v25, v12

    move/from16 v29, v14

    move/from16 v28, v15

    move-wide/from16 v4, v26

    move-object v11, v2

    move v12, v8

    move-wide/from16 v26, v18

    const/16 v18, 0x0

    .line 4079
    .end local v2  # "dumpPackage":Ljava/lang/String;
    .end local v3  # "dumpMode":I
    .end local v8  # "dumpOp":I
    .end local v13  # "opModes":Landroid/util/SparseIntArray;
    .end local v14  # "needSep":Z
    .end local v15  # "dumpWatchers":Z
    .end local v18  # "nowElapsed":J
    .local v4, "now":J
    .local v11, "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .restart local v25  # "dumpHistory":Z
    .local v26, "nowElapsed":J
    .restart local v28  # "dumpWatchers":Z
    .restart local v29  # "needSep":Z
    .restart local v32  # "dumpMode":I
    :goto_a18
    move/from16 v14, v29

    .end local v29  # "needSep":Z
    .restart local v14  # "needSep":Z
    :goto_a1a
    add-int/lit8 v0, v0, 0x1

    move-object v2, v11

    move v8, v12

    move/from16 v12, v25

    move-wide/from16 v18, v26

    move/from16 v15, v28

    move/from16 v3, v32

    move-wide/from16 v26, v4

    goto/16 :goto_632

    .end local v4  # "now":J
    .end local v11  # "dumpPackage":Ljava/lang/String;
    .end local v25  # "dumpHistory":Z
    .end local v28  # "dumpWatchers":Z
    .end local v32  # "dumpMode":I
    .restart local v2  # "dumpPackage":Ljava/lang/String;
    .restart local v3  # "dumpMode":I
    .restart local v8  # "dumpOp":I
    .local v12, "dumpHistory":Z
    .restart local v15  # "dumpWatchers":Z
    .restart local v18  # "nowElapsed":J
    .local v26, "now":J
    :cond_a2a
    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v29, v14

    move/from16 v28, v15

    move-wide/from16 v4, v26

    move v12, v8

    move-wide/from16 v26, v18

    const/16 v18, 0x0

    .line 4226
    .end local v0  # "i":I
    .end local v2  # "dumpPackage":Ljava/lang/String;
    .end local v3  # "dumpMode":I
    .end local v8  # "dumpOp":I
    .end local v14  # "needSep":Z
    .end local v15  # "dumpWatchers":Z
    .end local v18  # "nowElapsed":J
    .restart local v4  # "now":J
    .restart local v11  # "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .restart local v25  # "dumpHistory":Z
    .local v26, "nowElapsed":J
    .restart local v28  # "dumpWatchers":Z
    .restart local v29  # "needSep":Z
    .restart local v32  # "dumpMode":I
    if-eqz v29, :cond_a3f

    .line 4227
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4230
    :cond_a3f
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4231
    .local v0, "userRestrictionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a46
    if-ge v1, v0, :cond_c02

    .line 4232
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4233
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 4234
    .local v3, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    const/4 v8, 0x0

    .line 4236
    .local v8, "printedTokenHeader":Z
    if-gez v32, :cond_bec

    if-nez v28, :cond_bec

    if-eqz v25, :cond_a69

    .line 4237
    move/from16 v19, v0

    move-wide/from16 v20, v4

    move-object/from16 v33, v6

    move-object/from16 v24, v7

    goto/16 :goto_bf6

    .line 4240
    :cond_a69
    iget-object v13, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v13, :cond_a74

    .line 4241
    iget-object v13, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    goto :goto_a76

    :cond_a74
    move/from16 v13, v18

    .line 4242
    .local v13, "restrictionCount":I
    :goto_a76
    if-lez v13, :cond_b3d

    if-nez v11, :cond_b3d

    .line 4243
    const/4 v14, 0x0

    .line 4244
    .local v14, "printedOpsHeader":Z
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_a7c
    if-ge v15, v13, :cond_b33

    .line 4245
    move/from16 v19, v0

    .end local v0  # "userRestrictionCount":I
    .local v19, "userRestrictionCount":I
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 4246
    .local v0, "userId":I
    move-wide/from16 v20, v4

    .end local v4  # "now":J
    .local v20, "now":J
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 4247
    .local v4, "restrictedOps":[Z
    if-nez v4, :cond_a93

    .line 4248
    goto :goto_a9c

    .line 4250
    :cond_a93
    if-ltz v12, :cond_aa3

    array-length v5, v4

    if-ge v12, v5, :cond_a9c

    aget-boolean v5, v4, v12

    if-nez v5, :cond_aa3

    .line 4244
    .end local v0  # "userId":I
    .end local v4  # "restrictedOps":[Z
    :cond_a9c
    :goto_a9c
    move-object/from16 v33, v6

    move-object/from16 v24, v7

    const/4 v6, 0x1

    goto/16 :goto_b27

    .line 4254
    .restart local v0  # "userId":I
    .restart local v4  # "restrictedOps":[Z
    :cond_aa3
    if-nez v8, :cond_ac2

    .line 4255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v6

    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v33  # "sdf":Ljava/text/SimpleDateFormat;
    const-string v6, "  User restrictions for token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4256
    const/4 v8, 0x1

    goto :goto_ac4

    .line 4254
    .end local v33  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v6  # "sdf":Ljava/text/SimpleDateFormat;
    :cond_ac2
    move-object/from16 v33, v6

    .line 4258
    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v33  # "sdf":Ljava/text/SimpleDateFormat;
    :goto_ac4
    if-nez v14, :cond_acc

    .line 4259
    const-string v5, "      Restricted ops:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4260
    const/4 v14, 0x1

    .line 4262
    :cond_acc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4263
    .local v5, "restrictedOpsValue":Ljava/lang/StringBuilder;
    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4264
    array-length v6, v4

    .line 4265
    .local v6, "restrictedOpCount":I
    const/16 v23, 0x0

    move-object/from16 v24, v7

    move/from16 v7, v23

    .local v7, "k":I
    .local v24, "date":Ljava/util/Date;
    :goto_add
    if-ge v7, v6, :cond_b07

    .line 4266
    aget-boolean v23, v4, v7

    if-eqz v23, :cond_afb

    .line 4267
    move-object/from16 v23, v4

    .end local v4  # "restrictedOps":[Z
    .local v23, "restrictedOps":[Z
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move/from16 v30, v6

    const/4 v6, 0x1

    .end local v6  # "restrictedOpCount":I
    .local v30, "restrictedOpCount":I
    if-le v4, v6, :cond_af3

    .line 4268
    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4270
    :cond_af3
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b00

    .line 4266
    .end local v23  # "restrictedOps":[Z
    .end local v30  # "restrictedOpCount":I
    .restart local v4  # "restrictedOps":[Z
    .restart local v6  # "restrictedOpCount":I
    :cond_afb
    move-object/from16 v23, v4

    move/from16 v30, v6

    const/4 v6, 0x1

    .line 4265
    .end local v4  # "restrictedOps":[Z
    .end local v6  # "restrictedOpCount":I
    .restart local v23  # "restrictedOps":[Z
    .restart local v30  # "restrictedOpCount":I
    :goto_b00
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v23

    move/from16 v6, v30

    goto :goto_add

    .end local v23  # "restrictedOps":[Z
    .end local v30  # "restrictedOpCount":I
    .restart local v4  # "restrictedOps":[Z
    .restart local v6  # "restrictedOpCount":I
    :cond_b07
    move-object/from16 v23, v4

    move/from16 v30, v6

    const/4 v6, 0x1

    .line 4273
    .end local v4  # "restrictedOps":[Z
    .end local v6  # "restrictedOpCount":I
    .end local v7  # "k":I
    .restart local v23  # "restrictedOps":[Z
    .restart local v30  # "restrictedOpCount":I
    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4274
    const-string v4, "        "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "user: "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4275
    const-string v4, " restricted ops: "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4244
    .end local v0  # "userId":I
    .end local v5  # "restrictedOpsValue":Ljava/lang/StringBuilder;
    .end local v23  # "restrictedOps":[Z
    .end local v30  # "restrictedOpCount":I
    :goto_b27
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v19

    move-wide/from16 v4, v20

    move-object/from16 v7, v24

    move-object/from16 v6, v33

    goto/16 :goto_a7c

    .end local v19  # "userRestrictionCount":I
    .end local v20  # "now":J
    .end local v24  # "date":Ljava/util/Date;
    .end local v33  # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "userRestrictionCount":I
    .local v4, "now":J
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    .local v7, "date":Ljava/util/Date;
    :cond_b33
    move/from16 v19, v0

    move-wide/from16 v20, v4

    move-object/from16 v33, v6

    move-object/from16 v24, v7

    const/4 v6, 0x1

    .end local v0  # "userRestrictionCount":I
    .end local v4  # "now":J
    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7  # "date":Ljava/util/Date;
    .restart local v19  # "userRestrictionCount":I
    .restart local v20  # "now":J
    .restart local v24  # "date":Ljava/util/Date;
    .restart local v33  # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_b46

    .line 4242
    .end local v14  # "printedOpsHeader":Z
    .end local v15  # "j":I
    .end local v19  # "userRestrictionCount":I
    .end local v20  # "now":J
    .end local v24  # "date":Ljava/util/Date;
    .end local v33  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v0  # "userRestrictionCount":I
    .restart local v4  # "now":J
    .restart local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7  # "date":Ljava/util/Date;
    :cond_b3d
    move/from16 v19, v0

    move-wide/from16 v20, v4

    move-object/from16 v33, v6

    move-object/from16 v24, v7

    const/4 v6, 0x1

    .line 4279
    .end local v0  # "userRestrictionCount":I
    .end local v4  # "now":J
    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7  # "date":Ljava/util/Date;
    .restart local v19  # "userRestrictionCount":I
    .restart local v20  # "now":J
    .restart local v24  # "date":Ljava/util/Date;
    .restart local v33  # "sdf":Ljava/text/SimpleDateFormat;
    :goto_b46
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_b51

    .line 4280
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_b53

    :cond_b51
    move/from16 v0, v18

    .line 4281
    .local v0, "excludedPackageCount":I
    :goto_b53
    if-lez v0, :cond_be7

    if-gez v12, :cond_be7

    .line 4282
    const/4 v4, 0x0

    .line 4283
    .local v4, "printedPackagesHeader":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_b59
    if-ge v5, v0, :cond_be2

    .line 4284
    iget-object v7, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 4285
    .local v7, "userId":I
    iget-object v14, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    .line 4286
    .local v14, "packageNames":[Ljava/lang/String;
    if-nez v14, :cond_b71

    .line 4287
    move/from16 v23, v0

    move-object/from16 v30, v3

    goto/16 :goto_bd9

    .line 4290
    :cond_b71
    if-eqz v11, :cond_b93

    .line 4291
    const/4 v15, 0x0

    .line 4292
    .local v15, "hasPackage":Z
    array-length v6, v14

    move/from16 v23, v0

    move/from16 v0, v18

    .end local v0  # "excludedPackageCount":I
    .local v23, "excludedPackageCount":I
    :goto_b79
    if-ge v0, v6, :cond_b90

    aget-object v30, v14, v0

    move-object/from16 v31, v30

    .line 4293
    .local v31, "pkg":Ljava/lang/String;
    move-object/from16 v30, v3

    move-object/from16 v3, v31

    .end local v31  # "pkg":Ljava/lang/String;
    .local v3, "pkg":Ljava/lang/String;
    .local v30, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b8b

    .line 4294
    const/4 v15, 0x1

    .line 4295
    goto :goto_b92

    .line 4292
    .end local v3  # "pkg":Ljava/lang/String;
    :cond_b8b
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v30

    goto :goto_b79

    .end local v30  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .local v3, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_b90
    move-object/from16 v30, v3

    .end local v3  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v30  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :goto_b92
    goto :goto_b98

    .line 4299
    .end local v15  # "hasPackage":Z
    .end local v23  # "excludedPackageCount":I
    .end local v30  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v0  # "excludedPackageCount":I
    .restart local v3  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_b93
    move/from16 v23, v0

    move-object/from16 v30, v3

    .end local v0  # "excludedPackageCount":I
    .end local v3  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v23  # "excludedPackageCount":I
    .restart local v30  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    const/4 v15, 0x1

    .line 4301
    .restart local v15  # "hasPackage":Z
    :goto_b98
    if-nez v15, :cond_b9b

    .line 4302
    goto :goto_bd9

    .line 4304
    :cond_b9b
    if-nez v8, :cond_bb7

    .line 4305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  User restrictions for token "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4306
    const/4 v8, 0x1

    .line 4308
    :cond_bb7
    if-nez v4, :cond_bbf

    .line 4309
    const-string v0, "      Excluded packages:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4310
    const/4 v4, 0x1

    .line 4312
    :cond_bbf
    const-string v0, "        "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "user: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4313
    const-string v0, " packages: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4283
    .end local v7  # "userId":I
    .end local v14  # "packageNames":[Ljava/lang/String;
    .end local v15  # "hasPackage":Z
    :goto_bd9
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v23

    move-object/from16 v3, v30

    const/4 v6, 0x1

    goto/16 :goto_b59

    .end local v23  # "excludedPackageCount":I
    .end local v30  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v0  # "excludedPackageCount":I
    .restart local v3  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_be2
    move/from16 v23, v0

    move-object/from16 v30, v3

    .end local v0  # "excludedPackageCount":I
    .end local v3  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v23  # "excludedPackageCount":I
    .restart local v30  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    goto :goto_bf6

    .line 4281
    .end local v4  # "printedPackagesHeader":Z
    .end local v5  # "j":I
    .end local v23  # "excludedPackageCount":I
    .end local v30  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v0  # "excludedPackageCount":I
    .restart local v3  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_be7
    move/from16 v23, v0

    move-object/from16 v30, v3

    .end local v0  # "excludedPackageCount":I
    .end local v3  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v23  # "excludedPackageCount":I
    .restart local v30  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    goto :goto_bf6

    .line 4236
    .end local v13  # "restrictionCount":I
    .end local v19  # "userRestrictionCount":I
    .end local v20  # "now":J
    .end local v23  # "excludedPackageCount":I
    .end local v24  # "date":Ljava/util/Date;
    .end local v30  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .end local v33  # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "userRestrictionCount":I
    .restart local v3  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .local v4, "now":J
    .restart local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .local v7, "date":Ljava/util/Date;
    :cond_bec
    move/from16 v19, v0

    move-object/from16 v30, v3

    move-wide/from16 v20, v4

    move-object/from16 v33, v6

    move-object/from16 v24, v7

    .line 4231
    .end local v0  # "userRestrictionCount":I
    .end local v2  # "token":Landroid/os/IBinder;
    .end local v3  # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .end local v4  # "now":J
    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7  # "date":Ljava/util/Date;
    .end local v8  # "printedTokenHeader":Z
    .restart local v19  # "userRestrictionCount":I
    .restart local v20  # "now":J
    .restart local v24  # "date":Ljava/util/Date;
    .restart local v33  # "sdf":Ljava/text/SimpleDateFormat;
    :goto_bf6
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v19

    move-wide/from16 v4, v20

    move-object/from16 v7, v24

    move-object/from16 v6, v33

    goto/16 :goto_a46

    .end local v19  # "userRestrictionCount":I
    .end local v20  # "now":J
    .end local v24  # "date":Ljava/util/Date;
    .end local v33  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v0  # "userRestrictionCount":I
    .restart local v4  # "now":J
    .restart local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7  # "date":Ljava/util/Date;
    :cond_c02
    move/from16 v19, v0

    move-wide/from16 v20, v4

    move-object/from16 v33, v6

    move-object/from16 v24, v7

    .line 4317
    .end local v0  # "userRestrictionCount":I
    .end local v1  # "i":I
    .end local v4  # "now":J
    .end local v6  # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7  # "date":Ljava/util/Date;
    .end local v16  # "nowUptime":J
    .end local v26  # "nowElapsed":J
    .end local v29  # "needSep":Z
    monitor-exit p0
    :try_end_c0b
    .catchall {:try_start_977 .. :try_end_c0b} :catchall_c34

    .line 4320
    if-eqz v25, :cond_c1c

    if-nez v28, :cond_c1c

    .line 4321
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    const-string v2, "  "

    move-object/from16 v3, p2

    move/from16 v4, v22

    move-object v5, v11

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry;->dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;I)V

    .line 4323
    :cond_c1c
    return-void

    .line 4317
    .end local v11  # "dumpPackage":Ljava/lang/String;
    .end local v25  # "dumpHistory":Z
    .end local v28  # "dumpWatchers":Z
    .end local v32  # "dumpMode":I
    .local v2, "dumpPackage":Ljava/lang/String;
    .local v3, "dumpMode":I
    .local v8, "dumpOp":I
    .local v12, "dumpHistory":Z
    .local v15, "dumpWatchers":Z
    :catchall_c1d
    move-exception v0

    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v28, v15

    move v12, v8

    .end local v2  # "dumpPackage":Ljava/lang/String;
    .end local v3  # "dumpMode":I
    .end local v8  # "dumpOp":I
    .end local v15  # "dumpWatchers":Z
    .restart local v11  # "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .restart local v25  # "dumpHistory":Z
    .restart local v28  # "dumpWatchers":Z
    .restart local v32  # "dumpMode":I
    goto :goto_c32

    .end local v11  # "dumpPackage":Ljava/lang/String;
    .end local v22  # "dumpUid":I
    .end local v25  # "dumpHistory":Z
    .end local v28  # "dumpWatchers":Z
    .end local v32  # "dumpMode":I
    .local v1, "dumpUid":I
    .restart local v2  # "dumpPackage":Ljava/lang/String;
    .restart local v3  # "dumpMode":I
    .restart local v8  # "dumpOp":I
    .local v12, "dumpHistory":Z
    .restart local v15  # "dumpWatchers":Z
    :catchall_c27
    move-exception v0

    move/from16 v22, v1

    move-object v11, v2

    move/from16 v32, v3

    move/from16 v25, v12

    move/from16 v28, v15

    move v12, v8

    .end local v1  # "dumpUid":I
    .end local v2  # "dumpPackage":Ljava/lang/String;
    .end local v3  # "dumpMode":I
    .end local v8  # "dumpOp":I
    .end local v15  # "dumpWatchers":Z
    .restart local v11  # "dumpPackage":Ljava/lang/String;
    .local v12, "dumpOp":I
    .restart local v22  # "dumpUid":I
    .restart local v25  # "dumpHistory":Z
    .restart local v28  # "dumpWatchers":Z
    .restart local v32  # "dumpMode":I
    :goto_c32
    :try_start_c32
    monitor-exit p0
    :try_end_c33
    .catchall {:try_start_c32 .. :try_end_c33} :catchall_c34

    throw v0

    :catchall_c34
    move-exception v0

    goto :goto_c32
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 14
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "code"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;

    .line 2323
    invoke-direct {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2324
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2325
    invoke-static {p3, p4}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2326
    .local v7, "resolvedPackageName":Ljava/lang/String;
    if-nez v7, :cond_d

    .line 2327
    return-void

    .line 2329
    :cond_d
    instance-of v0, p1, Lcom/android/server/appop/AppOpsService$ClientState;

    if-nez v0, :cond_12

    .line 2330
    return-void

    .line 2332
    :cond_12
    move-object v8, p1

    check-cast v8, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 2333
    .local v8, "client":Lcom/android/server/appop/AppOpsService$ClientState;
    monitor-enter p0

    .line 2334
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, v7

    :try_start_1d
    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;ZZZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v0

    .line 2335
    .local v0, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v0, :cond_25

    .line 2336
    monitor-exit p0

    return-void

    .line 2338
    :cond_25
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b0

    .line 2343
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_bc

    .line 2345
    .local v3, "identity":J
    :try_start_32
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 2346
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2345
    invoke-virtual {v1, v7, v2, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    if-gez v1, :cond_73

    .line 2347
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing op="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for non-existing package="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in uid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_32 .. :try_end_6e} :catchall_ab

    .line 2353
    :try_start_6e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    .line 2350
    return-void

    .line 2353
    :cond_73
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2354
    nop

    .line 2355
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Operation not started: uid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v5, v5, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " op="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2356
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2355
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    monitor-exit p0

    return-void

    .line 2353
    :catchall_ab
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v7  # "resolvedPackageName":Ljava/lang/String;
    .end local v8  # "client":Lcom/android/server/appop/AppOpsService$ClientState;
    .end local p0  # "this":Lcom/android/server/appop/AppOpsService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "code":I
    .end local p3  # "uid":I
    .end local p4  # "packageName":Ljava/lang/String;
    throw v1

    .line 2359
    .end local v3  # "identity":J
    .restart local v7  # "resolvedPackageName":Ljava/lang/String;
    .restart local v8  # "client":Lcom/android/server/appop/AppOpsService$ClientState;
    .restart local p0  # "this":Lcom/android/server/appop/AppOpsService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "code":I
    .restart local p3  # "uid":I
    .restart local p4  # "packageName":Ljava/lang/String;
    :cond_b0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appop/AppOpsService;->finishOperationLocked(Lcom/android/server/appop/AppOpsService$Op;Z)V

    .line 2360
    iget v1, v0, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-gtz v1, :cond_ba

    .line 2361
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 2363
    .end local v0  # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_ba
    monitor-exit p0

    .line 2364
    return-void

    .line 2363
    :catchall_bc
    move-exception v0

    monitor-exit p0
    :try_end_be
    .catchall {:try_start_6e .. :try_end_be} :catchall_bc

    throw v0
.end method

.method finishOperationLocked(Lcom/android/server/appop/AppOpsService$Op;Z)V
    .registers 28
    .param p1, "op"  # Lcom/android/server/appop/AppOpsService$Op;
    .param p2, "finishNested"  # Z

    .line 2466
    move-object/from16 v7, p1

    iget v14, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2467
    .local v14, "opCode":I
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v15, v0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2468
    .local v15, "uid":I
    iget v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    const/4 v13, 0x1

    if-le v0, v13, :cond_22

    if-eqz p2, :cond_10

    goto :goto_22

    .line 2490
    :cond_10
    iget v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    sub-int/2addr v0, v13

    iput v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    .line 2491
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    sub-int/2addr v1, v13

    iput v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    move-object/from16 v0, p0

    move v1, v14

    move v3, v15

    goto/16 :goto_e6

    .line 2469
    :cond_22
    :goto_22
    iget v0, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-eq v0, v13, :cond_a7

    if-eqz p2, :cond_2a

    goto/16 :goto_a7

    .line 2477
    :cond_2a
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v1, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-boolean v2, v7, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v19

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v20

    .line 2478
    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v21

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v22

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Lcom/android/server/appop/AppOpsService$Op;->access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;

    move-result-object v24

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-direct/range {v16 .. v24}, Landroid/app/AppOpsManager$OpEntry;-><init>(IZILandroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)V

    .line 2479
    .local v0, "entry":Landroid/app/AppOpsManager$OpEntry;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2481
    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " duration="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    const/16 v4, 0x2bc

    .line 2482
    invoke-virtual {v0, v3, v4, v2}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2479
    const-string v2, "AppOps"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move v2, v13

    move v1, v14

    move v3, v15

    goto :goto_d6

    .line 2471
    .end local v0  # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_a7
    :goto_a7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, v7, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    sub-long v16, v0, v2

    .line 2472
    .local v16, "duration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v3, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$Op;->finished(JJII)V

    .line 2474
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v11, v7, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v12, v1, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v1, 0x1

    move v9, v14

    move v10, v15

    move v2, v13

    move v13, v1

    move v1, v14

    move v3, v15

    .end local v14  # "opCode":I
    .end local v15  # "uid":I
    .local v1, "opCode":I
    .local v3, "uid":I
    move-wide/from16 v14, v16

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/appop/HistoricalRegistry;->increaseOpAccessDuration(IILjava/lang/String;IIJ)V

    .line 2476
    .end local v16  # "duration":J
    nop

    .line 2485
    :goto_d6
    iget v4, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-lt v4, v2, :cond_e3

    .line 2486
    iget-object v2, v7, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    iget v5, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    sub-int/2addr v4, v5

    iput v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    .line 2488
    :cond_e3
    const/4 v2, 0x0

    iput v2, v7, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    .line 2493
    :goto_e6
    return-void
.end method

.method public getAppOpsServiceDelegate()Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .registers 2

    .line 1809
    monitor-enter p0

    .line 1810
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    monitor-exit p0

    return-object v0

    .line 1811
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/util/List;JJILandroid/os/RemoteCallback;)V
    .registers 26
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p4, "beginTimeMillis"  # J
    .param p6, "endTimeMillis"  # J
    .param p8, "flags"  # I
    .param p9, "callback"  # Landroid/os/RemoteCallback;
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

    .line 1170
    .local p3, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-wide/from16 v13, p4

    move-wide/from16 v11, p6

    invoke-direct {v2, v13, v14, v11, v12}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 1172
    move/from16 v15, p1

    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setUid(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1173
    move-object/from16 v9, p2

    invoke-virtual {v2, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1174
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1175
    move/from16 v10, p8

    invoke-virtual {v2, v10}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1176
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    .line 1177
    const-string v2, "callback cannot be null"

    move-object/from16 v7, p9

    invoke-static {v7, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1180
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1179
    const-string v5, "android.permission.GET_APP_OPS_STATS"

    const-string v6, "getHistoricalOps"

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1182
    if-eqz v1, :cond_4d

    .line 1183
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    move-object v6, v2

    .line 1186
    .local v6, "opNamesArray":[Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/appop/HistoricalRegistry;->getHistoricalOps(ILjava/lang/String;[Ljava/lang/String;JJILandroid/os/RemoteCallback;)V

    .line 1188
    return-void
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/util/List;JJILandroid/os/RemoteCallback;)V
    .registers 26
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p4, "beginTimeMillis"  # J
    .param p6, "endTimeMillis"  # J
    .param p8, "flags"  # I
    .param p9, "callback"  # Landroid/os/RemoteCallback;
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

    .line 1195
    .local p3, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-wide/from16 v13, p4

    move-wide/from16 v11, p6

    invoke-direct {v2, v13, v14, v11, v12}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 1197
    move/from16 v15, p1

    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setUid(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1198
    move-object/from16 v9, p2

    invoke-virtual {v2, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1199
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1200
    move/from16 v10, p8

    invoke-virtual {v2, v10}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 1201
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    .line 1202
    const-string v2, "callback cannot be null"

    move-object/from16 v7, p9

    invoke-static {v7, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1205
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1204
    const-string v5, "android.permission.MANAGE_APPOPS"

    const-string v6, "getHistoricalOps"

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1207
    if-eqz v1, :cond_4d

    .line 1208
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    move-object v6, v2

    .line 1211
    .local v6, "opNamesArray":[Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/appop/HistoricalRegistry;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;[Ljava/lang/String;JJILandroid/os/RemoteCallback;)V

    .line 1213
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 11
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "ops"  # [I
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

    .line 1141
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1142
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1141
    const/4 v3, 0x0

    const-string v4, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1143
    invoke-static {p1, p2}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 1145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1147
    :cond_1b
    monitor-enter p0

    .line 1148
    const/4 v1, 0x0

    :try_start_1d
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v1

    .line 1150
    .local v1, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v1, :cond_25

    .line 1151
    monitor-exit p0

    return-object v3

    .line 1153
    :cond_25
    invoke-direct {p0, v1, p3}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1154
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_2d

    .line 1155
    monitor-exit p0

    return-object v3

    .line 1157
    :cond_2d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1158
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v4, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1160
    .local v4, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    monitor-exit p0

    return-object v3

    .line 1162
    .end local v1  # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v2  # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3  # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v4  # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_42
    move-exception v1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_42

    throw v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 14
    .param p1, "ops"  # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1109
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1110
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1109
    const-string v3, "android.permission.GET_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1111
    const/4 v0, 0x0

    .line 1112
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 1113
    :try_start_12
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1114
    .local v1, "uidStateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_61

    .line 1115
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1116
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v4, :cond_5e

    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1117
    goto :goto_5e

    .line 1119
    :cond_30
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1120
    .local v4, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1121
    .local v5, "packageCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_37
    if-ge v6, v5, :cond_5e

    .line 1122
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1123
    .local v7, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-direct {p0, v7, p1}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v8

    .line 1124
    .local v8, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v8, :cond_5b

    .line 1125
    if-nez v0, :cond_4d

    .line 1126
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    .line 1128
    :cond_4d
    new-instance v9, Landroid/app/AppOpsManager$PackageOps;

    iget-object v10, v7, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v11, v7, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v9, v10, v11, v8}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1130
    .local v9, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    .end local v7  # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v8  # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v9  # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 1114
    .end local v3  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4  # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v5  # "packageCount":I
    .end local v6  # "j":I
    :cond_5e
    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1134
    .end local v1  # "uidStateCount":I
    .end local v2  # "i":I
    :cond_61
    monitor-exit p0

    .line 1135
    return-object v0

    .line 1134
    :catchall_63
    move-exception v1

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_12 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4
    .param p1, "clientToken"  # Landroid/os/IBinder;

    .line 1798
    monitor-enter p0

    .line 1799
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 1800
    .local v0, "cs":Lcom/android/server/appop/AppOpsService$ClientState;
    if-nez v0, :cond_16

    .line 1801
    new-instance v1, Lcom/android/server/appop/AppOpsService$ClientState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appop/AppOpsService$ClientState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V

    move-object v0, v1

    .line 1802
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    :cond_16
    monitor-exit p0

    return-object v0

    .line 1805
    .end local v0  # "cs":Lcom/android/server/appop/AppOpsService$ClientState;
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .registers 9
    .param p1, "uid"  # I
    .param p2, "ops"  # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1226
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1225
    const/4 v3, 0x0

    const-string v4, "android.permission.GET_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1227
    monitor-enter p0

    .line 1228
    const/4 v0, 0x0

    :try_start_12
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 1229
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_1a

    .line 1230
    monitor-exit p0

    return-object v3

    .line 1232
    :cond_1a
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-direct {p0, v1, p2}, Lcom/android/server/appop/AppOpsService;->collectOps(Landroid/util/SparseIntArray;[I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1233
    .local v1, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v1, :cond_24

    .line 1234
    monitor-exit p0

    return-object v3

    .line 1236
    :cond_24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v4, v3, v5, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    move-object v3, v4

    .line 1239
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    monitor-exit p0

    return-object v2

    .line 1241
    .end local v0  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1  # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v2  # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v3  # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .registers 12
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 4420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_12

    .line 4421
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4423
    return v1

    .line 4426
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4427
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4428
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 4429
    return v1

    .line 4431
    :cond_1c
    monitor-enter p0

    .line 4432
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_25
    if-ltz v2, :cond_52

    .line 4433
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 4434
    .local v4, "client":Lcom/android/server/appop/AppOpsService$ClientState;
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_36
    if-ltz v5, :cond_4f

    .line 4435
    iget-object v6, v4, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Op;

    .line 4436
    .local v6, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget v7, v6, Lcom/android/server/appop/AppOpsService$Op;->op:I

    if-ne v7, p1, :cond_4c

    iget-object v7, v6, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v7, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-ne v7, p2, :cond_4c

    monitor-exit p0

    return v3

    .line 4434
    .end local v6  # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_4c
    add-int/lit8 v5, v5, -0x1

    goto :goto_36

    .line 4432
    .end local v4  # "client":Lcom/android/server/appop/AppOpsService$ClientState;
    .end local v5  # "j":I
    :cond_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    .line 4439
    .end local v2  # "i":I
    :cond_52
    monitor-exit p0

    .line 4440
    return v1

    .line 4439
    :catchall_54
    move-exception v1

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_1d .. :try_end_56} :catchall_54

    throw v1
.end method

.method public noteOperation(IILjava/lang/String;)I
    .registers 6
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 2049
    monitor-enter p0

    .line 2050
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2051
    .local v0, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_15

    .line 2052
    if-nez v0, :cond_b

    .line 2053
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;)I

    move-result v1

    return v1

    .line 2055
    :cond_b
    new-instance v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$hqd76gFlOJ1gAuDYDPVUaSkXjTc;

    invoke-direct {v1, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$hqd76gFlOJ1gAuDYDPVUaSkXjTc;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Lcom/android/internal/util/function/TriFunction;)I

    move-result v1

    return v1

    .line 2051
    .end local v0  # "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public noteProxyOperation(IILjava/lang/String;ILjava/lang/String;)I
    .registers 24
    .param p1, "code"  # I
    .param p2, "proxyUid"  # I
    .param p3, "proxyPackageName"  # Ljava/lang/String;
    .param p4, "proxiedUid"  # I
    .param p5, "proxiedPackageName"  # Ljava/lang/String;

    .line 2010
    move-object/from16 v14, p0

    move/from16 v15, p2

    move/from16 v12, p4

    invoke-direct {v14, v15}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2011
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2013
    invoke-static/range {p2 .. p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2014
    .local v16, "resolveProxyPackageName":Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v16, :cond_14

    .line 2015
    return v7

    .line 2018
    :cond_14
    iget-object v0, v14, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v2, v1, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_21

    move v0, v7

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    move/from16 v17, v0

    .line 2022
    .local v17, "isProxyTrusted":Z
    if-eqz v17, :cond_29

    const/4 v0, 0x2

    move v6, v0

    goto :goto_2b

    .line 2023
    :cond_29
    const/4 v0, 0x4

    move v6, v0

    :goto_2b
    nop

    .line 2024
    .local v6, "proxyFlags":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;I)I

    move-result v0

    .line 2026
    .local v0, "proxyMode":I
    if-nez v0, :cond_74

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, v12, :cond_43

    goto :goto_74

    .line 2030
    :cond_43
    invoke-static/range {p4 .. p5}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2031
    .local v1, "resolveProxiedPackageName":Ljava/lang/String;
    if-nez v1, :cond_4a

    .line 2032
    return v7

    .line 2035
    :cond_4a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/appop/AppOpsService;->mLooper:Landroid/os/Looper;

    if-eq v2, v3, :cond_5a

    .line 2036
    nop

    .line 2037
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    .line 2036
    invoke-static {v12, v1, v2}, Lmeizu/security/FlymePermissionManager;->askOpsOperation(ILjava/lang/String;I)V

    .line 2040
    :cond_5a
    if-eqz v17, :cond_60

    const/16 v2, 0x8

    move v13, v2

    goto :goto_63

    .line 2041
    :cond_60
    const/16 v2, 0x10

    move v13, v2

    :goto_63
    nop

    .line 2042
    .local v13, "proxiedFlags":I
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p4

    move-object v10, v1

    move/from16 v11, p2

    move-object/from16 v12, v16

    invoke-direct/range {v7 .. v13}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;I)I

    move-result v2

    return v2

    .line 2027
    .end local v1  # "resolveProxiedPackageName":Ljava/lang/String;
    .end local v13  # "proxiedFlags":I
    :cond_74
    :goto_74
    return v0
.end method

.method public offsetHistory(J)V
    .registers 6
    .param p1, "offsetMillis"  # J

    .line 4454
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "offsetHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4457
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 4458
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 3418
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

    .line 3419
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 13
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 883
    monitor-enter p0

    .line 884
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 885
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_d

    .line 886
    monitor-exit p0

    return-void

    .line 889
    :cond_d
    const/4 v1, 0x0

    .line 892
    .local v1, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1b

    .line 893
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    move-object v1, v2

    .line 897
    :cond_1b
    if-eqz v1, :cond_34

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 898
    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_34

    .line 899
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 901
    invoke-static {p1}, Lmeizu/security/FlymePermissionManager;->clearOpsOperation(I)V

    .line 906
    :cond_34
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 907
    .local v2, "clientCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    const/4 v4, 0x0

    if-ge v3, v2, :cond_83

    .line 908
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 909
    .local v5, "client":Lcom/android/server/appop/AppOpsService$ClientState;
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-nez v6, :cond_4b

    .line 910
    goto :goto_80

    .line 912
    :cond_4b
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 913
    .local v6, "opCount":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "j":I
    :goto_53
    if-ltz v7, :cond_80

    .line 914
    iget-object v8, v5, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$Op;

    .line 915
    .local v8, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v9, v9, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-ne p1, v9, :cond_7d

    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 916
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/server/appop/AppOpsService;->finishOperationLocked(Lcom/android/server/appop/AppOpsService$Op;Z)V

    .line 917
    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 918
    iget v9, v8, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-gtz v9, :cond_7d

    .line 919
    iget v9, v8, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-direct {p0, v9, p1, p2, v4}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 913
    .end local v8  # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_7d
    add-int/lit8 v7, v7, -0x1

    goto :goto_53

    .line 907
    .end local v5  # "client":Lcom/android/server/appop/AppOpsService$ClientState;
    .end local v6  # "opCount":I
    .end local v7  # "j":I
    :cond_80
    :goto_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 926
    .end local v3  # "i":I
    :cond_83
    if-eqz v1, :cond_a7

    .line 927
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 929
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v3

    .line 930
    .local v3, "opCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8d
    if-ge v5, v3, :cond_a7

    .line 931
    invoke-virtual {v1, v5}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Op;

    .line 932
    .local v6, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-boolean v7, v6, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    if-eqz v7, :cond_a4

    .line 933
    iget v7, v6, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v8, v6, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v9, v6, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v4}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    .line 930
    .end local v6  # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_a4
    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    .line 939
    .end local v3  # "opCount":I
    .end local v5  # "i":I
    :cond_a7
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory(ILjava/lang/String;)V

    .line 940
    .end local v0  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v2  # "clientCount":I
    monitor-exit p0

    .line 941
    return-void

    .line 940
    :catchall_ae
    move-exception v0

    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_1 .. :try_end_b0} :catchall_ae

    throw v0
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"  # Ljava/lang/String;

    .line 2459
    if-nez p1, :cond_4

    .line 2460
    const/4 v0, -0x1

    return v0

    .line 2462
    :cond_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 746
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 747
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "appops"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 748
    const-class v0, Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 749
    return-void
.end method

.method readState()V
    .registers 14

    .line 2802
    const/4 v0, -0x1

    .line 2803
    .local v0, "oldVersion":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 2804
    :try_start_4
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_4 .. :try_end_5} :catchall_1c5

    .line 2807
    :try_start_5
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_19e
    .catchall {:try_start_5 .. :try_end_b} :catchall_19c

    .line 2811
    .local v2, "stream":Ljava/io/FileInputStream;
    nop

    .line 2812
    const/4 v3, 0x0

    .line 2813
    .local v3, "success":Z
    :try_start_d
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_19c

    .line 2815
    :try_start_12
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2816
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2818
    :goto_1f
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2b

    if-eq v6, v7, :cond_2b

    goto :goto_1f

    .line 2823
    :cond_2b
    if-ne v6, v8, :cond_a2

    .line 2827
    const/4 v5, 0x0

    const-string/jumbo v8, "v"

    invoke-interface {v4, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2828
    .local v5, "versionString":Ljava/lang/String;
    if-eqz v5, :cond_3c

    .line 2829
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v0, v8

    .line 2832
    :cond_3c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 2833
    .local v8, "outerDepth":I
    :cond_40
    :goto_40
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v6, v9

    if-eq v9, v7, :cond_92

    const/4 v9, 0x3

    if-ne v6, v9, :cond_50

    .line 2834
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_92

    .line 2835
    :cond_50
    if-eq v6, v9, :cond_40

    const/4 v9, 0x4

    if-ne v6, v9, :cond_56

    .line 2836
    goto :goto_40

    .line 2839
    :cond_56
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2840
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "pkg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 2841
    invoke-direct {p0, v4}, Lcom/android/server/appop/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_91

    .line 2842
    :cond_67
    const-string/jumbo v10, "uid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 2843
    invoke-direct {p0, v4}, Lcom/android/server/appop/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_91

    .line 2845
    :cond_74
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <app-ops>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2845
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_91
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_91} :catch_15f
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_91} :catch_13b
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_91} :catch_117
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_91} :catch_f4
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_91} :catch_d1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_91} :catch_ae
    .catchall {:try_start_12 .. :try_end_91} :catchall_ab

    .line 2849
    .end local v9  # "tagName":Ljava/lang/String;
    :goto_91
    goto :goto_40

    .line 2850
    :cond_92
    const/4 v3, 0x1

    .line 2864
    .end local v4  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5  # "versionString":Ljava/lang/String;
    .end local v6  # "type":I
    .end local v8  # "outerDepth":I
    if-nez v3, :cond_9a

    .line 2865
    :try_start_95
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_19c

    .line 2868
    :cond_9a
    :try_start_9a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9f
    .catchall {:try_start_9a .. :try_end_9d} :catchall_19c

    .line 2870
    :goto_9d
    goto/16 :goto_183

    .line 2869
    :catch_9f
    move-exception v4

    .line 2871
    goto/16 :goto_183

    .line 2824
    .restart local v4  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6  # "type":I
    :cond_a2
    :try_start_a2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0  # "oldVersion":I
    .end local v2  # "stream":Ljava/io/FileInputStream;
    .end local v3  # "success":Z
    .end local p0  # "this":Lcom/android/server/appop/AppOpsService;
    throw v5
    :try_end_ab
    .catch Ljava/lang/IllegalStateException; {:try_start_a2 .. :try_end_ab} :catch_15f
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_ab} :catch_13b
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_ab} :catch_117
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_ab} :catch_f4
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_ab} :catch_d1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a2 .. :try_end_ab} :catch_ae
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_ab

    .line 2864
    .end local v4  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6  # "type":I
    .restart local v0  # "oldVersion":I
    .restart local v2  # "stream":Ljava/io/FileInputStream;
    .restart local v3  # "success":Z
    .restart local p0  # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_ab
    move-exception v4

    goto/16 :goto_18e

    .line 2861
    :catch_ae
    move-exception v4

    .line 2862
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_af
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_af .. :try_end_c5} :catchall_ab

    .line 2864
    nop

    .end local v4  # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v3, :cond_cd

    .line 2865
    :try_start_c8
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_19c

    .line 2868
    :cond_cd
    :try_start_cd
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_9f
    .catchall {:try_start_cd .. :try_end_d0} :catchall_19c

    goto :goto_9d

    .line 2859
    :catch_d1
    move-exception v4

    .line 2860
    .local v4, "e":Ljava/io/IOException;
    :try_start_d2
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catchall {:try_start_d2 .. :try_end_e8} :catchall_ab

    .line 2864
    nop

    .end local v4  # "e":Ljava/io/IOException;
    if-nez v3, :cond_f0

    .line 2865
    :try_start_eb
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_f0
    .catchall {:try_start_eb .. :try_end_f0} :catchall_19c

    .line 2868
    :cond_f0
    :try_start_f0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_9f
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_19c

    goto :goto_9d

    .line 2857
    :catch_f4
    move-exception v4

    .line 2858
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_f5
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catchall {:try_start_f5 .. :try_end_10b} :catchall_ab

    .line 2864
    nop

    .end local v4  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v3, :cond_113

    .line 2865
    :try_start_10e
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_113
    .catchall {:try_start_10e .. :try_end_113} :catchall_19c

    .line 2868
    :cond_113
    :try_start_113
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_9f
    .catchall {:try_start_113 .. :try_end_116} :catchall_19c

    goto :goto_9d

    .line 2855
    :catch_117
    move-exception v4

    .line 2856
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_118
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catchall {:try_start_118 .. :try_end_12e} :catchall_ab

    .line 2864
    nop

    .end local v4  # "e":Ljava/lang/NumberFormatException;
    if-nez v3, :cond_136

    .line 2865
    :try_start_131
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_136
    .catchall {:try_start_131 .. :try_end_136} :catchall_19c

    .line 2868
    :cond_136
    :try_start_136
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_9f
    .catchall {:try_start_136 .. :try_end_139} :catchall_19c

    goto/16 :goto_9d

    .line 2853
    :catch_13b
    move-exception v4

    .line 2854
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_13c
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_152
    .catchall {:try_start_13c .. :try_end_152} :catchall_ab

    .line 2864
    nop

    .end local v4  # "e":Ljava/lang/NullPointerException;
    if-nez v3, :cond_15a

    .line 2865
    :try_start_155
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_15a
    .catchall {:try_start_155 .. :try_end_15a} :catchall_19c

    .line 2868
    :cond_15a
    :try_start_15a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15d} :catch_9f
    .catchall {:try_start_15a .. :try_end_15d} :catchall_19c

    goto/16 :goto_9d

    .line 2851
    :catch_15f
    move-exception v4

    .line 2852
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_160
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176
    .catchall {:try_start_160 .. :try_end_176} :catchall_ab

    .line 2864
    nop

    .end local v4  # "e":Ljava/lang/IllegalStateException;
    if-nez v3, :cond_17e

    .line 2865
    :try_start_179
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_17e
    .catchall {:try_start_179 .. :try_end_17e} :catchall_19c

    .line 2868
    :cond_17e
    :try_start_17e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_9f
    .catchall {:try_start_17e .. :try_end_181} :catchall_19c

    goto/16 :goto_9d

    .line 2872
    .end local v2  # "stream":Ljava/io/FileInputStream;
    .end local v3  # "success":Z
    :goto_183
    :try_start_183
    monitor-exit p0
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_19c

    .line 2873
    :try_start_184
    monitor-exit v1
    :try_end_185
    .catchall {:try_start_184 .. :try_end_185} :catchall_1c5

    .line 2874
    monitor-enter p0

    .line 2875
    :try_start_186
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->upgradeLocked(I)V

    .line 2876
    monitor-exit p0

    .line 2877
    return-void

    .line 2876
    :catchall_18b
    move-exception v1

    monitor-exit p0
    :try_end_18d
    .catchall {:try_start_186 .. :try_end_18d} :catchall_18b

    throw v1

    .line 2864
    .restart local v2  # "stream":Ljava/io/FileInputStream;
    .restart local v3  # "success":Z
    :goto_18e
    if-nez v3, :cond_195

    .line 2865
    :try_start_190
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    :try_end_195
    .catchall {:try_start_190 .. :try_end_195} :catchall_19c

    .line 2868
    :cond_195
    :try_start_195
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_199
    .catchall {:try_start_195 .. :try_end_198} :catchall_19c

    .line 2870
    goto :goto_19a

    .line 2869
    :catch_199
    move-exception v5

    .line 2870
    :goto_19a
    nop

    .end local v0  # "oldVersion":I
    .end local p0  # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_19b
    throw v4

    .line 2872
    .end local v2  # "stream":Ljava/io/FileInputStream;
    .end local v3  # "success":Z
    .restart local v0  # "oldVersion":I
    .restart local p0  # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_19c
    move-exception v2

    goto :goto_1c3

    .line 2808
    :catch_19e
    move-exception v2

    .line 2809
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No existing app ops "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; starting empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    monitor-exit p0
    :try_end_1c1
    .catchall {:try_start_19b .. :try_end_1c1} :catchall_19c

    :try_start_1c1
    monitor-exit v1
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c5

    return-void

    .line 2872
    .end local v2  # "e":Ljava/io/FileNotFoundException;
    :goto_1c3
    :try_start_1c3
    monitor-exit p0
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_19c

    .end local v0  # "oldVersion":I
    .end local p0  # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_1c4
    throw v2

    .line 2873
    .restart local v0  # "oldVersion":I
    .restart local p0  # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_1c5
    move-exception v2

    monitor-exit v1
    :try_end_1c7
    .catchall {:try_start_1c4 .. :try_end_1c7} :catchall_1c5

    throw v2
.end method

.method public reloadNonHistoricalState()V
    .registers 6

    .line 1217
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1218
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1217
    const-string v3, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v4, "reloadNonHistoricalState"

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 1220
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 1221
    return-void
.end method

.method public removeUser(I)V
    .registers 5
    .param p1, "userHandle"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4407
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 4408
    monitor-enter p0

    .line 4409
    :try_start_7
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4410
    .local v0, "tokenCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_1f

    .line 4411
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 4412
    .local v2, "opRestrictions":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    invoke-virtual {v2, p1}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->removeUser(I)V

    .line 4410
    .end local v2  # "opRestrictions":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 4414
    .end local v1  # "i":I
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->removeUidsForUserLocked(I)V

    .line 4415
    .end local v0  # "tokenCount":I
    monitor-exit p0

    .line 4416
    return-void

    .line 4415
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .registers 25
    .param p1, "reqUserId"  # I
    .param p2, "reqPackageName"  # Ljava/lang/String;

    .line 1601
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1602
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1603
    .local v5, "callingUid":I
    const/4 v12, 0x1

    const/4 v13, 0x1

    const-string/jumbo v14, "resetAllModes"

    const/4 v15, 0x0

    move v9, v6

    move v10, v5

    move/from16 v11, p1

    invoke-static/range {v9 .. v15}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1606
    .end local p1  # "reqUserId":I
    .local v9, "reqUserId":I
    const/4 v1, -0x1

    .line 1607
    .local v1, "reqUid":I
    if-eqz v8, :cond_2b

    .line 1609
    :try_start_1d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-interface {v0, v8, v2, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_27} :catch_2a

    move v1, v0

    .line 1613
    move v10, v1

    goto :goto_2c

    .line 1611
    :catch_2a
    move-exception v0

    .line 1616
    :cond_2b
    move v10, v1

    .end local v1  # "reqUid":I
    .local v10, "reqUid":I
    :goto_2c
    invoke-direct {v7, v6, v5, v10}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1618
    const/4 v1, 0x0

    .line 1619
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    monitor-enter p0

    .line 1620
    const/4 v0, 0x0

    .line 1621
    .local v0, "changed":Z
    :try_start_32
    iget-object v2, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_287

    add-int/lit8 v2, v2, -0x1

    move-object v11, v1

    .end local v1  # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v2, "i":I
    .local v11, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :goto_3b
    if-ltz v2, :cond_1f8

    .line 1622
    :try_start_3d
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1624
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1625
    .local v3, "opModes":Landroid/util/SparseIntArray;
    const/4 v12, -0x1

    if-eqz v3, :cond_f6

    iget v13, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v13, v10, :cond_59

    if-ne v10, v12, :cond_51

    goto :goto_59

    :cond_51
    move-object/from16 v17, v3

    move/from16 v20, v5

    move/from16 v21, v6

    goto/16 :goto_fc

    .line 1626
    :cond_59
    :goto_59
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 1627
    .local v13, "uidOpCount":I
    add-int/lit8 v14, v13, -0x1

    .local v14, "j":I
    :goto_5f
    if-ltz v14, :cond_ef

    .line 1628
    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 1629
    .local v15, "code":I
    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v16

    if-eqz v16, :cond_de

    .line 1630
    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1631
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v16
    :try_end_72
    .catchall {:try_start_3d .. :try_end_72} :catchall_1f0

    if-gtz v16, :cond_80

    .line 1632
    const/4 v4, 0x0

    :try_start_75
    iput-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_78

    goto :goto_80

    .line 1697
    .end local v0  # "changed":Z
    .end local v1  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2  # "i":I
    .end local v3  # "opModes":Landroid/util/SparseIntArray;
    .end local v13  # "uidOpCount":I
    .end local v14  # "j":I
    .end local v15  # "code":I
    :catchall_78
    move-exception v0

    move/from16 v18, v5

    move/from16 v16, v6

    move-object v1, v11

    goto/16 :goto_28c

    .line 1634
    .restart local v0  # "changed":Z
    .restart local v1  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v2  # "i":I
    .restart local v3  # "opModes":Landroid/util/SparseIntArray;
    .restart local v13  # "uidOpCount":I
    .restart local v14  # "j":I
    .restart local v15  # "code":I
    :cond_80
    :goto_80
    :try_start_80
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    array-length v12, v4
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_1f0

    move-object/from16 v17, v3

    move-object v3, v11

    const/4 v11, 0x0

    .end local v11  # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v3, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v17, "opModes":Landroid/util/SparseIntArray;
    :goto_8b
    if-ge v11, v12, :cond_d8

    :try_start_8d
    aget-object v18, v4, v11

    move-object/from16 v19, v18

    .line 1635
    .local v19, "packageName":Ljava/lang/String;
    move-object/from16 v18, v4

    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_d0

    move/from16 v20, v5

    .end local v5  # "callingUid":I
    .local v20, "callingUid":I
    :try_start_97
    iget-object v5, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1636
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_c8

    .line 1635
    move/from16 v21, v6

    move-object/from16 v6, v19

    .end local v19  # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    .local v21, "callingPid":I
    :try_start_a3
    invoke-static {v3, v15, v4, v6, v5}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4

    move-object v3, v4

    .line 1637
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v5, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1638
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1637
    invoke-static {v3, v15, v4, v6, v5}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_b6
    .catchall {:try_start_a3 .. :try_end_b6} :catchall_c0

    move-object v3, v4

    .line 1634
    .end local v6  # "packageName":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v18

    move/from16 v5, v20

    move/from16 v6, v21

    goto :goto_8b

    .line 1697
    .end local v0  # "changed":Z
    .end local v1  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2  # "i":I
    .end local v13  # "uidOpCount":I
    .end local v14  # "j":I
    .end local v15  # "code":I
    .end local v17  # "opModes":Landroid/util/SparseIntArray;
    :catchall_c0
    move-exception v0

    move-object v1, v3

    move/from16 v18, v20

    move/from16 v16, v21

    goto/16 :goto_28c

    .end local v21  # "callingPid":I
    .local v6, "callingPid":I
    :catchall_c8
    move-exception v0

    move-object v1, v3

    move/from16 v16, v6

    move/from16 v18, v20

    .end local v6  # "callingPid":I
    .restart local v21  # "callingPid":I
    goto/16 :goto_28c

    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .restart local v5  # "callingUid":I
    .restart local v6  # "callingPid":I
    :catchall_d0
    move-exception v0

    move-object v1, v3

    move/from16 v18, v5

    move/from16 v16, v6

    .end local v5  # "callingUid":I
    .end local v6  # "callingPid":I
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    goto/16 :goto_28c

    .line 1634
    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .restart local v0  # "changed":Z
    .restart local v1  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v2  # "i":I
    .restart local v5  # "callingUid":I
    .restart local v6  # "callingPid":I
    .restart local v13  # "uidOpCount":I
    .restart local v14  # "j":I
    .restart local v15  # "code":I
    .restart local v17  # "opModes":Landroid/util/SparseIntArray;
    :cond_d8
    move/from16 v20, v5

    move/from16 v21, v6

    .end local v5  # "callingUid":I
    .end local v6  # "callingPid":I
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    move-object v11, v3

    goto :goto_e4

    .line 1629
    .end local v17  # "opModes":Landroid/util/SparseIntArray;
    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .local v3, "opModes":Landroid/util/SparseIntArray;
    .restart local v5  # "callingUid":I
    .restart local v6  # "callingPid":I
    .restart local v11  # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :cond_de
    move-object/from16 v17, v3

    move/from16 v20, v5

    move/from16 v21, v6

    .line 1627
    .end local v3  # "opModes":Landroid/util/SparseIntArray;
    .end local v5  # "callingUid":I
    .end local v6  # "callingPid":I
    .end local v15  # "code":I
    .restart local v17  # "opModes":Landroid/util/SparseIntArray;
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    :goto_e4
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v3, v17

    move/from16 v5, v20

    move/from16 v6, v21

    const/4 v12, -0x1

    goto/16 :goto_5f

    .end local v17  # "opModes":Landroid/util/SparseIntArray;
    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .restart local v3  # "opModes":Landroid/util/SparseIntArray;
    .restart local v5  # "callingUid":I
    .restart local v6  # "callingPid":I
    :cond_ef
    move-object/from16 v17, v3

    move/from16 v20, v5

    move/from16 v21, v6

    .end local v3  # "opModes":Landroid/util/SparseIntArray;
    .end local v5  # "callingUid":I
    .end local v6  # "callingPid":I
    .restart local v17  # "opModes":Landroid/util/SparseIntArray;
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    goto :goto_fc

    .line 1625
    .end local v13  # "uidOpCount":I
    .end local v14  # "j":I
    .end local v17  # "opModes":Landroid/util/SparseIntArray;
    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .restart local v3  # "opModes":Landroid/util/SparseIntArray;
    .restart local v5  # "callingUid":I
    .restart local v6  # "callingPid":I
    :cond_f6
    move-object/from16 v17, v3

    move/from16 v20, v5

    move/from16 v21, v6

    .line 1644
    .end local v3  # "opModes":Landroid/util/SparseIntArray;
    .end local v5  # "callingUid":I
    .end local v6  # "callingPid":I
    .restart local v17  # "opModes":Landroid/util/SparseIntArray;
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    :goto_fc
    :try_start_fc
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_102

    .line 1645
    goto/16 :goto_1e8

    .line 1648
    :cond_102
    const/4 v3, -0x1

    if-eq v9, v3, :cond_10f

    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 1649
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v9, v3, :cond_10f

    .line 1651
    goto/16 :goto_1e8

    .line 1654
    :cond_10f
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1655
    .local v3, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1656
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    const/4 v5, 0x0

    .line 1657
    .local v5, "uidChanged":Z
    :goto_11a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d2

    .line 1658
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1659
    .local v6, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1660
    .local v12, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_135

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_135

    .line 1662
    goto :goto_11a

    .line 1664
    :cond_135
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1665
    .local v13, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v13}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    .restart local v14  # "j":I
    :goto_141
    if-ltz v14, :cond_1bd

    .line 1666
    invoke-virtual {v13, v14}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/AppOpsService$Op;

    .line 1667
    .local v15, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 p1, v0

    .end local v0  # "changed":Z
    .local p1, "changed":Z
    iget v0, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 1668
    invoke-static {v15}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    move-object/from16 v16, v3

    .end local v3  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v16, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    iget v3, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-eq v0, v3, :cond_1ad

    .line 1669
    iget v0, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    invoke-static {v15, v0}, Lcom/android/server/appop/AppOpsService$Op;->access$102(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 1670
    const/4 v0, 0x1

    .line 1671
    .end local p1  # "changed":Z
    .restart local v0  # "changed":Z
    const/4 v5, 0x1

    .line 1672
    iget-object v3, v15, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 1673
    .local v3, "uid":I
    move/from16 p1, v0

    .end local v0  # "changed":Z
    .restart local p1  # "changed":Z
    iget v0, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    move/from16 v18, v5

    .end local v5  # "uidChanged":Z
    .local v18, "uidChanged":Z
    iget-object v5, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v19, v6

    .end local v6  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v19, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    iget v6, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 1674
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1673
    invoke-static {v11, v0, v3, v12, v5}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_186
    .catchall {:try_start_fc .. :try_end_186} :catchall_202

    move-object v5, v0

    .line 1675
    .end local v11  # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v5, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_187
    iget v0, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1676
    invoke-virtual {v6, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 1675
    invoke-static {v5, v0, v3, v12, v6}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v0

    move-object v5, v0

    .line 1677
    invoke-virtual {v15}, Lcom/android/server/appop/AppOpsService$Op;->hasAnyTime()Z

    move-result v0

    if-nez v0, :cond_19f

    .line 1678
    invoke-virtual {v13, v14}, Lcom/android/server/appop/AppOpsService$Ops;->removeAt(I)V
    :try_end_19f
    .catchall {:try_start_187 .. :try_end_19f} :catchall_1a5

    .line 1665
    .end local v3  # "uid":I
    .end local v15  # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    :cond_19f
    move/from16 v0, p1

    move-object v11, v5

    move/from16 v5, v18

    goto :goto_1b6

    .line 1697
    .end local v1  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2  # "i":I
    .end local v4  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .end local v12  # "packageName":Ljava/lang/String;
    .end local v13  # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14  # "j":I
    .end local v16  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v17  # "opModes":Landroid/util/SparseIntArray;
    .end local v18  # "uidChanged":Z
    .end local v19  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local p1  # "changed":Z
    :catchall_1a5
    move-exception v0

    move-object v1, v5

    move/from16 v18, v20

    move/from16 v16, v21

    goto/16 :goto_28c

    .line 1668
    .restart local v1  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v2  # "i":I
    .restart local v4  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .local v5, "uidChanged":Z
    .restart local v6  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v11  # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v12  # "packageName":Ljava/lang/String;
    .restart local v13  # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v14  # "j":I
    .restart local v15  # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v16  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v17  # "opModes":Landroid/util/SparseIntArray;
    .restart local p1  # "changed":Z
    :cond_1ad
    move-object/from16 v19, v6

    .end local v6  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v19  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    goto :goto_1b4

    .line 1667
    .end local v16  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v19  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v3, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v6  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_1b0
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    .line 1665
    .end local v3  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v6  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v15  # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v16  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v19  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :goto_1b4
    move/from16 v0, p1

    .end local p1  # "changed":Z
    .restart local v0  # "changed":Z
    :goto_1b6
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v3, v16

    move-object/from16 v6, v19

    goto :goto_141

    .end local v16  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v19  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v3  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v6  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_1bd
    move/from16 p1, v0

    move-object/from16 v16, v3

    move-object/from16 v19, v6

    .line 1682
    .end local v0  # "changed":Z
    .end local v3  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v6  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v14  # "j":I
    .restart local v16  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v19  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local p1  # "changed":Z
    :try_start_1c3
    invoke-virtual {v13}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v0

    if-nez v0, :cond_1cc

    .line 1683
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1685
    .end local v12  # "packageName":Ljava/lang/String;
    .end local v13  # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v19  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_1cc
    move/from16 v0, p1

    move-object/from16 v3, v16

    goto/16 :goto_11a

    .line 1686
    .end local v16  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local p1  # "changed":Z
    .restart local v0  # "changed":Z
    .restart local v3  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_1d2
    move-object/from16 v16, v3

    .end local v3  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v16  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1e1

    .line 1687
    iget-object v3, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v6, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 1689
    :cond_1e1
    if-eqz v5, :cond_1e8

    .line 1690
    iget-object v3, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1621
    .end local v1  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .end local v5  # "uidChanged":Z
    .end local v16  # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v17  # "opModes":Landroid/util/SparseIntArray;
    :cond_1e8
    :goto_1e8
    add-int/lit8 v2, v2, -0x1

    move/from16 v5, v20

    move/from16 v6, v21

    goto/16 :goto_3b

    .line 1697
    .end local v0  # "changed":Z
    .end local v2  # "i":I
    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .local v5, "callingUid":I
    .local v6, "callingPid":I
    :catchall_1f0
    move-exception v0

    move/from16 v18, v5

    move/from16 v16, v6

    move-object v1, v11

    .end local v5  # "callingUid":I
    .end local v6  # "callingPid":I
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    goto/16 :goto_28c

    .line 1621
    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .restart local v0  # "changed":Z
    .restart local v2  # "i":I
    .restart local v5  # "callingUid":I
    .restart local v6  # "callingPid":I
    :cond_1f8
    move/from16 v20, v5

    move/from16 v21, v6

    .line 1694
    .end local v2  # "i":I
    .end local v5  # "callingUid":I
    .end local v6  # "callingPid":I
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    if-eqz v0, :cond_20a

    .line 1695
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_201
    .catchall {:try_start_1c3 .. :try_end_201} :catchall_202

    goto :goto_20a

    .line 1697
    .end local v0  # "changed":Z
    :catchall_202
    move-exception v0

    move-object v1, v11

    move/from16 v18, v20

    move/from16 v16, v21

    goto/16 :goto_28c

    :cond_20a
    :goto_20a
    :try_start_20a
    monitor-exit p0
    :try_end_20b
    .catchall {:try_start_20a .. :try_end_20b} :catchall_280

    .line 1698
    if-eqz v11, :cond_27b

    .line 1699
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_215
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_276

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map$Entry;

    .line 1700
    .local v12, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1701
    .local v13, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/util/ArrayList;

    .line 1702
    .local v14, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_232
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_26f

    .line 1703
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 1704
    .local v6, "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget-object v5, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    iget v2, v6, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 1706
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v2, v6, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v3, v6, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 1704
    move-object/from16 v2, p0

    move-object/from16 v17, v3

    move-object v3, v13

    move-object/from16 p1, v0

    move-object v0, v5

    move/from16 v18, v20

    .end local v20  # "callingUid":I
    .local v18, "callingUid":I
    move-object/from16 v5, v16

    move-object/from16 v19, v6

    move/from16 v16, v21

    .end local v6  # "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    .end local v21  # "callingPid":I
    .local v16, "callingPid":I
    .local v19, "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1702
    .end local v19  # "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    goto :goto_232

    .end local v16  # "callingPid":I
    .end local v18  # "callingUid":I
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    :cond_26f
    move-object/from16 p1, v0

    move/from16 v18, v20

    move/from16 v16, v21

    .line 1708
    .end local v12  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v13  # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v14  # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v15  # "i":I
    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .restart local v16  # "callingPid":I
    .restart local v18  # "callingUid":I
    goto :goto_215

    .line 1699
    .end local v16  # "callingPid":I
    .end local v18  # "callingUid":I
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    :cond_276
    move/from16 v18, v20

    move/from16 v16, v21

    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .restart local v16  # "callingPid":I
    .restart local v18  # "callingUid":I
    goto :goto_27f

    .line 1698
    .end local v16  # "callingPid":I
    .end local v18  # "callingUid":I
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    :cond_27b
    move/from16 v18, v20

    move/from16 v16, v21

    .line 1710
    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .restart local v16  # "callingPid":I
    .restart local v18  # "callingUid":I
    :goto_27f
    return-void

    .line 1697
    .end local v16  # "callingPid":I
    .end local v18  # "callingUid":I
    .restart local v20  # "callingUid":I
    .restart local v21  # "callingPid":I
    :catchall_280
    move-exception v0

    move/from16 v18, v20

    move/from16 v16, v21

    move-object v1, v11

    .end local v20  # "callingUid":I
    .end local v21  # "callingPid":I
    .restart local v16  # "callingPid":I
    .restart local v18  # "callingUid":I
    goto :goto_28c

    .end local v11  # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v16  # "callingPid":I
    .end local v18  # "callingUid":I
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v5  # "callingUid":I
    .local v6, "callingPid":I
    :catchall_287
    move-exception v0

    move/from16 v18, v5

    move/from16 v16, v6

    .end local v5  # "callingUid":I
    .end local v6  # "callingPid":I
    .restart local v16  # "callingPid":I
    .restart local v18  # "callingUid":I
    :goto_28c
    :try_start_28c
    monitor-exit p0
    :try_end_28d
    .catchall {:try_start_28c .. :try_end_28d} :catchall_28e

    throw v0

    :catchall_28e
    move-exception v0

    goto :goto_28c
.end method

.method public resetHistoryParameters()V
    .registers 4

    .line 4470
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "resetHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4473
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->resetHistoryParameters()V

    .line 4474
    return-void
.end method

.method public setAppOpsServiceDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .registers 3
    .param p1, "delegate"  # Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 1815
    monitor-enter p0

    .line 1816
    :try_start_1
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 1817
    monitor-exit p0

    .line 1818
    return-void

    .line 1817
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .registers 13
    .param p1, "code"  # I
    .param p2, "usage"  # I
    .param p3, "uid"  # I
    .param p4, "mode"  # I
    .param p5, "exceptionPackages"  # [Ljava/lang/String;

    .line 1962
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1963
    invoke-direct {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 1964
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1965
    monitor-enter p0

    .line 1966
    :try_start_12
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1967
    .local v0, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    if-nez v0, :cond_27

    .line 1968
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 1969
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1971
    :cond_27
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1972
    if-eqz p4, :cond_54

    .line 1973
    new-instance v1, Lcom/android/server/appop/AppOpsService$Restriction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/appop/AppOpsService$Restriction;-><init>(Lcom/android/server/appop/AppOpsService$1;)V

    .line 1974
    .local v1, "r":Lcom/android/server/appop/AppOpsService$Restriction;
    iput p4, v1, Lcom/android/server/appop/AppOpsService$Restriction;->mode:I

    .line 1975
    if-eqz p5, :cond_51

    .line 1976
    array-length v2, p5

    .line 1977
    .local v2, "N":I
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, v1, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 1978
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    if-ge v3, v2, :cond_51

    .line 1979
    aget-object v4, p5, v3

    .line 1980
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_4e

    .line 1981
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1978
    .end local v4  # "pkg":Ljava/lang/String;
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 1985
    .end local v2  # "N":I
    .end local v3  # "i":I
    :cond_51
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1987
    .end local v0  # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$Restriction;>;"
    .end local v1  # "r":Lcom/android/server/appop/AppOpsService$Restriction;
    :cond_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_12 .. :try_end_55} :catchall_6a

    .line 1989
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 1990
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1989
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1991
    return-void

    .line 1987
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0
.end method

.method public setHistoryParameters(IJI)V
    .registers 14
    .param p1, "mode"  # I
    .param p2, "baseSnapshotInterval"  # J
    .param p4, "compressionStep"  # I

    .line 4446
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "setHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4449
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    int-to-long v7, p4

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 4450
    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 12
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "mode"  # I

    .line 1466
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;IZZ)V

    .line 1467
    return-void
.end method

.method public setUidMode(III)V
    .registers 9
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "mode"  # I

    .line 1292
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 1293
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 1294
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1296
    monitor-enter p0

    .line 1297
    :try_start_13
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 1299
    .local v0, "defaultMode":I
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    .line 1300
    .local v2, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v3, 0x0

    if-nez v2, :cond_3e

    .line 1301
    if-ne p3, v0, :cond_23

    .line 1302
    monitor-exit p0

    return-void

    .line 1304
    :cond_23
    new-instance v4, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v4, p2}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(I)V

    move-object v2, v4

    .line 1305
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1306
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1307
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1308
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    goto :goto_80

    .line 1309
    :cond_3e
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v4, :cond_54

    .line 1310
    if-eq p3, v0, :cond_80

    .line 1311
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1312
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1313
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    goto :goto_80

    .line 1316
    :cond_54
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_66

    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ne v4, p3, :cond_66

    .line 1317
    monitor-exit p0

    return-void

    .line 1319
    :cond_66
    if-ne p3, v0, :cond_78

    .line 1320
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1321
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_7d

    .line 1322
    iput-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    goto :goto_7d

    .line 1325
    :cond_78
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1327
    :cond_7d
    :goto_7d
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 1329
    :cond_80
    :goto_80
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 1330
    .end local v0  # "defaultMode":I
    .end local v2  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_13 .. :try_end_86} :catchall_8d

    .line 1332
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZ)V

    .line 1333
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;I)V

    .line 1334
    return-void

    .line 1330
    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v0
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 11
    .param p1, "code"  # I
    .param p2, "restricted"  # Z
    .param p3, "token"  # Landroid/os/IBinder;
    .param p4, "userHandle"  # I
    .param p5, "exceptionPackages"  # [Ljava/lang/String;

    .line 4348
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 4349
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4350
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 4349
    const-string v4, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 4352
    :cond_1a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_3d

    .line 4353
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4355
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_3d

    .line 4357
    :cond_35
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4361
    :cond_3d
    :goto_3d
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4362
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4363
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 4364
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .registers 12
    .param p1, "restrictions"  # Landroid/os/Bundle;
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "userHandle"  # I

    .line 4333
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 4334
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4335
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    const/16 v1, 0x5b

    if-ge v0, v1, :cond_27

    .line 4337
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v7

    .line 4338
    .local v7, "restriction":Ljava/lang/String;
    if-eqz v7, :cond_24

    .line 4339
    const/4 v1, 0x0

    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 4336
    .end local v7  # "restriction":Ljava/lang/String;
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 4343
    .end local v0  # "i":I
    :cond_27
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 1030
    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v0, 0x0

    .line 1032
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 1033
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_11

    .line 1034
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 1035
    const/4 v0, 0x1

    .line 1037
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1b

    .line 1038
    if-eqz v0, :cond_1a

    .line 1039
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 1041
    invoke-static {}, Lmeizu/security/FlymePermissionManager;->writeOpAskState()V

    .line 1044
    :cond_1a
    return-void

    .line 1037
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I
    .registers 32
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "code"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "startIfModeDefault"  # Z

    .line 2240
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct {v1, v11}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2241
    invoke-direct {v1, v2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2242
    invoke-static/range {p3 .. p4}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2243
    .local v13, "resolvedPackageName":Ljava/lang/String;
    const/4 v0, 0x1

    if-nez v13, :cond_16

    .line 2244
    return v0

    .line 2246
    :cond_16
    move-object/from16 v14, p1

    check-cast v14, Lcom/android/server/appop/AppOpsService$ClientState;

    .line 2247
    .local v14, "client":Lcom/android/server/appop/AppOpsService$ClientState;
    monitor-enter p0

    .line 2248
    const/4 v3, 0x0

    :try_start_1c
    invoke-direct {v1, v11, v13, v0, v3}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v4

    move-object v15, v4

    .line 2250
    .local v15, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v15, :cond_26

    .line 2253
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 2255
    :cond_26
    invoke-direct {v1, v15, v2, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v4

    move-object v10, v4

    .line 2256
    .local v10, "op":Lcom/android/server/appop/AppOpsService$Op;
    invoke-direct {v1, v11, v2, v13}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2257
    monitor-exit p0

    return v0

    .line 2259
    :cond_33
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    move v9, v4

    .line 2261
    .local v9, "switchCode":I
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mLooper:Landroid/os/Looper;

    if-eq v4, v5, :cond_43

    .line 2262
    invoke-static {v11, v9, v12}, Lmeizu/security/FlymePermissionManager;->printPermissionTrace(IILjava/lang/String;)V

    .line 2265
    :cond_43
    iget-object v4, v15, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    move-object v8, v4

    .line 2268
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget v4, v10, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2269
    .local v4, "opCode":I
    iget-object v5, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v6, 0x3

    if-eqz v5, :cond_95

    iget-object v5, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_95

    .line 2270
    iget-object v5, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v8, v2, v5}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v5

    move v7, v5

    .line 2271
    .local v7, "uidMode":I
    if-eqz v7, :cond_8e

    if-eqz p5, :cond_66

    if-eq v7, v6, :cond_90

    .line 2277
    :cond_66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, -0x1

    const/16 v20, 0x0

    iget v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v22, 0x1

    move-object/from16 v16, v10

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 2279
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v16, 0x1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v17, v7

    .end local v7  # "uidMode":I
    .local v17, "uidMode":I
    move v7, v0

    move-object v0, v8

    .end local v8  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;II)V

    .line 2281
    monitor-exit p0

    return v17

    .line 2271
    .end local v0  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v17  # "uidMode":I
    .restart local v7  # "uidMode":I
    .restart local v8  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_8e
    move/from16 v17, v7

    .line 2283
    .end local v7  # "uidMode":I
    :cond_90
    move-object/from16 v24, v8

    move/from16 v17, v9

    goto :goto_e1

    .line 2284
    :cond_95
    if-eq v9, v2, :cond_9c

    invoke-direct {v1, v15, v9, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v5

    goto :goto_9d

    :cond_9c
    move-object v5, v10

    :goto_9d
    move-object/from16 v23, v5

    .line 2285
    .local v23, "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v5

    move v7, v5

    .line 2286
    .local v7, "mode":I
    if-eqz v7, :cond_db

    if-eqz p5, :cond_b0

    if-eq v7, v6, :cond_ab

    goto :goto_b0

    :cond_ab
    move-object/from16 v24, v8

    move/from16 v17, v9

    goto :goto_e1

    .line 2292
    :cond_b0
    :goto_b0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, -0x1

    const/16 v20, 0x0

    iget v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v22, 0x1

    move-object/from16 v16, v10

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/appop/AppOpsService$Op;->rejected(JILjava/lang/String;II)V

    .line 2294
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v3, 0x1

    move v6, v4

    move/from16 v16, v7

    .end local v7  # "mode":I
    .local v16, "mode":I
    move/from16 v7, p3

    move-object/from16 v24, v8

    .end local v8  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v24, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move-object/from16 v8, p4

    move/from16 v17, v9

    .end local v9  # "switchCode":I
    .local v17, "switchCode":I
    move v9, v0

    move-object v0, v10

    .end local v10  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v0, "op":Lcom/android/server/appop/AppOpsService$Op;
    move v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;II)V

    .line 2296
    monitor-exit p0

    return v16

    .line 2286
    .end local v0  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v16  # "mode":I
    .end local v17  # "switchCode":I
    .end local v24  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v7  # "mode":I
    .restart local v8  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9  # "switchCode":I
    .restart local v10  # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_db
    move/from16 v16, v7

    move-object/from16 v24, v8

    move/from16 v17, v9

    .line 2301
    .end local v7  # "mode":I
    .end local v8  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v9  # "switchCode":I
    .end local v23  # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v17  # "switchCode":I
    .restart local v24  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :goto_e1
    iget v5, v10, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-nez v5, :cond_111

    .line 2302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v10, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    .line 2304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v9, v24

    .end local v24  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v9, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget v7, v9, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v10, v5, v6, v7, v0}, Lcom/android/server/appop/AppOpsService$Op;->started(JII)V

    .line 2306
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v8, v9, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v16, 0x1

    move v6, v4

    move/from16 v7, p3

    move/from16 v18, v8

    move-object/from16 v8, p4

    move-object v3, v9

    .end local v9  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move/from16 v9, v18

    move-object/from16 v25, v10

    .end local v10  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v25, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;II)V

    .line 2309
    invoke-direct {v1, v2, v11, v12, v0}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    goto :goto_115

    .line 2301
    .end local v3  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v25  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v10  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v24  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_111
    move-object/from16 v25, v10

    move-object/from16 v3, v24

    .line 2311
    .end local v10  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v24  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v3  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v25  # "op":Lcom/android/server/appop/AppOpsService$Op;
    :goto_115
    move-object/from16 v5, v25

    .end local v25  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v5, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget v6, v5, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    add-int/2addr v6, v0

    iput v6, v5, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    .line 2312
    iget v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    add-int/2addr v6, v0

    iput v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    .line 2313
    iget-object v0, v14, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v0, :cond_12a

    .line 2314
    iget-object v0, v14, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2316
    .end local v3  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4  # "opCode":I
    .end local v5  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v15  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v17  # "switchCode":I
    :cond_12a
    monitor-exit p0

    .line 2318
    const/4 v0, 0x0

    return v0

    .line 2316
    :catchall_12d
    move-exception v0

    monitor-exit p0
    :try_end_12f
    .catchall {:try_start_1c .. :try_end_12f} :catchall_12d

    throw v0
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 15
    .param p1, "ops"  # [I
    .param p2, "callback"  # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 2148
    const/4 v0, -0x1

    .line 2149
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2150
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2151
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 2153
    move v0, v7

    .line 2155
    :cond_14
    const/4 v9, 0x0

    if-eqz p1, :cond_31

    .line 2156
    const/16 v1, 0x5a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2156
    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 2159
    :cond_31
    if-nez p2, :cond_34

    .line 2160
    return-void

    .line 2162
    :cond_34
    monitor-enter p0

    .line 2163
    :try_start_35
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2164
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    if-nez v1, :cond_54

    .line 2165
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 2166
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_55

    .line 2164
    :cond_54
    move-object v10, v1

    .line 2168
    .end local v1  # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :goto_55
    new-instance v11, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    move-object v1, v11

    .line 2170
    .local v1, "activeCallback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    array-length v2, p1

    :goto_62
    if-ge v9, v2, :cond_6c

    aget v3, p1, v9

    .line 2171
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2170
    .end local v3  # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_62

    .line 2173
    .end local v1  # "activeCallback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v10  # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :cond_6c
    monitor-exit p0

    .line 2174
    return-void

    .line 2173
    :catchall_6e
    move-exception v1

    monitor-exit p0
    :try_end_70
    .catchall {:try_start_35 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 5
    .param p1, "op"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "callback"  # Lcom/android/internal/app/IAppOpsCallback;

    .line 1723
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 1724
    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 21
    .param p1, "op"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p4, "callback"  # Lcom/android/internal/app/IAppOpsCallback;

    .line 1729
    move-object/from16 v8, p0

    move/from16 v1, p1

    move-object/from16 v9, p2

    const/4 v10, -0x1

    .line 1730
    .local v10, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1731
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1736
    .local v12, "callingPid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, -0x1

    const/16 v2, 0x5a

    invoke-static {v1, v13, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1738
    if-nez p4, :cond_29

    .line 1739
    return-void

    .line 1741
    :cond_29
    monitor-enter p0

    .line 1742
    if-eq v1, v13, :cond_35

    :try_start_2c
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_31

    goto :goto_36

    .line 1765
    :catchall_31
    move-exception v0

    move v14, v1

    goto/16 :goto_98

    .line 1742
    :cond_35
    move v0, v1

    :goto_36
    move v14, v0

    .line 1743
    .end local p1  # "op":I
    .local v14, "op":I
    :try_start_37
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1744
    .local v0, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-nez v0, :cond_5e

    .line 1745
    new-instance v15, Lcom/android/server/appop/AppOpsService$ModeCallback;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move v4, v10

    move/from16 v5, p3

    move v6, v11

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService$ModeCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIII)V

    move-object v0, v15

    .line 1746
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    :cond_5e
    if-eq v14, v13, :cond_78

    .line 1749
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1750
    .local v1, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v1, :cond_75

    .line 1751
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1752
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1754
    :cond_75
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1756
    .end local v1  # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_78
    if-eqz v9, :cond_92

    .line 1757
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1758
    .restart local v1  # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v1, :cond_8f

    .line 1759
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1760
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    :cond_8f
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1764
    .end local v1  # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_92
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1765
    .end local v0  # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 1766
    return-void

    .line 1765
    :catchall_97
    move-exception v0

    :goto_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_37 .. :try_end_99} :catchall_97

    throw v0
.end method

.method public startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .registers 15
    .param p1, "ops"  # [I
    .param p2, "callback"  # Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 2196
    const/4 v0, -0x1

    .line 2197
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2198
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2199
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 2201
    move v0, v7

    .line 2203
    :cond_14
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Ops cannot be null or empty"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2204
    const/16 v1, 0x5a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2204
    const/4 v9, 0x0

    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 2206
    const-string v1, "Callback cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2207
    monitor-enter p0

    .line 2208
    :try_start_40
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2209
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    if-nez v1, :cond_5f

    .line 2210
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 2211
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_60

    .line 2209
    :cond_5f
    move-object v10, v1

    .line 2213
    .end local v1  # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    :goto_60
    new-instance v11, Lcom/android/server/appop/AppOpsService$NotedCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$NotedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsNotedCallback;III)V

    move-object v1, v11

    .line 2215
    .local v1, "notedCallback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    array-length v2, p1

    :goto_6d
    if-ge v9, v2, :cond_77

    aget v3, p1, v9

    .line 2216
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2215
    .end local v3  # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    .line 2218
    .end local v1  # "notedCallback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    .end local v10  # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    :cond_77
    monitor-exit p0

    .line 2219
    return-void

    .line 2218
    :catchall_79
    move-exception v1

    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_40 .. :try_end_7b} :catchall_79

    throw v1
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 6
    .param p1, "callback"  # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 2178
    if-nez p1, :cond_3

    .line 2179
    return-void

    .line 2181
    :cond_3
    monitor-enter p0

    .line 2182
    :try_start_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 2183
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 2184
    .local v0, "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    if-nez v0, :cond_14

    .line 2185
    monitor-exit p0

    return-void

    .line 2187
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2188
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_27

    .line 2189
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$ActiveCallback;->destroy()V

    .line 2188
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 2191
    .end local v0  # "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v1  # "callbackCount":I
    .end local v2  # "i":I
    :cond_27
    monitor-exit p0

    .line 2192
    return-void

    .line 2191
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 6
    .param p1, "callback"  # Lcom/android/internal/app/IAppOpsCallback;

    .line 1770
    if-nez p1, :cond_3

    .line 1771
    return-void

    .line 1773
    :cond_3
    monitor-enter p0

    .line 1774
    :try_start_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 1775
    .local v0, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v0, :cond_5b

    .line 1776
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 1777
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1d
    if-ltz v1, :cond_38

    .line 1778
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1779
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1780
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_35

    .line 1781
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1777
    .end local v2  # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 1784
    .end local v1  # "i":I
    :cond_38
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1  # "i":I
    :goto_40
    if-ltz v1, :cond_5b

    .line 1785
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1786
    .restart local v2  # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1787
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_58

    .line 1788
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1784
    .end local v2  # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_58
    add-int/lit8 v1, v1, -0x1

    goto :goto_40

    .line 1792
    .end local v1  # "i":I
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 1793
    .end local v0  # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 1794
    return-void

    .line 1793
    :catchall_60
    move-exception v0

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    .registers 6
    .param p1, "callback"  # Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 2223
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    monitor-enter p0

    .line 2225
    :try_start_6
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 2226
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 2227
    .local v0, "notedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    if-nez v0, :cond_16

    .line 2228
    monitor-exit p0

    return-void

    .line 2230
    :cond_16
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2231
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_29

    .line 2232
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$NotedCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$NotedCallback;->destroy()V

    .line 2231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 2234
    .end local v0  # "notedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v1  # "callbackCount":I
    .end local v2  # "i":I
    :cond_29
    monitor-exit p0

    .line 2235
    return-void

    .line 2234
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public systemReady()V
    .registers 13

    .line 752
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 753
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 755
    monitor-enter p0

    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, "changed":Z
    :try_start_18
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_20
    if-ltz v1, :cond_b6

    .line 758
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$UidState;

    .line 760
    .local v2, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 761
    .local v3, "packageNames":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 762
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 763
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 764
    const/4 v0, 0x1

    .line 765
    goto/16 :goto_b2

    .line 768
    :cond_41
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 769
    .local v4, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-nez v4, :cond_46

    .line 770
    goto :goto_b2

    .line 773
    :cond_46
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 774
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/appop/AppOpsService$Ops;>;"
    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 775
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Ops;
    :try_end_5a
    .catchall {:try_start_18 .. :try_end_5a} :catchall_ff

    .line 776
    .local v6, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    const/4 v7, -0x1

    .line 778
    .local v7, "curUid":I
    :try_start_5b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    const/16 v10, 0x2000

    iget-object v11, v6, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 780
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 778
    invoke-interface {v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v8
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_6f} :catch_71
    .catchall {:try_start_5b .. :try_end_6f} :catchall_ff

    move v7, v8

    .line 782
    goto :goto_72

    .line 781
    :catch_71
    move-exception v8

    .line 783
    :goto_72
    :try_start_72
    iget-object v8, v6, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v7, v8, :cond_a6

    .line 784
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pruning old package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": new uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 787
    const/4 v0, 0x1

    .line 789
    .end local v6  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v7  # "curUid":I
    :cond_a6
    goto :goto_4e

    .line 791
    :cond_a7
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 792
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 757
    .end local v2  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3  # "packageNames":[Ljava/lang/String;
    .end local v4  # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v5  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_b2
    :goto_b2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_20

    .line 795
    .end local v1  # "i":I
    :cond_b6
    if-eqz v0, :cond_bb

    .line 796
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 798
    .end local v0  # "changed":Z
    :cond_bb
    monitor-exit p0
    :try_end_bc
    .catchall {:try_start_72 .. :try_end_bc} :catchall_ff

    .line 800
    invoke-static {}, Lmeizu/security/FlymePermissionManager;->systemReady()V

    .line 803
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 804
    .local v0, "packageSuspendFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/appop/AppOpsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 832
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 834
    .local v1, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v2, Lcom/android/server/appop/AppOpsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$3;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 851
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v2

    if-nez v2, :cond_fe

    .line 852
    const-class v2, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManagerInternal;

    .line 854
    .local v2, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    new-instance v3, Lcom/android/server/appop/AppOpsService$4;

    invoke-direct {v3, p0}, Lcom/android/server/appop/AppOpsService$4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManagerInternal;->addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V

    .line 880
    .end local v2  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :cond_fe
    return-void

    .line 798
    .end local v0  # "packageSuspendFilter":Landroid/content/IntentFilter;
    .end local v1  # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catchall_ff
    move-exception v0

    :try_start_100
    monitor-exit p0
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    throw v0
.end method

.method public uidRemoved(I)V
    .registers 3
    .param p1, "uid"  # I

    .line 944
    monitor-enter p0

    .line 945
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_14

    .line 946
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 948
    invoke-static {p1}, Lmeizu/security/FlymePermissionManager;->clearOpsOperation(I)V

    .line 950
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 952
    :cond_14
    monitor-exit p0

    .line 953
    return-void

    .line 952
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public updateUidProcState(II)V
    .registers 26
    .param p1, "uid"  # I
    .param p2, "procState"  # I

    .line 969
    move-object/from16 v1, p0

    monitor-enter p0

    .line 970
    const/4 v0, 0x1

    move/from16 v2, p1

    :try_start_6
    invoke-direct {v1, v2, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v3

    .line 971
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    sget-object v4, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    aget v4, v4, p2

    .line 972
    .local v4, "newState":I
    if-eqz v3, :cond_e1

    iget v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-eq v5, v4, :cond_e1

    .line 973
    iget v10, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 974
    .local v10, "oldPendingState":I
    iput v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 975
    iget v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-lt v4, v5, :cond_65

    const/16 v5, 0x190

    if-gt v4, v5, :cond_25

    iget v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-le v6, v5, :cond_25

    goto :goto_65

    .line 982
    :cond_25
    iget-wide v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_68

    .line 986
    iget v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v7, 0xc8

    if-gt v6, v7, :cond_38

    .line 987
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v5, v5, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .local v5, "settleTime":J
    goto :goto_45

    .line 988
    .end local v5  # "settleTime":J
    :cond_38
    iget v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-gt v6, v5, :cond_41

    .line 989
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v5, v5, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    .restart local v5  # "settleTime":J
    goto :goto_45

    .line 991
    .end local v5  # "settleTime":J
    :cond_41
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v5, v5, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 993
    .restart local v5  # "settleTime":J
    :goto_45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 994
    .local v7, "commitTime":J
    iput-wide v7, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 996
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v11, Lcom/android/server/appop/-$$Lambda$AppOpsService$CVMS-lLMRyZYA1tmqvyuOloKBu0;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$CVMS-lLMRyZYA1tmqvyuOloKBu0;

    const-wide/16 v12, 0x1

    add-long v14, v7, v12

    .line 998
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 997
    invoke-static {v11, v1, v14, v15}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    add-long/2addr v12, v5

    .line 996
    invoke-virtual {v9, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_68

    .line 981
    .end local v5  # "settleTime":J
    .end local v7  # "commitTime":J
    :cond_65
    :goto_65
    invoke-direct {v1, v3}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 1000
    :cond_68
    :goto_68
    iget v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->startNesting:I

    if-eqz v5, :cond_e1

    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v14, v5

    .line 1004
    .local v14, "now":J
    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v0

    .local v5, "i":I
    :goto_78
    if-ltz v5, :cond_e0

    .line 1005
    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Ops;

    move-object v12, v6

    .line 1006
    .local v12, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v6

    sub-int/2addr v6, v0

    move v13, v6

    .local v13, "j":I
    :goto_89
    if-ltz v13, :cond_d8

    .line 1007
    invoke-virtual {v12, v13}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$Op;

    move-object v11, v6

    .line 1008
    .local v11, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget v6, v11, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-lez v6, :cond_cc

    .line 1009
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v11, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    sub-long v18, v6, v8

    .line 1012
    .local v18, "duration":J
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget v7, v11, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v8, v11, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v9, v11, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    const/16 v16, 0x1

    move-object/from16 v20, v11

    .end local v11  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v20, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v11, v16

    move-object/from16 v21, v12

    move/from16 v22, v13

    .end local v12  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13  # "j":I
    .local v21, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v22, "j":I
    move-wide/from16 v12, v18

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/appop/HistoricalRegistry;->increaseOpAccessDuration(IILjava/lang/String;IIJ)V

    .line 1016
    const/16 v17, 0x1

    move-object/from16 v11, v20

    move-wide v12, v14

    move-wide v6, v14

    .end local v14  # "now":J
    .local v6, "now":J
    move-wide/from16 v14, v18

    move/from16 v16, v10

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/appop/AppOpsService$Op;->finished(JJII)V

    .line 1019
    move-object/from16 v8, v20

    .end local v20  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v8, "op":Lcom/android/server/appop/AppOpsService$Op;
    iput-wide v6, v8, Lcom/android/server/appop/AppOpsService$Op;->startRealtime:J

    .line 1020
    invoke-virtual {v8, v6, v7, v4, v0}, Lcom/android/server/appop/AppOpsService$Op;->started(JII)V

    goto :goto_d2

    .line 1008
    .end local v6  # "now":J
    .end local v8  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v18  # "duration":J
    .end local v21  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v22  # "j":I
    .restart local v11  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v12  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v13  # "j":I
    .restart local v14  # "now":J
    :cond_cc
    move-object v8, v11

    move-object/from16 v21, v12

    move/from16 v22, v13

    move-wide v6, v14

    .line 1006
    .end local v11  # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v12  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13  # "j":I
    .end local v14  # "now":J
    .restart local v6  # "now":J
    .restart local v21  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v22  # "j":I
    :goto_d2
    add-int/lit8 v13, v22, -0x1

    move-wide v14, v6

    move-object/from16 v12, v21

    .end local v22  # "j":I
    .restart local v13  # "j":I
    goto :goto_89

    .end local v6  # "now":J
    .end local v21  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v12  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v14  # "now":J
    :cond_d8
    move-object/from16 v21, v12

    move/from16 v22, v13

    move-wide v6, v14

    .line 1004
    .end local v12  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v13  # "j":I
    .end local v14  # "now":J
    .restart local v6  # "now":J
    add-int/lit8 v5, v5, -0x1

    goto :goto_78

    .end local v6  # "now":J
    .restart local v14  # "now":J
    :cond_e0
    move-wide v6, v14

    .line 1026
    .end local v3  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4  # "newState":I
    .end local v5  # "i":I
    .end local v10  # "oldPendingState":I
    .end local v14  # "now":J
    :cond_e1
    monitor-exit p0

    .line 1027
    return-void

    .line 1026
    :catchall_e3
    move-exception v0

    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_6 .. :try_end_e5} :catchall_e3

    throw v0
.end method

.method writeState()V
    .registers 34

    .line 3083
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 3086
    :try_start_5
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_2ba
    .catchall {:try_start_5 .. :try_end_b} :catchall_2b8

    move-object v3, v0

    .line 3090
    .local v3, "stream":Ljava/io/FileOutputStream;
    nop

    .line 3092
    const/4 v0, 0x0

    :try_start_e
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_2b8

    .line 3095
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_12
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3096
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3097
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3098
    const-string v7, "app-ops"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3099
    const-string/jumbo v7, "v"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3101
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_3d} :catch_2a7
    .catchall {:try_start_12 .. :try_end_3d} :catchall_2b8

    .line 3102
    .local v6, "uidStateCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3e
    if-ge v7, v6, :cond_a9

    .line 3103
    :try_start_40
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$UidState;

    .line 3104
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v9, :cond_a1

    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-lez v9, :cond_a1

    .line 3105
    const-string/jumbo v9, "uid"

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3106
    const-string/jumbo v9, "n"

    iget v10, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3107
    iget-object v9, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3108
    .local v9, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    .line 3109
    .local v10, "opCount":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_6d
    if-ge v11, v10, :cond_9b

    .line 3110
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 3111
    .local v12, "op":I
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    .line 3112
    .local v13, "mode":I
    const-string/jumbo v14, "op"

    invoke-interface {v5, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3113
    const-string/jumbo v14, "n"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3114
    const-string/jumbo v14, "m"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3115
    const-string/jumbo v14, "op"

    invoke-interface {v5, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3109
    nop

    .end local v12  # "op":I
    .end local v13  # "mode":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_6d

    .line 3117
    .end local v11  # "j":I
    :cond_9b
    const-string/jumbo v11, "uid"

    invoke-interface {v5, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_a1} :catch_a4
    .catchall {:try_start_40 .. :try_end_a1} :catchall_2b8

    .line 3102
    .end local v8  # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v9  # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v10  # "opCount":I
    :cond_a1
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 3214
    .end local v5  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6  # "uidStateCount":I
    .end local v7  # "i":I
    :catch_a4
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_2aa

    .line 3121
    .restart local v5  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6  # "uidStateCount":I
    :cond_a9
    if-eqz v4, :cond_292

    .line 3122
    const/4 v7, 0x0

    .line 3123
    .local v7, "lastPkg":Ljava/lang/String;
    const/4 v8, 0x0

    move v9, v8

    .local v9, "i":I
    :goto_ae
    :try_start_ae
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_284

    .line 3124
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$PackageOps;

    .line 3125
    .local v10, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_c2} :catch_2a7
    .catchall {:try_start_ae .. :try_end_c2} :catchall_2b8

    if-nez v11, :cond_dd

    .line 3126
    if-eqz v7, :cond_cc

    .line 3127
    :try_start_c6
    const-string/jumbo v11, "pkg"

    invoke-interface {v5, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3129
    :cond_cc
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 3130
    const-string/jumbo v11, "pkg"

    invoke-interface {v5, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3131
    const-string/jumbo v11, "n"

    invoke-interface {v5, v0, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_dd} :catch_a4
    .catchall {:try_start_c6 .. :try_end_dd} :catchall_2b8

    .line 3133
    :cond_dd
    :try_start_dd
    const-string/jumbo v11, "uid"

    invoke-interface {v5, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3134
    const-string/jumbo v11, "n"

    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v0, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3135
    monitor-enter p0
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_f2} :catch_2a7
    .catchall {:try_start_dd .. :try_end_f2} :catchall_2b8

    .line 3136
    :try_start_f2
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12, v8, v8}, Lcom/android/server/appop/AppOpsService;->getOpsRawLocked(ILjava/lang/String;ZZ)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v11
    :try_end_fe
    .catchall {:try_start_f2 .. :try_end_fe} :catchall_279

    .line 3140
    .local v11, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v11, :cond_116

    .line 3141
    :try_start_100
    const-string/jumbo v12, "p"

    iget-boolean v13, v11, Lcom/android/server/appop/AppOpsService$Ops;->isPrivileged:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_10c
    .catchall {:try_start_100 .. :try_end_10c} :catchall_10d

    goto :goto_120

    .line 3145
    .end local v11  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :catchall_10d
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    goto/16 :goto_280

    .line 3143
    .restart local v11  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_116
    :try_start_116
    const-string/jumbo v12, "p"

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3145
    .end local v11  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :goto_120
    monitor-exit p0
    :try_end_121
    .catchall {:try_start_116 .. :try_end_121} :catchall_279

    .line 3146
    :try_start_121
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 3147
    .local v11, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move v12, v8

    .local v12, "j":I
    :goto_126
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_25f

    .line 3148
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 3149
    .local v13, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v14, "op"

    invoke-interface {v5, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3150
    const-string/jumbo v14, "n"

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3151
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v15
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_152} :catch_2a7
    .catchall {:try_start_121 .. :try_end_152} :catchall_2b8

    if-eq v14, v15, :cond_162

    .line 3152
    :try_start_154
    const-string/jumbo v14, "m"

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_162} :catch_a4
    .catchall {:try_start_154 .. :try_end_162} :catchall_2b8

    .line 3155
    :cond_162
    :try_start_162
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v14

    .line 3156
    .local v14, "keys":Landroid/util/LongSparseArray;
    if-eqz v14, :cond_245

    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v15

    if-gtz v15, :cond_176

    move-object/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    goto/16 :goto_24b

    .line 3161
    :cond_176
    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v15

    .line 3162
    .local v15, "keyCount":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "k":I
    :goto_17e
    if-ge v8, v15, :cond_237

    .line 3163
    invoke-virtual {v14, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v17

    .line 3165
    .local v17, "key":J
    invoke-static/range {v17 .. v18}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v16

    move/from16 v19, v16

    .line 3166
    .local v19, "uidState":I
    invoke-static/range {v17 .. v18}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v16
    :try_end_18e
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_18e} :catch_2a7
    .catchall {:try_start_162 .. :try_end_18e} :catchall_2b8

    move/from16 v20, v16

    .line 3168
    .local v20, "flags":I
    move/from16 v0, v19

    move-object/from16 v19, v4

    move/from16 v4, v20

    .end local v20  # "flags":I
    .local v0, "uidState":I
    .local v4, "flags":I
    .local v19, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_196
    invoke-virtual {v13, v0, v0, v4}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v20

    .line 3170
    .local v20, "accessTime":J
    invoke-virtual {v13, v0, v0, v4}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v22

    .line 3172
    .local v22, "rejectTime":J
    invoke-virtual {v13, v0, v0, v4}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v24

    .line 3174
    .local v24, "accessDuration":J
    invoke-virtual {v13, v0, v4}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v27, v26

    .line 3175
    .local v27, "proxyPkg":Ljava/lang/String;
    invoke-virtual {v13, v0, v4}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid(II)I

    move-result v26

    .line 3177
    .local v26, "proxyUid":I
    const-wide/16 v28, 0x0

    cmp-long v30, v20, v28

    if-gtz v30, :cond_1c7

    cmp-long v30, v22, v28

    if-gtz v30, :cond_1c7

    cmp-long v30, v24, v28

    if-gtz v30, :cond_1c7

    move/from16 v30, v0

    move-object/from16 v0, v27

    .end local v27  # "proxyPkg":Ljava/lang/String;
    .local v0, "proxyPkg":Ljava/lang/String;
    .local v30, "uidState":I
    if-nez v0, :cond_1cb

    if-gez v26, :cond_1cb

    .line 3179
    move/from16 v31, v6

    move-object/from16 v32, v7

    goto :goto_22c

    .line 3177
    .end local v30  # "uidState":I
    .local v0, "uidState":I
    .restart local v27  # "proxyPkg":Ljava/lang/String;
    :cond_1c7
    move/from16 v30, v0

    move-object/from16 v0, v27

    .line 3182
    .end local v27  # "proxyPkg":Ljava/lang/String;
    .local v0, "proxyPkg":Ljava/lang/String;
    .restart local v30  # "uidState":I
    :cond_1cb
    move/from16 v27, v4

    .end local v4  # "flags":I
    .local v27, "flags":I
    const-string/jumbo v4, "st"

    move/from16 v31, v6

    const/4 v6, 0x0

    .end local v6  # "uidStateCount":I
    .local v31, "uidStateCount":I
    invoke-interface {v5, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3183
    const-string/jumbo v4, "n"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v32, v7

    const/4 v7, 0x0

    .end local v7  # "lastPkg":Ljava/lang/String;
    .local v32, "lastPkg":Ljava/lang/String;
    invoke-interface {v5, v7, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3184
    cmp-long v4, v20, v28

    if-lez v4, :cond_1f2

    .line 3185
    const-string/jumbo v4, "t"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3187
    :cond_1f2
    cmp-long v4, v22, v28

    if-lez v4, :cond_201

    .line 3188
    const-string/jumbo v4, "r"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3190
    :cond_201
    cmp-long v4, v24, v28

    if-lez v4, :cond_20f

    .line 3191
    const-string v4, "d"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3193
    :cond_20f
    if-eqz v0, :cond_218

    .line 3194
    const-string/jumbo v4, "pp"

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3196
    :cond_218
    if-ltz v26, :cond_225

    .line 3197
    const-string/jumbo v4, "pu"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3199
    :cond_225
    const-string/jumbo v4, "st"

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3162
    .end local v0  # "proxyPkg":Ljava/lang/String;
    .end local v17  # "key":J
    .end local v20  # "accessTime":J
    .end local v22  # "rejectTime":J
    .end local v24  # "accessDuration":J
    .end local v26  # "proxyUid":I
    .end local v27  # "flags":I
    .end local v30  # "uidState":I
    :goto_22c
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v19

    move/from16 v6, v31

    move-object/from16 v7, v32

    const/4 v0, 0x0

    goto/16 :goto_17e

    .end local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31  # "uidStateCount":I
    .end local v32  # "lastPkg":Ljava/lang/String;
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6  # "uidStateCount":I
    .restart local v7  # "lastPkg":Ljava/lang/String;
    :cond_237
    move-object/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    .line 3202
    .end local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6  # "uidStateCount":I
    .end local v7  # "lastPkg":Ljava/lang/String;
    .end local v8  # "k":I
    .restart local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31  # "uidStateCount":I
    .restart local v32  # "lastPkg":Ljava/lang/String;
    const-string/jumbo v0, "op"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_253

    .line 3156
    .end local v15  # "keyCount":I
    .end local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31  # "uidStateCount":I
    .end local v32  # "lastPkg":Ljava/lang/String;
    .restart local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6  # "uidStateCount":I
    .restart local v7  # "lastPkg":Ljava/lang/String;
    :cond_245
    move-object/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    .line 3157
    .end local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6  # "uidStateCount":I
    .end local v7  # "lastPkg":Ljava/lang/String;
    .restart local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31  # "uidStateCount":I
    .restart local v32  # "lastPkg":Ljava/lang/String;
    :goto_24b
    const-string/jumbo v0, "op"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3158
    nop

    .line 3147
    .end local v13  # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v14  # "keys":Landroid/util/LongSparseArray;
    :goto_253
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v19

    move/from16 v6, v31

    move-object/from16 v7, v32

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto/16 :goto_126

    .end local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31  # "uidStateCount":I
    .end local v32  # "lastPkg":Ljava/lang/String;
    .restart local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6  # "uidStateCount":I
    .restart local v7  # "lastPkg":Ljava/lang/String;
    :cond_25f
    move-object/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    .line 3204
    .end local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6  # "uidStateCount":I
    .end local v7  # "lastPkg":Ljava/lang/String;
    .end local v12  # "j":I
    .restart local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31  # "uidStateCount":I
    .restart local v32  # "lastPkg":Ljava/lang/String;
    const-string/jumbo v0, "uid"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_26c
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_26c} :catch_2a5
    .catchall {:try_start_196 .. :try_end_26c} :catchall_2b8

    .line 3123
    nop

    .end local v10  # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v11  # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v19

    move/from16 v6, v31

    move-object/from16 v7, v32

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto/16 :goto_ae

    .line 3145
    .end local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31  # "uidStateCount":I
    .end local v32  # "lastPkg":Ljava/lang/String;
    .restart local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6  # "uidStateCount":I
    .restart local v7  # "lastPkg":Ljava/lang/String;
    .restart local v10  # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :catchall_279
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    .end local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6  # "uidStateCount":I
    .end local v7  # "lastPkg":Ljava/lang/String;
    .restart local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31  # "uidStateCount":I
    .restart local v32  # "lastPkg":Ljava/lang/String;
    :goto_280
    :try_start_280
    monitor-exit p0
    :try_end_281
    .catchall {:try_start_280 .. :try_end_281} :catchall_282

    .end local p0  # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_281
    throw v0

    .restart local p0  # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_282
    move-exception v0

    goto :goto_280

    .line 3123
    .end local v10  # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31  # "uidStateCount":I
    .end local v32  # "lastPkg":Ljava/lang/String;
    .restart local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6  # "uidStateCount":I
    .restart local v7  # "lastPkg":Ljava/lang/String;
    :cond_284
    move-object/from16 v19, v4

    move/from16 v31, v6

    .line 3206
    .end local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6  # "uidStateCount":I
    .end local v9  # "i":I
    .restart local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31  # "uidStateCount":I
    if-eqz v7, :cond_296

    .line 3207
    const-string/jumbo v0, "pkg"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_296

    .line 3121
    .end local v7  # "lastPkg":Ljava/lang/String;
    .end local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v31  # "uidStateCount":I
    .restart local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6  # "uidStateCount":I
    :cond_292
    move-object/from16 v19, v4

    move/from16 v31, v6

    .line 3211
    .end local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6  # "uidStateCount":I
    .restart local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v31  # "uidStateCount":I
    :cond_296
    :goto_296
    const-string v0, "app-ops"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3212
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3213
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2a4
    .catch Ljava/io/IOException; {:try_start_281 .. :try_end_2a4} :catch_2a5
    .catchall {:try_start_281 .. :try_end_2a4} :catchall_2b8

    .line 3217
    .end local v5  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v31  # "uidStateCount":I
    goto :goto_2b6

    .line 3214
    :catch_2a5
    move-exception v0

    goto :goto_2aa

    .end local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_2a7
    move-exception v0

    move-object/from16 v19, v4

    .line 3215
    .end local v4  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2aa
    :try_start_2aa
    const-string v4, "AppOps"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3216
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3218
    .end local v0  # "e":Ljava/io/IOException;
    .end local v3  # "stream":Ljava/io/FileOutputStream;
    .end local v19  # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2b6
    monitor-exit v2

    .line 3219
    return-void

    .line 3218
    :catchall_2b8
    move-exception v0

    goto :goto_2d3

    .line 3087
    :catch_2ba
    move-exception v0

    .line 3088
    .restart local v0  # "e":Ljava/io/IOException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    monitor-exit v2

    return-void

    .line 3218
    .end local v0  # "e":Ljava/io/IOException;
    :goto_2d3
    monitor-exit v2
    :try_end_2d4
    .catchall {:try_start_2aa .. :try_end_2d4} :catchall_2b8

    throw v0
.end method
