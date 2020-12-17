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
    .param p1, "listener"  # Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;
    .param p2, "looper"  # Landroid/os/Looper;

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
    .param p0, "x0"  # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"  # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    .param p2, "x2"  # J

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"  # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->postInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"  # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->cancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/AppTimeLimitController;

    .line 47
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"  # Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->cancelInformSessionEndListener(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"  # Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .param p2, "x2"  # J

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->postInformSessionEndListenerLocked(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usage/AppTimeLimitController;

    .line 47
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    return-object v0
.end method

.method private cancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 4
    .param p1, "group"  # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1012
    return-void
.end method

.method private cancelInformSessionEndListener(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V
    .registers 4
    .param p1, "group"  # Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1001
    return-void
.end method

.method private getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .registers 5
    .param p1, "uid"  # I
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
    .local v0, "appData":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    if-nez v0, :cond_16

    .line 702
    new-instance v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;-><init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController$1;)V

    move-object v0, v1

    .line 703
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 705
    :cond_16
    return-object v0
.end method

.method private getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;
    .registers 5
    .param p1, "userId"  # I
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
    .local v0, "userData":Lcom/android/server/usage/AppTimeLimitController$UserData;
    if-nez v0, :cond_16

    .line 691
    new-instance v1, Lcom/android/server/usage/AppTimeLimitController$UserData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/usage/AppTimeLimitController$UserData;-><init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController$1;)V

    move-object v0, v1

    .line 692
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 694
    :cond_16
    return-object v0
.end method

.method private noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .registers 9
    .param p1, "user"  # Lcom/android/server/usage/AppTimeLimitController$UserData;
    .param p2, "group"  # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    .param p3, "currentTimeMs"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 722
    iget-object v0, p2, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length v0, v0

    .line 723
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
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
    .end local v1  # "i":I
    :cond_18
    return-void
.end method

.method private postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .registers 6
    .param p1, "group"  # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    .param p2, "timeout"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1007
    return-void
.end method

.method private postInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .registers 4
    .param p1, "group"  # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 989
    return-void
.end method

