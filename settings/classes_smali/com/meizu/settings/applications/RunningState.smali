.class public Lcom/meizu/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/meizu/settings/applications/RunningState$MergedItem;,
        Lcom/meizu/settings/applications/RunningState$ProcessItem;,
        Lcom/meizu/settings/applications/RunningState$ServiceItem;,
        Lcom/meizu/settings/applications/RunningState$BaseItem;,
        Lcom/meizu/settings/applications/RunningState$UserState;,
        Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/meizu/settings/applications/RunningState$BackgroundHandler;,
        Lcom/meizu/settings/applications/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/meizu/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mHideManagedProfiles:Z

.field final mInterestingConfigChanges:Lcom/meizu/settings/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/meizu/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/meizu/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/meizu/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/meizu/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/meizu/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/meizu/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/meizu/settings/applications/RunningState$UserState;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/meizu/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/meizu/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/meizu/settings/applications/InterestingConfigChanges;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Lcom/meizu/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/meizu/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessComparator:Lcom/meizu/settings/applications/RunningState$ServiceProcessComparator;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    .line 153
    new-instance v1, Lcom/meizu/settings/applications/RunningState$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/applications/RunningState$1;-><init>(Lcom/meizu/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 214
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 277
    new-instance v1, Lcom/meizu/settings/applications/RunningState$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/applications/RunningState$2;-><init>(Lcom/meizu/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/meizu/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 773
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 774
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 775
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 776
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 777
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/applications/RunningState;->mMyUserId:I

    .line 778
    iget p1, p0, Lcom/meizu/settings/applications/RunningState;->mMyUserId:I

    if-eqz p1, :cond_be

    const/4 p1, 0x1

    goto :goto_bf

    :cond_be
    move p1, v0

    :goto_bf
    iput-boolean p1, p0, Lcom/meizu/settings/applications/RunningState;->mHideManagedProfiles:Z

    .line 779
    iput-boolean v0, p0, Lcom/meizu/settings/applications/RunningState;->mResumed:Z

    .line 780
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "RunningState:Background"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 781
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 782
    new-instance p1, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/meizu/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/RunningState;)V
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/meizu/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result p0

    return p0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/RunningState;
    .registers 3

    .line 764
    sget-object v0, Lcom/meizu/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_3
    sget-object v1, Lcom/meizu/settings/applications/RunningState;->sInstance:Lcom/meizu/settings/applications/RunningState;

    if-nez v1, :cond_e

    .line 766
    new-instance v1, Lcom/meizu/settings/applications/RunningState;

    invoke-direct {v1, p0}, Lcom/meizu/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/applications/RunningState;->sInstance:Lcom/meizu/settings/applications/RunningState;

    .line 768
    :cond_e
    sget-object p0, Lcom/meizu/settings/applications/RunningState;->sInstance:Lcom/meizu/settings/applications/RunningState;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 769
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .registers 4

    .line 843
    iget p0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1b

    .line 846
    iget p0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-lt p0, v0, :cond_1b

    const/16 v0, 0x15e

    if-ge p0, v0, :cond_1b

    iget p0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez p0, :cond_1b

    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .registers 4

    if-eqz p2, :cond_11

    .line 747
    iget v0, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_a

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 749
    :cond_a
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_11

    return-object p0

    :cond_11
    const/16 p0, 0x2e

    .line 756
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ltz p0, :cond_23

    add-int/lit8 p0, p0, 0x1

    .line 758
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_23
    return-object p1
.end method

.method private reset()V
    .registers 2

    .line 857
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 858
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 859
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 860
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 861
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 862
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 863
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 900
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 902
    iget v3, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    const/16 v3, 0x64

    move-object/from16 v5, p2

    .line 909
    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 910
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_1e

    :cond_1d
    const/4 v7, 0x0

    :goto_1e
    move v8, v7

    const/4 v7, 0x0

    :goto_20
    if-ge v7, v8, :cond_43

    .line 912
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 916
    iget-boolean v10, v9, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v10, :cond_34

    iget v10, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v10, :cond_34

    .line 917
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3d

    .line 924
    :cond_34
    iget v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_41

    .line 926
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_3d
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v8, -0x1

    :cond_41
    add-int/2addr v7, v4

    goto :goto_20

    .line 936
    :cond_43
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4e

    .line 937
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_4f

    :cond_4e
    const/4 v7, 0x0

    .line 938
    :goto_4f
    iget-object v9, v0, Lcom/meizu/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    const/4 v9, 0x0

    :goto_55
    if-ge v9, v7, :cond_6c

    .line 940
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 941
    iget-object v11, v0, Lcom/meizu/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v12, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v13, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;

    invoke-direct {v13, v10}, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_55

    :cond_6c
    const/4 v9, 0x0

    :goto_6d
    const-wide/16 v10, 0x0

    if-ge v9, v8, :cond_96

    .line 947
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 948
    iget-wide v13, v12, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v10, v13, v10

    if-nez v10, :cond_93

    iget v10, v12, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v10, :cond_93

    .line 949
    iget-object v11, v0, Lcom/meizu/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;

    if-eqz v10, :cond_93

    .line 951
    iput-boolean v4, v10, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 952
    iget-boolean v11, v12, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v11, :cond_93

    .line 953
    iput-boolean v4, v10, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    :cond_93
    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    :cond_96
    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_98
    if-ge v9, v8, :cond_15d

    .line 961
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 968
    iget-wide v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v14, v14, v10

    if-nez v14, :cond_ee

    iget v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v14, :cond_ee

    .line 969
    iget-object v15, v0, Lcom/meizu/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;

    if-eqz v14, :cond_ee

    .line 970
    iget-boolean v15, v14, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    if-nez v15, :cond_ee

    .line 976
    iget-object v14, v14, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v15, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x12c

    if-ge v15, v6, :cond_ee

    .line 981
    iget-object v6, v0, Lcom/meizu/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v14, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;

    :goto_ca
    if-eqz v6, :cond_e8

    .line 983
    iget-boolean v14, v6, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    if-nez v14, :cond_e6

    iget-object v14, v6, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0, v14}, Lcom/meizu/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v14

    if-eqz v14, :cond_d9

    goto :goto_e6

    .line 987
    :cond_d9
    iget-object v14, v0, Lcom/meizu/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget-object v6, v6, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/settings/applications/RunningState$AppProcessInfo;

    goto :goto_ca

    :cond_e6
    :goto_e6
    move v6, v4

    goto :goto_e9

    :cond_e8
    const/4 v6, 0x0

    :goto_e9
    if-eqz v6, :cond_ee

    move-object/from16 p2, v5

    goto :goto_156

    .line 996
    :cond_ee
    iget-object v6, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_106

    .line 998
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 999
    iget-object v14, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v15, v13, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v14, v15, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1001
    :cond_106
    iget-object v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    if-nez v14, :cond_11f

    .line 1004
    new-instance v14, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget v12, v13, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v15, v13, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-direct {v14, v1, v12, v15}, Lcom/meizu/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1005
    iget-object v12, v13, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v6, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v12, v4

    .line 1008
    :cond_11f
    iget v6, v14, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v15, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    move-object/from16 p2, v5

    if-eq v6, v15, :cond_151

    .line 1009
    iget-wide v4, v13, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_130

    iget v4, v13, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    goto :goto_131

    :cond_130
    const/4 v4, 0x0

    .line 1010
    :goto_131
    iget v5, v14, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v4, v5, :cond_148

    if-eq v5, v4, :cond_147

    if-eqz v5, :cond_13e

    .line 1014
    iget-object v12, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_13e
    if-eqz v4, :cond_145

    .line 1017
    iget-object v5, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1019
    :cond_145
    iput v4, v14, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    :cond_147
    const/4 v12, 0x1

    .line 1022
    :cond_148
    iget-object v4, v14, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1023
    iget v4, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    iput v4, v14, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 1025
    :cond_151
    invoke-virtual {v14, v1, v13}, Lcom/meizu/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v4

    or-int/2addr v12, v4

    :goto_156
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, p2

    const/4 v4, 0x1

    goto/16 :goto_98

    :cond_15d
    move-object/from16 p2, v5

    move v4, v12

    const/4 v3, 0x0

    :goto_161
    if-ge v3, v7, :cond_1c9

    move-object/from16 v5, p2

    .line 1031
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1032
    iget-object v9, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    if-nez v9, :cond_19c

    .line 1037
    iget-object v9, v0, Lcom/meizu/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    if-nez v9, :cond_197

    .line 1040
    new-instance v4, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v4, v1, v9, v12}, Lcom/meizu/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1041
    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v9, v4, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 1042
    iget-object v12, v0, Lcom/meizu/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v12, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v9, v4

    const/4 v4, 0x1

    .line 1044
    :cond_197
    iget-object v12, v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 1047
    :cond_19c
    invoke-direct {v0, v8}, Lcom/meizu/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v12

    if-eqz v12, :cond_1bb

    .line 1048
    iget-object v12, v0, Lcom/meizu/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1b0

    .line 1050
    iget-object v4, v0, Lcom/meizu/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 1052
    :cond_1b0
    iget v12, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    iput v12, v9, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    const/4 v6, 0x1

    .line 1053
    iput-boolean v6, v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1054
    invoke-virtual {v9, v2}, Lcom/meizu/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    goto :goto_1be

    :cond_1bb
    const/4 v12, 0x0

    .line 1056
    iput-boolean v12, v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1059
    :goto_1be
    iget v12, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    iput v12, v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1060
    iput-object v8, v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 p2, v5

    goto :goto_161

    .line 1065
    :cond_1c9
    iget-object v3, v0, Lcom/meizu/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v5, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1d2
    const/4 v7, 0x0

    if-ge v3, v4, :cond_217

    .line 1067
    iget-object v8, v0, Lcom/meizu/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 1068
    iget v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    iget v12, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    if-ne v9, v12, :cond_20a

    .line 1069
    iget-object v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    if-eqz v9, :cond_205

    .line 1071
    iget-object v7, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    if-nez v7, :cond_1fb

    .line 1073
    iget-object v7, v0, Lcom/meizu/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    :cond_1fb
    if-eqz v7, :cond_207

    .line 1076
    iget-object v7, v7, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    iget v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v7, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_207

    .line 1082
    :cond_205
    iput-object v7, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mClient:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    :cond_207
    :goto_207
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d2

    .line 1087
    :cond_20a
    iget-object v5, v0, Lcom/meizu/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    goto :goto_1d2

    .line 1093
    :cond_217
    iget-object v3, v0, Lcom/meizu/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v3

    const/4 v3, 0x0

    :goto_21f
    if-ge v3, v4, :cond_244

    .line 1095
    iget-object v8, v0, Lcom/meizu/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 1096
    iget-boolean v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    if-eqz v9, :cond_237

    iget-object v9, v0, Lcom/meizu/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v8, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_241

    .line 1098
    :cond_237
    iget-object v5, v0, Lcom/meizu/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    :cond_241
    const/4 v6, 0x1

    add-int/2addr v3, v6

    goto :goto_21f

    .line 1107
    :cond_244
    iget-object v3, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_24b
    if-ge v4, v3, :cond_263

    .line 1109
    iget-object v8, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 1110
    iget v9, v8, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v12, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    if-ne v9, v12, :cond_260

    .line 1111
    invoke-virtual {v8, v1, v2, v12}, Lcom/meizu/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v8

    or-int/2addr v5, v8

    :cond_260
    add-int/lit8 v4, v4, 0x1

    goto :goto_24b

    :cond_263
    move-object v4, v7

    const/4 v3, 0x0

    .line 1117
    :goto_265
    iget-object v8, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_2e8

    .line 1118
    iget-object v8, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 1119
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1120
    :cond_27d
    :goto_27d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2e4

    .line 1121
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 1122
    iget v13, v12, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v14, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    if-ne v13, v14, :cond_2bc

    .line 1123
    invoke-virtual {v12, v2}, Lcom/meizu/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1124
    iget v13, v12, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    if-nez v13, :cond_29b

    .line 1127
    iget-object v13, v12, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 1143
    :cond_29b
    iget-object v12, v12, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1144
    :cond_2a5
    :goto_2a5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_27d

    .line 1145
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/settings/applications/RunningState$ServiceItem;

    .line 1146
    iget v13, v13, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v14, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    if-eq v13, v14, :cond_2a5

    .line 1148
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    const/4 v5, 0x1

    goto :goto_2a5

    .line 1131
    :cond_2bc
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 1132
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_2d9

    if-nez v4, :cond_2cc

    .line 1134
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    :cond_2cc
    iget-object v5, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_2d9
    iget v5, v12, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v5, :cond_2e2

    .line 1139
    iget-object v12, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_2e2
    const/4 v5, 0x1

    goto :goto_27d

    :cond_2e4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_265

    :cond_2e8
    if-eqz v4, :cond_303

    const/4 v2, 0x0

    .line 1155
    :goto_2eb
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_303

    .line 1156
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1157
    iget-object v8, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2eb

    :cond_303
    if-eqz v5, :cond_4af

    .line 1163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 1164
    :goto_30b
    iget-object v4, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_380

    .line 1165
    iget-object v4, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_323
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    const/4 v9, 0x0

    .line 1166
    iput-boolean v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    const/4 v6, 0x1

    .line 1167
    iput-boolean v6, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    const-wide v12, 0x7fffffffffffffffL

    .line 1168
    iput-wide v12, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1169
    iget-object v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_346
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_377

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/meizu/settings/applications/RunningState$ServiceItem;

    .line 1170
    iget-object v13, v12, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v13, :cond_360

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v13, v6

    if-eqz v13, :cond_360

    .line 1173
    iput-boolean v6, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1175
    :cond_360
    iget-object v12, v12, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v12, :cond_375

    iget v13, v12, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v13, :cond_375

    const/4 v13, 0x0

    .line 1177
    iput-boolean v13, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1178
    iget-wide v13, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v6, v12, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    cmp-long v12, v13, v6

    if-lez v12, :cond_375

    .line 1179
    iput-wide v6, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    :cond_375
    const/4 v7, 0x0

    goto :goto_346

    .line 1183
    :cond_377
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto :goto_323

    :cond_37c
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    goto :goto_30b

    .line 1187
    :cond_380
    iget-object v3, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessComparator:Lcom/meizu/settings/applications/RunningState$ServiceProcessComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1189
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    iget-object v6, v0, Lcom/meizu/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    .line 1192
    :goto_395
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v7, v6, :cond_43a

    .line 1193
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    const/4 v8, 0x0

    .line 1194
    iput-boolean v8, v6, Lcom/meizu/settings/applications/RunningState$BaseItem;->mNeedDivider:Z

    .line 1196
    iget-object v8, v0, Lcom/meizu/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1198
    iget-object v9, v0, Lcom/meizu/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3, v9}, Lcom/meizu/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1200
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    iget v9, v6, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v9, :cond_3bb

    .line 1202
    iget-object v9, v0, Lcom/meizu/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    :cond_3bb
    iget-object v9, v6, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3c7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3e1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/settings/applications/RunningState$ServiceItem;

    .line 1210
    iput-boolean v12, v14, Lcom/meizu/settings/applications/RunningState$BaseItem;->mNeedDivider:Z

    .line 1212
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    iget-object v12, v14, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    if-eqz v12, :cond_3df

    .line 1217
    iget-object v12, v14, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    move-object v13, v12

    :cond_3df
    const/4 v12, 0x1

    goto :goto_3c7

    .line 1226
    :cond_3e1
    new-instance v9, Lcom/meizu/settings/applications/RunningState$MergedItem;

    iget v12, v6, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v9, v12}, Lcom/meizu/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 1227
    iget-object v12, v6, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3f2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_406

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/settings/applications/RunningState$ServiceItem;

    .line 1228
    iget-object v14, v9, Lcom/meizu/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    iput-object v9, v13, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    goto :goto_3f2

    .line 1231
    :cond_406
    iput-object v6, v9, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 1232
    iget-object v6, v9, Lcom/meizu/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1233
    :goto_40d
    iget-object v6, v0, Lcom/meizu/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v12, 0x1

    add-int/lit8 v13, v6, -0x1

    if-ge v8, v13, :cond_428

    .line 1234
    iget-object v12, v9, Lcom/meizu/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    iget-object v13, v0, Lcom/meizu/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_40d

    :cond_428
    const/4 v8, 0x0

    .line 1238
    invoke-virtual {v9, v1, v8}, Lcom/meizu/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1239
    iget v8, v9, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v12, v0, Lcom/meizu/settings/applications/RunningState;->mMyUserId:I

    if-eq v8, v12, :cond_433

    goto :goto_436

    .line 1244
    :cond_433
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_436
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_395

    .line 1250
    :cond_43a
    iget-object v2, v0, Lcom/meizu/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_441
    if-ge v7, v2, :cond_482

    .line 1252
    iget-object v8, v0, Lcom/meizu/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 1253
    iget-object v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mClient:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    if-nez v9, :cond_47f

    iget-object v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-gtz v9, :cond_47f

    .line 1254
    iget-object v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    if-nez v9, :cond_468

    .line 1255
    new-instance v9, Lcom/meizu/settings/applications/RunningState$MergedItem;

    iget v12, v8, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v9, v12}, Lcom/meizu/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 1256
    iget-object v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    iput-object v8, v9, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 1258
    :cond_468
    iget-object v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    const/4 v12, 0x0

    invoke-virtual {v9, v1, v12}, Lcom/meizu/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1259
    iget-object v9, v8, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    iget v13, v9, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v14, v0, Lcom/meizu/settings/applications/RunningState;->mMyUserId:I

    if-eq v13, v14, :cond_477

    goto :goto_47a

    .line 1265
    :cond_477
    invoke-virtual {v4, v12, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1267
    :goto_47a
    iget-object v9, v0, Lcom/meizu/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47f
    add-int/lit8 v7, v7, 0x1

    goto :goto_441

    .line 1273
    :cond_482
    iget-object v2, v0, Lcom/meizu/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_489
    if-ge v7, v2, :cond_4a2

    .line 1275
    iget-object v8, v0, Lcom/meizu/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 1276
    iget v9, v8, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v12, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    if-ne v9, v12, :cond_49e

    const/4 v9, 0x0

    .line 1277
    invoke-virtual {v8, v1, v9}, Lcom/meizu/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    goto :goto_49f

    :cond_49e
    const/4 v9, 0x0

    :goto_49f
    add-int/lit8 v7, v7, 0x1

    goto :goto_489

    :cond_4a2
    const/4 v9, 0x0

    .line 1281
    iget-object v2, v0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1282
    :try_start_4a6
    iput-object v3, v0, Lcom/meizu/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1283
    iput-object v4, v0, Lcom/meizu/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1284
    monitor-exit v2

    goto :goto_4b0

    :catchall_4ac
    move-exception v0

    monitor-exit v2
    :try_end_4ae
    .catchall {:try_start_4a6 .. :try_end_4ae} :catchall_4ac

    throw v0

    :cond_4af
    const/4 v9, 0x0

    .line 1289
    :goto_4b0
    iget-object v2, v0, Lcom/meizu/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1290
    iget-object v2, v0, Lcom/meizu/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/meizu/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1294
    iget-object v2, v0, Lcom/meizu/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v9

    move v4, v3

    move v7, v4

    move v8, v7

    :goto_4c6
    const/16 v12, 0xc8

    const/16 v13, 0x190

    if-ge v3, v2, :cond_51a

    .line 1296
    iget-object v14, v0, Lcom/meizu/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v14, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 1297
    iget v15, v14, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v6, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    if-eq v15, v6, :cond_515

    .line 1300
    iget-object v6, v14, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v6, v13, :cond_4e8

    add-int/lit8 v7, v7, 0x1

    .line 1303
    iget-object v6, v0, Lcom/meizu/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_517

    :cond_4e8
    if-gt v6, v12, :cond_4f2

    add-int/lit8 v8, v8, 0x1

    .line 1307
    iget-object v6, v0, Lcom/meizu/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_517

    .line 1309
    :cond_4f2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown non-service process: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v14, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " #"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v14, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "RunningState"

    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_517

    :cond_515
    add-int/lit8 v4, v4, 0x1

    :goto_517
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c6

    .line 1324
    :cond_51a
    :try_start_51a
    iget-object v2, v0, Lcom/meizu/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1325
    new-array v3, v2, [I
    :try_end_522
    .catch Landroid/os/RemoteException; {:try_start_51a .. :try_end_522} :catch_638

    move v6, v9

    :goto_523
    if-ge v6, v2, :cond_53f

    .line 1327
    :try_start_525
    iget-object v14, v0, Lcom/meizu/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget v14, v14, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    aput v14, v3, v6
    :try_end_531
    .catch Landroid/os/RemoteException; {:try_start_525 .. :try_end_531} :catch_534

    add-int/lit8 v6, v6, 0x1

    goto :goto_523

    :catch_534
    move/from16 v20, v5

    move-wide v14, v10

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    const/4 v10, 0x0

    move v11, v9

    goto/16 :goto_641

    .line 1329
    :cond_53f
    :try_start_53f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1330
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    move-result-object v2
    :try_end_547
    .catch Landroid/os/RemoteException; {:try_start_53f .. :try_end_547} :catch_638

    move/from16 v20, v5

    move v5, v9

    move v6, v5

    move-wide v14, v10

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    const/4 v10, 0x0

    move v11, v6

    .line 1332
    :goto_552
    :try_start_552
    array-length v9, v3

    if-ge v5, v9, :cond_641

    .line 1333
    iget-object v9, v0, Lcom/meizu/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 1334
    aget-wide v12, v2, v5

    move-object/from16 v21, v2

    iget v2, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    invoke-virtual {v9, v1, v12, v13, v2}, Lcom/meizu/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v2

    or-int v20, v20, v2

    .line 1335
    iget v2, v9, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v12, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    if-ne v2, v12, :cond_578

    .line 1336
    iget-wide v12, v9, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    add-long v18, v18, v12

    move-object/from16 v22, v3

    move v3, v6

    goto/16 :goto_62b

    .line 1337
    :cond_578
    iget-object v2, v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x190

    if-lt v2, v12, :cond_61c

    .line 1339
    iget-wide v12, v9, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J
    :try_end_582
    .catch Landroid/os/RemoteException; {:try_start_552 .. :try_end_582} :catch_641

    add-long/2addr v12, v14

    if-eqz v10, :cond_5a5

    .line 1342
    :try_start_585
    new-instance v2, Lcom/meizu/settings/applications/RunningState$MergedItem;

    iget v14, v9, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v2, v14}, Lcom/meizu/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v2, v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 1343
    iget-object v14, v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    iput-object v9, v14, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 1344
    iget v9, v2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v14, v0, Lcom/meizu/settings/applications/RunningState;->mMyUserId:I
    :try_end_596
    .catch Landroid/os/RemoteException; {:try_start_585 .. :try_end_596} :catch_61a

    if-eq v9, v14, :cond_59a

    const/4 v9, 0x1

    goto :goto_59b

    :cond_59a
    const/4 v9, 0x0

    :goto_59b
    or-int/2addr v9, v11

    .line 1345
    :try_start_59c
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59f
    .catch Landroid/os/RemoteException; {:try_start_59c .. :try_end_59f} :catch_5a2

    move-object/from16 v22, v3

    goto :goto_5c5

    :catch_5a2
    :goto_5a2
    move v11, v9

    goto/16 :goto_61a

    .line 1347
    :cond_5a5
    :try_start_5a5
    iget-object v2, v0, Lcom/meizu/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_5c7

    iget-object v2, v0, Lcom/meizu/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1348
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    if-eq v2, v9, :cond_5ba

    goto :goto_5c7

    .line 1360
    :cond_5ba
    iget-object v2, v0, Lcom/meizu/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/RunningState$MergedItem;

    move-object/from16 v22, v3

    move v9, v11

    :goto_5c5
    const/4 v3, 0x1

    goto :goto_60a

    .line 1349
    :cond_5c7
    :goto_5c7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5cc
    .catch Landroid/os/RemoteException; {:try_start_5a5 .. :try_end_5cc} :catch_61a

    const/4 v10, 0x0

    :goto_5cd
    if-ge v10, v6, :cond_5eb

    .line 1351
    :try_start_5cf
    iget-object v14, v0, Lcom/meizu/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 1352
    iget v15, v14, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    move-object/from16 v22, v3

    iget v3, v0, Lcom/meizu/settings/applications/RunningState;->mMyUserId:I

    if-eq v15, v3, :cond_5e1

    const/4 v3, 0x1

    goto :goto_5e2

    :cond_5e1
    const/4 v3, 0x0

    :goto_5e2
    or-int/2addr v11, v3

    .line 1353
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v22

    goto :goto_5cd

    :cond_5eb
    move-object/from16 v22, v3

    .line 1355
    new-instance v3, Lcom/meizu/settings/applications/RunningState$MergedItem;

    iget v10, v9, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v3, v10}, Lcom/meizu/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v3, v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 1356
    iget-object v10, v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    iput-object v9, v10, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    .line 1357
    iget v9, v3, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v10, v0, Lcom/meizu/settings/applications/RunningState;->mMyUserId:I
    :try_end_5fe
    .catch Landroid/os/RemoteException; {:try_start_5cf .. :try_end_5fe} :catch_619

    if-eq v9, v10, :cond_602

    const/4 v9, 0x1

    goto :goto_603

    :cond_602
    const/4 v9, 0x0

    :goto_603
    or-int/2addr v9, v11

    .line 1358
    :try_start_604
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_607
    .catch Landroid/os/RemoteException; {:try_start_604 .. :try_end_607} :catch_617

    move-object v10, v2

    move-object v2, v3

    goto :goto_5c5

    .line 1363
    :goto_60a
    :try_start_60a
    invoke-virtual {v2, v1, v3}, Lcom/meizu/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    move v3, v6

    .line 1364
    invoke-virtual {v2, v1}, Lcom/meizu/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_611
    .catch Landroid/os/RemoteException; {:try_start_60a .. :try_end_611} :catch_5a2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v11, v9

    move-wide v14, v12

    goto :goto_62b

    :catch_617
    move-object v10, v2

    goto :goto_5a2

    :catch_619
    move-object v10, v2

    :catch_61a
    :goto_61a
    move-wide v14, v12

    goto :goto_641

    :cond_61c
    move-object/from16 v22, v3

    move v3, v6

    .line 1366
    :try_start_61f
    iget-object v2, v9, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0xc8

    if-gt v2, v12, :cond_62b

    .line 1368
    iget-wide v12, v9, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J
    :try_end_629
    .catch Landroid/os/RemoteException; {:try_start_61f .. :try_end_629} :catch_641

    add-long v16, v16, v12

    :cond_62b
    :goto_62b
    add-int/lit8 v5, v5, 0x1

    move v6, v3

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    const/16 v12, 0xc8

    const/16 v13, 0x190

    goto/16 :goto_552

    :catch_638
    move/from16 v20, v5

    move-wide v14, v10

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    const/4 v10, 0x0

    const/4 v11, 0x0

    :catch_641
    :cond_641
    :goto_641
    move-wide/from16 v2, v16

    move-wide/from16 v12, v18

    if-nez v10, :cond_676

    .line 1376
    iget-object v5, v0, Lcom/meizu/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v7, :cond_676

    .line 1377
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_655
    if-ge v9, v7, :cond_673

    .line 1379
    iget-object v10, v0, Lcom/meizu/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 1380
    iget v6, v10, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    move-wide/from16 v16, v12

    iget v12, v0, Lcom/meizu/settings/applications/RunningState;->mMyUserId:I

    if-eq v6, v12, :cond_669

    const/4 v6, 0x1

    goto :goto_66a

    :cond_669
    const/4 v6, 0x0

    :goto_66a
    or-int/2addr v11, v6

    .line 1381
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v12, v16

    goto :goto_655

    :cond_673
    move-wide/from16 v16, v12

    goto :goto_679

    :cond_676
    move-wide/from16 v16, v12

    move-object v5, v10

    :goto_679
    if-eqz v5, :cond_6c0

    if-nez v11, :cond_67f

    move-object v9, v5

    goto :goto_6c1

    .line 1395
    :cond_67f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_689
    if-ge v10, v6, :cond_69e

    .line 1398
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 1399
    iget v12, v11, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v13, v0, Lcom/meizu/settings/applications/RunningState;->mMyUserId:I

    if-eq v12, v13, :cond_698

    goto :goto_69b

    .line 1405
    :cond_698
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_69b
    add-int/lit8 v10, v10, 0x1

    goto :goto_689

    .line 1410
    :cond_69e
    iget-object v6, v0, Lcom/meizu/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_6a5
    if-ge v11, v10, :cond_6c1

    .line 1412
    iget-object v6, v0, Lcom/meizu/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 1413
    iget v6, v12, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v13, v0, Lcom/meizu/settings/applications/RunningState;->mSequence:I

    if-ne v6, v13, :cond_6bd

    const/4 v6, 0x1

    .line 1414
    invoke-virtual {v12, v1, v6}, Lcom/meizu/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1415
    invoke-virtual {v12, v1}, Lcom/meizu/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    :cond_6bd
    add-int/lit8 v11, v11, 0x1

    goto :goto_6a5

    :cond_6c0
    const/4 v9, 0x0

    :cond_6c1
    :goto_6c1
    const/4 v10, 0x0

    .line 1421
    :goto_6c2
    iget-object v11, v0, Lcom/meizu/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_6d8

    .line 1422
    iget-object v11, v0, Lcom/meizu/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meizu/settings/applications/RunningState$MergedItem;

    invoke-virtual {v11, v1}, Lcom/meizu/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6c2

    .line 1425
    :cond_6d8
    iget-object v1, v0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1426
    :try_start_6db
    iput v7, v0, Lcom/meizu/settings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1427
    iput v8, v0, Lcom/meizu/settings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1428
    iput v4, v0, Lcom/meizu/settings/applications/RunningState;->mNumServiceProcesses:I

    .line 1429
    iput-wide v14, v0, Lcom/meizu/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1430
    iput-wide v2, v0, Lcom/meizu/settings/applications/RunningState;->mForegroundProcessMemory:J

    move-wide/from16 v2, v16

    .line 1431
    iput-wide v2, v0, Lcom/meizu/settings/applications/RunningState;->mServiceProcessMemory:J

    if-eqz v5, :cond_6f5

    .line 1433
    iput-object v5, v0, Lcom/meizu/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1434
    iput-object v9, v0, Lcom/meizu/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1435
    iget-boolean v2, v0, Lcom/meizu/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    if-eqz v2, :cond_6f5

    const/16 v20, 0x1

    .line 1439
    :cond_6f5
    iget-boolean v2, v0, Lcom/meizu/settings/applications/RunningState;->mHaveData:Z

    if-nez v2, :cond_701

    const/4 v2, 0x1

    .line 1440
    iput-boolean v2, v0, Lcom/meizu/settings/applications/RunningState;->mHaveData:Z

    .line 1441
    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1443
    :cond_701
    monitor-exit v1

    return v20

    :catchall_703
    move-exception v0

    monitor-exit v1
    :try_end_705
    .catchall {:try_start_6db .. :try_end_705} :catchall_703

    throw v0
