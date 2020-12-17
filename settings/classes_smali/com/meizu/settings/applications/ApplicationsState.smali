.class public Lcom/meizu/settings/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/ApplicationsState$AppFilter;,
        Lcom/meizu/settings/applications/ApplicationsState$AppEntry;,
        Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;,
        Lcom/meizu/settings/applications/ApplicationsState$Callbacks;,
        Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;,
        Lcom/meizu/settings/applications/ApplicationsState$MainHandler;,
        Lcom/meizu/settings/applications/ApplicationsState$Session;,
        Lcom/meizu/settings/applications/ApplicationsState$NotificationClickReceiver;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_ALL_ENABLED:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field public static final FILTER_ALL_ENABLED_DISABLED:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DISABLED:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field public static final FILTER_EVERYTHING:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PERSONAL:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field public static final FILTER_THIRD_PARTY:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITH_DOMAIN_URLS:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WORK:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static mInstallingPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mNotifyCount:I

.field static mNotifyMessage:Ljava/lang/StringBuffer;

.field static sInstance:Lcom/meizu/settings/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final MZNOTIFICATION_ID:I

.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminRetrieveFlags:I

.field private mAppCloneInit:Lcom/meizu/settings/appclone/AppCloneInit;

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurComputingSizeUserId:I

.field mCurComputingSizeUuid:Ljava/util/UUID;

.field mCurId:J

.field mCurSelectProfileId:I

.field mCurrentUserId:I

.field final mEntriesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field final mInterestingConfigChanges:Lcom/meizu/settings/applications/InterestingConfigChanges;

.field final mIpm:Landroid/content/pm/IPackageManager;

.field mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

.field mNotificationChannel:Landroid/app/NotificationChannel;

.field private mNotificationClickReceiver:Lcom/meizu/settings/applications/ApplicationsState$NotificationClickReceiver;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mPackageIntentReceiver:Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field private mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

.field final mThread:Landroid/os/HandlerThread;

.field final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 93
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->mInstallingPackages:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyMessage:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 167
    sput v0, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyCount:I

    .line 1786
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 1811
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1821
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1831
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1849
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 1867
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 1885
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_WORK:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 1906
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 1941
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_THIRD_PARTY:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 1971
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$10;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$10;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_DISABLED:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 1986
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$11;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$11;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_ALL_ENABLED_DISABLED:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 2005
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$12;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$12;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 2020
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$13;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$13;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 2035
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$14;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ApplicationsState$14;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .registers 10

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Lcom/meizu/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/meizu/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/meizu/settings/applications/InterestingConfigChanges;

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    const-wide/16 v0, 0x1

    .line 144
    iput-wide v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mCurId:J

    .line 149
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iput v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mCurSelectProfileId:I

    .line 150
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iput v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mCurrentUserId:I

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 157
    new-instance v2, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;-><init>(Lcom/meizu/settings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    const/16 v2, 0x64

    .line 163
    iput v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->MZNOTIFICATION_ID:I

    .line 186
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 187
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 188
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    iput-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    .line 189
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const-string/jumbo v2, "user"

    .line 190
    invoke-virtual {p1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    .line 191
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_86
    if-ge v4, v3, :cond_97

    aget v5, v2, v4

    .line 192
    iget-object v6, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    .line 194
    :cond_97
    new-instance v2, Landroid/os/HandlerThread;

    const/16 v3, 0xa

    const-string v4, "ApplicationsState.Loader"

    invoke-direct {v2, v4, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 196
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v2, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/meizu/settings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    const v2, 0xa200

    .line 200
    iput v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mAdminRetrieveFlags:I

    const v2, 0x8200

    .line 203
    iput v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mRetrieveFlags:I

    .line 206
    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneInit;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneInit;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mAppCloneInit:Lcom/meizu/settings/appclone/AppCloneInit;

    .line 223
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    .line 225
    :try_start_c7
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_cc
    .catch Ljava/lang/InterruptedException; {:try_start_c7 .. :try_end_cc} :catch_cf
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_cd

    goto :goto_cf

    :catchall_cd
    move-exception p0

    goto :goto_d1

    .line 228
    :catch_cf
    :goto_cf
    :try_start_cf
    monitor-exit p1

    return-void

    :goto_d1
    monitor-exit p1
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_cd

    throw p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/applications/ApplicationsState;I)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState;->addUser(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/settings/applications/ApplicationsState;I)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState;->removeUser(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/applications/ApplicationsState;Ljava/lang/String;)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState;->sendInstalledNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/applications/ApplicationsState;)Landroid/app/usage/StorageStatsManager;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/applications/ApplicationsState;J)Ljava/lang/String;
    .registers 3

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/applications/ApplicationsState;)Ljava/util/List;
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/meizu/settings/applications/ApplicationsState;->getUnstalledSystemAppInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private addUser(I)V
    .registers 5

    .line 659
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    .line 660
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 661
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 662
    :try_start_13
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 663
    iget-boolean p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mResumed:Z

    if-eqz p1, :cond_27

    .line 667
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState;->doPauseLocked()V

    .line 668
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 670
    :cond_27
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_35

    .line 671
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 673
    :cond_35
    monitor-exit v0

    goto :goto_3a

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_13 .. :try_end_39} :catchall_37

    throw p0

    :cond_3a
    :goto_3a
    return-void