.method private postInformSessionEndListenerLocked(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V
    .registers 6
    .param p1, "group"  # Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .param p2, "timeout"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    .line 994
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 993
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 996
    return-void
.end method


# virtual methods
.method public addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .registers 30
    .param p1, "requestingUid"  # I
    .param p2, "observerId"  # I
    .param p3, "observed"  # [Ljava/lang/String;
    .param p4, "timeLimit"  # J
    .param p6, "timeUsed"  # J
    .param p8, "callbackIntent"  # Landroid/app/PendingIntent;
    .param p9, "userId"  # I

    .line 849
    move-object/from16 v12, p0

    move/from16 v13, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_91

    .line 852
    iget-object v14, v12, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v14

    .line 853
    move/from16 v15, p9

    :try_start_11
    invoke-direct {v12, v15}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v0

    .line 854
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    move-object v11, v1

    .line 855
    .local v11, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v1, v11, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    move-object/from16 v16, v1

    .line 856
    .local v16, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    if-eqz v16, :cond_29

    .line 858
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    .line 861
    :cond_29
    iget-object v1, v11, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v9, v1

    .line 862
    .local v9, "observerIdCount":I
    int-to-long v1, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimitObserverPerUidLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_6e

    .line 866
    new-instance v17, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 867
    cmp-long v1, p6, p4

    if-ltz v1, :cond_43

    const/4 v1, 0x0

    move-object/from16 v18, v1

    goto :goto_45

    :cond_43
    move-object/from16 v18, p8

    :goto_45
    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v11

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v19, v9

    .end local v9  # "observerIdCount":I
    .local v19, "observerIdCount":I
    move-wide/from16 v9, p6

    move-object v15, v11

    .end local v11  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .local v15, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v11}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JJLandroid/app/PendingIntent;)V

    move-object/from16 v1, v17

    .line 868
    .end local v16  # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .local v1, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    iget-object v2, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v13, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 874
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 876
    .end local v0  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v1  # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .end local v15  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v19  # "observerIdCount":I
    monitor-exit v14

    .line 877
    return-void

    .line 863
    .restart local v0  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v9  # "observerIdCount":I
    .restart local v11  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v16  # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    :cond_6e
    move/from16 v19, v9

    move-object v15, v11

    .end local v9  # "observerIdCount":I
    .end local v11  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v15  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v19  # "observerIdCount":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many app usage observers added by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7d
    .catchall {:try_start_11 .. :try_end_7d} :catchall_8a

    move/from16 v3, p1

    :try_start_7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/usage/AppTimeLimitController;
    .end local p1  # "requestingUid":I
    .end local p2  # "observerId":I
    .end local p3  # "observed":[Ljava/lang/String;
    .end local p4  # "timeLimit":J
    .end local p6  # "timeUsed":J
    .end local p8  # "callbackIntent":Landroid/app/PendingIntent;
    .end local p9  # "userId":I
    throw v1

    .line 876
    .end local v0  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v15  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v16  # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .end local v19  # "observerIdCount":I
    .restart local p0  # "this":Lcom/android/server/usage/AppTimeLimitController;
    .restart local p1  # "requestingUid":I
    .restart local p2  # "observerId":I
    .restart local p3  # "observed":[Ljava/lang/String;
    .restart local p4  # "timeLimit":J
    .restart local p6  # "timeUsed":J
    .restart local p8  # "callbackIntent":Landroid/app/PendingIntent;
    .restart local p9  # "userId":I
    :catchall_8a
    move-exception v0

    move/from16 v3, p1

    :goto_8d
    monitor-exit v14
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_8f

    throw v0

    :catchall_8f
    move-exception v0

    goto :goto_8d

    .line 850
    :cond_91
    move/from16 v3, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time limit must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .registers 26
    .param p1, "requestingUid"  # I
    .param p2, "observerId"  # I
    .param p3, "observed"  # [Ljava/lang/String;
    .param p4, "timeLimit"  # J
    .param p6, "callbackIntent"  # Landroid/app/PendingIntent;
    .param p7, "userId"  # I

    .line 737
    move-object/from16 v10, p0

    move/from16 v11, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-gez v0, :cond_36

    .line 739
    if-eqz p6, :cond_1b

    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.meizu.sceneinfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_36

    .line 741
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time limit must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_36
    :goto_36
    iget-object v12, v10, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v12

    .line 744
    move/from16 v13, p7

    :try_start_3b
    invoke-direct {v10, v13}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v0

    .line 745
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    move-object v14, v1

    .line 746
    .local v14, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v1, v14, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    move-object v15, v1

    .line 747
    .local v15, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    if-eqz v15, :cond_52

    .line 749
    invoke-virtual {v15}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 752
    :cond_52
    iget-object v1, v14, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v9, v1

    .line 753
    .local v9, "observerIdCount":I
    int-to-long v1, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageObserverPerUidLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_8a

    .line 757
    new-instance v16, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v14

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v17, v9

    .end local v9  # "observerIdCount":I
    .local v17, "observerIdCount":I
    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    move-object/from16 v1, v16

    .line 759
    .end local v15  # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .local v1, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    iget-object v2, v14, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v11, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 765
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 767
    .end local v0  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v1  # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .end local v14  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v17  # "observerIdCount":I
    monitor-exit v12

    .line 768
    return-void

    .line 754
    .restart local v0  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v9  # "observerIdCount":I
    .restart local v14  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v15  # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    :cond_8a
    move/from16 v17, v9

    .end local v9  # "observerIdCount":I
    .restart local v17  # "observerIdCount":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many app usage observers added by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_98
    .catchall {:try_start_3b .. :try_end_98} :catchall_a5

    move/from16 v3, p1

    :try_start_9a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/usage/AppTimeLimitController;
    .end local p1  # "requestingUid":I
    .end local p2  # "observerId":I
    .end local p3  # "observed":[Ljava/lang/String;
    .end local p4  # "timeLimit":J
    .end local p6  # "callbackIntent":Landroid/app/PendingIntent;
    .end local p7  # "userId":I
    throw v1

    .line 767
    .end local v0  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v14  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v15  # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .end local v17  # "observerIdCount":I
    .restart local p0  # "this":Lcom/android/server/usage/AppTimeLimitController;
    .restart local p1  # "requestingUid":I
    .restart local p2  # "observerId":I
    .restart local p3  # "observed":[Ljava/lang/String;
    .restart local p4  # "timeLimit":J
    .restart local p6  # "callbackIntent":Landroid/app/PendingIntent;
    .restart local p7  # "userId":I
    :catchall_a5
    move-exception v0

    move/from16 v3, p1

    :goto_a8
    monitor-exit v12
    :try_end_a9
    .catchall {:try_start_9a .. :try_end_a9} :catchall_aa

    throw v0

    :catchall_aa
    move-exception v0

    goto :goto_a8
.end method

