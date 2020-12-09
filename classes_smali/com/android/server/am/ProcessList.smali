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

    .line 969
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 993
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_70

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 1001
    new-array v1, v0, [J

    fill-array-data v1, :array_88

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1009
    new-array v1, v0, [J

    fill-array-data v1, :array_a0

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 1017
    new-array v1, v0, [J

    fill-array-data v1, :array_b8

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 1025
    new-array v1, v0, [J

    fill-array-data v1, :array_d0

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 1033
    new-array v0, v0, [J

    fill-array-data v0, :array_e8

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    nop

    :array_42
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

    :array_70
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_88
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_a0
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_b8
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_d0
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_e8
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .registers 6

    .line 560
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

    .line 495
    new-instance v1, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v2, 0x182b8

    const v3, 0x1869f

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 502
    new-instance v1, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    const v2, 0x15f90

    const v3, 0x182b7

    const/16 v4, 0x64

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;III)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 510
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 518
    new-instance v1, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 561
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 562
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 563
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 564
    invoke-direct {p0, v0, v0, v0}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 565
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

    .line 1110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1111
    return-void
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .registers 7

    .line 887
    const/16 v0, 0xa

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_15

    .line 888
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_10

    .line 889
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 887
    :cond_10
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 892
    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 893
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 6

    .line 692
    sub-int/2addr p3, p4

    .line 693
    if-nez p3, :cond_19

    .line 694
    if-eqz p5, :cond_6

    .line 695
    return-object p1

    .line 697
    :cond_6
    if-nez p2, :cond_9

    return-object p0

    .line 698
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 700
    :cond_19
    const/16 p1, 0xa

    const-string p2, "+"

    if-ge p3, p1, :cond_3b

    .line 701
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2a

    goto :goto_2c

    :cond_2a
    const-string p2, "+ "

    :goto_2c
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 703
    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkSlow(JLjava/lang/String;)V
    .registers 6

    .line 1412
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1413
    sub-long/2addr v0, p1

    const-wide/16 p1, 0x32

    cmp-long p1, v0, p1

    if-lez p1, :cond_2a

    .line 1415
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Slow operation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms so far, now at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_2a
    return-void
.end method

.method public static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .registers 4

    .line 1101
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_1b

    .line 1102
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    .line 1103
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    .line 1104
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1107
    :cond_1b
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 1

    .line 687
    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .registers 10

    .line 1117
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p0, v0, p0

    .line 1118
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x1

    if-eqz p1, :cond_2c

    .line 1119
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge p0, v2, :cond_f

    .line 1120
    move v2, p0

    goto :goto_11

    :cond_f
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1121
    :goto_11
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v3, v3, p0

    if-ge v2, v3, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 1122
    :goto_19
    iput p0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1123
    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 1124
    if-eqz v1, :cond_22

    .line 1125
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2b

    .line 1127
    :cond_22
    iget-object v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v0, v0, p0

    .line 1128
    const/high16 v2, 0x3fc00000  # 1.5f

    mul-float/2addr v2, v0

    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 1130
    :goto_2b
    goto :goto_2e

    .line 1131
    :cond_2c
    nop

    .line 1132
    nop

    .line 1134
    :goto_2e
    if-eqz p2, :cond_38

    .line 1135
    if-eqz v1, :cond_35

    .line 1136
    sget-object p1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_49

    .line 1137
    :cond_35
    sget-object p1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_49

    .line 1138
    :cond_38
    if-eqz v1, :cond_42

    .line 1139
    if-eqz p3, :cond_3f

    sget-object p1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_49

    :cond_3f
    sget-object p1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_49

    .line 1140
    :cond_42
    if-eqz p3, :cond_47

    sget-object p1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_49

    :cond_47
    sget-object p1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1141
    :goto_49
    aget-wide p0, p1, p0

    long-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-long p0, p0

    .line 1142
    const-wide/32 p2, 0x36ee80

    cmp-long v0, p0, p2

    if-lez v0, :cond_56

    .line 1143
    move-wide p0, p2

    .line 1145
    :cond_56
    add-long/2addr p4, p0

    return-wide p4
.end method

.method private createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .registers 8

    .line 1748
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1751
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    .line 1752
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    .line 1754
    if-nez v2, :cond_65

    .line 1758
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 1760
    invoke-virtual {v4}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v4

    .line 1759
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v2

    .line 1761
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1764
    iget v4, v2, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 1765
    iget v2, v2, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1766
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, v5}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 1773
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1774
    iput v1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1775
    new-instance v5, Landroid/os/AppZygote;

    invoke-direct {v5, v3, v1, v4, v2}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;III)V

    .line 1776
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1777
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1778
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    move-object v2, v5

    goto :goto_76

    .line 1783
    :cond_65
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x47

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1784
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1790
    :goto_76
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1792
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_7e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 1793
    :catchall_7e
    move-exception p1

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .registers 5

    .line 1215
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1216
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1217
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1218
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1219
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1220
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_35

    .line 1221
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 1222
    if-eq p0, v2, :cond_2b

    .line 1223
    const-string p0, "ActivityManager"

    const-string v0, "Failed to get kill count, code mismatch"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return-object p1

    .line 1226
    :cond_2b
    new-instance p0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    .line 1228
    :cond_35
    return-object p1
.end method

.method private getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2322
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 2326
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2327
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result p2

    .line 2326
    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object p1

    return-object p1

    .line 2324
    :cond_16
    :goto_16
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object p1
.end method

.method private handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1994
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    .line 1995
    iget p3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget p4, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ne p3, p4, :cond_13

    .line 1996
    iget-boolean p2, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 1999
    :cond_13
    const/4 p1, 0x0

    return p1

    .line 2001
    :cond_15
    iget v2, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v3, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z

    move-result p1

    return p1
.end method

.method private isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1970
    nop

    .line 1971
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1973
    const-string v2, "killedByAm=true;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1971
    :cond_11
    move-object v0, v1

    .line 1975
    :goto_12
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_2a

    .line 1976
    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1977
    :cond_25
    const-string v2, "No entry in mProcessNames;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    :cond_2a
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-nez v2, :cond_3b

    .line 1980
    if-nez v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1981
    :cond_35
    const-string/jumbo v2, "pendingStart=false;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    :cond_3b
    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_6c

    .line 1984
    if-nez v0, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1985
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",expected="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1987
    :cond_6c
    if-nez v0, :cond_6f

    goto :goto_73

    :cond_6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_73
    return-object v1
.end method

.method static killProcessGroup(II)V
    .registers 4

    .line 1311
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_e

    .line 1312
    const/16 v1, 0xfa0

    .line 1313
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1312
    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_18

    .line 1315
    :cond_e
    const-string v0, "ActivityManager"

    const-string v1, "Asked to kill process group before system bringup!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 1318
    :goto_18
    return-void
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .registers 9

    .line 707
    const/16 v0, 0x384

    if-lt p0, v0, :cond_13

    .line 708
    const/16 v5, 0x384

    const-string v1, "cch"

    const-string v2, "cch"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 710
    :cond_13
    const/16 v0, 0x320

    if-lt p0, v0, :cond_27

    .line 711
    const/4 v3, 0x0

    const/16 v5, 0x320

    const-string/jumbo v1, "svcb  "

    const-string/jumbo v2, "svcb"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 713
    :cond_27
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_3b

    .line 714
    const/4 v3, 0x0

    const/16 v5, 0x2bc

    const-string/jumbo v1, "prev  "

    const-string/jumbo v2, "prev"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 716
    :cond_3b
    const/16 v0, 0x258

    if-lt p0, v0, :cond_4d

    .line 717
    const/4 v3, 0x0

    const/16 v5, 0x258

    const-string v1, "home  "

    const-string v2, "home"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 719
    :cond_4d
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_61

    .line 720
    const/4 v3, 0x0

    const/16 v5, 0x1f4

    const-string/jumbo v1, "svc   "

    const-string/jumbo v2, "svc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 722
    :cond_61
    const/16 v0, 0x190

    if-lt p0, v0, :cond_73

    .line 723
    const/4 v3, 0x0

    const/16 v5, 0x190

    const-string v1, "hvy   "

    const-string v2, "hvy"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 725
    :cond_73
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_85

    .line 726
    const/4 v3, 0x0

    const/16 v5, 0x12c

    const-string v1, "bkup  "

    const-string v2, "bkup"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 728
    :cond_85
    const/16 v0, 0xfa

    if-lt p0, v0, :cond_99

    .line 729
    const/4 v3, 0x0

    const/16 v5, 0xfa

    const-string/jumbo v1, "prcl  "

    const-string/jumbo v2, "prcl"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 731
    :cond_99
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_ad

    .line 732
    const/4 v3, 0x0

    const/16 v5, 0xc8

    const-string/jumbo v1, "prcp  "

    const-string/jumbo v2, "prcp"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 734
    :cond_ad
    const/16 v0, 0x64

    if-lt p0, v0, :cond_c2

    .line 735
    const/16 v5, 0x64

    const-string/jumbo v1, "vis"

    const-string/jumbo v2, "vis"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 737
    :cond_c2
    if-ltz p0, :cond_d1

    .line 738
    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "fore  "

    const-string v1, "fore"

    move v3, p0

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 740
    :cond_d1
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_e5

    .line 741
    const/4 v3, 0x0

    const/16 v5, -0x2bc

    const-string/jumbo v1, "psvc  "

    const-string/jumbo v2, "psvc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 743
    :cond_e5
    const/16 v0, -0x320

    if-lt p0, v0, :cond_f9

    .line 744
    const/4 v3, 0x0

    const/16 v5, -0x320

    const-string/jumbo v1, "pers  "

    const-string/jumbo v2, "pers"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 746
    :cond_f9
    const/16 v0, -0x384

    if-lt p0, v0, :cond_10d

    .line 747
    const/4 v3, 0x0

    const/16 v5, -0x384

    const-string/jumbo v1, "sys   "

    const-string/jumbo v2, "sys"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 749
    :cond_10d
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_121

    .line 750
    const/4 v3, 0x0

    const/16 v5, -0x3e8

    const-string/jumbo v1, "ntv  "

    const-string/jumbo v2, "ntv"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 753
    :cond_121
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeProcStateProtoEnum(I)I
    .registers 2

    .line 834
    const/16 v0, 0x3eb

    packed-switch p0, :pswitch_data_4a

    .line 882
    const/16 p0, 0x3e6

    return p0

    .line 878
    :pswitch_8  #0x15
    const/16 p0, 0x3fb

    return p0

    .line 876
    :pswitch_b  #0x14
    const/16 p0, 0x3fa

    return p0

    .line 874
    :pswitch_e  #0x13
    const/16 p0, 0x3f9

    return p0

    .line 872
    :pswitch_11  #0x12
    const/16 p0, 0x3f8

    return p0

    .line 870
    :pswitch_14  #0x11
    const/16 p0, 0x3f7

    return p0

    .line 868
    :pswitch_17  #0x10
    const/16 p0, 0x3f6

    return p0

    .line 866
    :pswitch_1a  #0xf
    const/16 p0, 0x3f5

    return p0

    .line 860
    :pswitch_1d  #0xe
    const/16 p0, 0x3f4

    return p0

    .line 850
    :pswitch_20  #0xd
    const/16 p0, 0x3f3

    return p0

    .line 864
    :pswitch_23  #0xc
    const/16 p0, 0x3f2

    return p0

    .line 862
    :pswitch_26  #0xb
    const/16 p0, 0x3f1

    return p0

    .line 858
    :pswitch_29  #0xa
    const/16 p0, 0x3f0

    return p0

    .line 856
    :pswitch_2c  #0x9
    const/16 p0, 0x3ef

    return p0

    .line 854
    :pswitch_2f  #0x8
    const/16 p0, 0x3ee

    return p0

    .line 852
    :pswitch_32  #0x7
    const/16 p0, 0x3ed

    return p0

    .line 848
    :pswitch_35  #0x6
    const/16 p0, 0x3ec

    return p0

    .line 846
    :pswitch_38  #0x5
    return v0

    .line 844
    :pswitch_39  #0x4
    const/16 p0, 0x3fc

    return p0

    .line 842
    :pswitch_3c  #0x3
    return v0

    .line 840
    :pswitch_3d  #0x2
    const/16 p0, 0x3ea

    return p0

    .line 838
    :pswitch_40  #0x1
    const/16 p0, 0x3e9

    return p0

    .line 836
    :pswitch_43  #0x0
    const/16 p0, 0x3e8

    return p0

    .line 880
    :pswitch_46  #0xffffffff
    const/16 p0, 0x3e7

    return p0

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
    .registers 1

    .line 759
    packed-switch p0, :pswitch_data_60

    .line 827
    const-string p0, "??"

    goto/16 :goto_5e

    .line 824
    :pswitch_7  #0x15
    nop

    .line 825
    const-string p0, "NONE"

    goto :goto_5e

    .line 821
    :pswitch_b  #0x14
    nop

    .line 822
    const-string p0, "CEM "

    goto :goto_5e

    .line 818
    :pswitch_f  #0x13
    nop

    .line 819
    const-string p0, "CRE "

    goto :goto_5e

    .line 815
    :pswitch_13  #0x12
    nop

    .line 816
    const-string p0, "CACC"

    goto :goto_5e

    .line 812
    :pswitch_17  #0x11
    nop

    .line 813
    const-string p0, "CAC "

    goto :goto_5e

    .line 809
    :pswitch_1b  #0x10
    nop

    .line 810
    const-string p0, "LAST"

    goto :goto_5e

    .line 806
    :pswitch_1f  #0xf
    nop

    .line 807
    const-string p0, "HOME"

    goto :goto_5e

    .line 803
    :pswitch_23  #0xe
    nop

    .line 804
    const-string p0, "HVY "

    goto :goto_5e

    .line 800
    :pswitch_27  #0xd
    nop

    .line 801
    const-string p0, "TPSL"

    goto :goto_5e

    .line 797
    :pswitch_2b  #0xc
    nop

    .line 798
    const-string p0, "RCVR"

    goto :goto_5e

    .line 794
    :pswitch_2f  #0xb
    nop

    .line 795
    const-string p0, "SVC "

    goto :goto_5e

    .line 791
    :pswitch_33  #0xa
    nop

    .line 792
    const-string p0, "BKUP"

    goto :goto_5e

    .line 788
    :pswitch_37  #0x9
    nop

    .line 789
    const-string p0, "TRNB"

    goto :goto_5e

    .line 785
    :pswitch_3b  #0x8
    nop

    .line 786
    const-string p0, "IMPB"

    goto :goto_5e

    .line 782
    :pswitch_3f  #0x7
    nop

    .line 783
    const-string p0, "IMPF"

    goto :goto_5e

    .line 779
    :pswitch_43  #0x6
    nop

    .line 780
    const-string p0, "BFGS"

    goto :goto_5e

    .line 776
    :pswitch_47  #0x5
    nop

    .line 777
    const-string p0, "FGS "

    goto :goto_5e

    .line 773
    :pswitch_4b  #0x4
    nop

    .line 774
    const-string p0, "BTOP"

    goto :goto_5e

    .line 770
    :pswitch_4f  #0x3
    nop

    .line 771
    const-string p0, "FGSL"

    goto :goto_5e

    .line 767
    :pswitch_53  #0x2
    nop

    .line 768
    const-string p0, "TOP "

    goto :goto_5e

    .line 764
    :pswitch_57  #0x1
    nop

    .line 765
    const-string p0, "PERU"

    goto :goto_5e

    .line 761
    :pswitch_5b  #0x0
    nop

    .line 762
    const-string p0, "PER "

    .line 830
    :goto_5e
    return-object p0

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_5b  #00000000
        :pswitch_57  #00000001
        :pswitch_53  #00000002
        :pswitch_4f  #00000003
        :pswitch_4b  #00000004
        :pswitch_47  #00000005
        :pswitch_43  #00000006
        :pswitch_3f  #00000007
        :pswitch_3b  #00000008
        :pswitch_37  #00000009
        :pswitch_33  #0000000a
        :pswitch_2f  #0000000b
        :pswitch_2b  #0000000c
        :pswitch_27  #0000000d
        :pswitch_23  #0000000e
        :pswitch_1f  #0000000f
        :pswitch_1b  #00000010
        :pswitch_17  #00000011
        :pswitch_13  #00000012
        :pswitch_f  #00000013
        :pswitch_b  #00000014
        :pswitch_7  #00000015
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .registers 3

    .line 1097
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

    .line 1234
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1235
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "lmkd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1238
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    .line 1239
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdInputStream:Ljava/io/InputStream;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_29

    .line 1244
    nop

    .line 1246
    const/4 v0, 0x1

    return v0

    .line 1240
    :catch_29
    move-exception v0

    .line 1241
    const-string v0, "ActivityManager"

    const-string v1, "lowmemorykiller daemon socket open failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1243
    const/4 v0, 0x0

    return v0
.end method

.method private static procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .registers 4

    .line 2997
    invoke-static {p0, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result p0

    .line 2999
    const/16 p3, 0x190

    if-ne p0, p3, :cond_b

    .line 3000
    iput p1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_e

    .line 3002
    :cond_b
    const/4 p1, 0x0

    iput p1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 3004
    :goto_e
    return p0
.end method

.method public static procStatesDifferForMem(II)Z
    .registers 3

    .line 1093
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p0, v0, p0

    aget p1, v0, p1

    if-eq p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static readLmkdReplyLS(Ljava/nio/ByteBuffer;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation

    .line 1268
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

    .line 1269
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    array-length p0, p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_1a

    if-ne v1, p0, :cond_19

    .line 1270
    const/4 p0, 0x1

    return p0

    .line 1274
    :cond_19
    goto :goto_22

    .line 1272
    :catch_1a
    move-exception p0

    .line 1273
    const-string p0, "ActivityManager"

    const-string v1, "Error reading from lowmemorykiller socket"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :goto_22
    sget-object p0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1277
    const/4 p0, 0x0

    sput-object p0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1278
    return v0
.end method

.method public static final remove(I)V
    .registers 3

    .line 1202
    if-gtz p0, :cond_3

    .line 1203
    return-void

    .line 1205
    :cond_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1206
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1207
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1208
    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1209
    return-void
.end method

.method private removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1720
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 1722
    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 1721
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    .line 1723
    if-eqz v0, :cond_17

    .line 1724
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 1727
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 1728
    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 1727
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AppZygote;

    .line 1729
    if-eqz v0, :cond_60

    .line 1730
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1731
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1732
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_60

    .line 1733
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1734
    iget-boolean p1, p1, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz p1, :cond_4d

    .line 1737
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;)V

    goto :goto_60

    .line 1739
    :cond_4d
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1740
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1741
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1745
    :cond_60
    :goto_60
    return-void
.end method

.method public static setOomAdj(III)V
    .registers 7

    .line 1177
    if-gtz p0, :cond_3

    .line 1178
    return-void

    .line 1180
    :cond_3
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_8

    .line 1181
    return-void

    .line 1183
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1184
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1185
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1186
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1187
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1188
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1189
    const/4 p1, 0x0

    invoke-static {v2, p1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1191
    sub-long/2addr v2, v0

    const-wide/16 v0, 0xfa

    cmp-long p1, v2, v0

    if-lez p1, :cond_55

    .line 1192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SLOW OOM ADJ: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms for pid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_55
    return-void
.end method

.method private startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .registers 41

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p13

    .line 1801
    const-wide/16 v4, 0x40

    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start proc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1803
    const-string/jumbo v6, "startProcess: asking zygote to start proc"

    invoke-direct {v0, v2, v3, v6}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1804
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v6

    .line 1805
    const/4 v7, 0x1

    if-eqz v6, :cond_2e

    .line 1809
    invoke-virtual {v1, v7}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 1813
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v8
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_12a

    const-string/jumbo v9, "seq="

    const/4 v10, 0x0

    if-eqz v8, :cond_7e

    .line 1814
    :try_start_38
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v23, 0x0

    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    move-object/from16 v11, p2

    move/from16 v13, p4

    move/from16 v14, p4

    move-object v1, v15

    move-object/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p8

    move/from16 v18, v6

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v21, p11

    move-object/from16 v22, v8

    move-object/from16 v24, v1

    move-object/from16 v25, v7

    invoke-static/range {v11 .. v25}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v1

    goto/16 :goto_11d

    .line 1819
    :cond_7e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v8

    if-eqz v8, :cond_d7

    .line 1820
    invoke-direct {v0, v1}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v8

    .line 1822
    invoke-virtual {v8}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    move-result-object v8

    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v12, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v12, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v20, 0x0

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v22, 0x0

    new-array v12, v7, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v10

    move-object v7, v8

    move-object/from16 v8, p2

    move-object v9, v11

    move/from16 v10, p4

    move/from16 v11, p4

    move-object v1, v12

    move-object/from16 v12, p5

    move-object v4, v13

    move/from16 v13, p6

    move-object v5, v14

    move/from16 v14, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    move-object/from16 v19, v5

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v24, v1

    invoke-virtual/range {v7 .. v24}, Landroid/os/ChildZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v1

    .line 1828
    goto :goto_11d

    .line 1829
    :cond_d7
    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-array v15, v7, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v10

    move-object/from16 v7, p2

    move/from16 v9, p4

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p8

    move-object v1, v15

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, v4

    move-object/from16 v19, p12

    move-object/from16 v20, v5

    move/from16 v21, p7

    move/from16 v22, v6

    move-object/from16 v23, v1

    invoke-static/range {v7 .. v23}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v1

    .line 1836
    :goto_11d
    const-string/jumbo v4, "startProcess: returned from zygote!"

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_123
    .catchall {:try_start_38 .. :try_end_123} :catchall_12a

    .line 1837
    nop

    .line 1839
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1837
    return-object v1

    .line 1839
    :catchall_12a
    move-exception v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V
    .registers 14

    .line 2592
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    if-nez v0, :cond_11f

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v0, :cond_11f

    .line 2593
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_11f

    .line 2599
    :cond_12
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2600
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_7e

    .line 2601
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 2602
    move v4, v1

    move v1, p4

    :goto_20
    if-lt p4, p3, :cond_7d

    .line 2603
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 2604
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v0, :cond_7a

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v6, v7, :cond_7a

    .line 2606
    if-ne p4, v1, :cond_41

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-lt v6, v4, :cond_41

    .line 2615
    add-int/lit8 v1, v1, -0x1

    .line 2616
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto :goto_7a

    .line 2624
    :cond_41
    nop

    .line 2625
    move v6, p2

    :goto_43
    if-le v6, v1, :cond_66

    .line 2626
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 2627
    iget v8, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-gt v8, v7, :cond_63

    .line 2629
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2630
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2635
    nop

    .line 2636
    add-int/lit8 v1, v1, -0x1

    .line 2637
    move v6, v1

    move v1, v2

    goto :goto_68

    .line 2625
    :cond_63
    add-int/lit8 v6, v6, -0x1

    goto :goto_43

    :cond_66
    move v6, v1

    move v1, v3

    .line 2640
    :goto_68
    if-nez v1, :cond_79

    .line 2642
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2643
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2648
    add-int/lit8 v1, v6, -0x1

    .line 2649
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto :goto_7a

    .line 2640
    :cond_79
    move v1, v6

    .line 2602
    :cond_7a
    :goto_7a
    add-int/lit8 p4, p4, -0x1

    goto :goto_20

    :cond_7d
    move p4, v1

    .line 2658
    :cond_7e
    move p1, p4

    .line 2659
    :goto_7f
    if-lt p4, p3, :cond_11e

    .line 2660
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .line 2663
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v0, :cond_11a

    .line 2667
    if-ge p4, p1, :cond_e4

    .line 2668
    nop

    .line 2669
    nop

    .line 2670
    move v1, v3

    move v4, v1

    move v5, v4

    .line 2671
    :goto_96
    if-lt p4, p3, :cond_e4

    .line 2672
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2673
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2676
    add-int/lit8 p4, p4, -0x1

    .line 2677
    if-ge p4, p3, :cond_a7

    .line 2678
    goto :goto_e4

    .line 2680
    :cond_a7
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .line 2683
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v6

    if-nez v6, :cond_dd

    iget-boolean v6, p2, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v6, :cond_ba

    goto :goto_dd

    .line 2693
    :cond_ba
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 2696
    if-eqz v1, :cond_d2

    .line 2697
    if-eqz v4, :cond_e4

    iget-object v6, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, v6, :cond_cb

    .line 2703
    goto :goto_e4

    .line 2704
    :cond_cb
    if-eqz v5, :cond_e4

    iget v6, p2, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eq v5, v6, :cond_e1

    .line 2710
    goto :goto_e4

    .line 2716
    :cond_d2
    nop

    .line 2717
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2718
    iget v4, p2, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move v5, v4

    move v4, v1

    move v1, v2

    goto :goto_e1

    .line 2686
    :cond_dd
    :goto_dd
    if-eqz v1, :cond_e0

    .line 2690
    goto :goto_e4

    .line 2692
    :cond_e0
    move v1, v2

    .line 2721
    :cond_e1
    :goto_e1
    add-int/lit8 p1, p1, -0x1

    goto :goto_96

    .line 2728
    :cond_e4
    :goto_e4
    add-int/lit8 p1, p1, -0x1

    if-lt p1, p3, :cond_f6

    .line 2729
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .line 2730
    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p2, v0, :cond_e4

    .line 2737
    :cond_f6
    if-lt p1, p3, :cond_118

    .line 2738
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .line 2739
    :cond_100
    add-int/lit8 p1, p1, -0x1

    if-lt p1, p3, :cond_118

    .line 2740
    iget-object p4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/ProcessRecord;

    .line 2741
    iget-object v1, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_118

    iget p4, p4, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eq p4, v1, :cond_100

    .line 2752
    :cond_118
    move p4, p1

    goto :goto_11c

    .line 2754
    :cond_11a
    add-int/lit8 p4, p4, -0x1

    .line 2756
    :goto_11c
    goto/16 :goto_7f

    .line 2757
    :cond_11e
    return-void

    .line 2596
    :cond_11f
    :goto_11f
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .registers 14

    .line 594
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v2, 0x15e

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43af0000  # 350.0f

    div-float/2addr v0, v1

    .line 597
    nop

    .line 598
    nop

    .line 599
    mul-int/2addr p1, p2

    int-to-float p2, p1

    const v1, 0x5dc00

    int-to-float v1, v1

    sub-float/2addr p2, v1

    const v1, 0x9c400

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 606
    cmpl-float v1, v0, p2

    if-lez v1, :cond_1c

    move p2, v0

    .line 607
    :cond_1c
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000  # 1.0f

    if-gez v1, :cond_25

    move p2, v0

    goto :goto_2a

    .line 608
    :cond_25
    cmpl-float v0, p2, v2

    if-lez v0, :cond_2a

    move p2, v2

    .line 609
    :cond_2a
    :goto_2a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 611
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 617
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_49

    move v2, v3

    goto :goto_4a

    :cond_49
    move v2, v4

    .line 619
    :goto_4a
    move v5, v4

    :goto_4b
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v6, v6

    const/4 v7, 0x4

    if-ge v5, v6, :cond_75

    .line 620
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v6, v6, v5

    .line 621
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v8, v8, v5

    .line 622
    if-eqz v2, :cond_68

    .line 624
    if-ne v5, v7, :cond_62

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    goto :goto_68

    .line 625
    :cond_62
    const/4 v9, 0x5

    if-ne v5, v9, :cond_68

    mul-int/lit8 v8, v8, 0x7

    div-int/2addr v8, v7

    .line 627
    :cond_68
    :goto_68
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v9, v6

    sub-int/2addr v8, v6

    int-to-float v6, v8

    mul-float/2addr v6, p2

    add-float/2addr v9, v6

    float-to-int v6, v9

    aput v6, v7, v5

    .line 619
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 630
    :cond_75
    if-ltz v1, :cond_90

    .line 631
    move p2, v4

    :goto_78
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v5, v2

    if-ge p2, v5, :cond_90

    .line 632
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v6, v1

    aget v8, v5, p2

    int-to-float v8, v8

    mul-float/2addr v6, v8

    array-length v2, v2

    sub-int/2addr v2, v3

    aget v2, v5, v2

    int-to-float v2, v2

    div-float/2addr v6, v2

    float-to-int v2, v6

    aput v2, v5, p2

    .line 631
    add-int/lit8 p2, p2, 0x1

    goto :goto_78

    .line 637
    :cond_90
    if-eqz v0, :cond_b4

    .line 638
    move p2, v4

    :goto_93
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge p2, v2, :cond_b4

    .line 639
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v5, v2, p2

    int-to-float v6, v0

    aget v8, v2, p2

    int-to-float v8, v8

    mul-float/2addr v6, v8

    array-length v1, v1

    sub-int/2addr v1, v3

    aget v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v6, v1

    float-to-int v1, v6

    add-int/2addr v5, v1

    aput v5, v2, p2

    .line 641
    aget v1, v2, p2

    if-gez v1, :cond_b1

    .line 642
    aput v4, v2, p2

    .line 638
    :cond_b1
    add-int/lit8 p2, p2, 0x1

    goto :goto_93

    .line 650
    :cond_b4
    const/16 p2, 0x3e7

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const-wide/16 v5, 0x400

    div-long/2addr v0, v5

    const-wide/16 v5, 0x3

    div-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 654
    mul-int/2addr p1, v7

    mul-int/lit8 p1, p1, 0x3

    div-int/lit16 p1, p1, 0x400

    .line 655
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e005b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 657
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 660
    if-ltz v0, :cond_e0

    .line 661
    move p1, v0

    .line 664
    :cond_e0
    if-eqz p2, :cond_e6

    .line 665
    add-int/2addr p1, p2

    .line 666
    if-gez p1, :cond_e6

    .line 667
    move p1, v4

    .line 671
    :cond_e6
    if-eqz p3, :cond_11f

    .line 672
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v3

    mul-int/2addr p2, v7

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 673
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 674
    nop

    :goto_f7
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length p3, p3

    if-ge v4, p3, :cond_111

    .line 675
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget p3, p3, v4

    mul-int/lit16 p3, p3, 0x400

    div-int/lit16 p3, p3, 0x1000

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 676
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget p3, p3, v4

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 674
    add-int/lit8 v4, v4, 0x1

    goto :goto_f7

    .line 679
    :cond_111
    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 680
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sys.sysctl.extra_free_kbytes"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_11f
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 7

    .line 1282
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1283
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3d

    .line 1284
    :try_start_8
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v4, :cond_29

    .line 1285
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocketLS()Z

    move-result v4
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_3f

    if-nez v4, :cond_1a

    .line 1287
    const-wide/16 v3, 0x3e8

    :try_start_14
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18
    .catchall {:try_start_14 .. :try_end_17} :catchall_3f

    .line 1289
    goto :goto_3a

    .line 1288
    :catch_18
    move-exception v3

    .line 1290
    goto :goto_3a

    .line 1294
    :cond_1a
    const/4 v4, 0x4

    :try_start_1b
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1295
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1296
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkdCommandLS(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 1298
    goto :goto_3a

    .line 1301
    :cond_29
    invoke-static {p0}, Lcom/android/server/am/ProcessList;->writeLmkdCommandLS(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_3a

    if-eqz p1, :cond_37

    invoke-static {p1}, Lcom/android/server/am/ProcessList;->readLmkdReplyLS(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1302
    :cond_37
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 1283
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1305
    :cond_3d
    monitor-exit v0

    .line 1306
    return v1

    .line 1305
    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_1b .. :try_end_41} :catchall_3f

    throw p0
.end method

.method private static writeLmkdCommandLS(Ljava/nio/ByteBuffer;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLmkdSocketLock"
        }
    .end annotation

    .line 1253
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-virtual {v1, v2, v0, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_11

    .line 1259
    nop

    .line 1260
    const/4 p0, 0x1

    return p0

    .line 1254
    :catch_11
    move-exception p0

    .line 1255
    const-string p0, "ActivityManager"

    const-string v1, "Error writing to lowmemorykiller socket"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    sget-object p0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1257
    const/4 p0, 0x0

    sput-object p0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1258
    return v0
.end method


# virtual methods
.method final addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2285
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2286
    const-string v1, "ActivityManager"

    if-ne v0, p1, :cond_27

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-adding persistent process "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 2289
    :cond_27
    if-eqz v0, :cond_45

    .line 2290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already have existing proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " when adding "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 2293
    const/4 v1, 0x1

    if-nez v0, :cond_91

    .line 2294
    new-instance v0, Lcom/android/server/am/UidRecord;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v0, v2}, Lcom/android/server/am/UidRecord;-><init>(I)V

    .line 2298
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempWhitelist:[I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2299
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 2298
    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_73

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingTempWhitelist:Lcom/android/server/am/PendingTempWhitelists;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2300
    invoke-virtual {v2, v3}, Lcom/android/server/am/PendingTempWhitelists;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_77

    .line 2301
    :cond_73
    iput-boolean v1, v0, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    iput-boolean v1, v0, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    .line 2303
    :cond_77
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    .line 2304
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 2305
    iget v2, v0, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v2}, Lcom/android/server/am/EventLogTags;->writeAmUidRunning(I)V

    .line 2306
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v0, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 2308
    :cond_91
    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 2311
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    .line 2312
    iget v2, v0, Lcom/android/server/am/UidRecord;->numProcs:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/am/UidRecord;->numProcs:I

    .line 2313
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    .line 2314
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_af

    .line 2315
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2317
    :cond_af
    return-void
.end method

.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 580
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_1f

    .line 581
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 583
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 584
    iget p1, v0, Landroid/graphics/Point;->x:I

    if-eqz p1, :cond_1f

    iget p1, v0, Landroid/graphics/Point;->y:I

    if-eqz p1, :cond_1f

    .line 585
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 586
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 589
    :cond_1f
    return-void
.end method

.method clearAllDnsCacheLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2508
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_3a

    .line 2509
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2510
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_37

    .line 2512
    :try_start_16
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 2515
    goto :goto_37

    .line 2513
    :catch_1c
    move-exception v2

    .line 2514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clear dns cache for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2518
    :cond_3a
    return-void
.end method

.method collectProcessesLocked(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
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

    .line 3096
    if-eqz p3, :cond_6a

    array-length v0, p3

    if-le v0, p1, :cond_6a

    aget-object v0, p3, p1

    const/4 v1, 0x0

    .line 3097
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_6a

    .line 3098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3099
    nop

    .line 3101
    :try_start_16
    aget-object v1, p3, p1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1c} :catch_1d

    .line 3103
    goto :goto_1f

    .line 3102
    :catch_1d
    move-exception v1

    const/4 v1, -0x1

    .line 3104
    :goto_1f
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_27
    if-ltz v2, :cond_61

    .line 3105
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3106
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v4, :cond_3d

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, v1, :cond_3d

    .line 3107
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 3108
    :cond_3d
    if-eqz p2, :cond_51

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    if-eqz v4, :cond_51

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    aget-object v5, p3, p1

    .line 3109
    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 3110
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 3111
    :cond_51
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 3112
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3104
    :cond_5e
    :goto_5e
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 3115
    :cond_61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_69

    .line 3116
    const/4 p1, 0x0

    return-object p1

    .line 3118
    :cond_69
    goto :goto_71

    .line 3119
    :cond_6a
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3121
    :goto_71
    return-object v0
.end method

.method doStopUidForIdleUidsLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3201
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 3202
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2b

    .line 3203
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->keyAt(I)I

    move-result v2

    .line 3204
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3205
    goto :goto_28

    .line 3207
    :cond_16
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 3208
    iget-boolean v3, v2, Lcom/android/server/am/UidRecord;->idle:Z

    if-nez v3, :cond_21

    .line 3209
    goto :goto_28

    .line 3211
    :cond_21
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    .line 3202
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3213
    :cond_2b
    return-void
.end method

.method dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3085
    const-string v0, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3086
    const-string v0, " total, non-act at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3087
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3088
    const-string v0, ", non-svc at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3089
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3090
    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    return-void
.end method

.method fillInProcMemInfoLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3011
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 3012
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 3013
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isHeavyWeightProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 3014
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3016
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3017
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3019
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3020
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3022
    :cond_36
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 3023
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 3024
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    .line 3025
    invoke-static {v2, v0, p2, p3}, Lcom/android/server/am/ProcessList;->procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result p3

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 3027
    iget p3, p1, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 3028
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result p3

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 3029
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p3}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object p3

    if-ne p1, p3, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    iput-boolean v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 3030
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 3031
    return-void
.end method

.method findAppProcessLocked(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 11

    .line 1393
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1394
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_3a

    .line 1395
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1396
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1397
    move v5, v1

    :goto_1f
    if-ge v5, v4, :cond_37

    .line 1398
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 1399
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v7, :cond_34

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v7}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, p1, :cond_34

    .line 1400
    return-object v6

    .line 1397
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 1394
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1405
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find mystery application for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from pid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1405
    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/4 p1, 0x0

    return-object p1
.end method

.method getCachedRestoreThresholdKb()J
    .registers 3

    .line 1162
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method final getLRURecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .registers 5

    .line 2972
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2974
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_26

    .line 2975
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2976
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_23

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_23

    .line 2977
    return-object v1

    .line 2974
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 2980
    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method getLruSizeLocked()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3080
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMemLevel(I)J
    .registers 5

    .line 1149
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 1150
    aget v1, v1, v0

    if-gt p1, v1, :cond_12

    .line 1151
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget p1, p1, v0

    mul-int/lit16 p1, p1, 0x400

    int-to-long v0, p1

    return-wide v0

    .line 1149
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1154
    :cond_15
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    mul-int/lit16 p1, p1, 0x400

    int-to-long v0, p1

    return-wide v0
.end method

.method getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 12

    .line 1380
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    .line 1381
    const/16 v2, 0x384

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    .line 1382
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1383
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1384
    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1385
    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v6, v2, v0

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v0, v6

    cmp-long v0, v4, v0

    const/4 v1, 0x0

    if-gez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    iput-boolean v0, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 1386
    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 1387
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 1388
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 1389
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 1390
    return-void
.end method

.method final getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;
    .registers 13

    .line 1322
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_36

    .line 1326
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1327
    if-nez v0, :cond_14

    const/4 p1, 0x0

    return-object p1

    .line 1328
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1329
    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_36

    .line 1330
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1331
    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1333
    goto :goto_33

    .line 1335
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    return-object p1

    .line 1329
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1338
    :cond_36
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 1355
    if-eqz p1, :cond_ad

    if-nez p3, :cond_ad

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget p2, p2, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-lez p2, :cond_ad

    iget p2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 p3, 0x14

    if-lt p2, p3, :cond_ad

    .line 1360
    iget-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-ltz p2, :cond_ad

    .line 1361
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 p3, 0x1

    if-eqz p2, :cond_93

    .line 1362
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->reportCachedKill(Landroid/util/ArrayMap;J)V

    .line 1364
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result p2

    sub-int/2addr p2, p3

    :goto_6f
    if-ltz p2, :cond_93

    .line 1365
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v0

    .line 1366
    const/16 v1, 0x11

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 1368
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 1369
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1366
    invoke-static/range {v1 .. v8}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJ)I

    .line 1364
    add-int/lit8 p2, p2, -0x1

    goto :goto_6f

    .line 1373
    :cond_93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "k from cached"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1376
    :cond_ad
    return-object p1
.end method

.method getRunningAppProcessesLocked(ZIZII)Ljava/util/List;
    .registers 13
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

    .line 3037
    nop

    .line 3039
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_84

    .line 3040
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3041
    if-nez p1, :cond_1a

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v3, p2, :cond_81

    :cond_1a
    if-nez p3, :cond_21

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, p4, :cond_21

    .line 3043
    goto :goto_81

    .line 3045
    :cond_21
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_81

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v3

    if-nez v3, :cond_81

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v3

    if-nez v3, :cond_81

    .line 3047
    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 3049
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 3050
    invoke-virtual {p0, v2, v3, p5}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    .line 3051
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_58

    .line 3052
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3053
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 3054
    invoke-static {v4}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v4

    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_6b

    .line 3056
    :cond_58
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v4, :cond_6b

    .line 3057
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 3059
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->getActivityPid()I

    move-result v4

    .line 3060
    const/4 v5, -0x1

    if-eq v4, v5, :cond_6b

    .line 3061
    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3064
    :cond_6b
    :goto_6b
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v4, v4, Landroid/content/ComponentName;

    if-eqz v4, :cond_77

    .line 3065
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    iput-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 3069
    :cond_77
    if-nez v1, :cond_7e

    .line 3070
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3072
    :cond_7e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3039
    :cond_81
    :goto_81
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3075
    :cond_84
    return-object v1
.end method

.method getUidProcStateLocked(I)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3185
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    .line 3186
    if-nez p1, :cond_b

    const/16 p1, 0x15

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result p1

    :goto_f
    return p1
.end method

.method getUidRecordLocked(I)Lcom/android/server/am/UidRecord;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3192
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    return-object p1
.end method

.method handleAllTrustStorageUpdateLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2522
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_3a

    .line 2523
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2524
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_37

    .line 2526
    :try_start_16
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 2530
    goto :goto_37

    .line 2527
    :catch_1c
    move-exception v2

    .line 2528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to handle trust storage update for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2533
    :cond_3a
    return-void
.end method

.method handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2008
    move-object v1, p0

    move-object v2, p1

    move v9, p2

    move/from16 v10, p3

    move-wide/from16 v3, p4

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2009
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v0

    .line 2010
    const/4 v11, 0x0

    if-eqz v0, :cond_41

    .line 2011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " start not valid, killing pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iput-boolean v11, v2, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2015
    invoke-static {p2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2016
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v1, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 2017
    return v11

    .line 2019
    :cond_41
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(Ljava/lang/String;I)V

    .line 2020
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: done updating battery stats"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2022
    const/16 v0, 0x753e

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    .line 2023
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v3, v12

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

    .line 2024
    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 2025
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_95

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_97

    :cond_95
    const-string v5, ""

    :goto_97
    aput-object v5, v3, v4

    .line 2022
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2028
    :try_start_9c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move v8, p2

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_ae} :catch_af

    .line 2032
    goto :goto_b0

    .line 2030
    :catch_af
    move-exception v0

    .line 2034
    :goto_b0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 2035
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Lcom/android/server/Watchdog;->processStarted(Ljava/lang/String;I)V

    .line 2038
    :cond_bf
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: building log message"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2039
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2040
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2041
    const-string v3, "Start proc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2043
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2044
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2046
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    invoke-static {v0, v3}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2047
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-eqz v3, :cond_fb

    .line 2048
    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    :cond_fb
    const-string v3, " for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11f

    .line 2055
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    :cond_11f
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    const-string v5, "ActivityManager"

    invoke-virtual {v3, v5, v0, v4}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2059
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 2060
    invoke-virtual {p1, v10}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2061
    iput-boolean v11, v2, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2062
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: starting to update pids map"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2064
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3

    .line 2065
    :try_start_141
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 2066
    monitor-exit v3
    :try_end_14a
    .catchall {:try_start_141 .. :try_end_14a} :catchall_1cd

    .line 2068
    if-eqz v5, :cond_197

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_197

    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleProcessStartedLocked process:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " startSeq:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " pid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " belongs to another existing app:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " startSeq:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v5, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;ZZIZ)Z

    .line 2078
    :cond_197
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->put(Lcom/android/server/am/ProcessRecord;)V

    .line 2079
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v4

    .line 2080
    if-nez p6, :cond_1c0

    .line 2081
    :try_start_1a5
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2082
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2083
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    if-eqz v10, :cond_1bb

    .line 2084
    const-wide/32 v5, 0x124f80

    goto :goto_1bd

    :cond_1bb
    const-wide/16 v5, 0x2710

    .line 2083
    :goto_1bd
    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2086
    :cond_1c0
    monitor-exit v4
    :try_end_1c1
    .catchall {:try_start_1a5 .. :try_end_1c1} :catchall_1ca

    .line 2087
    iget-wide v2, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: done updating pids map"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2088
    return v12

    .line 2086
    :catchall_1ca
    move-exception v0

    :try_start_1cb
    monitor-exit v4
    :try_end_1cc
    .catchall {:try_start_1cb .. :try_end_1cc} :catchall_1ca

    throw v0

    .line 2066
    :catchall_1cd
    move-exception v0

    :try_start_1ce
    monitor-exit v3
    :try_end_1cf
    .catchall {:try_start_1ce .. :try_end_1cf} :catchall_1cd

    throw v0
.end method

.method haveBackgroundProcessLocked()Z
    .registers 5

    .line 2984
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_20

    .line 2985
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2986
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_1d

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1d

    .line 2988
    return v1

    .line 2984
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2991
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;)V
    .registers 5

    .line 568
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 569
    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 571
    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez p1, :cond_26

    .line 572
    new-instance p1, Lcom/android/server/ServiceThread;

    const/16 p2, 0xa

    const/4 v0, 0x1

    const-string v1, "ActivityManager:kill"

    invoke-direct {p1, v1, p2, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 574
    sget-object p1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    .line 575
    new-instance p1, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object p2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ProcessList$KillHandler;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 577
    :cond_26
    return-void
.end method

.method killAllBackgroundProcessesExceptLocked(II)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2447
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2448
    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_47

    .line 2449
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 2450
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 2451
    move v6, v2

    :goto_24
    if-ge v6, v5, :cond_44

    .line 2452
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 2453
    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-nez v8, :cond_3e

    if-ltz p1, :cond_38

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v8, p1, :cond_41

    :cond_38
    if-ltz p2, :cond_3e

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-le v8, p2, :cond_41

    .line 2455
    :cond_3e
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2451
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 2448
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 2460
    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 2461
    move p2, v2

    :goto_4c
    if-ge p2, p1, :cond_5d

    .line 2462
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    const-string v4, "kill all background except"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 2461
    add-int/lit8 p2, p2, 0x1

    goto :goto_4c

    .line 2464
    :cond_5d
    return-void
.end method

.method public killAppZygoteIfNeededLocked(Landroid/os/AppZygote;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1706
    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1707
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1708
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2a

    .line 1710
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1711
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 1713
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    .line 1715
    :cond_2a
    return-void
.end method

.method killPackageProcessesLocked(Ljava/lang/String;IIILjava/lang/String;)Z
    .registers 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2120
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
    .registers 27
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2134
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 2135
    const/4 v7, 0x0

    :goto_18
    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ge v7, v5, :cond_aa

    .line 2136
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 2137
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 2138
    const/4 v12, 0x0

    :goto_2d
    if-ge v12, v11, :cond_a4

    .line 2139
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 2140
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v14

    if-eqz v14, :cond_41

    if-nez p8, :cond_41

    .line 2142
    move/from16 v15, p4

    goto/16 :goto_a1

    .line 2144
    :cond_41
    iget-boolean v14, v13, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v14, :cond_50

    .line 2145
    if-eqz p7, :cond_4d

    .line 2146
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v15, p4

    goto :goto_a1

    .line 2145
    :cond_4d
    move/from16 v15, p4

    goto :goto_a1

    .line 2152
    :cond_50
    iget v14, v13, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v15, p4

    if-ge v14, v15, :cond_57

    .line 2158
    goto :goto_a1

    .line 2163
    :cond_57
    if-nez v1, :cond_6b

    .line 2164
    if-eq v3, v8, :cond_60

    iget v14, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v14, v3, :cond_60

    .line 2165
    goto :goto_a1

    .line 2167
    :cond_60
    if-ltz v2, :cond_97

    iget v14, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-eq v14, v2, :cond_97

    .line 2168
    goto :goto_a1

    .line 2174
    :cond_6b
    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz v14, :cond_79

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    .line 2175
    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_79

    move v14, v9

    goto :goto_7a

    :cond_79
    const/4 v14, 0x0

    .line 2176
    :goto_7a
    if-nez v14, :cond_85

    iget v6, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq v6, v2, :cond_85

    .line 2177
    goto :goto_a1

    .line 2179
    :cond_85
    if-eq v3, v8, :cond_8c

    iget v6, v13, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v6, v3, :cond_8c

    .line 2180
    goto :goto_a1

    .line 2182
    :cond_8c
    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v6, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_97

    if-nez v14, :cond_97

    .line 2183
    goto :goto_a1

    .line 2188
    :cond_97
    if-nez p7, :cond_9a

    .line 2189
    return v9

    .line 2191
    :cond_9a
    if-eqz p9, :cond_9e

    .line 2192
    iput-boolean v9, v13, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 2194
    :cond_9e
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2138
    :goto_a1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2d

    .line 2135
    :cond_a4
    move/from16 v15, p4

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_18

    .line 2198
    :cond_aa
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2199
    const/4 v6, 0x0

    :goto_af
    if-ge v6, v5, :cond_c3

    .line 2200
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p10

    invoke-virtual {v0, v7, v10, v11, v12}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 2199
    add-int/lit8 v6, v6, 0x1

    goto :goto_af

    .line 2204
    :cond_c3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2205
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 2206
    const/4 v10, 0x0

    :goto_e3
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_11a

    .line 2207
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 2208
    if-eq v3, v8, :cond_f6

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    if-eq v12, v3, :cond_f6

    .line 2209
    goto :goto_117

    .line 2211
    :cond_f6
    if-ltz v2, :cond_ff

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v11, v2, :cond_ff

    .line 2212
    goto :goto_117

    .line 2214
    :cond_ff
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/AppZygote;

    .line 2215
    if-eqz v1, :cond_114

    .line 2216
    invoke-virtual {v11}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_114

    .line 2217
    goto :goto_117

    .line 2219
    :cond_114
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    :goto_117
    add-int/lit8 v10, v10, 0x1

    goto :goto_e3

    .line 2221
    :cond_11a
    goto :goto_d6

    .line 2222
    :cond_11b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    .line 2223
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;)V

    .line 2224
    goto :goto_11f

    .line 2225
    :cond_12f
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_processEnd"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2226
    if-lez v5, :cond_13a

    goto :goto_13b

    :cond_13a
    const/4 v9, 0x0

    :goto_13b
    return v9
.end method

.method public synthetic lambda$startProcessLocked$0$ProcessList(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 30

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p10

    .line 1665
    :try_start_6
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    iget v5, v15, Lcom/android/server/am/ProcessRecord;->startUid:I

    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    iget-wide v8, v15, Lcom/android/server/am/ProcessRecord;->startTime:J
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_57

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v16, v8

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-wide/from16 v14, v16

    :try_start_26
    invoke-direct/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2a} :catch_4f

    .line 1669
    move-object/from16 v1, p0

    :try_start_2c
    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2f} :catch_4d

    :try_start_2f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_41

    .line 1670
    move-object/from16 v3, p1

    move-wide/from16 v4, p10

    :try_start_36
    invoke-direct {v1, v3, v0, v4, v5}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z

    .line 1671
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3f

    :try_start_3a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3d} :catch_4b

    .line 1682
    goto/16 :goto_b2

    .line 1671
    :catchall_3f
    move-exception v0

    goto :goto_46

    :catchall_41
    move-exception v0

    move-object/from16 v3, p1

    move-wide/from16 v4, p10

    :goto_46
    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_3f

    :try_start_47
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4b} :catch_4b

    .line 1672
    :catch_4b
    move-exception v0

    goto :goto_5b

    :catch_4d
    move-exception v0

    goto :goto_52

    :catch_4f
    move-exception v0

    move-object/from16 v1, p0

    :goto_52
    move-object/from16 v3, p1

    move-wide/from16 v4, p10

    goto :goto_5b

    :catch_57
    move-exception v0

    move-wide v4, v12

    move-object v1, v14

    move-object v3, v15

    .line 1673
    :goto_5b
    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1674
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure starting process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1676
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1677
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 1678
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1679
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v10, "start failure"

    .line 1678
    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 p2, v4

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v3

    move-object/from16 p9, v10

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1681
    monitor-exit v2
    :try_end_af
    .catchall {:try_start_5e .. :try_end_af} :catchall_b3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1683
    :goto_b2
    return-void

    .line 1681
    :catchall_b3
    move-exception v0

    :try_start_b4
    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method final newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2334
    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2335
    :goto_5
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2336
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2337
    const/4 v2, 0x1

    if-eqz p3, :cond_40

    .line 2338
    if-nez p4, :cond_24

    .line 2339
    invoke-direct {p0, p1, p5}, Lcom/android/server/am/ProcessList;->getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object p5

    .line 2340
    const/4 v1, 0x0

    if-nez p5, :cond_1a

    .line 2341
    return-object v1

    .line 2343
    :cond_1a
    invoke-virtual {p5, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->allocateIsolatedUidLocked(I)I

    move-result p5

    .line 2344
    const/4 v3, -0x1

    if-ne p5, v3, :cond_22

    .line 2345
    return-object v1

    .line 2347
    :cond_22
    move v1, p5

    goto :goto_25

    .line 2350
    :cond_24
    move v1, p4

    .line 2352
    :goto_25
    iget-object p5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p5}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p5

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p5, v1, v3}, Landroid/content/pm/PackageManagerInternal;->addIsolatedUid(II)V

    .line 2360
    iget-object p5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p5, p5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p5, v1, v3}, Lcom/android/server/am/BatteryStatsService;->addIsolatedUid(II)V

    .line 2361
    const/16 p5, 0x2b

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p5, v3, v1, v2}, Landroid/util/StatsLog;->write(IIII)I

    .line 2364
    :cond_40
    new-instance p5, Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p5, v3, p1, p2, v1}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    .line 2366
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p2, p2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez p2, :cond_69

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p2, p2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez p2, :cond_69

    if-nez v0, :cond_69

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 p2, 0x9

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_69

    .line 2370
    const/4 p1, 0x2

    invoke-virtual {p5, p1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 2371
    iput p1, p5, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 2372
    invoke-virtual {p5, v2}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 2373
    const/16 p1, -0x320

    iput p1, p5, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 2375
    :cond_69
    if-eqz p3, :cond_71

    if-eqz p4, :cond_71

    .line 2378
    const/16 p1, -0x2bc

    iput p1, p5, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 2380
    :cond_71
    invoke-virtual {p0, p5}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2381
    return-object p5
.end method

.method final removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 2092
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2093
    if-ltz v0, :cond_66

    .line 2094
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v1, :cond_51

    .line 2095
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_29

    .line 2096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing persistent process that hasn\'t been killed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 2098
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing process that hasn\'t been killed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v1, :cond_4e

    .line 2100
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2101
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1, p1}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    goto :goto_51

    .line 2103
    :cond_4e
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2107
    :cond_51
    :goto_51
    iget p1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v0, p1, :cond_59

    .line 2108
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2110
    :cond_59
    iget p1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v0, p1, :cond_61

    .line 2111
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2113
    :cond_61
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2115
    :cond_66
    return-void
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2232
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2233
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2237
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2238
    const/4 v3, 0x0

    if-eq v2, p1, :cond_26

    .line 2240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring remove of inactive process: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    return v3

    .line 2243
    :cond_26
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 2244
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 2246
    nop

    .line 2247
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_3f

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_47

    :cond_3f
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v0, :cond_b1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-eqz v0, :cond_b1

    .line 2249
    :cond_47
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2250
    if-lez v0, :cond_84

    .line 2251
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->remove(Lcom/android/server/am/ProcessRecord;)V

    .line 2252
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2253
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    .line 2254
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_84

    .line 2255
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 2256
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    .line 2259
    :cond_84
    nop

    .line 2260
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_97

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_97

    .line 2261
    if-nez p2, :cond_95

    .line 2262
    move p2, v3

    move v3, v1

    goto :goto_98

    .line 2264
    :cond_95
    move p2, v1

    goto :goto_98

    .line 2267
    :cond_97
    move p2, v3

    :goto_98
    invoke-virtual {p1, p4, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 2268
    iget-object p4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p4, p1, v3, p3}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 2269
    if-eqz v3, :cond_b0

    .line 2270
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2271
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZLjava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 2274
    :cond_b0
    goto :goto_b7

    .line 2275
    :cond_b1
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p2, v3

    .line 2278
    :goto_b7
    return p2