.end method

.method private clearEntries()V
    .registers 3

    const/4 v0, 0x0

    .line 418
    :goto_1
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 419
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    :cond_17
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    const/4 v0, 0x0

    .line 477
    :goto_1
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 478
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 479
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 480
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_22

    return-object v1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method private getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;
    .registers 12

    .line 694
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 695
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up entry of pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApplicationsState"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_79

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating AppEntry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/meizu/settings/applications/ApplicationsState;->mCurId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mCurId:J

    const/4 v9, 0x0

    move-object v4, v1

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;JZ)V

    .line 701
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v1, v2, v3}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->access$100(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 703
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 705
    :cond_79
    iget-object p0, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq p0, p1, :cond_7f

    .line 706
    iput-object p1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    :cond_7f
    :goto_7f
    return-object v1
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/meizu/settings/applications/ApplicationsState;
    .registers 3

    .line 99
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    sget-object v1, Lcom/meizu/settings/applications/ApplicationsState;->sInstance:Lcom/meizu/settings/applications/ApplicationsState;

    if-nez v1, :cond_e

    .line 101
    new-instance v1, Lcom/meizu/settings/applications/ApplicationsState;

    invoke-direct {v1, p0}, Lcom/meizu/settings/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/meizu/settings/applications/ApplicationsState;->sInstance:Lcom/meizu/settings/applications/ApplicationsState;

    .line 103
    :cond_e
    sget-object p0, Lcom/meizu/settings/applications/ApplicationsState;->sInstance:Lcom/meizu/settings/applications/ApplicationsState;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 104
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    .line 733
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/meizu/settings/utils/MzUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .registers 6

    if-eqz p1, :cond_11

    .line 724
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide p0, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, p0

    return-wide v0

    :cond_11
    const-wide/16 p0, -0x2

    return-wide p0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .registers 4

    if-eqz p1, :cond_8

    .line 715
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide p0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, p0

    return-wide v0

    :cond_8
    const-wide/16 p0, -0x2

    return-wide p0
.end method

.method private getUnstalledSystemAppInfo()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 756
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 760
    :cond_9
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    .line 761
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 762
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeInstance()V
    .registers 1

    const/4 v0, 0x0

    .line 109
    sput-object v0, Lcom/meizu/settings/applications/ApplicationsState;->sInstance:Lcom/meizu/settings/applications/ApplicationsState;

    return-void
.end method

.method private removeUser(I)V
    .registers 6

    .line 678
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 679
    :try_start_3
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_41

    .line 681
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 682
    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 683
    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_15

    .line 685
    :cond_2e
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 686
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_41

    .line 687
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 690
    :cond_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method private sendInstalledNotification(Ljava/lang/String;)V
    .registers 11

    .line 382
    sget v0, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_11

    .line 383
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyMessage:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    sget v0, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyCount:I

    add-int/2addr v0, v2

    sput v0, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyCount:I

    goto :goto_34

    .line 386
    :cond_11
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyMessage:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_34

    .line 388
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyMessage:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    sget v0, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyCount:I

    add-int/2addr v0, v2

    sput v0, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyCount:I

    .line 392
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_44

    .line 393
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    .line 394
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mNotificationManager:Landroid/app/NotificationManager;

    .line 396
    :cond_44
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mNotificationChannel:Landroid/app/NotificationChannel;

    const-string v3, "ApplicationsState"

    if-nez v0, :cond_55

    .line 397
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v4, 0x3

    invoke-direct {v0, v3, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 399
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 401
    :cond_55
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.meizu.uninstall.ACTION_DELETE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v1, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 403
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x7f080595

    .line 405
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    const v8, 0x7f120f92

    .line 406
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 407
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyCount:I

    if-le p1, v2, :cond_b1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_b3

    :cond_b1
    const-string p1, ""

    :goto_b3
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget-object v2, Lcom/meizu/settings/applications/ApplicationsState;->mNotifyMessage:Ljava/lang/StringBuffer;

    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 410
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 411
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const-string/jumbo p1, "sendInstalledNotification  "

    .line 413
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p1, 0x64

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;I)V
    .registers 8

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_ed

    :try_start_3
    const-string v1, "ApplicationsState"

    const-string v2, "addPackage acquired lock"

    .line 573
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ApplicationsState"

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-boolean v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_2d

    const-string p0, "ApplicationsState"

    const-string p1, "addPackage release lock: not resumed"

    .line 579
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    monitor-exit v0

    return-void

    .line 583
    :cond_2d
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_a7

    const-string v2, "ApplicationsState"

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package already exists!  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " idx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz v2, :cond_7d

    const-string v1, "ApplicationsState"

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unInstalledSystemPackage  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " installed,  remove package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    goto :goto_a7

    :cond_7d
    const-string p1, "ApplicationsState"

    const-string p2, "addPackage release lock: already exists"

    .line 591
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ApplicationsState"

    .line 592
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package  "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " already exists"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    monitor-exit v0

    return-void

    .line 596
    :cond_a7
    :goto_a7
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    iget v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_b3

    .line 600
    monitor-exit v0

    return-void

    .line 602
    :cond_b3
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p2, :cond_c1

    .line 603
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x3

    if-eq p2, v1, :cond_be

    .line 605
    monitor-exit v0

    return-void

    :cond_be
    const/4 p2, 0x1

    .line 607
    iput-boolean p2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 609
    :cond_c1
    iget-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_d4

    .line 611
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 613
    :cond_d4
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_e1

    .line 614
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e1
    const-string p0, "ApplicationsState"

    const-string p1, "addPackage releasing lock"

    .line 616
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    monitor-exit v0

    goto :goto_ed

    :catchall_ea
    move-exception p0

    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_3 .. :try_end_ec} :catchall_ea

    :try_start_ec
    throw p0
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_ed} :catch_ed

    :catch_ed
    :goto_ed
    return-void