.end method


# virtual methods
.method public emptyPackageIconRequest()V
    .registers 3

    const-string v0, "RunningState:emptyPackageIconRequest"

    .line 1457
    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    .line 1458
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1459
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public emptyRequestIcon()V
    .registers 3

    const-string v0, "RunningState:emptyRequestIcon"

    .line 837
    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 839
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .line 1482
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1483
    :try_start_3
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1484
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .line 1476
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1477
    :try_start_3
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 1478
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method hasData()Z
    .registers 2

    .line 812
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_3
    iget-boolean p0, p0, Lcom/meizu/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 814
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method pause()V
    .registers 3

    .line 829
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 830
    :try_start_4
    iput-boolean v1, p0, Lcom/meizu/settings/applications/RunningState;->mResumed:Z

    const/4 v1, 0x0

    .line 831
    iput-object v1, p0, Lcom/meizu/settings/applications/RunningState;->mRefreshUiListener:Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;

    .line 832
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 833
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method resume(Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;)V
    .registers 5

    .line 786
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 787
    :try_start_4
    iput-boolean v1, p0, Lcom/meizu/settings/applications/RunningState;->mResumed:Z

    .line 788
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mRefreshUiListener:Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;

    .line 791
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/meizu/settings/applications/InterestingConfigChanges;

    iget-object v2, p0, Lcom/meizu/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/meizu/settings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result p1

    const/4 v2, 0x2

    if-eqz p1, :cond_29

    const/4 p1, 0x0

    .line 792
    iput-boolean p1, p0, Lcom/meizu/settings/applications/RunningState;->mHaveData:Z

    .line 793
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 795
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 797
    :cond_29
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_36

    .line 798
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 800
    :cond_36
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 801
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_4 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method setWatchingBackgroundItems(Z)V
    .registers 3

    .line 1470
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1471
    :try_start_3
    iput-boolean p1, p0, Lcom/meizu/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    .line 1472
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public startGetPackageIcon(Ljava/lang/String;Z)V
    .registers 5

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunningState:startGetPackageIcon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " refresh = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1452
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    xor-int/lit8 p1, p2, 0x1

    .line 1453
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1454
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method updateNow()V
    .registers 4

    .line 805
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_3
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundHandler:Lcom/meizu/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 808
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method waitForData()V
    .registers 5

    .line 818
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :catch_3
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lcom/meizu/settings/applications/RunningState;->mHaveData:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-nez v1, :cond_f

    .line 821
    :try_start_7
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_e} :catch_3
    .catchall {:try_start_7 .. :try_end_e} :catchall_11

    goto :goto_3

    .line 825
    :cond_f
    :try_start_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_11

    throw p0
.end method