.end method

.method final removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    return-object p1
.end method

.method final removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2392
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 2396
    if-eqz p3, :cond_c

    if-ne v0, p3, :cond_11

    .line 2397
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 2399
    :cond_11
    if-eqz v0, :cond_3f

    iget-object p1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz p1, :cond_3f

    .line 2400
    iget-object p1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget v1, p1, Lcom/android/server/am/UidRecord;->numProcs:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/am/UidRecord;->numProcs:I

    .line 2401
    iget-object p1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget p1, p1, Lcom/android/server/am/UidRecord;->numProcs:I

    if-nez p1, :cond_3c

    .line 2405
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 2406
    invoke-static {p2}, Lcom/android/server/am/EventLogTags;->writeAmUidStopped(I)V

    .line 2407
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 2408
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0x15

    invoke-virtual {p1, p2, v1}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 2410
    :cond_3c
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 2412
    :cond_3f
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2413
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 2415
    if-eqz p3, :cond_4c

    goto :goto_4d

    :cond_4c
    move-object p3, v0

    .line 2416
    :goto_4d
    if-eqz p3, :cond_56

    iget-boolean p1, p3, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz p1, :cond_56

    .line 2417
    invoke-direct {p0, p3}, Lcom/android/server/am/ProcessList;->removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2420
    :cond_56
    return-object v0