.end method

.method doPauseIfNeededLocked()V
    .registers 3

    .line 429
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 432
    :goto_6
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 433
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/meizu/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_1b

    return-void

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 437
    :cond_1e
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState;->doPauseLocked()V

    return-void
.end method

.method doPauseLocked()V
    .registers 4

    const/4 v0, 0x0

    .line 441
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mResumed:Z

    .line 442
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 443
    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 444
    iput-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;

    .line 447
    :cond_d
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mNotificationClickReceiver:Lcom/meizu/settings/applications/ApplicationsState$NotificationClickReceiver;

    if-eqz v0, :cond_18

    .line 448
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 449
    iput-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mNotificationClickReceiver:Lcom/meizu/settings/applications/ApplicationsState$NotificationClickReceiver;

    :cond_18
    return-void
.end method

.method doResumeIfNeededLocked()V
    .registers 8

    .line 248
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mResumed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mResumed:Z

    .line 252
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 253
    new-instance v1, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v1, p0, v2}, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/ApplicationsState$1;)V

    iput-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;

    .line 254
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v1}, Lcom/meizu/settings/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 256
    :cond_19
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    if-nez v1, :cond_25

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    goto :goto_28

    .line 259
    :cond_25
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 262
    :goto_28
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 264
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/16 v5, 0x3e7

    if-ne v4, v5, :cond_51

    const-string v3, "ApplicationsState"

    const-string/jumbo v4, "skip app clone profile"

    .line 265
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 271
    :cond_51
    :try_start_51
    iget-object v5, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_65

    .line 272
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    :cond_65
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    iget v5, p0, Lcom/meizu/settings/applications/ApplicationsState;->mRetrieveFlags:I

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 276
    invoke-interface {v4, v5, v3}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 281
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_78} :catch_36

    goto :goto_36

    .line 287
    :cond_79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mApplications:size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "test"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mNotificationClickReceiver:Lcom/meizu/settings/applications/ApplicationsState$NotificationClickReceiver;

    if-nez v1, :cond_b2

    .line 292
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.meizu.uninstall.ACTION_DELETE"

    .line 293
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    new-instance v3, Lcom/meizu/settings/applications/ApplicationsState$NotificationClickReceiver;

    invoke-direct {v3, p0}, Lcom/meizu/settings/applications/ApplicationsState$NotificationClickReceiver;-><init>(Lcom/meizu/settings/applications/ApplicationsState;)V

    iput-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState;->mNotificationClickReceiver:Lcom/meizu/settings/applications/ApplicationsState$NotificationClickReceiver;

    .line 295
    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState;->mNotificationClickReceiver:Lcom/meizu/settings/applications/ApplicationsState$NotificationClickReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    :cond_b2
    invoke-direct {p0}, Lcom/meizu/settings/applications/ApplicationsState;->getUnstalledSystemAppInfo()Ljava/util/List;

    move-result-object v1

    .line 300
    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 304
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/meizu/settings/applications/InterestingConfigChanges;

    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/settings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_ce

    .line 307
    invoke-direct {p0}, Lcom/meizu/settings/applications/ApplicationsState;->clearEntries()V

    goto :goto_e4

    :cond_ce
    move v1, v3

    .line 309
    :goto_cf
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_e4

    .line 310
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iput-boolean v0, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_cf

    .line 314
    :cond_e4
    :goto_e4
    iput-boolean v3, p0, Lcom/meizu/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 315
    :goto_e6
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_145

    .line 316
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 319
    iget-boolean v4, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_109

    .line 320
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_107

    .line 321
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_143

    .line 325
    :cond_107
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 327
    :cond_109
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 328
    iget-object v5, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_143

    .line 330
    iput-object v1, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 332
    iget-object v5, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    if-eqz v5, :cond_133

    .line 333
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13c

    .line 334
    :cond_133
    new-instance v5, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    .line 338
    :cond_13c
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/meizu/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v4, v1, v5}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->access$100(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    :cond_143
    :goto_143
    add-int/2addr v3, v0

    goto :goto_e6

    .line 341
    :cond_145
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_156

    .line 343
    invoke-direct {p0}, Lcom/meizu/settings/applications/ApplicationsState;->clearEntries()V

    .line 345
    :cond_156
    iput-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_166

    .line 347
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_166
    return-void
.end method

.method emptyRequestIcon()V
    .registers 3

    const-string v0, "ApplicationsState:emptyRequestIcon"

    .line 509
    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public ensureIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)V
    .registers 3

    .line 488
    iget-object v0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    return-void

    .line 491
    :cond_5
    monitor-enter p1

    .line 492
    :try_start_6
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, p0}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 493
    monitor-exit p1

    return-void

    :catchall_f
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public exitBackgroundThread()V
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_d

    .line 114
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 116
    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    :cond_d
    return-void
