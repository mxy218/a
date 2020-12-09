.class public Lcom/android/server/usage/AppTimeLimitController;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppTimeLimitController$MyHandler;,
        Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;,
        Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;,
        Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;,
        Lcom/android/server/usage/AppTimeLimitController$UsageGroup;,
        Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;,
        Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;,
        Lcom/android/server/usage/AppTimeLimitController$UserData;,
        Lcom/android/server/usage/AppTimeLimitController$Lock;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_OBSERVER_PER_UID:J = 0x3e8L

.field private static final ONE:Ljava/lang/Integer;

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "AppTimeLimitController"


# instance fields
.field private final mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

.field private mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

.field private final mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

.field private final mObserverApps:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$UserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 67
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;Landroid/os/Looper;)V
    .registers 5

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$Lock;-><init>(Lcom/android/server/usage/AppTimeLimitController$1;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    .line 582
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;-><init>(Lcom/android/server/usage/AppTimeLimitController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    .line 583
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    .line 584
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->postInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->cancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->cancelInformSessionEndListener(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->postInformSessionEndListenerLocked(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    return-object p0
.end method

.method private cancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1009
    return-void
.end method

.method private cancelInformSessionEndListener(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 997
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 998
    return-void
.end method

.method private getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 701
    if-nez v0, :cond_15

    .line 702
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;-><init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController$1;)V

    .line 703
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 705
    :cond_15
    return-object v0
.end method

.method private getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 689
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 690
    if-nez v0, :cond_15

    .line 691
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;-><init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController$1;)V

    .line 692
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 694
    :cond_15
    return-object v0
.end method

.method private noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 722
    iget-object v0, p2, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length v0, v0

    .line 723
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_18

    .line 724
    iget-object v2, p1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    iget-object v3, p2, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 726
    invoke-virtual {p2, p3, p4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(J)V

    .line 723
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 729
    :cond_18
    return-void
.end method

.method private postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1004
    return-void
.end method

.method private postInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 984
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 986
    return-void
.end method

.method private postInformSessionEndListenerLocked(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 990
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    .line 991
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 990
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 993
    return-void
.end method


# virtual methods
.method public addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .registers 27

    .line 846
    move-object/from16 v0, p0

    move/from16 v12, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v1

    cmp-long v1, p4, v1

    if-ltz v1, :cond_84

    .line 849
    iget-object v13, v0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v13

    .line 850
    move/from16 v1, p9

    :try_start_11
    invoke-direct {v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v14

    .line 851
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v15

    .line 852
    iget-object v1, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 853
    if-eqz v1, :cond_26

    .line 855
    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    .line 858
    :cond_26
    iget-object v1, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 859
    int-to-long v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimitObserverPerUidLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_68

    .line 863
    new-instance v11, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 864
    cmp-long v1, p6, p4

    if-ltz v1, :cond_3f

    const/4 v1, 0x0

    move-object/from16 v16, v1

    goto :goto_41

    :cond_3f
    move-object/from16 v16, p8

    :goto_41
    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-object v0, v11

    move-object/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JJLandroid/app/PendingIntent;)V

    .line 865
    iget-object v1, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v12, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 871
    invoke-virtual {v14, v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v1

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 873
    monitor-exit v13

    .line 874
    return-void

    .line 860
    :cond_68
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many app usage observers added by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :catchall_81
    move-exception v0

    monitor-exit v13
    :try_end_83
    .catchall {:try_start_11 .. :try_end_83} :catchall_81

    throw v0

    .line 847
    :cond_84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time limit must be >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .registers 23

    .line 737
    move-object v0, p0

    move/from16 v10, p2

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v1

    cmp-long v1, p4, v1

    if-ltz v1, :cond_72

    .line 740
    iget-object v11, v0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v11

    .line 741
    move/from16 v1, p7

    :try_start_10
    invoke-direct {p0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v12

    .line 742
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v13

    .line 743
    iget-object v1, v13, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    .line 744
    if-eqz v1, :cond_25

    .line 746
    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 749
    :cond_25
    iget-object v1, v13, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 750
    int-to-long v1, v1

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageObserverPerUidLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_56

    .line 754
    new-instance v14, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v12

    move-object v4, v13

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    .line 756
    iget-object v1, v13, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v10, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 762
    invoke-virtual {v12, v14}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 763
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v12, v14, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 764
    monitor-exit v11

    .line 765
    return-void

    .line 751
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many app usage observers added by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :catchall_6f
    move-exception v0

    monitor-exit v11
    :try_end_71
    .catchall {:try_start_10 .. :try_end_71} :catchall_6f

    throw v0

    .line 738
    :cond_72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time limit must be >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 27

    .line 794
    move-object/from16 v0, p0

    move/from16 v13, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v1

    cmp-long v1, p4, v1

    if-ltz v1, :cond_81

    .line 797
    iget-object v14, v0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v14

    .line 798
    move/from16 v1, p10

    :try_start_11
    invoke-direct {v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v15

    .line 799
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v12

    .line 800
    iget-object v1, v12, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 801
    if-eqz v1, :cond_26

    .line 803
    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    .line 806
    :cond_26
    iget-object v1, v12, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 807
    int-to-long v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUsageSessionObserverPerUidLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_65

    .line 811
    new-instance v10, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v12

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p8

    move-object v0, v10

    move-wide/from16 v10, p6

    move-object/from16 p10, v15

    move-object v15, v12

    move-object/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V

    .line 813
    iget-object v1, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v13, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 815
    move-object/from16 v1, p10

    invoke-virtual {v1, v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 817
    monitor-exit v14

    .line 818
    return-void

    .line 808
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many app usage observers added by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :catchall_7e
    move-exception v0

    monitor-exit v14
    :try_end_80
    .catchall {:try_start_11 .. :try_end_80} :catchall_7e

    throw v0

    .line 795
    :cond_81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time limit must be >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 10

    .line 1012
    const/4 v0, 0x0

    if-eqz p1, :cond_45

    .line 1013
    move v1, v0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_45

    .line 1014
    aget-object v2, p1, v1

    .line 1015
    const-string v3, "actives"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1016
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v2

    .line 1017
    :try_start_14
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 1018
    move v1, v0

    :goto_1b
    if-ge v1, p1, :cond_3d

    .line 1019
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 1020
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UserData;

    iget-object v3, v3, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    .line 1021
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1022
    move v5, v0

    :goto_2c
    if-ge v5, v4, :cond_3a

    .line 1023
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 1018
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1026
    :cond_3d
    monitor-exit v2

    .line 1027
    return-void

    .line 1026
    :catchall_3f
    move-exception p1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_3f

    throw p1

    .line 1013
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1032
    :cond_45
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p1

    .line 1033
    :try_start_48
    const-string v1, "\n  App Time Limits"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1035
    move v2, v0

    :goto_54
    if-ge v2, v1, :cond_69

    .line 1036
    const-string v3, "   User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1037
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UserData;

    invoke-virtual {v3, p2}, Lcom/android/server/usage/AppTimeLimitController$UserData;->dump(Ljava/io/PrintWriter;)V

    .line 1035
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 1039
    :cond_69
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1040
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1041
    nop

    :goto_73
    if-ge v0, v1, :cond_88

    .line 1042
    const-string v2, "   Observer App "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1043
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    invoke-virtual {v2, p2}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->dump(Ljava/io/PrintWriter;)V

    .line 1041
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 1045
    :cond_88
    monitor-exit p1

    .line 1046
    return-void

    .line 1045
    :catchall_8a
    move-exception p2

    monitor-exit p1
    :try_end_8c
    .catchall {:try_start_48 .. :try_end_8c} :catchall_8a

    throw p2
.end method

.method getAppUsageGroup(II)Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 619
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    monitor-exit v0

    return-object p1

    .line 620
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    .registers 11

    .line 647
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 648
    :try_start_3
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p2

    .line 649
    const/4 v1, 0x0

    if-nez p2, :cond_10

    .line 650
    monitor-exit v0

    return-object v1

    .line 653
    :cond_10
    iget-object p2, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 654
    if-eqz p2, :cond_91

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    goto/16 :goto_91

    .line 658
    :cond_22
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 659
    const/4 v3, 0x0

    move v4, v3

    :goto_29
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_57

    .line 660
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    if-eqz v5, :cond_54

    .line 661
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 662
    move v6, v3

    :goto_3e
    iget-object v7, v5, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mObserved:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_54

    .line 663
    iget-object v7, v5, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mObserved:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 664
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 665
    goto :goto_54

    .line 662
    :cond_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 659
    :cond_54
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 670
    :cond_57
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 671
    monitor-exit v0

    return-object v1

    .line 674
    :cond_5f
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 675
    const/4 p2, 0x1

    :goto_66
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p2, v1, :cond_82

    .line 676
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 677
    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_7f

    .line 678
    move-object p1, v1

    .line 675
    :cond_7f
    add-int/lit8 p2, p2, 0x1

    goto :goto_66

    .line 681
    :cond_82
    new-instance p2, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    .line 682
    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getTotaUsageLimit()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v3

    invoke-direct {p2, v1, v2, v3, v4}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;-><init>(JJ)V

    monitor-exit v0

    .line 681
    return-object p2

    .line 655
    :cond_91
    :goto_91
    monitor-exit v0

    return-object v1

    .line 683
    :catchall_93
    move-exception p1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw p1
.end method

.method getAppUsageLimitGroup(II)Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 634
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    monitor-exit v0

    return-object p1

    .line 636
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method protected getAppUsageLimitObserverPerUidLimit()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 607
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method protected getAppUsageObserverPerUidLimit()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 595
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method protected getMinTimeLimit()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 613
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method getSessionUsageGroup(II)Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 626
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    monitor-exit v0

    return-object p1

    .line 628
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method protected getUptimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getUsageSessionObserverPerUidLimit()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 601
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public noteUsageStart(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 939
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;IJ)V

    .line 940
    return-void
.end method

.method public noteUsageStart(Ljava/lang/String;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 905
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p2

    .line 908
    iget-object v1, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 909
    if-ltz v1, :cond_2a

    .line 910
    iget-object v2, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 911
    if-eqz v2, :cond_2a

    .line 913
    iget-object p1, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 914
    monitor-exit v0

    return-void

    .line 917
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v1

    .line 919
    iget-object v3, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    sget-object v4, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget-object p2, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 922
    if-nez p1, :cond_41

    monitor-exit v0

    return-void

    .line 924
    :cond_41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 925
    const/4 v3, 0x0

    :goto_46
    if-ge v3, p2, :cond_56

    .line 926
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 927
    sub-long v5, v1, p3

    invoke-virtual {v4, v5, v6, v1, v2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    .line 925
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 929
    :cond_56
    monitor-exit v0

    .line 930
    return-void

    .line 929
    :catchall_58
    move-exception p1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method public noteUsageStop(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 949
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 950
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p2

    .line 953
    iget-object v1, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 954
    if-ltz v1, :cond_5a

    .line 959
    iget-object v2, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 960
    sget-object v3, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 962
    iget-object p1, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 963
    monitor-exit v0

    return-void

    .line 966
    :cond_30
    iget-object v2, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 967
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v1

    .line 970
    iget-object p2, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 971
    if-nez p1, :cond_45

    monitor-exit v0

    return-void

    .line 973
    :cond_45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 974
    const/4 v3, 0x0

    :goto_4a
    if-ge v3, p2, :cond_58

    .line 975
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 976
    invoke-virtual {v4, v1, v2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStop(J)V

    .line 974
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 979
    :cond_58
    monitor-exit v0

    .line 980
    return-void

    .line 955
    :cond_5a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to stop usage for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", not in use"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 979
    :catchall_76
    move-exception p1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw p1
.end method

.method public onUserRemoved(I)V
    .registers 4

    .line 710
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 712
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 713
    monitor-exit v0

    .line 714
    return-void

    .line 713
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public removeAppUsageLimitObserver(III)V
    .registers 4

    .line 885
    iget-object p3, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p3

    .line 886
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p1

    .line 887
    iget-object p1, p1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 888
    if-eqz p1, :cond_14

    .line 890
    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    .line 892
    :cond_14
    monitor-exit p3

    .line 893
    return-void

    .line 892
    :catchall_16
    move-exception p1

    monitor-exit p3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public removeAppUsageObserver(III)V
    .registers 4

    .line 775
    iget-object p3, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p3

    .line 776
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p1

    .line 777
    iget-object p1, p1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    .line 778
    if-eqz p1, :cond_14

    .line 780
    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 782
    :cond_14
    monitor-exit p3

    .line 783
    return-void

    .line 782
    :catchall_16
    move-exception p1

    monitor-exit p3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public removeUsageSessionObserver(III)V
    .registers 4

    .line 829
    iget-object p3, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p3

    .line 830
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p1

    .line 831
    iget-object p1, p1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 832
    if-eqz p1, :cond_14

    .line 834
    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    .line 836
    :cond_14
    monitor-exit p3

    .line 837
    return-void

    .line 836
    :catchall_16
    move-exception p1

    monitor-exit p3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method