.end method

.method sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 3158
    nop

    .line 3159
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_3f

    .line 3160
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3161
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_3c

    const/4 v4, -0x1

    if-eq p3, v4, :cond_1f

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p3, :cond_3c

    .line 3163
    :cond_1f
    :try_start_1f
    array-length v4, p2

    sub-int/2addr v4, v1

    :goto_21
    if-ltz v4, :cond_35

    if-nez v2, :cond_35

    .line 3164
    aget-object v5, p2, v4

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 3165
    move v2, v1

    .line 3163
    :cond_32
    add-int/lit8 v4, v4, -0x1

    goto :goto_21

    .line 3168
    :cond_35
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_3a} :catch_3b

    .line 3170
    goto :goto_3c

    .line 3169
    :catch_3b
    move-exception v3

    .line 3159
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3174
    :cond_3f
    if-nez v2, :cond_4a

    .line 3176
    :try_start_41
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_48} :catch_49

    .line 3178
    goto :goto_4a

    .line 3177
    :catch_49
    move-exception p1

    .line 3180
    :cond_4a
    :goto_4a
    return-void
.end method

.method setAllHttpProxy()V
    .registers 7

    .line 2487
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2488
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_4a

    .line 2489
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2493
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_47

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_47

    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_56

    if-nez v3, :cond_47

    .line 2495
    :try_start_26
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_56

    .line 2499
    goto :goto_47

    .line 2496
    :catch_2c
    move-exception v3

    .line 2497
    :try_start_2d
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update http proxy for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2502
    :cond_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_56

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2503
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 2504
    return-void

    .line 2502
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;
    .registers 29
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1862
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1864
    const/4 v0, 0x1

    const/4 v12, 0x0

    if-nez v9, :cond_6a

    .line 1865
    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v2, p10

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 1866
    const-string/jumbo v2, "startProcess: after getProcessRecord"

    invoke-direct {p0, v10, v11, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1868
    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_2b

    .line 1871
    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v2, v8}, Lcom/android/server/am/AppErrors;->isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1874
    return-object v12

    .line 1883
    :cond_2b
    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v2, v8}, Lcom/android/server/am/AppErrors;->resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 1884
    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v2, v8}, Lcom/android/server/am/AppErrors;->isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1885
    const/16 v2, 0x7540

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1886
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v13, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v13, v3, v4

    .line 1885
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1888
    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v2, v8}, Lcom/android/server/am/AppErrors;->clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 1889
    if-eqz v1, :cond_6b

    .line 1890
    iput-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->bad:Z

    goto :goto_6b

    .line 1896
    :cond_6a
    move-object v1, v12

    .line 1909
    :cond_6b
    :goto_6b
    if-eqz v1, :cond_a5

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v2, :cond_a5

    .line 1910
    if-nez p3, :cond_77

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v2, :cond_7b

    :cond_77
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_8d

    .line 1915
    :cond_7b
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v2, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1916
    const-string/jumbo v0, "startProcess: done, added package to proc"

    invoke-direct {p0, v10, v11, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1917
    return-object v1

    .line 1923
    :cond_8d
    const-string/jumbo v2, "startProcess: bad proc running, killing"

    invoke-direct {p0, v10, v11, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1924
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 1925
    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1, v0, v0}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 1926
    const-string/jumbo v0, "startProcess: done killing old proc"

    invoke-direct {p0, v10, v11, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1929
    :cond_a5
    if-nez v1, :cond_fa

    .line 1930
    const-string/jumbo v0, "startProcess: creating new process record"

    invoke-direct {p0, v10, v11, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1931
    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, p1

    move/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1932
    if-nez v0, :cond_e6

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed making new process record for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isolated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    return-object v12

    .line 1937
    :cond_e6
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    .line 1938
    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    .line 1939
    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    .line 1940
    const-string/jumbo v1, "startProcess: done creating new process record"

    invoke-direct {p0, v10, v11, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object v1, v0

    goto :goto_10b

    .line 1943
    :cond_fa
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v2, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1944
    const-string/jumbo v0, "startProcess: added package to existing proc"

    invoke-direct {p0, v10, v11, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1949
    :goto_10b
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v0, :cond_133

    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1950
    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_133

    if-nez p7, :cond_133

    .line 1952
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12c

    .line 1953
    iget-object v0, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1957
    :cond_12c
    const-string/jumbo v0, "startProcess: returning with proc on hold"

    invoke-direct {p0, v10, v11, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1958
    return-object v1

    .line 1961
    :cond_133
    const-string/jumbo v0, "startProcess: stepping in to startProcess"

    invoke-direct {p0, v10, v11, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1962
    nop

    .line 1963
    move-object/from16 v0, p5

    move/from16 v2, p6

    move-object/from16 v3, p11

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    move-result v0

    .line 1964
    const-string/jumbo v2, "startProcess: done starting proc!"

    invoke-direct {p0, v10, v11, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1965
    if-eqz v0, :cond_14d

    goto :goto_14e

    :cond_14d
    move-object v1, v12

    :goto_14e
    return-object v1
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1845
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    .line 1846
    return-void
.end method

.method startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 31
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1642
    move-object/from16 v2, p0

    move-object/from16 v9, p3

    const/4 v14, 0x1

    iput-boolean v14, v9, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 1643
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 1644
    iput-boolean v1, v9, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 1645
    iput-boolean v1, v9, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 1646
    iget-wide v3, v9, Lcom/android/server/am/ProcessRecord;->startSeq:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    const-string/jumbo v3, "startProcessLocked processName:"

    const-string v10, "ActivityManager"

    if-eqz v0, :cond_39

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with non-zero startSeq:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v9, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_39
    iget v0, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eqz v0, :cond_5b

    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with non-zero pid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_5b
    iget-wide v3, v2, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v5, 0x1

    add-long v12, v3, v5

    iput-wide v12, v2, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    iput-wide v12, v9, Lcom/android/server/am/ProcessRecord;->startSeq:J

    .line 1655
    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p9

    move-wide/from16 v7, p13

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ProcessRecord;->setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;J)V

    .line 1656
    if-nez p12, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrap."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1657
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    goto :goto_91

    :cond_8f
    move v0, v1

    goto :goto_92

    :cond_91
    :goto_91
    move v0, v14

    .line 1656
    :goto_92
    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 1658
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v12, v13, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1660
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v0, :cond_c4

    .line 1663
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1684
    return v14

    .line 1687
    :cond_c4
    :try_start_c4
    invoke-direct/range {p0 .. p14}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 1691
    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v0, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v4, 0x0

    move-object/from16 p4, p0

    move-object/from16 p5, p3

    move/from16 p6, v3

    move/from16 p7, v0

    move-wide/from16 p8, v12

    move/from16 p10, v4

    invoke-virtual/range {p4 .. p10}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_dc
    .catch Ljava/lang/RuntimeException; {:try_start_c4 .. :try_end_dc} :catch_dd

    .line 1699
    goto :goto_123

    .line 1693
    :catch_dd
    move-exception v0

    .line 1694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure starting process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1696
    iput-boolean v1, v9, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 1697
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v9, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v11, "start failure"

    move-object/from16 p4, v0

    move-object/from16 p5, v2

    move/from16 p6, v3

    move/from16 p7, v4

    move/from16 p8, v5

    move/from16 p9, v6

    move/from16 p10, v7

    move/from16 p11, v8

    move/from16 p12, v10

    move-object/from16 p13, v11

    invoke-virtual/range {p4 .. p13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1700
    :goto_123
    iget v0, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_128

    move v1, v14

    :cond_128
    return v1
.end method

.method final startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1851
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z
    .registers 29
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1430
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const-string v0, ""

    const-string v13, "ActivityManager"

    const-string v1, "1"

    iget-boolean v2, v15, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    .line 1431
    return v3

    .line 1433
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1434
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v10, 0x0

    if-lez v2, :cond_42

    iget v2, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v2, v4, :cond_42

    .line 1435
    const-string/jumbo v2, "startProcess: removing from pids map"

    invoke-direct {v14, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1436
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, v15}, Lcom/android/server/am/ActivityManagerService$PidMap;->remove(Lcom/android/server/am/ProcessRecord;)V

    .line 1437
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v15}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1438
    const-string/jumbo v2, "startProcess: done removing from pids map"

    invoke-direct {v14, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1439
    invoke-virtual {v15, v10}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 1440
    const-wide/16 v4, 0x0

    iput-wide v4, v15, Lcom/android/server/am/ProcessRecord;->startSeq:J

    .line 1446
    :cond_42
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1448
    const-string/jumbo v2, "startProcess: starting to update cpu stats"

    invoke-direct {v14, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1449
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1450
    const-string/jumbo v2, "startProcess: done updating cpu stats"

    invoke-direct {v14, v11, v12, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1454
    :try_start_5a
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1455
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_6b} :catch_34d
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_6b} :catch_347

    .line 1458
    nop

    .line 1460
    :try_start_6c
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1461
    nop

    .line 1462
    nop

    .line 1463
    iget-boolean v4, v15, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_72
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_72} :catch_347

    const/4 v6, 0x2

    if-nez v4, :cond_f2

    .line 1464
    nop

    .line 1466
    :try_start_76
    const-string/jumbo v4, "startProcess: getting gids from package manager"

    invoke-direct {v14, v11, v12, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1467
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1468
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/high16 v8, 0x10000000

    iget v9, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v4, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;II)[I

    move-result-object v4

    .line 1470
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v7

    if-eqz v7, :cond_96

    if-eqz p5, :cond_96

    .line 1471
    const/4 v7, 0x6

    goto :goto_a6

    .line 1473
    :cond_96
    const-class v7, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManagerInternal;

    .line 1475
    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v7
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_a6} :catch_ec
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_a6} :catch_347

    .line 1480
    :goto_a6
    nop

    .line 1486
    :try_start_a7
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_b1

    .line 1487
    new-array v4, v9, [I

    goto :goto_ba

    .line 1489
    :cond_b1
    array-length v8, v4

    add-int/2addr v8, v9

    new-array v8, v8, [I

    .line 1490
    array-length v5, v4

    invoke-static {v4, v10, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    .line 1492
    :goto_ba
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v5

    aput v5, v4, v10

    .line 1493
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v5

    aput v5, v4, v3

    .line 1494
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v5

    aput v5, v4, v6

    .line 1497
    aget v5, v4, v10

    const/4 v8, -0x1

    if-ne v5, v8, :cond_e1

    aget v5, v4, v6

    aput v5, v4, v10

    .line 1498
    :cond_e1
    aget v5, v4, v3

    if-ne v5, v8, :cond_e9

    aget v5, v4, v6

    aput v5, v4, v3

    .line 1500
    :cond_e9
    move v9, v7

    move-object v7, v4

    goto :goto_f4

    .line 1478
    :catch_ec
    move-exception v0

    .line 1479
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1463
    :cond_f2
    move v9, v10

    const/4 v7, 0x0

    .line 1500
    :goto_f4
    iput v9, v15, Lcom/android/server/am/ProcessRecord;->mountMode:I

    .line 1501
    const-string/jumbo v4, "startProcess: building args"

    invoke-direct {v14, v11, v12, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1502
    iget-object v4, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isFactoryTestProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 1503
    move v5, v10

    goto :goto_10d

    .line 1502
    :cond_10c
    move v5, v2

    .line 1505
    :goto_10d
    nop

    .line 1506
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_140

    .line 1507
    nop

    .line 1508
    nop

    .line 1511
    const/16 v2, 0x103

    .line 1514
    iget-object v4, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "art_verifier_verify_debuggable"

    invoke-static {v4, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_141

    .line 1516
    const/16 v2, 0x303

    .line 1517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": ART verification disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_141

    .line 1506
    :cond_140
    move v2, v10

    .line 1522
    :cond_141
    :goto_141
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x4000

    if-nez v3, :cond_14f

    iget-object v3, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z

    if-eqz v3, :cond_151

    .line 1523
    :cond_14f
    or-int/lit8 v2, v2, 0x8

    .line 1525
    :cond_151
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_15e

    .line 1526
    const v3, 0x8000

    or-int/2addr v2, v3

    .line 1528
    :cond_15e
    const-string v3, "debug.checkjni"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16c

    .line 1529
    or-int/lit8 v2, v2, 0x2

    .line 1531
    :cond_16c
    const-string v3, "debug.generate-debug-info"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1532
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_176
    .catch Ljava/lang/RuntimeException; {:try_start_a7 .. :try_end_176} :catch_347

    const-string/jumbo v8, "true"

    if-nez v4, :cond_181

    :try_start_17b
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_183

    .line 1533
    :cond_181
    or-int/lit8 v2, v2, 0x20

    .line 1535
    :cond_183
    const-string v3, "dalvik.vm.minidebuginfo"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1536
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_195

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_197

    .line 1537
    :cond_195
    or-int/lit16 v2, v2, 0x800

    .line 1539
    :cond_197
    const-string v3, "debug.jni.logging"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 1540
    or-int/lit8 v2, v2, 0x10

    .line 1542
    :cond_1a5
    const-string v3, "debug.assert"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b3

    .line 1543
    or-int/lit8 v2, v2, 0x4

    .line 1545
    :cond_1b3
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    if-eqz v1, :cond_1d3

    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1546
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 1548
    or-int/lit8 v1, v2, 0x40

    .line 1549
    or-int/lit8 v1, v1, 0x20

    .line 1550
    or-int/lit16 v2, v1, 0x80

    .line 1551
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    goto :goto_1d4

    .line 1546
    :cond_1d1
    const/4 v3, 0x0

    goto :goto_1d4

    .line 1545
    :cond_1d3
    const/4 v3, 0x0

    .line 1554
    :goto_1d4
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v1

    if-nez v1, :cond_1f2

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1555
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v1

    if-eqz v1, :cond_1f4

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 1556
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1f4

    .line 1557
    :cond_1f2
    or-int/lit16 v2, v2, 0x400

    .line 1560
    :cond_1f4
    if-nez p4, :cond_234

    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_234

    .line 1561
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 1562
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getPolicy()I

    move-result v4

    .line 1561
    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    .line 1563
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1564
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v1

    .line 1565
    sget v4, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v4, v1, v4

    .line 1566
    and-int/lit16 v8, v4, 0x3000

    if-ne v8, v4, :cond_21d

    .line 1569
    or-int/2addr v2, v4

    goto :goto_234

    .line 1567
    :cond_21d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid API policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1572
    :cond_234
    :goto_234
    const-string/jumbo v1, "persist.device_config.runtime_native.use_app_image_startup_cache"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1575
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24e

    const-string v4, "false"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24e

    .line 1576
    const/high16 v1, 0x10000

    or-int/2addr v1, v2

    move v8, v1

    goto :goto_24f

    .line 1579
    :cond_24e
    move v8, v2

    :goto_24f
    nop

    .line 1580
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_299

    .line 1582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/wrap.sh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1583
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2
    :try_end_270
    .catch Ljava/lang/RuntimeException; {:try_start_17b .. :try_end_270} :catch_347

    .line 1585
    :try_start_270
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_28d

    .line 1586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/system/bin/logwrapper "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_28c
    .catchall {:try_start_270 .. :try_end_28c} :catchall_294

    goto :goto_28e

    .line 1585
    :cond_28d
    move-object v1, v3

    .line 1589
    :goto_28e
    :try_start_28e
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1590
    move-object/from16 v16, v1

    goto :goto_29b

    .line 1589
    :catchall_294
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 1580
    :cond_299
    move-object/from16 v16, v3

    .line 1593
    :goto_29b
    if-eqz p6, :cond_2a0

    move-object/from16 v1, p6

    goto :goto_2a4

    :cond_2a0
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1594
    :goto_2a4
    if-nez v1, :cond_2ac

    .line 1595
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v1, v1, v10

    move-object v6, v1

    goto :goto_2ad

    .line 1594
    :cond_2ac
    move-object v6, v1

    .line 1598
    :goto_2ad
    nop

    .line 1599
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v1, :cond_2be

    .line 1600
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_2bf

    .line 1599
    :cond_2be
    move-object v4, v3

    .line 1603
    :goto_2bf
    iput-object v7, v15, Lcom/android/server/am/ProcessRecord;->gids:[I

    .line 1604
    invoke-virtual {v15, v6}, Lcom/android/server/am/ProcessRecord;->setRequiredAbi(Ljava/lang/String;)V

    .line 1605
    iput-object v4, v15, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;

    .line 1608
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2fe

    .line 1609
    const-string v1, "SELinux tag not defined"

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2d9
    .catch Ljava/lang/RuntimeException; {:try_start_28e .. :try_end_2d9} :catch_347

    :try_start_2d9
    const-string v10, "SELinux tag not defined for "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (uid "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1613
    :cond_2fe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_315

    goto :goto_319

    :cond_315
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_319
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1619
    const-string v3, "android.app.ActivityThread"
    :try_end_322
    .catch Ljava/lang/RuntimeException; {:try_start_2d9 .. :try_end_322} :catch_341

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v0, v4

    move-object/from16 v4, p1

    move-object/from16 v18, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, p3

    const/16 v17, 0x0

    move-wide/from16 v19, v11

    move-object/from16 v11, v18

    move-object v12, v0

    move-object/from16 v21, v13

    move-object/from16 v13, v16

    move-wide/from16 v14, v19

    :try_start_33c
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0

    .line 1622
    :catch_341
    move-exception v0

    move-object/from16 v21, v13

    const/16 v17, 0x0

    goto :goto_358

    :catch_347
    move-exception v0

    move/from16 v17, v10

    move-object/from16 v21, v13

    goto :goto_358

    .line 1456
    :catch_34d
    move-exception v0

    move/from16 v17, v10

    move-object/from16 v21, v13

    .line 1457
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_357
    .catch Ljava/lang/RuntimeException; {:try_start_33c .. :try_end_357} :catch_357

    .line 1622
    :catch_357
    move-exception v0

    .line 1623
    :goto_358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure starting process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v21

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1631
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v10, "start failure"

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1633
    return v17
.end method

.method updateAllTimePrefsLocked(I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2472
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_3a

    .line 2473
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2474
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_37

    .line 2476
    :try_start_16
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 2480
    goto :goto_37

    .line 2477
    :catch_1c
    move-exception v2

    .line 2478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update preferences for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2483
    :cond_3a
    return-void
.end method

.method updateApplicationInfoLocked(Ljava/util/List;IZ)V
    .registers 14
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

    .line 3127
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_64

    .line 3128
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3129
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_17

    .line 3130
    goto :goto_61

    .line 3133
    :cond_17
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1f

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v3, p2, :cond_1f

    .line 3134
    goto :goto_61

    .line 3137
    :cond_1f
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    .line 3138
    const/4 v4, 0x0

    move v5, v4

    :goto_27
    if-ge v5, v3, :cond_61

    .line 3139
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v6

    .line 3140
    if-nez p3, :cond_37

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 3142
    :cond_37
    :try_start_37
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/16 v8, 0x400

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 3143
    invoke-interface {v7, v6, v8, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 3144
    if-eqz v7, :cond_4a

    .line 3145
    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v8, v7}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4a} :catch_4b

    .line 3150
    :cond_4a
    goto :goto_5e

    .line 3147
    :catch_4b
    move-exception v7

    .line 3148
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v4

    aput-object v2, v7, v1

    const-string v6, "Failed to update %s ApplicationInfo for %s"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    :cond_5e
    :goto_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 3127
    :cond_61
    :goto_61
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3154
    :cond_64
    return-void
.end method

.method updateCoreSettingsLocked(Landroid/os/Bundle;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2426
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 2427
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2429
    :try_start_12
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1b

    .line 2430
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v1, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1c

    .line 2434
    :cond_1b
    goto :goto_1d

    .line 2432
    :catch_1c
    move-exception v1

    .line 2426
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2436
    :cond_20
    return-void
.end method

.method updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2538
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    .line 2540
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 2542
    return p4

    .line 2545
    :cond_9
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p2

    .line 2546
    if-gez p2, :cond_40

    .line 2547
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Adding dependent process "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not on LRU list: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    return p4

    .line 2552
    :cond_40
    if-lt p2, p4, :cond_43

    .line 2555
    return p4

    .line 2558
    :cond_43
    iget p3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt p2, p3, :cond_4a

    if-ge p4, p3, :cond_4a

    .line 2560
    return p4

    .line 2563
    :cond_4a
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2564
    if-lez p4, :cond_53

    .line 2565
    add-int/lit8 p4, p4, -0x1

    .line 2569
    :cond_53
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2570
    iput p5, p1, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    .line 2571
    return p4
.end method

.method final updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .registers 21

    .line 2761
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-nez v1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v1, :cond_19

    goto :goto_1b

    :cond_19
    move v1, v2

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v1, v11

    .line 2764
    :goto_1c
    if-nez p2, :cond_21

    if-eqz v1, :cond_21

    .line 2769
    return-void

    .line 2772
    :cond_21
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    add-int/2addr v3, v11

    iput v3, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 2773
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2774
    iput-wide v12, v10, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    .line 2778
    if-eqz v1, :cond_41

    .line 2779
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2780
    if-lez v3, :cond_40

    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v3, v11

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_40

    .line 2782
    return-void

    .line 2784
    :cond_40
    goto :goto_4f

    .line 2785
    :cond_41
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lez v3, :cond_4f

    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v3, v11

    .line 2786
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_4f

    .line 2788
    return-void

    .line 2792
    :cond_4f
    :goto_4f
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2794
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v4

    if-eqz v4, :cond_5e

    if-ltz v3, :cond_5e

    .line 2798
    return-void

    .line 2835
    :cond_5e
    if-ltz v3, :cond_73

    .line 2836
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v3, v4, :cond_67

    .line 2837
    sub-int/2addr v4, v11

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2839
    :cond_67
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v3, v4, :cond_6e

    .line 2840
    sub-int/2addr v4, v11

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2850
    :cond_6e
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2864
    :cond_73
    nop

    .line 2865
    if-eqz v1, :cond_c9

    .line 2866
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2867
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2868
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v2

    if-nez v2, :cond_bb

    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v2, :cond_bb

    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v11

    if-ge v2, v0, :cond_bb

    .line 2876
    nop

    .line 2877
    :goto_8e
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le v0, v2, :cond_a8

    .line 2878
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2879
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_a5

    .line 2883
    goto :goto_a8

    .line 2885
    :cond_a5
    add-int/lit8 v0, v0, -0x1

    .line 2886
    goto :goto_8e

    .line 2887
    :cond_a8
    :goto_a8
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2890
    add-int/lit8 v2, v0, -0x1

    .line 2891
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v2, v3, :cond_b4

    .line 2892
    move v2, v3

    .line 2894
    :cond_b4
    nop

    .line 2895
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-direct {v9, v10, v0, v3, v2}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V

    .line 2896
    goto :goto_c8

    .line 2899
    :cond_bb
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2900
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 2902
    :goto_c8
    goto :goto_f6

    .line 2910
    :cond_c9
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2911
    if-eqz v0, :cond_db

    .line 2914
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2917
    if-gt v0, v3, :cond_d6

    .line 2920
    move v0, v3

    .line 2922
    :cond_d6
    if-ltz v0, :cond_db

    if-le v1, v0, :cond_db

    .line 2923
    goto :goto_dc

    .line 2927
    :cond_db
    move v0, v1

    :goto_dc
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2928
    add-int/lit8 v1, v0, -0x1

    .line 2929
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v3, v11

    iput v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2930
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/2addr v3, v11

    iput v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2931
    if-le v0, v11, :cond_f5

    .line 2932
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, v11

    invoke-direct {v9, v10, v0, v2, v1}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V

    .line 2936
    :cond_f5
    const/4 v2, -0x1

    :goto_f6
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    iput v0, v10, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    .line 2940
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    :goto_105
    if-ltz v14, :cond_183

    .line 2941
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 2942
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_180

    iget-boolean v0, v7, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_180

    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_180

    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_180

    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_180

    iget v0, v7, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v1, 0x40000130  # 2.0000725f

    and-int/2addr v0, v1

    if-nez v0, :cond_180

    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2946
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_180

    .line 2947
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 2948
    if-ltz v16, :cond_180

    .line 2949
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v12

    move/from16 v4, v16

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v16

    goto :goto_180

    .line 2955
    :cond_16b
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v12

    move v4, v15

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v15

    .line 2940
    :cond_180
    :goto_180
    add-int/lit8 v14, v14, -0x1

    goto :goto_105

    .line 2962
    :cond_183
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move v11, v0

    move v4, v15

    :goto_18c
    if-ltz v11, :cond_1bf

    .line 2963
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    iget-object v7, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 2964
    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1bc

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_1bc

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_1bc

    .line 2965
    iget-object v1, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "provider reference"

    move-object/from16 v0, p0

    move-wide v2, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v4

    .line 2962
    :cond_1bc
    add-int/lit8 v11, v11, -0x1

    goto :goto_18c

    .line 2969
    :cond_1bf
    return-void
.end method
