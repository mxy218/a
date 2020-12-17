.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;,
        Lcom/android/server/am/ProcessList$KillHandler;,
        Lcom/android/server/am/ProcessList$MyProcessMap;,
        Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;,
        Lcom/android/server/am/ProcessList$IsolatedUidRange;
    }
.end annotation


# static fields
.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_IMPORTANCE_LEVELS:I = 0x5

.field static final CACHED_APP_LMK_FIRST_ADJ:I = 0x3b6

.field static final CACHED_APP_MAX_ADJ:I = 0x3e7

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field static final LMK_GETKILLCNT:B = 0x4t

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCPURGE:B = 0x3t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x3e8

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERCEPTIBLE_LOW_APP_ADJ:I = 0xfa

.field static final PERCEPTIBLE_RECENT_FOREGROUND_APP_ADJ:I = 0x32

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_NUM:I = 0x5

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field private static final PROPERTY_USE_APP_IMAGE_STARTUP_CACHE:Ljava/lang/String; = "persist.device_config.runtime_native.use_app_image_startup_cache"

.field public static final PSS_ALL_INTERVAL:I = 0x124f80

.field private static final PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_ASLEEP_CACHED_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_TOP_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_PERSISTENT_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x36ee80

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_PERSISTENT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x493e0

.field private static final PSS_SAME_TOP_INTERVAL:I = 0xea60

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_DEFAULT:I = 0x2

.field static final SCHED_GROUP_RESTRICTED:I = 0x1

.field public static final SCHED_GROUP_TOP_APP:I = 0x3

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x4

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x3e9

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field public static mPerfServiceStartHint:Landroid/util/BoostFramework;