.method public addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 30
    .param p1, "requestingUid"  # I
    .param p2, "observerId"  # I
    .param p3, "observed"  # [Ljava/lang/String;
    .param p4, "timeLimit"  # J
    .param p6, "sessionThresholdTime"  # J
    .param p8, "limitReachedCallbackIntent"  # Landroid/app/PendingIntent;
    .param p9, "sessionEndCallbackIntent"  # Landroid/app/PendingIntent;
    .param p10, "userId"  # I

    .line 797
    move-object/from16 v13, p0

    move/from16 v14, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_99

    .line 800
    iget-object v15, v13, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v15

    .line 801
    move/from16 v12, p10

    :try_start_11
    invoke-direct {v13, v12}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v0

    .line 802
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    move-object v10, v1

    .line 803
    .local v10, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v1, v10, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    move-object/from16 v16, v1

    .line 804
    .local v16, "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    if-eqz v16, :cond_29

    .line 806
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    .line 809
    :cond_29
    iget-object v1, v10, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v11, v1

    .line 810
    .local v11, "observerIdCount":I
    int-to-long v1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUsageSessionObserverPerUidLimit()J

    move-result-wide v3
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_91

    cmp-long v1, v1, v3

    if-gez v1, :cond_72

    .line 814
    :try_start_39
    new-instance v17, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_6d

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v10

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p8

    move-object v13, v10

    move/from16 v18, v11

    .end local v10  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v11  # "observerIdCount":I
    .local v13, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .local v18, "observerIdCount":I
    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    :try_start_50
    invoke-direct/range {v1 .. v12}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V

    move-object/from16 v1, v17

    .line 816
    .end local v16  # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .local v1, "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    iget-object v2, v13, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 818
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_69

    move-object/from16 v4, p0

    move-object v5, v13

    .end local v13  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .local v5, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    :try_start_64
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 820
    .end local v0  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v1  # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .end local v5  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v18  # "observerIdCount":I
    monitor-exit v15

    .line 821
    return-void

    .line 820
    :catchall_69
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_6f

    :catchall_6d
    move-exception v0

    move-object v4, v13

    :goto_6f
    move/from16 v3, p1

    goto :goto_95

    .line 811
    .restart local v0  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v10  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v11  # "observerIdCount":I
    .restart local v16  # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    :cond_72
    move-object v5, v10

    move/from16 v18, v11

    move-object v4, v13

    .end local v10  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v11  # "observerIdCount":I
    .restart local v5  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v18  # "observerIdCount":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many app usage observers added by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_82
    .catchall {:try_start_64 .. :try_end_82} :catchall_8f

    move/from16 v3, p1

    :try_start_84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/usage/AppTimeLimitController;
    .end local p1  # "requestingUid":I
    .end local p2  # "observerId":I
    .end local p3  # "observed":[Ljava/lang/String;
    .end local p4  # "timeLimit":J
    .end local p6  # "sessionThresholdTime":J
    .end local p8  # "limitReachedCallbackIntent":Landroid/app/PendingIntent;
    .end local p9  # "sessionEndCallbackIntent":Landroid/app/PendingIntent;
    .end local p10  # "userId":I
    throw v1

    .line 820
    .end local v0  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v5  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v16  # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .end local v18  # "observerIdCount":I
    .restart local p0  # "this":Lcom/android/server/usage/AppTimeLimitController;
    .restart local p1  # "requestingUid":I
    .restart local p2  # "observerId":I
    .restart local p3  # "observed":[Ljava/lang/String;
    .restart local p4  # "timeLimit":J
    .restart local p6  # "sessionThresholdTime":J
    .restart local p8  # "limitReachedCallbackIntent":Landroid/app/PendingIntent;
    .restart local p9  # "sessionEndCallbackIntent":Landroid/app/PendingIntent;
    .restart local p10  # "userId":I
    :catchall_8f
    move-exception v0

    goto :goto_6f

    :catchall_91
    move-exception v0

    move/from16 v3, p1

    move-object v4, v13

    :goto_95
    monitor-exit v15
    :try_end_96
    .catchall {:try_start_84 .. :try_end_96} :catchall_97

    throw v0

    :catchall_97
    move-exception v0

    goto :goto_95

    .line 798
    :cond_99
    move/from16 v3, p1

    move-object v4, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time limit must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "args"  # [Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 1015
    if-eqz p1, :cond_44

    .line 1016
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_44

    .line 1017
    aget-object v1, p1, v0

    .line 1018
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "actives"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1019
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v2

    .line 1020
    :try_start_13
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1021
    .local v3, "nUsers":I
    const/4 v4, 0x0

    .local v4, "user":I
    :goto_1a
    if-ge v4, v3, :cond_3c

    .line 1022
    iget-object v5, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 1023
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usage/AppTimeLimitController$UserData;

    iget-object v5, v5, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    .line 1024
    .local v5, "actives":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1025
    .local v6, "nActive":I
    const/4 v7, 0x0

    .local v7, "active":I
    :goto_2b
    if-ge v7, v6, :cond_39

    .line 1026
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 1021
    .end local v5  # "actives":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6  # "nActive":I
    .end local v7  # "active":I
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1029
    .end local v3  # "nUsers":I
    .end local v4  # "user":I
    :cond_3c
    monitor-exit v2

    .line 1030
    return-void

    .line 1029
    :catchall_3e
    move-exception v3

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw v3

    .line 1016
    .end local v1  # "arg":Ljava/lang/String;
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1035
    .end local v0  # "i":I
    :cond_44
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 1036
    :try_start_47
    const-string v1, "\n  App Time Limits"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1038
    .local v1, "nUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_53
    if-ge v2, v1, :cond_68

    .line 1039
    const-string v3, "   User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1040
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UserData;

    invoke-virtual {v3, p2}, Lcom/android/server/usage/AppTimeLimitController$UserData;->dump(Ljava/io/PrintWriter;)V

    .line 1038
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 1042
    .end local v2  # "i":I
    :cond_68
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1043
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1044
    .local v2, "nObserverApps":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_72
    if-ge v3, v2, :cond_87

    .line 1045
    const-string v4, "   Observer App "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    iget-object v4, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    invoke-virtual {v4, p2}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->dump(Ljava/io/PrintWriter;)V

    .line 1044
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 1048
    .end local v1  # "nUsers":I
    .end local v2  # "nObserverApps":I
    .end local v3  # "i":I
    :cond_87
    monitor-exit v0

    .line 1049
    return-void

    .line 1048
    :catchall_89
    move-exception v1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_47 .. :try_end_8b} :catchall_89

    throw v1