.end method

.method public getBackgroundLooper()Landroid/os/Looper;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getEntry(Ljava/lang/String;I)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;
    .registers 7

    const-string v0, "ApplicationsState"

    const-string v1, "getEntry about to acquire lock..."

    .line 454
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 456
    :try_start_a
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_39

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/ApplicationsState;->getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_42

    if-nez v2, :cond_33

    .line 461
    :try_start_20
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28
    .catchall {:try_start_20 .. :try_end_27} :catchall_42

    goto :goto_33

    :catch_28
    move-exception p0

    :try_start_29
    const-string p1, "ApplicationsState"

    const-string p2, "getEntry couldn\'t reach PackageManager"

    .line 463
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 464
    monitor-exit v0

    return-object p0

    :cond_33
    :goto_33
    if-eqz v2, :cond_39

    .line 468
    invoke-direct {p0, v2}, Lcom/meizu/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    :cond_39
    const-string p0, "ApplicationsState"

    const-string p1, "...getEntry releasing lock"

    .line 471
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    monitor-exit v0

    return-object v1

    :catchall_42
    move-exception p0

    .line 473
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_42

    throw p0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    .registers 6

    .line 560
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_26

    .line 561
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 562
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 563
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_23

    return v0

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_26
    const/4 p0, -0x1

    return p0