.field private static final sFirstAsleepPssTimes:[J

.field private static final sFirstAwakePssTimes:[J

.field static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field static sKillThread:Lcom/android/server/ServiceThread;

.field private static sLmkdInputStream:Ljava/io/InputStream;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation
.end field

.field private static sLmkdOutputStream:Ljava/io/OutputStream;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation
.end field

.field private static sLmkdSocket:Landroid/net/LocalSocket;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation
.end field

.field private static sLmkdSocketLock:Ljava/lang/Object;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAsleepPssTimes:[J

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstPssTimes:[J

.field private static final sTestSamePssTimes:[J


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mAppZygoteProcesses:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/AppZygote;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAppZygotes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/os/AppZygote;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedRestoreLevel:J

.field mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mHaveDisplaySize:Z

.field final mIsolatedProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLruProcessActivityStart:I

.field mLruProcessServiceStart:I

.field final mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLruSeq:I

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field final mPendingStarts:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mProcStartSeqCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field mProcStateSeqCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

.field final mRemovedProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/android/server/am/ActivityManagerService;

.field final mStringBuilder:Ljava/lang/StringBuilder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 275
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 276
    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 306
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocketLock:Ljava/lang/Object;

    .line 391
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    .line 975
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 999
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_76

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 1007
    new-array v1, v0, [J

    fill-array-data v1, :array_8e

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1015
    new-array v1, v0, [J

    fill-array-data v1, :array_a6

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 1023
    new-array v1, v0, [J

    fill-array-data v1, :array_be

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 1031
    new-array v1, v0, [J

    fill-array-data v1, :array_d6

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 1039
    new-array v0, v0, [J

    fill-array-data v0, :array_ee

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    :array_48
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_76
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_8e
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_a6
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_be
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_d6
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_ee
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .registers 7

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 281
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_9c

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 287
    new-array v1, v0, [I

    fill-array-data v1, :array_ac

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 293
    new-array v0, v0, [I

    fill-array-data v0, :array_bc

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 298
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 330
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 337
    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 345
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 363
    iput v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 368
    iput v0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 375
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 380
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 385
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 501
    new-instance v1, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v2, 0x182b8

    const v3, 0x1869f

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 508
    new-instance v1, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    const v2, 0x15f90

    const v3, 0x182b7

    const/16 v4, 0x64

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;III)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 516
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 524
    new-instance v1, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 567
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 568
    .local v1, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 569
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 570
    invoke-direct {p0, v0, v0, v0}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 571
    return-void

    :array_9c
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x384
        0x3b6
    .end array-data

    :array_ac
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_bc
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .registers 2
    .param p0, "tracker"  # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 1116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1117
    return-void
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .registers 7
    .param p0, "sb"  # Ljava/lang/StringBuilder;
    .param p1, "ramKb"  # J

    .line 893
    const/4 v0, 0x0

    .local v0, "j":I
    const/16 v1, 0xa

    .local v1, "fact":I
    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_15

    .line 894
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_10

    .line 895
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 893
    :cond_10
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_3

    .line 898
    .end local v0  # "j":I
    .end local v1  # "fact":I
    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 899
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 9
    .param p0, "prefix"  # Ljava/lang/String;
    .param p1, "compactPrefix"  # Ljava/lang/String;
    .param p2, "space"  # Ljava/lang/String;
    .param p3, "val"  # I
    .param p4, "base"  # I
    .param p5, "compact"  # Z

    .line 698
    sub-int v0, p3, p4

    .line 699
    .local v0, "diff":I
    if-nez v0, :cond_1a

    .line 700
    if-eqz p5, :cond_7

    .line 701
    return-object p1

    .line 703
    :cond_7
    if-nez p2, :cond_a

    return-object p0

    .line 704
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 706
    :cond_1a
    const/16 v1, 0xa

    const-string v2, "+"

    if-ge v0, v1, :cond_3c

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2b

    goto :goto_2d

    :cond_2b
    const-string v2, "+ "

    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 709
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkSlow(JLjava/lang/String;)V
    .registers 10
    .param p1, "startTime"  # J
    .param p3, "where"  # Ljava/lang/String;

    .line 1423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1424
    .local v0, "now":J
    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    .line 1426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_2d
    return-void
.end method

.method public static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .registers 4
    .param p0, "tracker"  # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 1107
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_1b

    .line 1108
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    .line 1109
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    .line 1110
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1113
    :cond_1b
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 2
    .param p0, "totalProcessLimit"  # I

    .line 693
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .registers 15
    .param p0, "procState"  # I
    .param p1, "tracker"  # Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    .param p2, "test"  # Z
    .param p3, "sleeping"  # Z
    .param p4, "now"  # J

    .line 1123
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    .line 1124
    .local v0, "memState":I
    if-eqz p1, :cond_2d

    .line 1125
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge v0, v1, :cond_c

    .line 1126
    move v1, v0

    goto :goto_e

    :cond_c
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1127
    .local v1, "highestMemState":I
    :goto_e
    iget-object v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 1128
    .local v2, "first":Z
    :goto_17
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1129
    iput v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 1130
    if-eqz v2, :cond_23

    .line 1131
    const/high16 v3, 0x3f800000  # 1.0f

    move v4, v3

    .local v4, "scalingFactor":F
    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2c

    .line 1133
    .end local v4  # "scalingFactor":F
    :cond_23
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v4, v3, v0

    .line 1134
    .restart local v4  # "scalingFactor":F
    const/high16 v3, 0x3fc00000  # 1.5f

    mul-float/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 1136
    .end local v1  # "highestMemState":I
    :goto_2c
    goto :goto_30

    .line 1137
    .end local v2  # "first":Z
    .end local v4  # "scalingFactor":F
    :cond_2d
    const/4 v2, 0x1

    .line 1138
    .restart local v2  # "first":Z
    const/high16 v4, 0x3f800000  # 1.0f

    .line 1140
    .restart local v4  # "scalingFactor":F
    :goto_30
    if-eqz p2, :cond_3a

    .line 1141
    if-eqz v2, :cond_37

    .line 1142
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4b

    .line 1143
    :cond_37
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4b

    .line 1144
    :cond_3a
    if-eqz v2, :cond_44

    .line 1145
    if-eqz p3, :cond_41

    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4b

    :cond_41
    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4b

    .line 1146
    :cond_44
    if-eqz p3, :cond_49

    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4b

    :cond_49
    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    :goto_4b
    nop

    .line 1147
    .local v1, "table":[J
    aget-wide v5, v1, v0

    long-to-float v3, v5

    mul-float/2addr v3, v4

    float-to-long v5, v3

    .line 1148
    .local v5, "delay":J
    const-wide/32 v7, 0x36ee80

    cmp-long v3, v5, v7

    if-lez v3, :cond_5b

    .line 1149
    const-wide/32 v5, 0x36ee80

    .line 1151
    :cond_5b
    add-long v7, p4, v5

    return-wide v7
.end method

.method private createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .registers 12
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 1788
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1791
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    .line 1792
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    .line 1794
    .local v2, "appZygote":Landroid/os/AppZygote;
    if-nez v2, :cond_71

    .line 1795
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v3, :cond_25

    .line 1796
    const-string v3, "ActivityManager"

    const-string v4, "Creating new app zygote."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_25
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 1800
    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v5

    .line 1799
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v3

    .line 1801
    .local v3, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1804
    .local v4, "userId":I
    iget v5, v3, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 1805
    .local v5, "firstUid":I
    iget v6, v3, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v4, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 1806
    .local v6, "lastUid":I
    new-instance v7, Landroid/content/pm/ApplicationInfo;

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, v8}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 1813
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1814
    iput v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1815
    new-instance v8, Landroid/os/AppZygote;

    invoke-direct {v8, v7, v1, v5, v6}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;III)V

    move-object v2, v8

    .line 1816
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1817
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1818
    .local v8, "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    nop

    .end local v3  # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .end local v4  # "userId":I
    .end local v5  # "firstUid":I
    .end local v6  # "lastUid":I
    .end local v7  # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_8e

    .line 1820
    .end local v8  # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_71
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v3, :cond_7c

    .line 1821
    const-string v3, "ActivityManager"

    const-string v4, "Reusing existing app zygote."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :cond_7c
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1824
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object v8, v3

    .line 1830
    .restart local v8  # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_8e
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1832
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 1833
    .end local v1  # "uid":I
    .end local v2  # "appZygote":Landroid/os/AppZygote;
    .end local v8  # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_96
    move-exception v1

    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .registers 8
    .param p0, "min_oom_adj"  # I
    .param p1, "max_oom_adj"  # I

    .line 1221
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1222
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1223
    .local v1, "repl":Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1224
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1225
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1226
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    .line 1227
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 1228
    .local v3, "i":I
    if-eq v3, v2, :cond_2b

    .line 1229
    const-string v2, "ActivityManager"

    const-string v5, "Failed to get kill count, code mismatch"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return-object v4

    .line 1232
    :cond_2b
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 1234
    .end local v3  # "i":I
    :cond_35
    return-object v4
.end method

.method private getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .registers 6
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2365
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 2369
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2370
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2369
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    return-object v0

    .line 2367
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object v0
.end method

.method private handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z
    .registers 13
    .param p1, "pending"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "startResult"  # Landroid/os/Process$ProcessStartResult;
    .param p3, "expectedStartSeq"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2036
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    .line 2037
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v1, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ne v0, v1, :cond_13

    .line 2038
    iget-boolean v0, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2041
    :cond_13
    const/4 v0, 0x0

    return v0

    .line 2043
    :cond_15
    iget v3, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z

    move-result v0

    return v0
.end method

.method private isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;
    .registers 8
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "expectedStartSeq"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2012
    const/4 v0, 0x0

    .line 2013
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v1, :cond_13

    .line 2014
    if-nez v0, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2015
    :cond_d
    const-string/jumbo v1, "killedByAm=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    :cond_13
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2c

    .line 2018
    if-nez v0, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2019
    :cond_27
    const-string v1, "No entry in mProcessNames;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    :cond_2c
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-nez v1, :cond_3e

    .line 2022
    if-nez v0, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2023
    :cond_38
    const-string/jumbo v1, "pendingStart=false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    :cond_3e
    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v1, v1, p2

    if-lez v1, :cond_70

    .line 2026
    if-nez v0, :cond_4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2027
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    :cond_70
    if-nez v0, :cond_74

    const/4 v1, 0x0

    goto :goto_78

    :cond_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_78
    return-object v1
.end method

.method static killProcessGroup(II)V
    .registers 4
    .param p0, "uid"  # I
    .param p1, "pid"  # I

    .line 1317
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_e

    .line 1318
    const/16 v1, 0xfa0

    .line 1319
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1318
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_18

    .line 1321
    :cond_e
    const-string v0, "ActivityManager"

    const-string v1, "Asked to kill process group before system bringup!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 1324
    :goto_18
    return-void
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .registers 9
    .param p0, "setAdj"  # I
    .param p1, "compact"  # Z

    .line 713
    const/16 v0, 0x384

    if-lt p0, v0, :cond_13

    .line 714
    const/16 v5, 0x384

    const-string v1, "cch"

    const-string v2, "cch"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 716
    :cond_13
    const/16 v0, 0x320

    if-lt p0, v0, :cond_27

    .line 717
    const/4 v3, 0x0

    const/16 v5, 0x320

    const-string/jumbo v1, "svcb  "

    const-string/jumbo v2, "svcb"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 719
    :cond_27
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_3b

    .line 720
    const/4 v3, 0x0

    const/16 v5, 0x2bc

    const-string/jumbo v1, "prev  "

    const-string/jumbo v2, "prev"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 722
    :cond_3b
    const/16 v0, 0x258

    if-lt p0, v0, :cond_4d

    .line 723
    const/4 v3, 0x0

    const/16 v5, 0x258

    const-string v1, "home  "

    const-string v2, "home"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 725
    :cond_4d
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_61

    .line 726
    const/4 v3, 0x0

    const/16 v5, 0x1f4

    const-string/jumbo v1, "svc   "

    const-string/jumbo v2, "svc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 728
    :cond_61
    const/16 v0, 0x190

    if-lt p0, v0, :cond_73

    .line 729
    const/4 v3, 0x0

    const/16 v5, 0x190

    const-string v1, "hvy   "

    const-string v2, "hvy"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 731
    :cond_73
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_85

    .line 732
    const/4 v3, 0x0

    const/16 v5, 0x12c

    const-string v1, "bkup  "

    const-string v2, "bkup"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 734
    :cond_85
    const/16 v0, 0xfa

    if-lt p0, v0, :cond_99

    .line 735
    const/4 v3, 0x0

    const/16 v5, 0xfa

    const-string/jumbo v1, "prcl  "

    const-string/jumbo v2, "prcl"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 737
    :cond_99
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_ad

    .line 738
    const/4 v3, 0x0

    const/16 v5, 0xc8

    const-string/jumbo v1, "prcp  "

    const-string/jumbo v2, "prcp"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 740
    :cond_ad
    const/16 v0, 0x64

    if-lt p0, v0, :cond_c2

    .line 741
    const/16 v5, 0x64

    const-string/jumbo v1, "vis"

    const-string/jumbo v2, "vis"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 743
    :cond_c2
    if-ltz p0, :cond_d1

    .line 744
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v1, "fore  "

    const-string v2, "fore"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 746
    :cond_d1
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_e5

    .line 747
    const/4 v3, 0x0

    const/16 v5, -0x2bc

    const-string/jumbo v1, "psvc  "

    const-string/jumbo v2, "psvc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 749
    :cond_e5
    const/16 v0, -0x320

    if-lt p0, v0, :cond_f9

    .line 750
    const/4 v3, 0x0

    const/16 v5, -0x320

    const-string/jumbo v1, "pers  "

    const-string/jumbo v2, "pers"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 752
    :cond_f9
    const/16 v0, -0x384

    if-lt p0, v0, :cond_10d

    .line 753
    const/4 v3, 0x0

    const/16 v5, -0x384

    const-string/jumbo v1, "sys   "

    const-string/jumbo v2, "sys"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 755
    :cond_10d
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_121

    .line 756
    const/4 v3, 0x0

    const/16 v5, -0x3e8

    const-string/jumbo v1, "ntv  "

    const-string/jumbo v2, "ntv"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 759
    :cond_121
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateProtoEnum(I)I
    .registers 2
    .param p0, "curProcState"  # I

    .line 840
    const/16 v0, 0x3eb

    packed-switch p0, :pswitch_data_4a

    .line 888
    const/16 v0, 0x3e6

    return v0

    .line 884
    :pswitch_8  #0x15
    const/16 v0, 0x3fb

    return v0

    .line 882
    :pswitch_b  #0x14
    const/16 v0, 0x3fa

    return v0

    .line 880
    :pswitch_e  #0x13
    const/16 v0, 0x3f9

    return v0

    .line 878
    :pswitch_11  #0x12
    const/16 v0, 0x3f8

    return v0

    .line 876
    :pswitch_14  #0x11
    const/16 v0, 0x3f7

    return v0

    .line 874
    :pswitch_17  #0x10
    const/16 v0, 0x3f6

    return v0

    .line 872
    :pswitch_1a  #0xf
    const/16 v0, 0x3f5

    return v0

    .line 866
    :pswitch_1d  #0xe
    const/16 v0, 0x3f4

    return v0

    .line 856
    :pswitch_20  #0xd
    const/16 v0, 0x3f3

    return v0

    .line 870
    :pswitch_23  #0xc
    const/16 v0, 0x3f2

    return v0

    .line 868
    :pswitch_26  #0xb
    const/16 v0, 0x3f1

    return v0

    .line 864
    :pswitch_29  #0xa
    const/16 v0, 0x3f0

    return v0

    .line 862
    :pswitch_2c  #0x9
    const/16 v0, 0x3ef

    return v0

    .line 860
    :pswitch_2f  #0x8
    const/16 v0, 0x3ee

    return v0

    .line 858
    :pswitch_32  #0x7
    const/16 v0, 0x3ed

    return v0

    .line 854
    :pswitch_35  #0x6
    const/16 v0, 0x3ec

    return v0

    .line 852
    :pswitch_38  #0x5
    return v0

    .line 850
    :pswitch_39  #0x4
    const/16 v0, 0x3fc

    return v0

    .line 848
    :pswitch_3c  #0x3
    return v0

    .line 846
    :pswitch_3d  #0x2
    const/16 v0, 0x3ea

    return v0

    .line 844
    :pswitch_40  #0x1
    const/16 v0, 0x3e9

    return v0

    .line 842
    :pswitch_43  #0x0
    const/16 v0, 0x3e8

    return v0

    .line 886
    :pswitch_46  #0xffffffff
    const/16 v0, 0x3e7

    return v0

    nop

    :pswitch_data_4a
    .packed-switch -0x1
        :pswitch_46  #ffffffff
        :pswitch_43  #00000000
        :pswitch_40  #00000001
        :pswitch_3d  #00000002
        :pswitch_3c  #00000003
        :pswitch_39  #00000004
        :pswitch_38  #00000005
        :pswitch_35  #00000006
        :pswitch_32  #00000007
        :pswitch_2f  #00000008
        :pswitch_2c  #00000009
        :pswitch_29  #0000000a
        :pswitch_26  #0000000b
        :pswitch_23  #0000000c
        :pswitch_20  #0000000d
        :pswitch_1d  #0000000e
        :pswitch_1a  #0000000f
        :pswitch_17  #00000010
        :pswitch_14  #00000011
        :pswitch_11  #00000012
        :pswitch_e  #00000013
        :pswitch_b  #00000014
        :pswitch_8  #00000015
    .end packed-switch
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .registers 2
    .param p0, "curProcState"  # I

    .line 765
    packed-switch p0, :pswitch_data_4a

    .line 833
    const-string v0, "??"

    .local v0, "procState":Ljava/lang/String;
    goto :goto_48

    .line 830
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_6  #0x15
    const-string v0, "NONE"

    .line 831
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 827
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_9  #0x14
    const-string v0, "CEM "

    .line 828
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 824
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_c  #0x13
    const-string v0, "CRE "

    .line 825
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 821
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_f  #0x12
    const-string v0, "CACC"

    .line 822
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 818
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_12  #0x11
    const-string v0, "CAC "

    .line 819
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 815
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_15  #0x10
    const-string v0, "LAST"

    .line 816
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 812
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_18  #0xf
    const-string v0, "HOME"

    .line 813
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 809
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_1b  #0xe
    const-string v0, "HVY "

    .line 810
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 806
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_1e  #0xd
    const-string v0, "TPSL"

    .line 807
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 803
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_21  #0xc
    const-string v0, "RCVR"

    .line 804
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 800
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_24  #0xb
    const-string v0, "SVC "

    .line 801
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 797
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_27  #0xa
    const-string v0, "BKUP"

    .line 798
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 794
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_2a  #0x9
    const-string v0, "TRNB"

    .line 795
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 791
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_2d  #0x8
    const-string v0, "IMPB"

    .line 792
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 788
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_30  #0x7
    const-string v0, "IMPF"

    .line 789
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 785
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_33  #0x6
    const-string v0, "BFGS"

    .line 786
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 782
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_36  #0x5
    const-string v0, "FGS "

    .line 783
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 779
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_39  #0x4
    const-string v0, "BTOP"

    .line 780
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 776
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_3c  #0x3
    const-string v0, "FGSL"

    .line 777
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 773
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_3f  #0x2
    const-string v0, "TOP "

    .line 774
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 770
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_42  #0x1
    const-string v0, "PERU"

    .line 771
    .restart local v0  # "procState":Ljava/lang/String;
    goto :goto_48

    .line 767
    .end local v0  # "procState":Ljava/lang/String;
    :pswitch_45  #0x0
    const-string v0, "PER "

    .line 768
    .restart local v0  # "procState":Ljava/lang/String;
    nop

    .line 836
    :goto_48
    return-object v0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_45  #00000000
        :pswitch_42  #00000001
        :pswitch_3f  #00000002
        :pswitch_3c  #00000003
        :pswitch_39  #00000004
        :pswitch_36  #00000005
        :pswitch_33  #00000006
        :pswitch_30  #00000007
        :pswitch_2d  #00000008
        :pswitch_2a  #00000009
        :pswitch_27  #0000000a
        :pswitch_24  #0000000b
        :pswitch_21  #0000000c
        :pswitch_1e  #0000000d
        :pswitch_1b  #0000000e
        :pswitch_18  #0000000f
        :pswitch_15  #00000010
        :pswitch_12  #00000011
        :pswitch_f  #00000012
        :pswitch_c  #00000013
        :pswitch_9  #00000014
        :pswitch_6  #00000015
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .registers 3
    .param p0, "test"  # Z

    .line 1103
    if-eqz p0, :cond_5

    const-wide/16 v0, 0x2710

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x3a98

    :goto_7
    return-wide v0
.end method

.method private static openLmkdSocketLS()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation

    .line 1240
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1241
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "lmkd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1244
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    .line 1245
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdInputStream:Ljava/io/InputStream;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_2a

    .line 1250
    nop

    .line 1252
    const/4 v0, 0x1

    return v0

    .line 1246
    :catch_2a
    move-exception v0

    .line 1247
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1249
    const/4 v1, 0x0

    return v1
.end method

.method private static procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .registers 6
    .param p0, "procState"  # I
    .param p1, "memAdj"  # I
    .param p2, "currApp"  # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"  # I

    .line 3049
    invoke-static {p0, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result v0

    .line 3051
    .local v0, "imp":I
    const/16 v1, 0x190

    if-ne v0, v1, :cond_b

    .line 3052
    iput p1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_e

    .line 3054
    :cond_b
    const/4 v1, 0x0

    iput v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 3056
    :goto_e
    return v0
.end method

.method public static procStatesDifferForMem(II)Z
    .registers 4
    .param p0, "procState1"  # I
    .param p1, "procState2"  # I

    .line 1099
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v0, p0

    aget v0, v0, p1

    if-eq v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static readLmkdReplyLS(Ljava/nio/ByteBuffer;)Z
    .registers 5
    .param p0, "buf"  # Ljava/nio/ByteBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation

    .line 1274
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 1275
    .local v1, "len":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v2, v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_1a

    if-ne v1, v2, :cond_19

    .line 1276
    const/4 v0, 0x1

    return v0

    .line 1280
    :cond_19
    goto :goto_22

    .line 1278
    .end local v1  # "len":I
    :catch_1a
    move-exception v1

    .line 1279
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Error reading from lowmemorykiller socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    .end local v1  # "ex":Ljava/io/IOException;
    :goto_22
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1283
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1284
    return v0
.end method

.method public static final remove(I)V
    .registers 3
    .param p0, "pid"  # I

    .line 1208
    if-gtz p0, :cond_3

    .line 1209
    return-void

    .line 1211
    :cond_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1212
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1213
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1214
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1215
    return-void
.end method

.method private removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1760
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 1762
    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 1761
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    .line 1763
    .local v0, "appUidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    if-eqz v0, :cond_17

    .line 1764
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 1767
    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 1768
    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v3

    .line 1767
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AppZygote;

    .line 1769
    .local v1, "appZygote":Landroid/os/AppZygote;
    if-eqz v1, :cond_60

    .line 1770
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1771
    .local v2, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1772
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_60

    .line 1773
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1774
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v3, :cond_4d

    .line 1777
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;)V

    goto :goto_60

    .line 1779
    :cond_4d
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1780
    .local v3, "msg":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1781
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1785
    .end local v2  # "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3  # "msg":Landroid/os/Message;
    :cond_60
    :goto_60
    return-void
.end method

.method public static setOomAdj(III)V
    .registers 12
    .param p0, "pid"  # I
    .param p1, "uid"  # I
    .param p2, "amt"  # I

    .line 1183
    if-gtz p0, :cond_3

    .line 1184
    return-void

    .line 1186
    :cond_3
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_8

    .line 1187
    return-void

    .line 1189
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1190
    .local v0, "start":J
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1191
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1192
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1193
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1194
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1195
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1197
    .local v3, "now":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_58

    .line 1198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SLOW OOM ADJ: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v3, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_58
    return-void
.end method

.method private startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .registers 41
    .param p1, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"  # Ljava/lang/String;
    .param p3, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"  # I
    .param p5, "gids"  # [I
    .param p6, "runtimeFlags"  # I
    .param p7, "mountExternal"  # I
    .param p8, "seInfo"  # Ljava/lang/String;
    .param p9, "requiredAbi"  # Ljava/lang/String;
    .param p10, "instructionSet"  # Ljava/lang/String;
    .param p11, "invokeWith"  # Ljava/lang/String;
    .param p12, "startTime"  # J

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v3, p12

    .line 1841
    const-wide/16 v5, 0x40

    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start proc: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1843
    const-string/jumbo v0, "startProcess: asking zygote to start proc"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1845
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_141

    const-string/jumbo v7, "seq="

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_76

    .line 1846
    :try_start_2f
    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v10, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v22, 0x0

    iget-object v10, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v8

    move-object/from16 v10, p2

    move/from16 v12, p4

    move/from16 v13, p4

    move-object v7, v14

    move-object/from16 v14, p5

    move-object v8, v15

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, v0

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v21, v8

    move-object/from16 v23, v7

    move-object/from16 v24, v9

    invoke-static/range {v10 .. v24}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    goto/16 :goto_10f

    .line 1851
    .end local v0  # "startResult":Landroid/os/Process$ProcessStartResult;
    :cond_76
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1852
    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v0

    .line 1854
    .local v0, "appZygote":Landroid/os/AppZygote;
    invoke-virtual {v0}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    move-result-object v10

    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v23, 0x0

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v25, 0x0

    new-array v9, v9, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v8

    move-object/from16 v11, p2

    move-object v5, v13

    move/from16 v13, p4

    move-object v6, v14

    move/from16 v14, p4

    move v7, v15

    move-object/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, v7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move-object/from16 v21, p10

    move-object/from16 v22, v6

    move-object/from16 v24, v5

    move-object/from16 v26, v9

    invoke-virtual/range {v10 .. v26}, Landroid/os/ChildZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v5

    move-object v0, v5

    .line 1860
    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_10f

    .line 1861
    .end local v0  # "startResult":Landroid/os/Process$ProcessStartResult;
    :cond_ce
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-array v14, v9, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v8

    move-object/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v13, p8

    move-object/from16 v19, v14

    move-object/from16 v14, p9

    move-object/from16 v18, v15

    move-object/from16 v15, p10

    move-object/from16 v16, v0

    move-object/from16 v17, p11

    invoke-static/range {v5 .. v19}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 1867
    .restart local v0  # "startResult":Landroid/os/Process$ProcessStartResult;
    :goto_10f
    sget-object v5, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    if-eqz v5, :cond_134

    .line 1868
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_134

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_134

    .line 1869
    if-eqz v0, :cond_134

    .line 1870
    sget-object v5, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    const/16 v6, 0x1081

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v8, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    const/16 v9, 0x65

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1874
    :cond_134
    const-string/jumbo v5, "startProcess: returned from zygote!"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_13a
    .catchall {:try_start_2f .. :try_end_13a} :catchall_141

    .line 1875
    nop

    .line 1877
    const-wide/16 v5, 0x40

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1875
    return-object v0

    .line 1877
    .end local v0  # "startResult":Landroid/os/Process$ProcessStartResult;
    :catchall_141
    move-exception v0

    const-wide/16 v5, 0x40

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V
    .registers 21
    .param p1, "topApp"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "topI"  # I
    .param p3, "bottomI"  # I
    .param p4, "endIndex"  # I

    .line 2635
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v3

    if-nez v3, :cond_320

    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v3, :cond_320

    .line 2636
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_320

    .line 2642
    :cond_18
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2643
    .local v3, "uid":I
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    const-string v5, " group="

    const-string v6, " @ "

    const-string v7, "ActivityManager"

    if-lez v4, :cond_144

    .line 2644
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 2645
    .local v4, "endImportance":I
    move/from16 v8, p4

    move/from16 v9, p4

    .end local p4  # "endIndex":I
    .local v8, "i":I
    .local v9, "endIndex":I
    :goto_2c
    if-lt v8, v2, :cond_141

    .line 2646
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 2647
    .local v10, "subProc":Lcom/android/server/am/ProcessRecord;
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v3, :cond_137

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v11, v12, :cond_137

    .line 2649
    if-ne v8, v9, :cond_80

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-lt v11, v4, :cond_80

    .line 2653
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_7a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Keeping in-place above "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " endImportance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " importance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    :cond_7a
    add-int/lit8 v9, v9, -0x1

    .line 2659
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto/16 :goto_13b

    .line 2663
    :cond_80
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_a2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pulling up "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to position in group with importance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    :cond_a2
    const/4 v11, 0x0

    .line 2668
    .local v11, "moved":Z
    move/from16 v12, p2

    .local v12, "pos":I
    :goto_a5
    const-string v13, " from position "

    const-string v14, "Moving "

    if-le v12, v9, :cond_fa

    .line 2669
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 2670
    .local v15, "posProc":Lcom/android/server/am/ProcessRecord;
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 p4, v4

    .end local v4  # "endImportance":I
    .local p4, "endImportance":I
    iget v4, v15, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-gt v1, v4, :cond_f3

    .line 2672
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2673
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2674
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_ef

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to above "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    :cond_ef
    const/4 v11, 0x1

    .line 2679
    add-int/lit8 v9, v9, -0x1

    .line 2680
    goto :goto_fc

    .line 2668
    .end local v15  # "posProc":Lcom/android/server/am/ProcessRecord;
    :cond_f3
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v1, p1

    move/from16 v4, p4

    goto :goto_a5

    .end local p4  # "endImportance":I
    .restart local v4  # "endImportance":I
    :cond_fa
    move/from16 p4, v4

    .line 2683
    .end local v4  # "endImportance":I
    .end local v12  # "pos":I
    .restart local p4  # "endImportance":I
    :goto_fc
    if-nez v11, :cond_134

    .line 2685
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2686
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    add-int/lit8 v4, v9, -0x1

    invoke-virtual {v1, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2687
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_12e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to end of group @ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    :cond_12e
    add-int/lit8 v9, v9, -0x1

    .line 2692
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move v4, v1

    .end local p4  # "endImportance":I
    .local v1, "endImportance":I
    goto :goto_13b

    .line 2683
    .end local v1  # "endImportance":I
    .restart local p4  # "endImportance":I
    :cond_134
    move/from16 v4, p4

    goto :goto_13b

    .line 2647
    .end local v11  # "moved":Z
    .end local p4  # "endImportance":I
    .restart local v4  # "endImportance":I
    :cond_137
    move/from16 p4, v4

    .line 2645
    .end local v4  # "endImportance":I
    .end local v10  # "subProc":Lcom/android/server/am/ProcessRecord;
    .restart local p4  # "endImportance":I
    move/from16 v4, p4

    .end local p4  # "endImportance":I
    .restart local v4  # "endImportance":I
    :goto_13b
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v1, p1

    goto/16 :goto_2c

    :cond_141
    move/from16 p4, v4

    .end local v4  # "endImportance":I
    .restart local p4  # "endImportance":I
    goto :goto_146

    .line 2643
    .end local v8  # "i":I
    .end local v9  # "endIndex":I
    .local p4, "endIndex":I
    :cond_144
    move/from16 v9, p4

    .line 2701
    .end local p4  # "endIndex":I
    .restart local v9  # "endIndex":I
    :goto_146
    move v1, v9

    .line 2702
    .local v1, "i":I
    :goto_147
    if-lt v1, v2, :cond_31f

    .line 2703
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2704
    .local v4, "subProc":Lcom/android/server/am/ProcessRecord;
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v8, :cond_16f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Looking to spread old procs, at "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    :cond_16f
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v8, v3, :cond_31b

    .line 2710
    if-ge v1, v9, :cond_285

    .line 2711
    const/4 v8, 0x0

    .line 2712
    .local v8, "hasActivity":Z
    const/4 v10, 0x0

    .line 2713
    .local v10, "connUid":I
    const/4 v11, 0x0

    .line 2714
    .local v11, "connGroup":I
    :goto_17a
    if-lt v1, v2, :cond_285

    .line 2715
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2716
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2717
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_19e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Different app, moving to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_19e
    add-int/lit8 v1, v1, -0x1

    .line 2720
    if-ge v1, v2, :cond_1a4

    .line 2721
    goto/16 :goto_285

    .line 2723
    :cond_1a4
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v4, v12

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2724
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_1cd

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Looking at next app at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :cond_1cd
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v12

    if-nez v12, :cond_26b

    iget-boolean v12, v4, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v12, :cond_1d9

    goto/16 :goto_26b

    .line 2736
    :cond_1d9
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v12

    if-eqz v12, :cond_281

    .line 2737
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_1e8

    const-string v12, "This is a client of an activity"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :cond_1e8
    if-eqz v8, :cond_23f

    .line 2740
    if-eqz v10, :cond_21a

    iget-object v12, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v10, v12, :cond_1f3

    goto :goto_21a

    .line 2747
    :cond_1f3
    if-eqz v11, :cond_1f9

    iget v12, v4, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eq v11, v12, :cond_281

    .line 2750
    :cond_1f9
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_285

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Already found a different group: connGroup="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_285

    .line 2743
    :cond_21a
    :goto_21a
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_285

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Already found a different activity: connUid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_285

    .line 2756
    :cond_23f
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_263

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This is an activity client!  uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :cond_263
    const/4 v8, 0x1

    .line 2760
    iget-object v12, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2761
    iget v11, v4, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    goto :goto_281

    .line 2727
    :cond_26b
    :goto_26b
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_274

    const-string v12, "This is hosting an activity!"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    :cond_274
    if-eqz v8, :cond_280

    .line 2731
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_285

    const-string v12, "Already found an activity, done"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_285

    .line 2735
    :cond_280
    const/4 v8, 0x1

    .line 2764
    :cond_281
    :goto_281
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_17a

    .line 2771
    .end local v8  # "hasActivity":Z
    .end local v10  # "connUid":I
    .end local v11  # "connGroup":I
    :cond_285
    :goto_285
    add-int/lit8 v9, v9, -0x1

    if-lt v9, v2, :cond_2b7

    .line 2772
    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 2773
    .local v8, "endProc":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v10, v3, :cond_2b6

    .line 2774
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v10, :cond_2b7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found next group of app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b7

    .line 2773
    .end local v8  # "endProc":Lcom/android/server/am/ProcessRecord;
    :cond_2b6
    goto :goto_285

    .line 2780
    :cond_2b7
    :goto_2b7
    if-lt v9, v2, :cond_301

    .line 2781
    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 2782
    .restart local v8  # "endProc":Lcom/android/server/am/ProcessRecord;
    :goto_2c1
    add-int/lit8 v9, v9, -0x1

    if-lt v9, v2, :cond_301

    .line 2783
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 2784
    .local v10, "nextEndProc":Lcom/android/server/am/ProcessRecord;
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v3, :cond_2db

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iget v12, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eq v11, v12, :cond_2da

    goto :goto_2db

    .end local v10  # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    :cond_2da
    goto :goto_2c1

    .line 2786
    .restart local v10  # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    :cond_2db
    :goto_2db
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_301

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found next group or app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    .end local v8  # "endProc":Lcom/android/server/am/ProcessRecord;
    .end local v10  # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    :cond_301
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v8, :cond_319

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bumping scan position to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    :cond_319
    move v1, v9

    goto :goto_31d

    .line 2797
    :cond_31b
    add-int/lit8 v1, v1, -0x1

    .line 2799
    .end local v4  # "subProc":Lcom/android/server/am/ProcessRecord;
    :goto_31d
    goto/16 :goto_147

    .line 2800
    :cond_31f
    return-void

    .line 2639
    .end local v1  # "i":I
    .end local v3  # "uid":I
    .end local v9  # "endIndex":I
    .restart local p4  # "endIndex":I
    :cond_320
    :goto_320
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .registers 20
    .param p1, "displayWidth"  # I
    .param p2, "displayHeight"  # I
    .param p3, "write"  # Z

    .line 600
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v3, 0x15e

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43af0000  # 350.0f

    div-float/2addr v1, v2

    .line 603
    .local v1, "scaleMem":F
    const v2, 0x5dc00

    .line 604
    .local v2, "minSize":I
    const v3, 0xfa000

    .line 605
    .local v3, "maxSize":I
    mul-int v4, p1, p2

    int-to-float v4, v4

    int-to-float v5, v2

    sub-float/2addr v4, v5

    sub-int v5, v3, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 612
    .local v4, "scaleDisp":F
    cmpl-float v5, v1, v4

    if-lez v5, :cond_20

    move v5, v1

    goto :goto_21

    :cond_20
    move v5, v4

    .line 613
    .local v5, "scale":F
    :goto_21
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_28

    const/4 v5, 0x0

    goto :goto_30

    .line 614
    :cond_28
    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_30

    const/high16 v5, 0x3f800000  # 1.0f

    .line 615
    :cond_30
    :goto_30
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e006e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 617
    .local v6, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e006d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 623
    .local v7, "minfree_abs":I
    sget-object v8, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v8, v8

    const/4 v10, 0x1

    if-lez v8, :cond_4e

    move v8, v10

    goto :goto_4f

    :cond_4e
    const/4 v8, 0x0

    .line 625
    .local v8, "is64bit":Z
    :goto_4f
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_50
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v12

    const/4 v13, 0x4

    if-ge v11, v12, :cond_7c

    .line 626
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v12, v12, v11

    .line 627
    .local v12, "low":I
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v14, v14, v11

    .line 628
    .local v14, "high":I
    if-eqz v8, :cond_6e

    .line 630
    if-ne v11, v13, :cond_67

    mul-int/lit8 v13, v14, 0x3

    div-int/lit8 v14, v13, 0x2

    goto :goto_6e

    .line 631
    :cond_67
    const/4 v15, 0x5

    if-ne v11, v15, :cond_6e

    mul-int/lit8 v15, v14, 0x7

    div-int/lit8 v14, v15, 0x4

    .line 633
    :cond_6e
    :goto_6e
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v15, v12

    sub-int v9, v14, v12

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v15, v9

    float-to-int v9, v15

    aput v9, v13, v11

    .line 625
    .end local v12  # "low":I
    .end local v14  # "high":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_50

    .line 636
    .end local v11  # "i":I
    :cond_7c
    if-ltz v7, :cond_97

    .line 637
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7f
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v11

    if-ge v9, v12, :cond_97

    .line 638
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v14, v7

    aget v15, v12, v9

    int-to-float v15, v15

    mul-float/2addr v14, v15

    array-length v11, v11

    sub-int/2addr v11, v10

    aget v11, v12, v11

    int-to-float v11, v11

    div-float/2addr v14, v11

    float-to-int v11, v14

    aput v11, v12, v9

    .line 637
    add-int/lit8 v9, v9, 0x1

    goto :goto_7f

    .line 643
    .end local v9  # "i":I
    :cond_97
    if-eqz v6, :cond_bd

    .line 644
    const/4 v9, 0x0

    .restart local v9  # "i":I
    :goto_9a
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v11

    if-ge v9, v12, :cond_bd

    .line 645
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v14, v12, v9

    int-to-float v15, v6

    aget v13, v12, v9

    int-to-float v13, v13

    mul-float/2addr v15, v13

    array-length v11, v11

    sub-int/2addr v11, v10

    aget v11, v12, v11

    int-to-float v11, v11

    div-float/2addr v15, v11

    float-to-int v11, v15

    add-int/2addr v14, v11

    aput v14, v12, v9

    .line 647
    aget v11, v12, v9

    if-gez v11, :cond_b9

    .line 648
    const/4 v11, 0x0

    aput v11, v12, v9

    .line 644
    :cond_b9
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x4

    goto :goto_9a

    .line 656
    .end local v9  # "i":I
    :cond_bd
    const/16 v9, 0x3e7

    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    const-wide/16 v13, 0x3

    div-long/2addr v11, v13

    iput-wide v11, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 660
    mul-int v9, p1, p2

    const/4 v11, 0x4

    mul-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0x3

    div-int/lit16 v9, v9, 0x400

    .line 661
    .local v9, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e005a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 663
    .local v11, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e0059

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 666
    .local v12, "reserve_abs":I
    if-ltz v12, :cond_ec

    .line 667
    move v9, v12

    .line 670
    :cond_ec
    if-eqz v11, :cond_f2

    .line 671
    add-int/2addr v9, v11

    .line 672
    if-gez v9, :cond_f2

    .line 673
    const/4 v9, 0x0

    .line 677
    :cond_f2
    if-eqz p3, :cond_12d

    .line 678
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v10

    const/4 v10, 0x4

    mul-int/2addr v13, v10

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 679
    .local v10, "buf":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 680
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_105
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v14, v14

    if-ge v13, v14, :cond_11f

    .line 681
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v14, v14, v13

    mul-int/lit16 v14, v14, 0x400

    div-int/lit16 v14, v14, 0x1000

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 682
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v14, v14, v13

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 680
    add-int/lit8 v13, v13, 0x1

    goto :goto_105

    .line 685
    .end local v13  # "i":I
    :cond_11f
    const/4 v13, 0x0

    invoke-static {v10, v13}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 686
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "sys.sysctl.extra_free_kbytes"

    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .end local v10  # "buf":Ljava/nio/ByteBuffer;
    :cond_12d
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 6
    .param p0, "buf"  # Ljava/nio/ByteBuffer;
    .param p1, "repl"  # Ljava/nio/ByteBuffer;

    .line 1288
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1289
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3c

    .line 1290
    :try_start_7
    sget-object v3, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v3, :cond_28

    .line 1291
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocketLS()Z

    move-result v3
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_3f

    if-nez v3, :cond_19

    .line 1293
    const-wide/16 v2, 0x3e8

    :try_start_13
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_3f

    .line 1295
    goto :goto_39

    .line 1294
    :catch_17
    move-exception v2

    .line 1296
    goto :goto_39

    .line 1300
    :cond_19
    const/4 v3, 0x4

    :try_start_1a
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1301
    .local v3, "purge_buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1302
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->writeLmkdCommandLS(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1304
    goto :goto_39

    .line 1307
    .end local v3  # "purge_buf":Ljava/nio/ByteBuffer;
    :cond_28
    invoke-static {p0}, Lcom/android/server/am/ProcessList;->writeLmkdCommandLS(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_39

    if-eqz p1, :cond_36

    invoke-static {p1}, Lcom/android/server/am/ProcessList;->readLmkdReplyLS(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1308
    :cond_36
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1289
    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1311
    .end local v1  # "i":I
    :cond_3c
    monitor-exit v0

    .line 1312
    const/4 v0, 0x0

    return v0

    .line 1311
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private static writeLmkdCommandLS(Ljava/nio/ByteBuffer;)Z
    .registers 5
    .param p0, "buf"  # Ljava/nio/ByteBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation

    .line 1259
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_11

    .line 1265
    nop

    .line 1266
    const/4 v0, 0x1

    return v0

    .line 1260
    :catch_11
    move-exception v1

    .line 1261
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Error writing to lowmemorykiller socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1263
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1264
    return v0
.end method


# virtual methods
.method final addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "proc"  # Lcom/android/server/am/ProcessRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2328
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2329
    .local v0, "old":Lcom/android/server/am/ProcessRecord;
    const-string v1, "ActivityManager"

    if-ne v0, p1, :cond_27

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-adding persistent process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 2332
    :cond_27
    if-eqz v0, :cond_45

    .line 2333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already have existing proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " when adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    :cond_45
    :goto_45
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 2336
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    const/4 v3, 0x1

    if-nez v2, :cond_aa

    .line 2337
    new-instance v4, Lcom/android/server/am/UidRecord;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v4, v5}, Lcom/android/server/am/UidRecord;-><init>(I)V

    move-object v2, v4

    .line 2339
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v4, :cond_70

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating new process uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :cond_70
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempWhitelist:[I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2342
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 2341
    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingTempWhitelist:Lcom/android/server/am/PendingTempWhitelists;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2343
    invoke-virtual {v1, v4}, Lcom/android/server/am/PendingTempWhitelists;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_90

    .line 2344
    :cond_8c
    iput-boolean v3, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    iput-boolean v3, v2, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    .line 2346
    :cond_90
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    .line 2347
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 2348
    iget v1, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v1}, Lcom/android/server/am/EventLogTags;->writeAmUidRunning(I)V

    .line 2349
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 2351
    :cond_aa
    iput-object v2, p1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 2354
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    .line 2355
    iget v1, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    .line 2356
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3, v4, p1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    .line 2357
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_c8

    .line 2358
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2360
    :cond_c8
    return-void
.end method

.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "wm"  # Lcom/android/server/wm/WindowManagerService;

    .line 586
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_1f

    .line 587
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 589
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 590
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1f

    .line 591
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 592
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 595
    .end local v0  # "p":Landroid/graphics/Point;
    :cond_1f
    return-void
.end method

.method clearAllDnsCacheLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2551
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 2552
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2553
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_37

    .line 2555
    :try_start_16
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 2558
    goto :goto_37

    .line 2556
    :catch_1c
    move-exception v2

    .line 2557
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clear dns cache for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    .end local v1  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2  # "ex":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2561
    .end local v0  # "i":I
    :cond_3a
    return-void
.end method

.method collectProcessesLocked(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "start"  # I
    .param p2, "allPkgs"  # Z
    .param p3, "args"  # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 3148
    if-eqz p3, :cond_6a

    array-length v0, p3

    if-le v0, p1, :cond_6a

    aget-object v0, p3, p1

    const/4 v1, 0x0

    .line 3149
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_6a

    .line 3150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3151
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, -0x1

    .line 3153
    .local v1, "pid":I
    :try_start_16
    aget-object v2, p3, p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v1, v2

    .line 3155
    goto :goto_1f

    .line 3154
    :catch_1e
    move-exception v2

    .line 3156
    :goto_1f
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_27
    if-ltz v2, :cond_61

    .line 3157
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3158
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v4, :cond_3d

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, v1, :cond_3d

    .line 3159
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 3160
    :cond_3d
    if-eqz p2, :cond_51

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    if-eqz v4, :cond_51

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    aget-object v5, p3, p1

    .line 3161
    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 3162
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 3163
    :cond_51
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 3164
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3156
    .end local v3  # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_5e
    :goto_5e
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 3167
    .end local v2  # "i":I
    :cond_61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_69

    .line 3168
    const/4 v2, 0x0

    return-object v2

    .line 3170
    .end local v1  # "pid":I
    :cond_69
    goto :goto_71

    .line 3171
    .end local v0  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_6a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3173
    .restart local v0  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_71
    return-object v0
.end method

.method doStopUidForIdleUidsLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3265
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 3266
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2b

    .line 3267
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->keyAt(I)I

    move-result v2

    .line 3268
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3269
    goto :goto_28

    .line 3271
    :cond_16
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 3272
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->idle:Z

    if-nez v4, :cond_21

    .line 3273
    goto :goto_28

    .line 3275
    :cond_21
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    .line 3266
    .end local v2  # "uid":I
    .end local v3  # "uidRec":Lcom/android/server/am/UidRecord;
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3277
    .end local v1  # "i":I
    :cond_2b
    return-void
.end method

.method dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3137
    const-string v0, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3138
    const-string v0, " total, non-act at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3139
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3140
    const-string v0, ", non-svc at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3141
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3142
    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    return-void
.end method

.method fillInProcMemInfoLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .registers 9
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "outInfo"  # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3063
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 3064
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 3065
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isHeavyWeightProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 3066
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3068
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3069
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3071
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3072
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3074
    :cond_36
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 3075
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 3076
    .local v0, "adj":I
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    .line 3077
    .local v2, "procState":I
    invoke-static {v2, v0, p2, p3}, Lcom/android/server/am/ProcessList;->procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v3

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 3079
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 3080
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 3081
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-ne p1, v3, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    iput-boolean v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 3082
    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 3083
    return-void
.end method

.method findAppProcessLocked(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 10
    .param p1, "app"  # Landroid/os/IBinder;
    .param p2, "reason"  # Ljava/lang/String;

    .line 1404
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1405
    .local v0, "NP":I
    const/4 v1, 0x0

    .local v1, "ip":I
    :goto_b
    if-ge v1, v0, :cond_39

    .line 1406
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1407
    .local v2, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1408
    .local v3, "NA":I
    const/4 v4, 0x0

    .local v4, "ia":I
    :goto_1e
    if-ge v4, v3, :cond_36

    .line 1409
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1410
    .local v5, "p":Lcom/android/server/am/ProcessRecord;
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_33

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_33

    .line 1411
    return-object v5

    .line 1408
    .end local v5  # "p":Lcom/android/server/am/ProcessRecord;
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1405
    .end local v2  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3  # "NA":I
    .end local v4  # "ia":I
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1416
    .end local v1  # "ip":I
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find mystery application for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1416
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    const/4 v1, 0x0

    return-object v1
.end method

.method getCachedRestoreThresholdKb()J
    .registers 3

    .line 1168
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method final getLRURecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .registers 6
    .param p1, "thread"  # Landroid/app/IApplicationThread;

    .line 3024
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3026
    .local v0, "threadBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_26

    .line 3027
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3028
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_23

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_23

    .line 3029
    return-object v2

    .line 3026
    .end local v2  # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 3032
    .end local v1  # "i":I
    :cond_26
    const/4 v1, 0x0

    return-object v1
.end method

.method getLruSizeLocked()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3132
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMemLevel(I)J
    .registers 5
    .param p1, "adjustment"  # I

    .line 1155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 1156
    aget v1, v1, v0

    if-gt p1, v1, :cond_12

    .line 1157
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    return-wide v1

    .line 1155
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1160
    .end local v0  # "i":I
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    return-wide v0
.end method

.method getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 12
    .param p1, "outInfo"  # Landroid/app/ActivityManager$MemoryInfo;

    .line 1391
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    .line 1392
    .local v0, "homeAppMem":J
    const/16 v2, 0x384

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    .line 1393
    .local v2, "cachedAppMem":J
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1394
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1395
    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1396
    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v6, v2, v0

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v6, v0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-gez v4, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    move v4, v5

    :goto_2a
    iput-boolean v4, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 1397
    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 1398
    const/16 v4, 0x1f4

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 1399
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 1400
    invoke-virtual {p0, v5}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 1401
    return-void
.end method

.method final getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;
    .registers 16
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "keepIfLarge"  # Z

    .line 1328
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_36

    .line 1332
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1333
    .local v0, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    if-nez v0, :cond_14

    const/4 v1, 0x0

    return-object v1

    .line 1334
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1335
    .local v1, "procCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_36

    .line 1336
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1337
    .local v3, "procUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1339
    goto :goto_33

    .line 1341
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    return-object v4

    .line 1335
    .end local v3  # "procUid":I
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1344
    .end local v0  # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v1  # "procCount":I
    .end local v2  # "i":I
    :cond_36
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1366
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_d2

    if-nez p3, :cond_d2

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-lez v1, :cond_d2

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_d2

    .line 1369
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_72

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "May not keep "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": pss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_72
    iget-wide v1, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_d2

    .line 1372
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v2, 0x1

    if-eqz v1, :cond_b7

    .line 1373
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    iget-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->reportCachedKill(Landroid/util/ArrayMap;J)V

    .line 1375
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "ipkg":I
    :goto_93
    if-ltz v1, :cond_b7

    .line 1376
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v3

    .line 1377
    .local v3, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    const/16 v4, 0x11

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 1379
    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 1380
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    iget-wide v10, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1377
    invoke-static/range {v4 .. v11}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJ)I

    .line 1375
    .end local v3  # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_93

    .line 1384
    .end local v1  # "ipkg":I
    :cond_b7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "k from cached"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1387
    :cond_d2
    return-object v0
.end method

.method getRunningAppProcessesLocked(ZIZII)Ljava/util/List;
    .registers 13
    .param p1, "allUsers"  # Z
    .param p2, "userId"  # I
    .param p3, "allUids"  # Z
    .param p4, "callingUid"  # I
    .param p5, "clientTargetSdk"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZII)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 3089
    const/4 v0, 0x0

    .line 3091
    .local v0, "runList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_84

    .line 3092
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3093
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    if-nez p1, :cond_19

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v3, p2, :cond_81

    :cond_19
    if-nez p3, :cond_20

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, p4, :cond_20

    .line 3095
    goto :goto_81

    .line 3097
    :cond_20
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_81

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v3

    if-nez v3, :cond_81

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v3

    if-nez v3, :cond_81

    .line 3099
    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 3101
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 3102
    .local v3, "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p0, v2, v3, p5}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    .line 3103
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_57

    .line 3104
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3105
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 3106
    invoke-static {v4}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v4

    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_6a

    .line 3108
    :cond_57
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v4, :cond_6a

    .line 3109
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 3111
    .local v4, "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->getActivityPid()I

    move-result v5

    .line 3112
    .local v5, "pid":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_6a

    .line 3113
    iput v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3116
    .end local v4  # "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v5  # "pid":I
    :cond_6a
    :goto_6a
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v4, v4, Landroid/content/ComponentName;

    if-eqz v4, :cond_76

    .line 3117
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 3121
    :cond_76
    if-nez v0, :cond_7e

    .line 3122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 3124
    :cond_7e
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3091
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3  # "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_81
    :goto_81
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3127
    .end local v1  # "i":I
    :cond_84
    return-object v0
.end method

.method getUidProcStateLocked(I)I
    .registers 4
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3249
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 3250
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v0, :cond_b

    const/16 v1, 0x15

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    :goto_f
    return v1
.end method

.method getUidRecordLocked(I)Lcom/android/server/am/UidRecord;
    .registers 3
    .param p1, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3256
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    return-object v0
.end method

.method handleAllTrustStorageUpdateLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2565
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 2566
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2567
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_37

    .line 2569
    :try_start_16
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 2573
    goto :goto_37

    .line 2570
    :catch_1c
    move-exception v2

    .line 2571
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle trust storage update for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    .end local v1  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2  # "ex":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2576
    .end local v0  # "i":I
    :cond_3a
    return-void
.end method

.method handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .registers 29
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"  # I
    .param p3, "usingWrapper"  # Z
    .param p4, "expectedStartSeq"  # J
    .param p6, "procAttached"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2050
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-wide/from16 v11, p4

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v11, v12}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2051
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v13

    .line 2052
    .local v13, "reason":Ljava/lang/String;
    const/4 v14, 0x0

    if-eqz v13, :cond_44

    .line 2053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " start not valid, killing pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2057
    invoke-static/range {p2 .. p2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2058
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v3}, Landroid/os/Process;->killProcessGroup(II)I

    .line 2059
    return v14

    .line 2061
    :cond_44
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(Ljava/lang/String;I)V

    .line 2062
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: done updating battery stats"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2064
    const/16 v0, 0x753e

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    .line 2065
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v15, 0x1

    aput-object v4, v3, v15

    const/4 v4, 0x2

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 2066
    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 2067
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_98

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_9a

    :cond_98
    const-string v5, ""

    :goto_9a
    aput-object v5, v3, v4

    .line 2064
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2070
    :try_start_9f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move/from16 v8, p2

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_b2} :catch_b3

    .line 2074
    goto :goto_b4

    .line 2072
    :catch_b3
    move-exception v0

    .line 2076
    :goto_b4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 2077
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v9}, Lcom/android/server/Watchdog;->processStarted(Ljava/lang/String;I)V

    .line 2080
    :cond_c3
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: building log message"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2081
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2082
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2083
    const-string v0, "Start proc "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2085
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2086
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2088
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    invoke-static {v3, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2089
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-eqz v0, :cond_ff

    .line 2090
    const-string v0, " ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2091
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    :cond_ff
    const-string v0, " for "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_123

    .line 2097
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2098
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    :cond_123
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    const-string v6, "ActivityManager"

    invoke-virtual {v0, v6, v4, v5}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2101
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 2102
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2103
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2104
    iget-wide v4, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: starting to update pids map"

    invoke-direct {v1, v4, v5, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2106
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v4

    .line 2107
    :try_start_145
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v5, v0

    .line 2108
    .local v5, "oldApp":Lcom/android/server/am/ProcessRecord;
    monitor-exit v4
    :try_end_14f
    .catchall {:try_start_145 .. :try_end_14f} :catchall_1da

    .line 2110
    if-eqz v5, :cond_1a4

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_1a4

    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleProcessStartedLocked process:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startSeq:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " pid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " belongs to another existing app:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startSeq:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ActivityManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x1

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;ZZIZ)Z

    .line 2120
    :cond_1a4
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->put(Lcom/android/server/am/ProcessRecord;)V

    .line 2121
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v6

    .line 2122
    if-nez p6, :cond_1cd

    .line 2123
    :try_start_1b2
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2124
    .local v0, "msg":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2125
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    if-eqz v10, :cond_1c8

    .line 2126
    const-wide/32 v7, 0x124f80

    goto :goto_1ca

    :cond_1c8
    const-wide/16 v7, 0x2710

    .line 2125
    :goto_1ca
    invoke-virtual {v4, v0, v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2128
    .end local v0  # "msg":Landroid/os/Message;
    :cond_1cd
    monitor-exit v6
    :try_end_1ce
    .catchall {:try_start_1b2 .. :try_end_1ce} :catchall_1d7

    .line 2129
    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: done updating pids map"

    invoke-direct {v1, v6, v7, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2130
    return v15

    .line 2128
    :catchall_1d7
    move-exception v0

    :try_start_1d8
    monitor-exit v6
    :try_end_1d9
    .catchall {:try_start_1d8 .. :try_end_1d9} :catchall_1d7

    throw v0

    .line 2108
    .end local v5  # "oldApp":Lcom/android/server/am/ProcessRecord;
    :catchall_1da
    move-exception v0

    :try_start_1db
    monitor-exit v4
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_1da

    throw v0
.end method

.method haveBackgroundProcessLocked()Z
    .registers 6

    .line 3036
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 3037
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3038
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_1d

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_1d

    .line 3040
    return v1

    .line 3036
    .end local v2  # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3043
    .end local v0  # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;)V
    .registers 7
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "activeUids"  # Lcom/android/server/am/ActiveUids;

    .line 574
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 575
    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 577
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez v0, :cond_26

    .line 578
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "ActivityManager:kill"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 580
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 581
    new-instance v0, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessList$KillHandler;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 583
    :cond_26
    return-void
.end method

.method killAllBackgroundProcessesExceptLocked(II)V
    .registers 11
    .param p1, "minTargetSdk"  # I
    .param p2, "maxProcState"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2490
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2491
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_10
    if-ge v2, v1, :cond_46

    .line 2492
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2493
    .local v3, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 2494
    .local v4, "NA":I
    const/4 v5, 0x0

    .local v5, "ia":I
    :goto_23
    if-ge v5, v4, :cond_43

    .line 2495
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 2496
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-nez v7, :cond_3d

    if-ltz p1, :cond_37

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v7, p1, :cond_40

    :cond_37
    if-ltz p2, :cond_3d

    iget v7, v6, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-le v7, p2, :cond_40

    .line 2498
    :cond_3d
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2494
    .end local v6  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 2491
    .end local v3  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4  # "NA":I
    .end local v5  # "ia":I
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2503
    .end local v2  # "ip":I
    :cond_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2504
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4b
    if-ge v3, v2, :cond_5e

    .line 2505
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string/jumbo v7, "kill all background except"

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 2504
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 2507
    .end local v3  # "i":I
    :cond_5e
    return-void
.end method

.method public killAppZygoteIfNeededLocked(Landroid/os/AppZygote;)V
    .registers 7
    .param p1, "appZygote"  # Landroid/os/AppZygote;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1746
    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1747
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1748
    .local v1, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2a

    .line 1750
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1751
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 1753
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    .line 1755
    :cond_2a
    return-void
.end method

.method killPackageProcessesLocked(Ljava/lang/String;IIILjava/lang/String;)Z
    .registers 17
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "appId"  # I
    .param p3, "userId"  # I
    .param p4, "minOomAdj"  # I
    .param p5, "reason"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2164
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ProcessList;->killPackageProcessesLocked(Ljava/lang/String;IIIZZZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final killPackageProcessesLocked(Ljava/lang/String;IIIZZZZZLjava/lang/String;)Z
    .registers 30
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "appId"  # I
    .param p3, "userId"  # I
    .param p4, "minOomAdj"  # I
    .param p5, "callerWillRestart"  # Z
    .param p6, "allowRestart"  # Z
    .param p7, "doit"  # Z
    .param p8, "evenPersistent"  # Z
    .param p9, "setRemoved"  # Z
    .param p10, "reason"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2173
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2178
    .local v4, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 2179
    .local v5, "NP":I
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_18
    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ge v6, v5, :cond_aa

    .line 2180
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 2181
    .local v10, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 2182
    .local v11, "NA":I
    const/4 v12, 0x0

    .local v12, "ia":I
    :goto_2d
    if-ge v12, v11, :cond_a4

    .line 2183
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 2184
    .local v13, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v14

    if-eqz v14, :cond_41

    if-nez p8, :cond_41

    .line 2186
    move/from16 v15, p4

    goto/16 :goto_a1

    .line 2188
    :cond_41
    iget-boolean v14, v13, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v14, :cond_50

    .line 2189
    if-eqz p7, :cond_4d

    .line 2190
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v15, p4

    goto :goto_a1

    .line 2189
    :cond_4d
    move/from16 v15, p4

    goto :goto_a1

    .line 2196
    :cond_50
    iget v14, v13, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v15, p4

    if-ge v14, v15, :cond_57

    .line 2202
    goto :goto_a1

    .line 2207
    :cond_57
    if-nez v1, :cond_6b

    .line 2208
    if-eq v3, v8, :cond_60

    iget v14, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v14, v3, :cond_60

    .line 2209
    goto :goto_a1

    .line 2211
    :cond_60
    if-ltz v2, :cond_97

    iget v14, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-eq v14, v2, :cond_97

    .line 2212
    goto :goto_a1

    .line 2218
    :cond_6b
    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz v14, :cond_79

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    .line 2219
    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_79

    move v14, v9

    goto :goto_7a

    :cond_79
    const/4 v14, 0x0

    .line 2220
    .local v14, "isDep":Z
    :goto_7a
    if-nez v14, :cond_85

    iget v7, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v7, v2, :cond_85

    .line 2221
    goto :goto_a1

    .line 2223
    :cond_85
    if-eq v3, v8, :cond_8c

    iget v7, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v7, v3, :cond_8c

    .line 2224
    goto :goto_a1

    .line 2226
    :cond_8c
    iget-object v7, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_97

    if-nez v14, :cond_97

    .line 2227
    goto :goto_a1

    .line 2232
    .end local v14  # "isDep":Z
    :cond_97
    if-nez p7, :cond_9a

    .line 2233
    return v9

    .line 2235
    :cond_9a
    if-eqz p9, :cond_9e

    .line 2236
    iput-boolean v9, v13, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 2238
    :cond_9e
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2182
    .end local v13  # "app":Lcom/android/server/am/ProcessRecord;
    :goto_a1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2d

    :cond_a4
    move/from16 v15, p4

    .line 2179
    .end local v10  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v11  # "NA":I
    .end local v12  # "ia":I
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_18

    :cond_aa
    move/from16 v15, p4

    .line 2242
    .end local v6  # "ip":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2243
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_b1
    if-ge v7, v6, :cond_c5

    .line 2244
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p10

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 2243
    add-int/lit8 v7, v7, 0x1

    goto :goto_b1

    :cond_c5
    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p10

    .line 2248
    .end local v7  # "i":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2249
    .local v7, "zygotesToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/AppZygote;>;"
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_de
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_134

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    .line 2250
    .local v14, "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    const/16 v17, 0x0

    move/from16 v9, v17

    .local v9, "i":I
    :goto_ee
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v9, v8, :cond_12d

    .line 2251
    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 2252
    .local v8, "appZygoteUid":I
    move-object/from16 v18, v4

    const/4 v4, -0x1

    .end local v4  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v18, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eq v3, v4, :cond_104

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq v4, v3, :cond_104

    .line 2253
    goto :goto_125

    .line 2255
    :cond_104
    if-ltz v2, :cond_10d

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v4, v2, :cond_10d

    .line 2256
    goto :goto_125

    .line 2258
    :cond_10d
    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AppZygote;

    .line 2259
    .local v4, "appZygote":Landroid/os/AppZygote;
    if-eqz v1, :cond_122

    .line 2260
    invoke-virtual {v4}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_122

    .line 2261
    goto :goto_125

    .line 2263
    :cond_122
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2250
    .end local v4  # "appZygote":Landroid/os/AppZygote;
    .end local v8  # "appZygoteUid":I
    :goto_125
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p2

    move-object/from16 v4, v18

    const/4 v8, -0x1

    goto :goto_ee

    .end local v18  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v4, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_12d
    move-object/from16 v18, v4

    .line 2265
    .end local v4  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v9  # "i":I
    .end local v14  # "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    .restart local v18  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move/from16 v2, p2

    const/4 v8, -0x1

    const/4 v9, 0x1

    goto :goto_de

    .line 2266
    .end local v18  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v4  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_134
    move-object/from16 v18, v4

    .end local v4  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v18  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AppZygote;

    .line 2267
    .local v4, "appZygote":Landroid/os/AppZygote;
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;)V

    .line 2268
    .end local v4  # "appZygote":Landroid/os/AppZygote;
    goto :goto_13a

    .line 2269
    :cond_14a
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "updateOomAdj_processEnd"

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2270
    if-lez v6, :cond_157

    const/16 v16, 0x1

    goto :goto_159

    :cond_157
    const/16 v16, 0x0

    :goto_159
    return v16
.end method

.method killProcessGroup(IILjava/lang/String;)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "pid"  # I
    .param p3, "pkgName"  # Ljava/lang/String;

    .line 3281
    const-string v0, "com.stabilitytest.sysmonkey"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not killProcessGroup for pkgName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    return-void

    .line 3285
    :cond_2b
    invoke-static {p1, p2}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 3286
    return-void
.end method

.method public synthetic lambda$startProcessLocked$0$ProcessList(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 37
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"  # Ljava/lang/String;
    .param p3, "gids"  # [I
    .param p4, "runtimeFlags"  # I
    .param p5, "mountExternal"  # I
    .param p6, "requiredAbi"  # Ljava/lang/String;
    .param p7, "instructionSet"  # Ljava/lang/String;
    .param p8, "invokeWith"  # Ljava/lang/String;
    .param p9, "startSeq"  # J

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-wide/from16 v11, p9

    .line 1706
    :try_start_6
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    iget v5, v13, Lcom/android/server/am/ProcessRecord;->startUid:I

    iget-object v9, v13, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    iget-wide v7, v13, Lcom/android/server/am/ProcessRecord;->startTime:J
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_4f

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v16, v7

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-wide/from16 v13, v16

    :try_start_24
    invoke-direct/range {v1 .. v14}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    move-object v1, v0

    .line 1709
    .local v1, "startResult":Landroid/os/Process$ProcessStartResult;
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_2c} :catch_49

    :try_start_2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3d

    .line 1710
    move-object/from16 v3, p1

    move-wide/from16 v4, p9

    :try_start_33
    invoke-direct {v15, v3, v1, v4, v5}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z

    .line 1711
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3b

    :try_start_37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3a} :catch_47

    .line 1722
    .end local v1  # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_a1

    .line 1711
    .restart local v1  # "startResult":Landroid/os/Process$ProcessStartResult;
    :catchall_3b
    move-exception v0

    goto :goto_42

    :catchall_3d
    move-exception v0

    move-object/from16 v3, p1

    move-wide/from16 v4, p9

    :goto_42
    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3b

    :try_start_43
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2  # "entryPoint":Ljava/lang/String;
    .end local p3  # "gids":[I
    .end local p4  # "runtimeFlags":I
    .end local p5  # "mountExternal":I
    .end local p6  # "requiredAbi":Ljava/lang/String;
    .end local p7  # "instructionSet":Ljava/lang/String;
    .end local p8  # "invokeWith":Ljava/lang/String;
    .end local p9  # "startSeq":J
    throw v0
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_47} :catch_47

    .line 1712
    .end local v1  # "startResult":Landroid/os/Process$ProcessStartResult;
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2  # "entryPoint":Ljava/lang/String;
    .restart local p3  # "gids":[I
    .restart local p4  # "runtimeFlags":I
    .restart local p5  # "mountExternal":I
    .restart local p6  # "requiredAbi":Ljava/lang/String;
    .restart local p7  # "instructionSet":Ljava/lang/String;
    .restart local p8  # "invokeWith":Ljava/lang/String;
    .restart local p9  # "startSeq":J
    :catch_47
    move-exception v0

    goto :goto_52

    :catch_49
    move-exception v0

    move-object/from16 v3, p1

    move-wide/from16 v4, p9

    goto :goto_52

    :catch_4f
    move-exception v0

    move-wide v4, v11

    move-object v3, v13

    :goto_52
    move-object v1, v0

    .line 1713
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_56
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1714
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure starting process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1716
    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1717
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 1718
    iget-object v0, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1719
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v7, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v25, "start failure"

    .line 1718
    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move/from16 v24, v7

    invoke-virtual/range {v16 .. v25}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1721
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_56 .. :try_end_9e} :catchall_a2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1723
    .end local v1  # "e":Ljava/lang/RuntimeException;
    :goto_a1
    return-void

    .line 1721
    .restart local v1  # "e":Ljava/lang/RuntimeException;
    :catchall_a2
    move-exception v0

    :try_start_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method final newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 13
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "customProcess"  # Ljava/lang/String;
    .param p3, "isolated"  # Z
    .param p4, "isolatedUid"  # I
    .param p5, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2377
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_6

    :cond_4
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2378
    .local v0, "proc":Ljava/lang/String;
    :goto_6
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2379
    .local v1, "userId":I
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2380
    .local v2, "uid":I
    const/4 v3, 0x1

    if-eqz p3, :cond_40

    .line 2381
    if-nez p4, :cond_24

    .line 2382
    invoke-direct {p0, p1, p5}, Lcom/android/server/am/ProcessList;->getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v4

    .line 2383
    .local v4, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    const/4 v5, 0x0

    if-nez v4, :cond_1b

    .line 2384
    return-object v5

    .line 2386
    :cond_1b
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->allocateIsolatedUidLocked(I)I

    move-result v2

    .line 2387
    const/4 v6, -0x1

    if-ne v2, v6, :cond_23

    .line 2388
    return-object v5

    .line 2390
    .end local v4  # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    :cond_23
    goto :goto_25

    .line 2393
    :cond_24
    move v2, p4

    .line 2395
    :goto_25
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManagerInternal;->addIsolatedUid(II)V

    .line 2403
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/BatteryStatsService;->addIsolatedUid(II)V

    .line 2404
    const/16 v4, 0x2b

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v5, v2, v3}, Landroid/util/StatsLog;->write(IIII)I

    .line 2407
    :cond_40
    new-instance v4, Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, p1, v0, v2}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    .line 2409
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v5, :cond_69

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v5, :cond_69

    if-nez v1, :cond_69

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v6, 0x9

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_69

    .line 2413
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 2414
    iput v5, v4, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 2415
    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 2416
    const/16 v3, -0x320

    iput v3, v4, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 2418
    :cond_69
    if-eqz p3, :cond_71

    if-eqz p4, :cond_71

    .line 2421
    const/16 v3, -0x2bc

    iput v3, v4, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 2423
    :cond_71
    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2424
    return-object v4
.end method

.method final removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 2134
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2135
    .local v0, "lrui":I
    if-ltz v0, :cond_6a

    .line 2136
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v1, :cond_55

    .line 2137
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_29

    .line 2138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing persistent process that hasn\'t been killed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 2140
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing process that hasn\'t been killed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v1, :cond_52

    .line 2142
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2145
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->killProcessGroup(IILjava/lang/String;)V

    goto :goto_55

    .line 2147
    :cond_52
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2151
    :cond_55
    :goto_55
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-gt v0, v1, :cond_5d

    .line 2152
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2154
    :cond_5d
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-gt v0, v1, :cond_65

    .line 2155
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2157
    :cond_65
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2159
    :cond_6a
    return-void
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    .registers 15
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"  # Z
    .param p3, "allowRestart"  # Z
    .param p4, "reason"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2276
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2277
    .local v0, "name":Ljava/lang/String;
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2278
    .local v1, "uid":I
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    const-string v3, "ActivityManager"

    if-eqz v2, :cond_37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Force removing proc "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2278
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    :cond_37
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2282
    .local v2, "old":Lcom/android/server/am/ProcessRecord;
    const/4 v4, 0x0

    if-eq v2, p1, :cond_57

    .line 2284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring remove of inactive process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    return v4

    .line 2287
    :cond_57
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 2288
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 2290
    const/4 v3, 0x0

    .line 2291
    .local v3, "needRestart":Z
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v5, :cond_70

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v5, v6, :cond_78

    :cond_70
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v5, :cond_dc

    iget-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-eqz v5, :cond_dc

    .line 2293
    :cond_78
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2294
    .local v5, "pid":I
    if-lez v5, :cond_b5

    .line 2295
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v6, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->remove(Lcom/android/server/am/ProcessRecord;)V

    .line 2296
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x14

    invoke-virtual {v6, v7, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2297
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    .line 2298
    iget-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v6, :cond_b5

    .line 2299
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 2300
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    .line 2303
    :cond_b5
    const/4 v6, 0x0

    .line 2304
    .local v6, "willRestart":Z
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    if-eqz v7, :cond_c5

    iget-boolean v7, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v7, :cond_c5

    .line 2305
    if-nez p2, :cond_c4

    .line 2306
    const/4 v6, 0x1

    goto :goto_c5

    .line 2308
    :cond_c4
    const/4 v3, 0x1

    .line 2311
    :cond_c5
    :goto_c5
    const/4 v7, 0x1

    invoke-virtual {p1, p4, v7}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 2312
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, p1, v6, p3}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 2313
    if-eqz v6, :cond_db

    .line 2314
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2315
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v4, v9}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 2317
    .end local v5  # "pid":I
    .end local v6  # "willRestart":Z
    :cond_db
    goto :goto_e1

    .line 2318
    :cond_dc
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2321
    :goto_e1
    return v3
.end method

.method final removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method final removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 9
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "expecting"  # Lcom/android/server/am/ProcessRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2435
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2439
    .local v0, "old":Lcom/android/server/am/ProcessRecord;
    if-eqz p3, :cond_c

    if-ne v0, p3, :cond_11

    .line 2440
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 2442
    :cond_11
    if-eqz v0, :cond_5b

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v1, :cond_5b

    .line 2443
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget v2, v1, Lcom/android/server/am/UidRecord;->numProcs:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/am/UidRecord;->numProcs:I

    .line 2444
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget v1, v1, Lcom/android/server/am/UidRecord;->numProcs:I

    if-nez v1, :cond_58

    .line 2446
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No more processes in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_41
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 2449
    invoke-static {p2}, Lcom/android/server/am/EventLogTags;->writeAmUidStopped(I)V

    .line 2450
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 2451
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v2, 0x15

    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 2453
    :cond_58
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 2455
    :cond_5b
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2456
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 2458
    if-eqz p3, :cond_69

    move-object v1, p3

    goto :goto_6a

    :cond_69
    move-object v1, v0

    .line 2459
    .local v1, "record":Lcom/android/server/am/ProcessRecord;
    :goto_6a
    if-eqz v1, :cond_73

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz v2, :cond_73

    .line 2460
    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessList;->removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2463
    :cond_73
    return-object v0
.end method

.method sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .registers 10
    .param p1, "cmd"  # I
    .param p2, "packages"  # [Ljava/lang/String;
    .param p3, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3222
    const/4 v0, 0x0

    .line 3223
    .local v0, "foundProcess":Z
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_3f

    .line 3224
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3225
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_3c

    const/4 v3, -0x1

    if-eq p3, v3, :cond_1e

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v3, p3, :cond_3c

    .line 3227
    :cond_1e
    :try_start_1e
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    .local v3, "index":I
    :goto_21
    if-ltz v3, :cond_35

    if-nez v0, :cond_35

    .line 3228
    aget-object v4, p2, v3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 3229
    const/4 v0, 0x1

    .line 3227
    :cond_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    .line 3232
    .end local v3  # "index":I
    :cond_35
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_3a} :catch_3b

    .line 3234
    goto :goto_3c

    .line 3233
    :catch_3b
    move-exception v3

    .line 3223
    .end local v2  # "r":Lcom/android/server/am/ProcessRecord;
    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3238
    .end local v1  # "i":I
    :cond_3f
    if-nez v0, :cond_4a

    .line 3240
    :try_start_41
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_48} :catch_49

    .line 3242
    goto :goto_4a

    .line 3241
    :catch_49
    move-exception v1

    .line 3244
    :cond_4a
    :goto_4a
    return-void
.end method

.method setAllHttpProxy()V
    .registers 8

    .line 2530
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2531
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_4a

    .line 2532
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2536
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_47

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_47

    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_56

    if-nez v3, :cond_47

    .line 2538
    :try_start_26
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_56

    .line 2542
    goto :goto_47

    .line 2539
    :catch_2c
    move-exception v3

    .line 2540
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2d
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update http proxy for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    .end local v2  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2545
    .end local v1  # "i":I
    :cond_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_56

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2546
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 2547
    return-void

    .line 2545
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;ZZIZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;
    .registers 37
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"  # Z
    .param p4, "intentFlags"  # I
    .param p5, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p6, "allowWhileBooting"  # Z
    .param p7, "isolated"  # Z
    .param p8, "isolatedUid"  # I
    .param p9, "keepIfLarge"  # Z
    .param p10, "abiOverride"  # Ljava/lang/String;
    .param p11, "entryPoint"  # Ljava/lang/String;
    .param p12, "entryPointArgs"  # [Ljava/lang/String;
    .param p13, "crashHandler"  # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1898
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1900
    .local v11, "startTime":J
    const/4 v0, 0x1

    const-string v13, "/"

    const/4 v14, 0x0

    const-string v15, "ActivityManager"

    if-nez v10, :cond_b7

    .line 1901
    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v5, p9

    invoke-virtual {v6, v7, v1, v5}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 1902
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v2, "startProcess: after getProcessRecord"

    invoke-direct {v6, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1904
    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_55

    .line 1907
    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v2, v8}, Lcom/android/server/am/AppErrors;->isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 1908
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad process: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_54
    return-object v14

    .line 1917
    :cond_55
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_77

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing bad process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :cond_77
    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v2, v8}, Lcom/android/server/am/AppErrors;->resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 1920
    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v2, v8}, Lcom/android/server/am/AppErrors;->isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 1921
    const/16 v2, 0x7540

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1922
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v14, 0x0

    aput-object v4, v3, v14

    iget v4, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v0, v3, v4

    .line 1921
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1924
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v0, v8}, Lcom/android/server/am/AppErrors;->clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 1925
    if-eqz v1, :cond_b5

    .line 1926
    iput-boolean v14, v1, Lcom/android/server/am/ProcessRecord;->bad:Z

    .line 1941
    :cond_b5
    move-object v14, v1

    goto :goto_bb

    .line 1932
    .end local v1  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_b7
    move/from16 v5, p9

    const/4 v1, 0x0

    move-object v14, v1

    .line 1941
    .local v14, "app":Lcom/android/server/am/ProcessRecord;
    :goto_bb
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_100

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startProcess: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " knownToBeDead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " thread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    if-eqz v14, :cond_e7

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    goto :goto_e8

    :cond_e7
    const/4 v1, 0x0

    :goto_e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    if-eqz v14, :cond_f5

    iget v1, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_f6

    :cond_f5
    const/4 v1, -0x1

    :goto_f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1941
    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_100
    if-eqz v14, :cond_16f

    iget v0, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_16f

    .line 1946
    if-nez v9, :cond_10c

    iget-boolean v0, v14, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v0, :cond_110

    :cond_10c
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_13a

    .line 1949
    :cond_110
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_128

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App already running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :cond_128
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v1, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1952
    const-string/jumbo v0, "startProcess: done, added package to proc"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1953
    return-object v14

    .line 1958
    :cond_13a
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_152

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App died: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_152
    const-string/jumbo v0, "startProcess: bad proc running, killing"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1962
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v1, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v2, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ProcessList;->killProcessGroup(IILjava/lang/String;)V

    .line 1963
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v14, v1, v1}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 1964
    const-string/jumbo v0, "startProcess: done killing old proc"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1967
    :cond_16f
    if-nez v14, :cond_1c4

    .line 1968
    const-string/jumbo v0, "startProcess: creating new process record"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1969
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p7

    move/from16 v4, p8

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1970
    .end local v14  # "app":Lcom/android/server/am/ProcessRecord;
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_1af

    .line 1971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed making new process record for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isolated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    const/4 v1, 0x0

    return-object v1

    .line 1975
    :cond_1af
    const/4 v1, 0x0

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    .line 1976
    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    .line 1977
    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    .line 1978
    const-string/jumbo v5, "startProcess: done creating new process record"

    invoke-direct {v6, v11, v12, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object v14, v0

    goto :goto_1dc

    .line 1981
    .end local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v14  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1c4
    move-object/from16 v3, p11

    move-object/from16 v4, p12

    move-object/from16 v2, p13

    const/4 v1, 0x0

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v1, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v14, v0, v1, v2, v5}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1982
    const-string/jumbo v0, "startProcess: added package to existing proc"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1987
    :goto_1dc
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v0, :cond_21c

    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1988
    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_21c

    if-nez p6, :cond_21c

    .line 1990
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fd

    .line 1991
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1993
    :cond_1fd
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_215

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System not ready, putting on hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_215
    const-string/jumbo v0, "startProcess: returning with proc on hold"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1996
    return-object v14

    .line 2001
    :cond_21c
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v5

    invoke-static/range {v17 .. v22}, Lcom/android/server/wm/DataMonInjector;->reportProcess(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V

    .line 2004
    const-string/jumbo v0, "startProcess: stepping in to startProcess"

    invoke-direct {v6, v11, v12, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2005
    move-object/from16 v0, p5

    move-object/from16 v1, p10

    invoke-virtual {v6, v14, v0, v1}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;Ljava/lang/String;)Z

    move-result v2

    .line 2006
    .local v2, "success":Z
    const-string/jumbo v5, "startProcess: done starting proc!"

    invoke-direct {v6, v11, v12, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2007
    if-eqz v2, :cond_250

    move-object/from16 v16, v14

    goto :goto_252

    :cond_250
    const/16 v16, 0x0

    :goto_252
    return-object v16
.end method

.method final startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;)V
    .registers 4
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1883
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;Ljava/lang/String;)Z

    .line 1884
    return-void
.end method

.method startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 42
    .param p1, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"  # Ljava/lang/String;
    .param p3, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"  # I
    .param p5, "gids"  # [I
    .param p6, "runtimeFlags"  # I
    .param p7, "mountExternal"  # I
    .param p8, "seInfo"  # Ljava/lang/String;
    .param p9, "requiredAbi"  # Ljava/lang/String;
    .param p10, "instructionSet"  # Ljava/lang/String;
    .param p11, "invokeWith"  # Ljava/lang/String;
    .param p12, "startTime"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1683
    move-object/from16 v13, p0

    move-object/from16 v14, p3

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 1684
    const/4 v8, 0x0

    iput-boolean v8, v14, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 1685
    iput-boolean v8, v14, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 1686
    iput-boolean v8, v14, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 1687
    iget-wide v0, v14, Lcom/android/server/am/ProcessRecord;->startSeq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string/jumbo v1, "startProcessLocked processName:"

    const-string v9, "ActivityManager"

    if-eqz v0, :cond_39

    .line 1688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with non-zero startSeq:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v14, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_39
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eqz v0, :cond_5b

    .line 1692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with non-zero pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_5b
    iget-wide v0, v13, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, v13, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    iput-wide v0, v14, Lcom/android/server/am/ProcessRecord;->startSeq:J

    move-wide v11, v0

    .line 1696
    .local v11, "startSeq":J
    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p8

    move-wide/from16 v5, p12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessRecord;->setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;J)V

    .line 1697
    if-nez p11, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1698
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    goto :goto_91

    :cond_8f
    move v0, v8

    goto :goto_92

    :cond_91
    :goto_91
    move v0, v15

    .line 1697
    :goto_92
    invoke-virtual {v14, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 1699
    iget-object v0, v13, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v11, v12, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1701
    iget-object v0, v13, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v0, :cond_e2

    .line 1702
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_be

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Posting procStart msg for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1702
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_be
    iget-object v0, v13, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object v15, v10

    move-object/from16 v10, p11

    move-wide/from16 v16, v11

    .end local v11  # "startSeq":J
    .local v16, "startSeq":J
    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1724
    const/4 v10, 0x1

    return v10

    .line 1727
    .end local v16  # "startSeq":J
    .restart local v11  # "startSeq":J
    :cond_e2
    move-wide/from16 v16, v11

    move v10, v15

    .end local v11  # "startSeq":J
    .restart local v16  # "startSeq":J
    :try_start_e5
    invoke-direct/range {p0 .. p13}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 1731
    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_f7
    .catch Ljava/lang/RuntimeException; {:try_start_e5 .. :try_end_f7} :catch_f9

    .line 1739
    nop

    .end local v0  # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_136

    .line 1733
    :catch_f9
    move-exception v0

    .line 1734
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure starting process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1736
    iput-boolean v8, v14, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 1737
    iget-object v1, v13, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget v3, v14, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v27, "start failure"

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v26, v3

    invoke-virtual/range {v18 .. v27}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1740
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :goto_136
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_13b

    move v8, v10

    :cond_13b
    return v8
.end method

.method final startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;Ljava/lang/String;)Z
    .registers 10
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p3, "abiOverride"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1889
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ZZLjava/lang/String;)Z
    .registers 36
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p3, "disableHiddenApiChecks"  # Z
    .param p4, "mountExtStorageFull"  # Z
    .param p5, "abiOverride"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1441
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    const-string v0, ""

    const-string v1, "1"

    iget-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 1442
    return v3

    .line 1444
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1445
    .local v11, "startTime":J
    iget v2, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v14, 0x0

    if-lez v2, :cond_40

    iget v2, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v2, v4, :cond_40

    .line 1446
    const-string/jumbo v2, "startProcess: removing from pids map"

    invoke-direct {v15, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1447
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, v13}, Lcom/android/server/am/ActivityManagerService$PidMap;->remove(Lcom/android/server/am/ProcessRecord;)V

    .line 1448
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v13}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1449
    const-string/jumbo v2, "startProcess: done removing from pids map"

    invoke-direct {v15, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1450
    invoke-virtual {v13, v14}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 1451
    const-wide/16 v4, 0x0

    iput-wide v4, v13, Lcom/android/server/am/ProcessRecord;->startSeq:J

    .line 1454
    :cond_40
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    const-string v10, "ActivityManager"

    if-eqz v2, :cond_65

    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcessLocked removing on hold: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_65
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1459
    const-string/jumbo v2, "startProcess: starting to update cpu stats"

    invoke-direct {v15, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1460
    iget-object v2, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1461
    const-string/jumbo v2, "startProcess: done updating cpu stats"

    invoke-direct {v15, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1465
    :try_start_7d
    iget v2, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1468
    .local v2, "userId":I
    invoke-static {v2}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 1469
    const/4 v4, 0x0

    .local v4, "newUserId":I
    goto :goto_8c

    .line 1471
    .end local v4  # "newUserId":I
    :cond_8b
    move v4, v2

    .line 1474
    .restart local v4  # "newUserId":I
    :goto_8c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_97} :catch_41b
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_97} :catch_412

    .line 1481
    .end local v2  # "userId":I
    .end local v4  # "newUserId":I
    nop

    .line 1483
    :try_start_98
    iget v2, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1484
    .local v2, "uid":I
    const/4 v4, 0x0

    .line 1485
    .local v4, "gids":[I
    const/4 v5, 0x0

    .line 1486
    .local v5, "mountExternal":I
    iget-boolean v6, v13, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_9e
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_9e} :catch_412

    if-nez v6, :cond_12f

    .line 1487
    const/4 v6, 0x0

    .line 1489
    .local v6, "permGids":[I
    :try_start_a1
    const-string/jumbo v9, "startProcess: getting gids from package manager"

    invoke-direct {v15, v11, v12, v9}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1490
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 1491
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    iget-object v7, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/high16 v8, 0x10000000

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v9, v7, v8, v3}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;II)[I

    move-result-object v3

    move-object v6, v3

    .line 1493
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v3

    if-eqz v3, :cond_c2

    if-eqz p4, :cond_c2

    .line 1494
    const/4 v3, 0x6

    .end local v5  # "mountExternal":I
    .local v3, "mountExternal":I
    goto :goto_d4

    .line 1496
    .end local v3  # "mountExternal":I
    .restart local v5  # "mountExternal":I
    :cond_c2
    const-class v3, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManagerInternal;

    .line 1498
    .local v3, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    iget-object v7, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v7}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v7
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_d2} :catch_129
    .catch Ljava/lang/RuntimeException; {:try_start_a1 .. :try_end_d2} :catch_11f

    move v5, v7

    move v3, v5

    .line 1503
    .end local v5  # "mountExternal":I
    .end local v9  # "pm":Landroid/content/pm/IPackageManager;
    .local v3, "mountExternal":I
    :goto_d4
    nop

    .line 1509
    :try_start_d5
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v5

    const/4 v7, 0x3

    if-eqz v5, :cond_e0

    .line 1510
    new-array v5, v7, [I

    move-object v4, v5

    goto :goto_e9

    .line 1512
    :cond_e0
    array-length v5, v6

    add-int/2addr v5, v7

    new-array v5, v5, [I

    move-object v4, v5

    .line 1513
    array-length v5, v6

    invoke-static {v6, v14, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1515
    :goto_e9
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v5

    aput v5, v4, v14

    .line 1516
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v5

    const/4 v7, 0x1

    aput v5, v4, v7

    .line 1517
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v5

    const/4 v7, 0x2

    aput v5, v4, v7

    .line 1520
    aget v5, v4, v14

    const/4 v8, -0x1

    if-ne v5, v8, :cond_112

    aget v5, v4, v7

    aput v5, v4, v14

    .line 1521
    :cond_112
    const/4 v5, 0x1

    aget v7, v4, v5

    const/4 v8, -0x1

    if-ne v7, v8, :cond_11d

    const/4 v7, 0x2

    aget v8, v4, v7

    aput v8, v4, v5

    .line 1523
    .end local v6  # "permGids":[I
    :cond_11d
    move v8, v3

    goto :goto_130

    .line 1662
    .end local v2  # "uid":I
    .end local v3  # "mountExternal":I
    .end local v4  # "gids":[I
    :catch_11f
    move-exception v0

    move-object/from16 v28, v10

    move-wide/from16 v26, v11

    move-object v15, v13

    move/from16 v29, v14

    goto/16 :goto_429

    .line 1501
    .restart local v2  # "uid":I
    .restart local v4  # "gids":[I
    .restart local v5  # "mountExternal":I
    .restart local v6  # "permGids":[I
    :catch_129
    move-exception v0

    .line 1502
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v11  # "startTime":J
    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3  # "disableHiddenApiChecks":Z
    .end local p4  # "mountExtStorageFull":Z
    .end local p5  # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_12f
    .catch Ljava/lang/RuntimeException; {:try_start_d5 .. :try_end_12f} :catch_11f

    .line 1486
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v6  # "permGids":[I
    .restart local v11  # "startTime":J
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3  # "disableHiddenApiChecks":Z
    .restart local p4  # "mountExtStorageFull":Z
    .restart local p5  # "abiOverride":Ljava/lang/String;
    :cond_12f
    move v8, v5

    .line 1523
    .end local v5  # "mountExternal":I
    .local v8, "mountExternal":I
    :goto_130
    :try_start_130
    iput v8, v13, Lcom/android/server/am/ProcessRecord;->mountMode:I

    .line 1524
    const-string/jumbo v3, "startProcess: building args"

    invoke-direct {v15, v11, v12, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1525
    iget-object v3, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isFactoryTestProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 1526
    const/4 v2, 0x0

    move/from16 v19, v2

    goto :goto_14c

    .line 1525
    :cond_14a
    move/from16 v19, v2

    .line 1528
    .end local v2  # "uid":I
    .local v19, "uid":I
    :goto_14c
    const/4 v2, 0x0

    .line 1529
    .local v2, "runtimeFlags":I
    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_151
    .catch Ljava/lang/RuntimeException; {:try_start_130 .. :try_end_151} :catch_412

    const/4 v5, 0x2

    and-int/2addr v3, v5

    if-eqz v3, :cond_181

    .line 1530
    or-int/lit8 v2, v2, 0x1

    .line 1531
    or-int/lit16 v2, v2, 0x100

    .line 1534
    or-int/2addr v2, v5

    .line 1537
    :try_start_15a
    iget-object v3, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "art_verifier_verify_debuggable"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_181

    .line 1539
    or-int/lit16 v2, v2, 0x200

    .line 1540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": ART verification disabled"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_181
    .catch Ljava/lang/RuntimeException; {:try_start_15a .. :try_end_181} :catch_11f

    .line 1545
    :cond_181
    :try_start_181
    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_185
    .catch Ljava/lang/RuntimeException; {:try_start_181 .. :try_end_185} :catch_412

    and-int/lit16 v3, v3, 0x4000

    if-nez v3, :cond_190

    :try_start_189
    iget-object v3, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z
    :try_end_18d
    .catch Ljava/lang/RuntimeException; {:try_start_189 .. :try_end_18d} :catch_11f

    const/4 v5, 0x1

    if-ne v3, v5, :cond_192

    .line 1547
    :cond_190
    or-int/lit8 v2, v2, 0x8

    .line 1549
    :cond_192
    :try_start_192
    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v5, 0x800000

    and-int/2addr v3, v5

    if-eqz v3, :cond_19f

    .line 1550
    const v3, 0x8000

    or-int/2addr v2, v3

    .line 1552
    :cond_19f
    const-string v3, "debug.checkjni"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ad

    .line 1553
    or-int/lit8 v2, v2, 0x2

    .line 1555
    :cond_1ad
    const-string v3, "debug.generate-debug-info"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 1556
    .local v7, "genDebugInfoProperty":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1b8
    .catch Ljava/lang/RuntimeException; {:try_start_192 .. :try_end_1b8} :catch_412

    const-string/jumbo v5, "true"

    if-nez v3, :cond_1c3

    :try_start_1bd
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1c1
    .catch Ljava/lang/RuntimeException; {:try_start_1bd .. :try_end_1c1} :catch_11f

    if-eqz v3, :cond_1c5

    .line 1557
    :cond_1c3
    or-int/lit8 v2, v2, 0x20

    .line 1559
    :cond_1c5
    :try_start_1c5
    const-string v3, "dalvik.vm.minidebuginfo"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 1560
    .local v6, "genMiniDebugInfoProperty":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d0
    .catch Ljava/lang/RuntimeException; {:try_start_1c5 .. :try_end_1d0} :catch_412

    if-nez v3, :cond_1d8

    :try_start_1d2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d6
    .catch Ljava/lang/RuntimeException; {:try_start_1d2 .. :try_end_1d6} :catch_11f

    if-eqz v3, :cond_1da

    .line 1561
    :cond_1d8
    or-int/lit16 v2, v2, 0x800

    .line 1563
    :cond_1da
    :try_start_1da
    const-string v3, "debug.jni.logging"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    .line 1564
    or-int/lit8 v2, v2, 0x10

    .line 1566
    :cond_1e8
    const-string v3, "debug.assert"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f6

    .line 1567
    or-int/lit8 v2, v2, 0x4

    .line 1569
    :cond_1f6
    iget-object v1, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_1fa
    .catch Ljava/lang/RuntimeException; {:try_start_1da .. :try_end_1fa} :catch_412

    if-eqz v1, :cond_213

    :try_start_1fc
    iget-object v1, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1570
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_213

    .line 1572
    or-int/lit8 v1, v2, 0x40

    .line 1573
    .end local v2  # "runtimeFlags":I
    .local v1, "runtimeFlags":I
    or-int/lit8 v1, v1, 0x20

    .line 1574
    or-int/lit16 v2, v1, 0x80

    .line 1575
    .end local v1  # "runtimeFlags":I
    .restart local v2  # "runtimeFlags":I
    iget-object v1, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_213
    .catch Ljava/lang/RuntimeException; {:try_start_1fc .. :try_end_213} :catch_11f

    .line 1578
    :cond_213
    :try_start_213
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v1
    :try_end_219
    .catch Ljava/lang/RuntimeException; {:try_start_213 .. :try_end_219} :catch_412

    if-nez v1, :cond_231

    :try_start_21b
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1579
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v1

    if-eqz v1, :cond_233

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 1580
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_233

    .line 1581
    :cond_231
    or-int/lit16 v2, v2, 0x400

    .line 1584
    :cond_233
    if-nez p3, :cond_273

    iget-object v1, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_273

    .line 1585
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v15, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 1586
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getPolicy()I

    move-result v3

    .line 1585
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    .line 1587
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1588
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v1

    .line 1589
    .local v1, "policy":I
    sget v3, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v3, v1, v3

    .line 1590
    .local v3, "policyBits":I
    and-int/lit16 v5, v3, 0x3000

    if-ne v5, v3, :cond_25c

    .line 1593
    or-int/2addr v2, v3

    goto :goto_273

    .line 1591
    :cond_25c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid API policy: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v11  # "startTime":J
    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3  # "disableHiddenApiChecks":Z
    .end local p4  # "mountExtStorageFull":Z
    .end local p5  # "abiOverride":Ljava/lang/String;
    throw v0
    :try_end_273
    .catch Ljava/lang/RuntimeException; {:try_start_21b .. :try_end_273} :catch_11f

    .line 1596
    .end local v1  # "policy":I
    .end local v3  # "policyBits":I
    .restart local v11  # "startTime":J
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3  # "disableHiddenApiChecks":Z
    .restart local p4  # "mountExtStorageFull":Z
    .restart local p5  # "abiOverride":Ljava/lang/String;
    :cond_273
    :goto_273
    :try_start_273
    const-string/jumbo v1, "persist.device_config.runtime_native.use_app_image_startup_cache"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 1599
    .local v5, "useAppImageCache":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_27f
    .catch Ljava/lang/RuntimeException; {:try_start_273 .. :try_end_27f} :catch_412

    if-nez v1, :cond_28f

    :try_start_281
    const-string v1, "false"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_287
    .catch Ljava/lang/RuntimeException; {:try_start_281 .. :try_end_287} :catch_11f

    if-nez v1, :cond_28f

    .line 1600
    const/high16 v1, 0x10000

    or-int/2addr v1, v2

    move/from16 v20, v1

    .end local v2  # "runtimeFlags":I
    .local v1, "runtimeFlags":I
    goto :goto_291

    .line 1603
    .end local v1  # "runtimeFlags":I
    .restart local v2  # "runtimeFlags":I
    :cond_28f
    move/from16 v20, v2

    .end local v2  # "runtimeFlags":I
    .local v20, "runtimeFlags":I
    :goto_291
    const/4 v1, 0x0

    .line 1604
    .local v1, "invokeWith":Ljava/lang/String;
    :try_start_292
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_296
    .catch Ljava/lang/RuntimeException; {:try_start_292 .. :try_end_296} :catch_412

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_2db

    .line 1606
    :try_start_29a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/wrap.sh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1607
    .local v2, "wrapperFileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3
    :try_end_2b3
    .catch Ljava/lang/RuntimeException; {:try_start_29a .. :try_end_2b3} :catch_11f

    .line 1609
    .local v3, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_2b3
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2d0

    .line 1610
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/system/bin/logwrapper "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_2cf
    .catchall {:try_start_2b3 .. :try_end_2cf} :catchall_2d6

    move-object v1, v9

    .line 1613
    :cond_2d0
    :try_start_2d0
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1614
    move-object/from16 v21, v1

    goto :goto_2dd

    .line 1613
    :catchall_2d6
    move-exception v0

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .end local v11  # "startTime":J
    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3  # "disableHiddenApiChecks":Z
    .end local p4  # "mountExtStorageFull":Z
    .end local p5  # "abiOverride":Ljava/lang/String;
    throw v0
    :try_end_2db
    .catch Ljava/lang/RuntimeException; {:try_start_2d0 .. :try_end_2db} :catch_2fa

    .line 1604
    .end local v2  # "wrapperFileName":Ljava/lang/String;
    .end local v3  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v11  # "startTime":J
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3  # "disableHiddenApiChecks":Z
    .restart local p4  # "mountExtStorageFull":Z
    .restart local p5  # "abiOverride":Ljava/lang/String;
    :cond_2db
    move-object/from16 v21, v1

    .line 1617
    .end local v1  # "invokeWith":Ljava/lang/String;
    .local v21, "invokeWith":Ljava/lang/String;
    :goto_2dd
    if-eqz p5, :cond_2e2

    move-object/from16 v1, p5

    goto :goto_2e6

    :cond_2e2
    :try_start_2e2
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_2e6
    .catch Ljava/lang/RuntimeException; {:try_start_2e2 .. :try_end_2e6} :catch_409

    .line 1618
    .local v1, "requiredAbi":Ljava/lang/String;
    :goto_2e6
    if-nez v1, :cond_304

    .line 1619
    :try_start_2e8
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_2ea
    .catch Ljava/lang/RuntimeException; {:try_start_2e8 .. :try_end_2ea} :catch_2fa

    const/4 v3, 0x0

    :try_start_2eb
    aget-object v2, v2, v3
    :try_end_2ed
    .catch Ljava/lang/RuntimeException; {:try_start_2eb .. :try_end_2ed} :catch_2f0

    move-object v1, v2

    move-object v14, v1

    goto :goto_305

    .line 1662
    .end local v1  # "requiredAbi":Ljava/lang/String;
    .end local v4  # "gids":[I
    .end local v5  # "useAppImageCache":Ljava/lang/String;
    .end local v6  # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v7  # "genDebugInfoProperty":Ljava/lang/String;
    .end local v8  # "mountExternal":I
    .end local v19  # "uid":I
    .end local v20  # "runtimeFlags":I
    .end local v21  # "invokeWith":Ljava/lang/String;
    :catch_2f0
    move-exception v0

    move/from16 v29, v3

    move-object/from16 v28, v10

    move-wide/from16 v26, v11

    :goto_2f7
    move-object v15, v13

    goto/16 :goto_429

    :catch_2fa
    move-exception v0

    move-object/from16 v28, v10

    move-wide/from16 v26, v11

    move-object v15, v13

    const/16 v29, 0x0

    goto/16 :goto_429

    .line 1618
    .restart local v1  # "requiredAbi":Ljava/lang/String;
    .restart local v4  # "gids":[I
    .restart local v5  # "useAppImageCache":Ljava/lang/String;
    .restart local v6  # "genMiniDebugInfoProperty":Ljava/lang/String;
    .restart local v7  # "genDebugInfoProperty":Ljava/lang/String;
    .restart local v8  # "mountExternal":I
    .restart local v19  # "uid":I
    .restart local v20  # "runtimeFlags":I
    .restart local v21  # "invokeWith":Ljava/lang/String;
    :cond_304
    move-object v14, v1

    .line 1622
    .end local v1  # "requiredAbi":Ljava/lang/String;
    .local v14, "requiredAbi":Ljava/lang/String;
    :goto_305
    const/4 v1, 0x0

    .line 1623
    .local v1, "instructionSet":Ljava/lang/String;
    :try_start_306
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_30a
    .catch Ljava/lang/RuntimeException; {:try_start_306 .. :try_end_30a} :catch_409

    if-eqz v2, :cond_317

    .line 1624
    :try_start_30c
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_314
    .catch Ljava/lang/RuntimeException; {:try_start_30c .. :try_end_314} :catch_2fa

    move-object v1, v2

    move-object v3, v1

    goto :goto_318

    .line 1623
    :cond_317
    move-object v3, v1

    .line 1627
    .end local v1  # "instructionSet":Ljava/lang/String;
    .local v3, "instructionSet":Ljava/lang/String;
    :goto_318
    :try_start_318
    iput-object v4, v13, Lcom/android/server/am/ProcessRecord;->gids:[I

    .line 1629
    sget-boolean v1, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceOpen:Z

    if-eqz v1, :cond_320

    if-nez v4, :cond_32c

    :cond_320
    const-string v1, "com.android.providers.media"

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1630
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_32a
    .catch Ljava/lang/RuntimeException; {:try_start_318 .. :try_end_32a} :catch_409

    if-eqz v1, :cond_369

    .line 1631
    :cond_32c
    :try_start_32c
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1632
    .local v1, "userId":I
    if-eqz v1, :cond_33d

    invoke-static {v1}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v2

    if-eqz v2, :cond_339

    goto :goto_33d

    :cond_339
    move-object/from16 v16, v0

    const/4 v15, 0x0

    goto :goto_36c

    .line 1633
    :cond_33d
    :goto_33d
    invoke-static {v1}, Landroid/os/UserHandle;->getSharedDataBetweenUserGid(I)I

    move-result v2

    .line 1634
    .local v2, "sharedDataBetweenUserGid":I
    const/4 v9, -0x1

    if-eq v9, v2, :cond_365

    .line 1635
    array-length v9, v4

    const/16 v16, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    .line 1636
    .local v9, "gids_ex":[I
    move-object/from16 v16, v0

    array-length v0, v4
    :try_end_34e
    .catch Ljava/lang/RuntimeException; {:try_start_32c .. :try_end_34e} :catch_2fa

    const/4 v15, 0x0

    :try_start_34f
    invoke-static {v4, v15, v9, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1637
    array-length v0, v9

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    aput v2, v9, v0

    .line 1638
    iput-object v9, v13, Lcom/android/server/am/ProcessRecord;->gids:[I
    :try_end_35b
    .catch Ljava/lang/RuntimeException; {:try_start_34f .. :try_end_35b} :catch_35d

    .line 1639
    move-object v0, v9

    .end local v4  # "gids":[I
    .local v0, "gids":[I
    goto :goto_36d

    .line 1662
    .end local v0  # "gids":[I
    .end local v1  # "userId":I
    .end local v2  # "sharedDataBetweenUserGid":I
    .end local v3  # "instructionSet":Ljava/lang/String;
    .end local v5  # "useAppImageCache":Ljava/lang/String;
    .end local v6  # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v7  # "genDebugInfoProperty":Ljava/lang/String;
    .end local v8  # "mountExternal":I
    .end local v9  # "gids_ex":[I
    .end local v14  # "requiredAbi":Ljava/lang/String;
    .end local v19  # "uid":I
    .end local v20  # "runtimeFlags":I
    .end local v21  # "invokeWith":Ljava/lang/String;
    :catch_35d
    move-exception v0

    move-object/from16 v28, v10

    move-wide/from16 v26, v11

    move/from16 v29, v15

    goto :goto_2f7

    .line 1634
    .restart local v1  # "userId":I
    .restart local v2  # "sharedDataBetweenUserGid":I
    .restart local v3  # "instructionSet":Ljava/lang/String;
    .restart local v4  # "gids":[I
    .restart local v5  # "useAppImageCache":Ljava/lang/String;
    .restart local v6  # "genMiniDebugInfoProperty":Ljava/lang/String;
    .restart local v7  # "genDebugInfoProperty":Ljava/lang/String;
    .restart local v8  # "mountExternal":I
    .restart local v14  # "requiredAbi":Ljava/lang/String;
    .restart local v19  # "uid":I
    .restart local v20  # "runtimeFlags":I
    .restart local v21  # "invokeWith":Ljava/lang/String;
    :cond_365
    move-object/from16 v16, v0

    const/4 v15, 0x0

    goto :goto_36c

    .line 1630
    .end local v1  # "userId":I
    .end local v2  # "sharedDataBetweenUserGid":I
    :cond_369
    move-object/from16 v16, v0

    const/4 v15, 0x0

    .line 1644
    :goto_36c
    move-object v0, v4

    .end local v4  # "gids":[I
    .restart local v0  # "gids":[I
    :goto_36d
    :try_start_36d
    invoke-virtual {v13, v14}, Lcom/android/server/am/ProcessRecord;->setRequiredAbi(Ljava/lang/String;)V

    .line 1645
    iput-object v3, v13, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;

    .line 1648
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_37a
    .catch Ljava/lang/RuntimeException; {:try_start_36d .. :try_end_37a} :catch_400

    if-eqz v1, :cond_3aa

    .line 1649
    :try_start_37c
    const-string v1, "SELinux tag not defined"

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELinux tag not defined for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (uid "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3aa
    .catch Ljava/lang/RuntimeException; {:try_start_37c .. :try_end_3aa} :catch_35d

    .line 1653
    :cond_3aa
    :try_start_3aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c3

    move-object/from16 v2, v16

    goto :goto_3c7

    :cond_3c3
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_3c7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1657
    .local v9, "seInfo":Ljava/lang/String;
    const-string v1, "android.app.ActivityThread"

    move-object/from16 v16, v1

    .line 1659
    .local v16, "entryPoint":Ljava/lang/String;
    const-string v4, "android.app.ActivityThread"
    :try_end_3d4
    .catch Ljava/lang/RuntimeException; {:try_start_3aa .. :try_end_3d4} :catch_400

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v17, v3

    .end local v3  # "instructionSet":Ljava/lang/String;
    .local v17, "instructionSet":Ljava/lang/String;
    move-object v3, v4

    move-object/from16 v4, p1

    move-object/from16 v18, v5

    .end local v5  # "useAppImageCache":Ljava/lang/String;
    .local v18, "useAppImageCache":Ljava/lang/String;
    move/from16 v5, v19

    move-object/from16 v22, v6

    .end local v6  # "genMiniDebugInfoProperty":Ljava/lang/String;
    .local v22, "genMiniDebugInfoProperty":Ljava/lang/String;
    move-object v6, v0

    move-object/from16 v23, v7

    .end local v7  # "genDebugInfoProperty":Ljava/lang/String;
    .local v23, "genDebugInfoProperty":Ljava/lang/String;
    move/from16 v7, v20

    move/from16 v24, v8

    .end local v8  # "mountExternal":I
    .local v24, "mountExternal":I
    move-object v15, v10

    move-object v10, v14

    move-wide/from16 v26, v11

    .end local v11  # "startTime":J
    .local v26, "startTime":J
    move-object/from16 v11, v17

    move-object/from16 v12, v21

    move-object/from16 v25, v14

    move-object/from16 v28, v15

    const/16 v29, 0x0

    move-object v15, v13

    .end local v14  # "requiredAbi":Ljava/lang/String;
    .local v25, "requiredAbi":Ljava/lang/String;
    move-wide/from16 v13, v26

    :try_start_3fb
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    return v1

    .line 1662
    .end local v0  # "gids":[I
    .end local v9  # "seInfo":Ljava/lang/String;
    .end local v16  # "entryPoint":Ljava/lang/String;
    .end local v17  # "instructionSet":Ljava/lang/String;
    .end local v18  # "useAppImageCache":Ljava/lang/String;
    .end local v19  # "uid":I
    .end local v20  # "runtimeFlags":I
    .end local v21  # "invokeWith":Ljava/lang/String;
    .end local v22  # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v23  # "genDebugInfoProperty":Ljava/lang/String;
    .end local v24  # "mountExternal":I
    .end local v25  # "requiredAbi":Ljava/lang/String;
    .end local v26  # "startTime":J
    .restart local v11  # "startTime":J
    :catch_400
    move-exception v0

    move-object/from16 v28, v10

    move-wide/from16 v26, v11

    move/from16 v29, v15

    move-object v15, v13

    goto :goto_41a

    :catch_409
    move-exception v0

    move-object/from16 v28, v10

    move-wide/from16 v26, v11

    move-object v15, v13

    const/16 v29, 0x0

    goto :goto_41a

    :catch_412
    move-exception v0

    move-object/from16 v28, v10

    move-wide/from16 v26, v11

    move-object v15, v13

    move/from16 v29, v14

    .end local v11  # "startTime":J
    .restart local v26  # "startTime":J
    :goto_41a
    goto :goto_429

    .line 1479
    .end local v26  # "startTime":J
    .restart local v11  # "startTime":J
    :catch_41b
    move-exception v0

    move-object/from16 v28, v10

    move-wide/from16 v26, v11

    move-object v15, v13

    move/from16 v29, v14

    .line 1480
    .end local v11  # "startTime":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v26  # "startTime":J
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v26  # "startTime":J
    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3  # "disableHiddenApiChecks":Z
    .end local p4  # "mountExtStorageFull":Z
    .end local p5  # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_428
    .catch Ljava/lang/RuntimeException; {:try_start_3fb .. :try_end_428} :catch_428

    .line 1662
    .end local v0  # "e":Landroid/os/RemoteException;
    .restart local v26  # "startTime":J
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3  # "disableHiddenApiChecks":Z
    .restart local p4  # "mountExtStorageFull":Z
    .restart local p5  # "abiOverride":Ljava/lang/String;
    :catch_428
    move-exception v0

    .line 1663
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure starting process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v28

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1671
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v11, "start failure"

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1673
    return v29
.end method

.method updateAllTimePrefsLocked(I)V
    .registers 7
    .param p1, "timePref"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2515
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 2516
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2517
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_37

    .line 2519
    :try_start_16
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 2523
    goto :goto_37

    .line 2520
    :catch_1c
    move-exception v2

    .line 2521
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update preferences for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    .end local v1  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2  # "ex":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2526
    .end local v0  # "i":I
    :cond_3a
    return-void
.end method

.method updateApplicationInfoLocked(Ljava/util/List;IZ)V
    .registers 15
    .param p2, "userId"  # I
    .param p3, "updateFrameworkRes"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 3179
    .local p1, "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_9c

    .line 3180
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3181
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_18

    .line 3182
    goto/16 :goto_98

    .line 3185
    :cond_18
    const/4 v3, -0x1

    if-eq p2, v3, :cond_21

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v3, p2, :cond_21

    .line 3186
    goto/16 :goto_98

    .line 3189
    :cond_21
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    .line 3190
    .local v3, "packageCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_28
    if-ge v4, v3, :cond_98

    .line 3191
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v5

    .line 3192
    .local v5, "packageName":Ljava/lang/String;
    if-nez p3, :cond_38

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 3194
    :cond_38
    :try_start_38
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/16 v7, 0x400

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 3195
    invoke-interface {v6, v5, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 3196
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_80

    .line 3199
    iget v7, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v1

    if-nez v7, :cond_66

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x2710

    if-lt v7, v8, :cond_66

    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 3200
    goto :goto_95

    .line 3202
    :cond_66
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3203
    .local v7, "willSchedulePackage":Ljava/lang/String;
    if-eqz v7, :cond_7b

    .line 3204
    const-string v8, "com.meizu.mstore"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7a

    const-string v8, "com.meizu.media.video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 3205
    :cond_7a
    goto :goto_95

    .line 3209
    :cond_7b
    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v8, v6}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_80} :catch_81

    .line 3214
    .end local v6  # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7  # "willSchedulePackage":Ljava/lang/String;
    :cond_80
    goto :goto_95

    .line 3211
    :catch_81
    move-exception v6

    .line 3212
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object v2, v7, v1

    const-string v8, "Failed to update %s ApplicationInfo for %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    .end local v5  # "packageName":Ljava/lang/String;
    .end local v6  # "e":Landroid/os/RemoteException;
    :cond_95
    :goto_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 3179
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3  # "packageCount":I
    .end local v4  # "j":I
    :cond_98
    :goto_98
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 3218
    .end local v0  # "i":I
    :cond_9c
    return-void
.end method

.method updateCoreSettingsLocked(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "settings"  # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2469
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 2470
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2472
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    :try_start_12
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1b

    .line 2473
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1c

    .line 2477
    :cond_1b
    goto :goto_1d

    .line 2475
    :catch_1c
    move-exception v2

    .line 2469
    .end local v1  # "processRecord":Lcom/android/server/am/ProcessRecord;
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2479
    .end local v0  # "i":I
    :cond_20
    return-void
.end method

.method updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .registers 13
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"  # J
    .param p4, "index"  # I
    .param p5, "lruSeq"  # I
    .param p6, "what"  # Ljava/lang/String;
    .param p7, "obj"  # Ljava/lang/Object;
    .param p8, "srcApp"  # Lcom/android/server/am/ProcessRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2581
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    .line 2583
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2585
    return p4

    .line 2588
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2589
    .local v0, "lrui":I
    const-string v1, "ActivityManager"

    if-gez v0, :cond_40

    .line 2590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding dependent process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not on LRU list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    return p4

    .line 2595
    :cond_40
    if-lt v0, p4, :cond_43

    .line 2598
    return p4

    .line 2601
    :cond_43
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v0, v2, :cond_4a

    if-ge p4, v2, :cond_4a

    .line 2603
    return p4

    .line 2606
    :cond_4a
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2607
    if-lez p4, :cond_53

    .line 2608
    add-int/lit8 p4, p4, -0x1

    .line 2610
    :cond_53
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v2, :cond_7b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving dep from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in LRU list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_7b
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2613
    iput p5, p1, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    .line 2614
    return p4
.end method

.method final updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .registers 27
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityChange"  # Z
    .param p3, "client"  # Lcom/android/server/am/ProcessRecord;

    .line 2804
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    move v0, v1

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v0, v12

    :goto_1c
    move v13, v0

    .line 2806
    .local v13, "hasActivity":Z
    const/4 v14, 0x0

    .line 2807
    .local v14, "hasService":Z
    if-nez p2, :cond_23

    if-eqz v13, :cond_23

    .line 2812
    return-void

    .line 2815
    :cond_23
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    add-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 2816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2817
    .local v7, "now":J
    iput-wide v7, v10, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    .line 2821
    const-string v0, "ActivityManager"

    if-eqz v13, :cond_5e

    .line 2822
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2823
    .local v2, "N":I
    if-lez v2, :cond_5d

    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_5d

    .line 2824
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_5c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not moving, already top activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    :cond_5c
    return-void

    .line 2827
    .end local v2  # "N":I
    :cond_5d
    goto :goto_84

    .line 2828
    :cond_5e
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lez v2, :cond_84

    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v2, v12

    .line 2829
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_84

    .line 2830
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_83

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not moving, already top other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_83
    return-void

    .line 2835
    :cond_84
    :goto_84
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v15

    .line 2837
    .local v15, "lrui":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_ab

    if-ltz v15, :cond_ab

    .line 2840
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_aa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not moving, persistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_aa
    return-void

    .line 2878
    :cond_ab
    if-ltz v15, :cond_c0

    .line 2879
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v15, v2, :cond_b4

    .line 2880
    sub-int/2addr v2, v12

    iput v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2882
    :cond_b4
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v15, v2, :cond_bb

    .line 2883
    sub-int/2addr v2, v12

    iput v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2893
    :cond_bb
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2907
    :cond_c0
    const/4 v2, -0x1

    .line 2908
    .local v2, "nextActivityIndex":I
    if-eqz v13, :cond_16d

    .line 2909
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2910
    .local v1, "N":I
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2911
    .local v3, "nextIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v4

    if-nez v4, :cond_146

    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v4, :cond_146

    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_146

    .line 2915
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_107

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding to second-top of LRU activity list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " group="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " importance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    :cond_107
    add-int/lit8 v0, v1, -0x1

    .line 2920
    .local v0, "pos":I
    :goto_109
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le v0, v4, :cond_124

    .line 2921
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2922
    .local v4, "posproc":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_120

    .line 2926
    goto :goto_124

    .line 2928
    :cond_120
    nop

    .end local v4  # "posproc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v0, v0, -0x1

    .line 2929
    goto :goto_109

    .line 2930
    :cond_124
    :goto_124
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2931
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ne v0, v4, :cond_130

    .line 2932
    add-int/2addr v4, v12

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2934
    :cond_130
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ne v0, v4, :cond_137

    .line 2938
    add-int/2addr v4, v12

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2942
    :cond_137
    add-int/lit8 v4, v0, -0x1

    .line 2943
    .local v4, "endIndex":I
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v4, v5, :cond_13f

    .line 2944
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2946
    :cond_13f
    move v2, v4

    .line 2947
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-direct {v9, v10, v0, v5, v4}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V

    .line 2948
    .end local v0  # "pos":I
    .end local v4  # "endIndex":I
    goto :goto_16b

    .line 2950
    :cond_146
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_15e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding to top of LRU activity list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    :cond_15e
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2952
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v12

    move v2, v0

    .line 2954
    .end local v1  # "N":I
    :goto_16b
    move v0, v3

    goto :goto_1dc

    .line 2962
    .end local v3  # "nextIndex":I
    :cond_16d
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2963
    .local v3, "index":I
    if-eqz v11, :cond_1a1

    .line 2966
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    .line 2967
    .local v4, "clientIndex":I
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_199

    if-gez v4, :cond_199

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " when updating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    :cond_199
    if-gt v4, v15, :cond_19c

    .line 2972
    move v4, v15

    .line 2974
    :cond_19c
    if-ltz v4, :cond_1a1

    if-le v3, v4, :cond_1a1

    .line 2975
    move v3, v4

    .line 2978
    .end local v4  # "clientIndex":I
    :cond_1a1
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_1c1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of LRU list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    :cond_1c1
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2980
    add-int/lit8 v0, v3, -0x1

    .line 2981
    .local v0, "nextIndex":I
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v4, v12

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2982
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/2addr v4, v12

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2983
    if-le v3, v12, :cond_1dc

    .line 2984
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v4, v12

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v9, v10, v4, v1, v5}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V

    .line 2988
    .end local v3  # "index":I
    :cond_1dc
    :goto_1dc
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    iput v1, v10, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    .line 2992
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v12

    move/from16 v16, v0

    move v6, v1

    move/from16 v17, v2

    .end local v0  # "nextIndex":I
    .end local v2  # "nextActivityIndex":I
    .local v6, "j":I
    .local v16, "nextIndex":I
    .local v17, "nextActivityIndex":I
    :goto_1ec
    if-ltz v6, :cond_29d

    .line 2993
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 2994
    .local v5, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_291

    iget-boolean v0, v5, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_291

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_291

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_291

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_291

    iget v0, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v1, 0x40000130  # 2.0000725f

    and-int/2addr v0, v1

    if-nez v0, :cond_291

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2998
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_28a

    .line 2999
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_267

    .line 3000
    if-ltz v17, :cond_260

    .line 3001
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v18, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v7

    move/from16 v19, v4

    move/from16 v4, v17

    move-object/from16 v20, v5

    .end local v5  # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v20, "cr":Lcom/android/server/am/ConnectionRecord;
    move/from16 v5, v19

    move/from16 v19, v6

    .end local v6  # "j":I
    .local v19, "j":I
    move-object/from16 v6, v18

    move-wide/from16 v21, v7

    .end local v7  # "now":J
    .local v21, "now":J
    move-object/from16 v7, v20

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v17

    goto :goto_297

    .line 3000
    .end local v19  # "j":I
    .end local v20  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v21  # "now":J
    .restart local v5  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6  # "j":I
    .restart local v7  # "now":J
    :cond_260
    move-object/from16 v20, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .end local v5  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6  # "j":I
    .end local v7  # "now":J
    .restart local v19  # "j":I
    .restart local v20  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v21  # "now":J
    goto :goto_297

    .line 3007
    .end local v19  # "j":I
    .end local v20  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v21  # "now":J
    .restart local v5  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6  # "j":I
    .restart local v7  # "now":J
    :cond_267
    move-object/from16 v20, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .end local v5  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6  # "j":I
    .end local v7  # "now":J
    .restart local v19  # "j":I
    .restart local v20  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v21  # "now":J
    move-object/from16 v8, v20

    .end local v20  # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v8, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "service connection"

    move-object/from16 v0, p0

    move-wide/from16 v2, v21

    move/from16 v4, v16

    move-object v7, v8

    move-object/from16 v18, v8

    .end local v8  # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v18, "cr":Lcom/android/server/am/ConnectionRecord;
    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v16

    goto :goto_297

    .line 2998
    .end local v18  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v19  # "j":I
    .end local v21  # "now":J
    .restart local v5  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6  # "j":I
    .restart local v7  # "now":J
    :cond_28a
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .end local v5  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6  # "j":I
    .end local v7  # "now":J
    .restart local v18  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v19  # "j":I
    .restart local v21  # "now":J
    goto :goto_297

    .line 2994
    .end local v18  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v19  # "j":I
    .end local v21  # "now":J
    .restart local v5  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6  # "j":I
    .restart local v7  # "now":J
    :cond_291
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .line 2992
    .end local v5  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6  # "j":I
    .end local v7  # "now":J
    .restart local v19  # "j":I
    .restart local v21  # "now":J
    :goto_297
    add-int/lit8 v6, v19, -0x1

    move-wide/from16 v7, v21

    .end local v19  # "j":I
    .restart local v6  # "j":I
    goto/16 :goto_1ec

    .end local v21  # "now":J
    .restart local v7  # "now":J
    :cond_29d
    move/from16 v19, v6

    move-wide/from16 v21, v7

    .line 3014
    .end local v6  # "j":I
    .end local v7  # "now":J
    .restart local v21  # "now":J
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v12

    move v12, v0

    .local v12, "j":I
    :goto_2a9
    if-ltz v12, :cond_2e5

    .line 3015
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    iget-object v8, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 3016
    .local v8, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2e0

    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_2e0

    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_2e0

    .line 3017
    iget-object v1, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "provider reference"

    move-object/from16 v0, p0

    move-wide/from16 v2, v21

    move/from16 v4, v16

    move-object v7, v8

    move-object/from16 v18, v8

    .end local v8  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v18, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v16

    goto :goto_2e2

    .line 3016
    .end local v18  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v8  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_2e0
    move-object/from16 v18, v8

    .line 3014
    .end local v8  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_2e2
    add-int/lit8 v12, v12, -0x1

    goto :goto_2a9

    .line 3021
    .end local v12  # "j":I
    :cond_2e5
    return-void
.end method