.end method

.method getAppUsageGroup(II)Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .registers 5
    .param p1, "observerAppUid"  # I
    .param p2, "observerId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 619
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    monitor-exit v0

    return-object v1

    .line 620
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    .registers 14
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "user"  # Landroid/os/UserHandle;

    .line 647
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 648
    :try_start_3
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 649
    .local v1, "userData":Lcom/android/server/usage/AppTimeLimitController$UserData;
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 650
    monitor-exit v0

    return-object v2

    .line 653
    :cond_10
    iget-object v3, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 654
    .local v3, "usageGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    if-eqz v3, :cond_91

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_22

    goto/16 :goto_91

    .line 658
    :cond_22
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 659
    .local v4, "usageLimitGroups":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;>;"
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_57

    .line 660
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    if-eqz v7, :cond_54

    .line 661
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 662
    .local v7, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    move v8, v5

    .local v8, "j":I
    :goto_3e
    iget-object v9, v7, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mObserved:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_54

    .line 663
    iget-object v9, v7, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mObserved:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 664
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 665
    goto :goto_54

    .line 662
    :cond_51
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    .line 659
    .end local v7  # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .end local v8  # "j":I
    :cond_54
    :goto_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 670
    .end local v6  # "i":I
    :cond_57
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 671
    monitor-exit v0

    return-object v2

    .line 674
    :cond_5f
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 675
    .local v2, "smallestGroup":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_66
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_82

    .line 676
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 677
    .local v6, "otherGroup":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    invoke-virtual {v6}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_7f

    .line 678
    move-object v2, v6

    .line 675
    .end local v6  # "otherGroup":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    :cond_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 681
    .end local v5  # "i":I
    :cond_82
    new-instance v5, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    .line 682
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getTotaUsageLimit()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;-><init>(JJ)V

    monitor-exit v0

    .line 681
    return-object v5

    .line 655
    .end local v2  # "smallestGroup":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .end local v4  # "usageLimitGroups":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;>;"
    :cond_91
    :goto_91
    monitor-exit v0

    return-object v2

    .line 683
    .end local v1  # "userData":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v3  # "usageGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    :catchall_93
    move-exception v1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw v1
.end method

.method getAppUsageLimitGroup(II)Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .registers 5
    .param p1, "observerAppUid"  # I
    .param p2, "observerId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 634
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    monitor-exit v0

    return-object v1

    .line 636
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
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
    .registers 5
    .param p1, "observerAppUid"  # I
    .param p2, "observerId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 626
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    monitor-exit v0

    return-object v1

    .line 628
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
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
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 942
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;IJ)V

    .line 943
    return-void