.end method

.method public invalidatePackage(Ljava/lang/String;I)V
    .registers 3

    .line 654
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 655
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public newSession(Lcom/meizu/settings/applications/ApplicationsState$Callbacks;)Lcom/meizu/settings/applications/ApplicationsState$Session;
    .registers 3

    .line 240
    new-instance v0, Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/applications/ApplicationsState$Session;-><init>(Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/ApplicationsState$Callbacks;)V

    .line 241
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    .line 242
    :try_start_8
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    monitor-exit p1

    return-object v0

    :catchall_f
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method

.method rebuildActiveSessions()V
    .registers 5

    .line 739
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 740
    :try_start_3
    iget-boolean v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v1, :cond_9

    .line 741
    monitor-exit v0

    return-void

    .line 743
    :cond_9
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    .line 744
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_12
    const/4 v1, 0x0

    .line 746
    :goto_13
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 747
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$Session;

    .line 748
    iget-boolean v3, v2, Lcom/meizu/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v3, :cond_2c

    .line 749
    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 752
    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public removePackage(Ljava/lang/String;I)V
    .registers 9

    .line 623
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string v1, "ApplicationsState"

    const-string/jumbo v2, "removePackage acquired lock"

    .line 624
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ApplicationsState"

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removePackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v1, :cond_a4

    .line 628
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    const-string v3, "ApplicationsState"

    .line 629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_67

    .line 631
    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 634
    :cond_67
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 635
    iget-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 636
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p1, :cond_96

    const/4 p1, 0x0

    .line 637
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 638
    :goto_7b
    iget-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_96

    .line 639
    iget-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    iget-boolean p2, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p2, :cond_93

    const/4 p1, 0x1

    .line 640
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    goto :goto_96

    :cond_93
    add-int/lit8 p1, p1, 0x1

    goto :goto_7b

    .line 645
    :cond_96
    :goto_96
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_a4

    .line 646
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a4
    const-string p0, "ApplicationsState"

    const-string/jumbo p1, "removePackage releasing lock"

    .line 649
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    monitor-exit v0

    return-void

    :catchall_ae
    move-exception p0

    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_3 .. :try_end_b0} :catchall_ae

    throw p0
.end method

.method public requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V
    .registers 5

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationsState:requestIcon pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " update = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    .line 500
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 501
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 502
    iput p1, v0, Landroid/os/Message;->what:I

    xor-int/lit8 p1, p2, 0x1

    .line 504
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 505
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestSize(Ljava/lang/String;I)V
    .registers 7

    const-string v0, "ApplicationsState"

    const-string/jumbo v1, "requestSize about to acquire lock..."

    .line 516
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 518
    :try_start_b
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_72

    if-eqz v1, :cond_69

    .line 522
    :try_start_1b
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 524
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 522
    invoke-virtual {v2, v1, p1, v3}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v1

    .line 525
    new-instance v2, Landroid/content/pm/PackageStats;

    invoke-direct {v2, p1, p2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 527
    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/content/pm/PackageStats;->codeSize:J

    .line 528
    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/content/pm/PackageStats;->dataSize:J

    .line 529
    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_40} :catch_49
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_40} :catch_49
    .catchall {:try_start_1b .. :try_end_40} :catchall_72

    .line 531
    :try_start_40
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 p2, 0x1

    invoke-virtual {p1, v2, p2}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_48} :catch_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_48} :catch_49
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_48} :catch_49
    .catchall {:try_start_40 .. :try_end_48} :catchall_72

    goto :goto_69

    :catch_49
    move-exception p1

    :try_start_4a
    const-string p2, "ApplicationsState"

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_4a .. :try_end_60} :catchall_72

    .line 537
    :try_start_60
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_69} :catch_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_72

    :catch_69
    :cond_69
    :goto_69
    :try_start_69
    const-string p0, "ApplicationsState"

    const-string p1, "...requestSize releasing lock"

    .line 542
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    monitor-exit v0

    return-void

    :catchall_72
    move-exception p0

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_69 .. :try_end_74} :catchall_72

    throw p0
.end method

.method public setCurrentProfile(I)V
    .registers 2

    .line 236
    iput p1, p0, Lcom/meizu/settings/applications/ApplicationsState;->mCurSelectProfileId:I

    return-void
.end method