.end method

.method public noteUsageStart(Ljava/lang/String;IJ)V
    .registers 16
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "timeAgoMs"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 908
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 911
    .local v1, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 912
    .local v2, "index":I
    if-ltz v2, :cond_2a

    .line 913
    iget-object v3, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 914
    .local v3, "count":Ljava/lang/Integer;
    if-eqz v3, :cond_2a

    .line 916
    iget-object v4, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 917
    monitor-exit v0

    return-void

    .line 920
    .end local v3  # "count":Ljava/lang/Integer;
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v3

    .line 922
    .local v3, "currentTime":J
    iget-object v5, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    sget-object v6, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    iget-object v5, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 925
    .local v5, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    if-nez v5, :cond_41

    monitor-exit v0

    return-void

    .line 927
    :cond_41
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 928
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_46
    if-ge v7, v6, :cond_56

    .line 929
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 930
    .local v8, "group":Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    sub-long v9, v3, p3

    invoke-virtual {v8, v9, v10, v3, v4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    .line 928
    .end local v8  # "group":Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 932
    .end local v1  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v2  # "index":I
    .end local v3  # "currentTime":J
    .end local v5  # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    .end local v6  # "size":I
    .end local v7  # "i":I
    :cond_56
    monitor-exit v0

    .line 933
    return-void

    .line 932
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public noteUsageStop(Ljava/lang/String;I)V
    .registers 13
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 953
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 956
    .local v1, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 957
    .local v2, "index":I
    if-ltz v2, :cond_5a

    .line 962
    iget-object v3, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 963
    .local v3, "count":Ljava/lang/Integer;
    sget-object v4, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 965
    iget-object v4, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 966
    monitor-exit v0

    return-void

    .line 969
    :cond_30
    iget-object v4, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 970
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v4

    .line 973
    .local v4, "currentTime":J
    iget-object v6, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 974
    .local v6, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    if-nez v6, :cond_45

    monitor-exit v0

    return-void

    .line 976
    :cond_45
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 977
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4a
    if-ge v8, v7, :cond_58

    .line 978
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 979
    .local v9, "group":Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    invoke-virtual {v9, v4, v5}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStop(J)V

    .line 977
    .end local v9  # "group":Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    .line 982
    .end local v1  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v2  # "index":I
    .end local v3  # "count":Ljava/lang/Integer;
    .end local v4  # "currentTime":J
    .end local v6  # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    .end local v7  # "size":I
    .end local v8  # "i":I
    :cond_58
    monitor-exit v0

    .line 983
    return-void

    .line 958
    .restart local v1  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v2  # "index":I
    :cond_5a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop usage for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", not in use"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/usage/AppTimeLimitController;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "userId":I
    throw v3

    .line 982
    .end local v1  # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v2  # "index":I
    .restart local p0  # "this":Lcom/android/server/usage/AppTimeLimitController;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public onUserRemoved(I)V
    .registers 4
    .param p1, "userId"  # I

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
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeAppUsageLimitObserver(III)V
    .registers 7
    .param p1, "requestingUid"  # I
    .param p2, "observerId"  # I
    .param p3, "userId"  # I

    .line 888
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 889
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    .line 890
    .local v1, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 891
    .local v2, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    if-eqz v2, :cond_14

    .line 893
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    .line 895
    .end local v1  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v2  # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    :cond_14
    monitor-exit v0

    .line 896
    return-void

    .line 895
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public removeAppUsageObserver(III)V
    .registers 7
    .param p1, "requestingUid"  # I
    .param p2, "observerId"  # I
    .param p3, "userId"  # I

    .line 778
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 779
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    .line 780
    .local v1, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    .line 781
    .local v2, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    if-eqz v2, :cond_14

    .line 783
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 785
    .end local v1  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v2  # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    :cond_14
    monitor-exit v0

    .line 786
    return-void

    .line 785
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public removeUsageSessionObserver(III)V
    .registers 7
    .param p1, "requestingUid"  # I
    .param p2, "observerId"  # I
    .param p3, "userId"  # I

    .line 832
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 833
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    .line 834
    .local v1, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 835
    .local v2, "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    if-eqz v2, :cond_14

    .line 837
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    .line 839
    .end local v1  # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v2  # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    :cond_14
    monitor-exit v0

    .line 840
    return-void

    .line 839
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method
