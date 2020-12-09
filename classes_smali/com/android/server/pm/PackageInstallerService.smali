.class public Lcom/android/server/pm/PackageInstallerService;
.super Landroid/content/pm/IPackageInstaller$Stub;
.source "PackageInstallerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageSessionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerService$InternalCallback;,
        Lcom/android/server/pm/PackageInstallerService$Callbacks;,
        Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;,
        Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final MAX_ACTIVE_SESSIONS:J = 0x400L

.field private static final MAX_AGE_MILLIS:J = 0xf731400L

.field private static final MAX_HISTORICAL_SESSIONS:J = 0x100000L

.field private static final MAX_TIME_SINCE_UPDATE_MILLIS:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static final TAG_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final sStageFilter:Ljava/io/FilenameFilter;


# instance fields
.field private final mAllocatedSessions:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation
.end field

.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private final mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalSessions:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation
.end field

.field private final mInstallHandler:Landroid/os/Handler;

.field private final mInstallThread:Landroid/os/HandlerThread;

.field private final mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private final mLegacySessions:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation
.end field

.field private volatile mOkToSendBroadcasts:Z

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRandom:Ljava/util/Random;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionsDir:Ljava/io/File;

.field private final mSessionsFile:Landroid/util/AtomicFile;

.field private final mStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 185
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;)V
    .registers 7

    .line 192
    invoke-direct {p0}, Landroid/content/pm/IPackageInstaller$Stub;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    .line 159
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 165
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    .line 168
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 178
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 182
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    .line 193
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 195
    const-class p2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 197
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "PackageInstaller"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 198
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 200
    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    .line 202
    new-instance p2, Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/server/pm/PackageInstallerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 204
    new-instance p2, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    .line 205
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "install_sessions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v1, "package-session"

    invoke-direct {p2, v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    .line 207
    new-instance p2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "install_sessions"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 208
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 210
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 212
    new-instance p2, Lcom/android/server/pm/StagingManager;

    invoke-direct {p2, p0, p3, p1}, Lcom/android/server/pm/StagingManager;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/ApexManager;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackageInstallerService;)V
    .registers 1

    .line 112
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/StagingManager;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;
    .registers 2

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .registers 4

    .line 112
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/pm/PackageInstallerService;)V
    .registers 1

    .line 112
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/PackageInstallerService;)Z
    .registers 1

    .line 112
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return p0
.end method

.method private addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 416
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 418
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result p1

    .line 422
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 423
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 422
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 424
    return-void
.end method

.method private allocateSessionIdLocked()I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 716
    const/4 v0, 0x0

    move v1, v0

    .line 719
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    const v3, 0x7ffffffe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 720
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 721
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 722
    return v2

    .line 724
    :cond_1b
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    if-ge v1, v3, :cond_23

    move v1, v2

    goto :goto_2

    .line 726
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to allocate session ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildAppIconFile(I)Ljava/io/File;
    .registers 6

    .line 455
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_icon."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildExternalStageCid(I)Ljava/lang/String;
    .registers 4

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "smdl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;
    .registers 6

    .line 739
    iget-boolean v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_22

    .line 740
    iget-object p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {p2}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 741
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "session_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 743
    :cond_22
    iget-object p2, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private static buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .registers 8

    .line 1081
    nop

    .line 1083
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-interface {v1, p2, v2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    .line 1086
    goto :goto_f

    .line 1085
    :catch_d
    move-exception p3

    move-object p3, v0

    .line 1087
    :goto_f
    if-eqz p3, :cond_7b

    iget-object v1, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_16

    goto :goto_7b

    .line 1091
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 1092
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1093
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1094
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1096
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1092
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1098
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 1099
    new-instance p3, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {p3, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x108033b

    .line 1100
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 1101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x106001c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1103
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1104
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1105
    invoke-virtual {p2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1106
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 1107
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 1099
    return-object p0

    .line 1088
    :cond_7b
    :goto_7b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Notification not built for package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInstaller"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    return-object v0
.end method

.method private buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;
    .registers 6

    .line 734
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 735
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vmdl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 481
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "createSession"

    move v2, v11

    move/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 484
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "no_install_apps"

    move/from16 v9, p3

    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26d

    .line 488
    const/16 v1, 0x7d0

    const/4 v2, 0x2

    if-eq v11, v1, :cond_6e

    if-nez v11, :cond_2b

    move-object/from16 v10, p2

    goto :goto_70

    .line 494
    :cond_2b
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3d

    .line 496
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v10, p2

    invoke-virtual {v1, v11, v10}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    goto :goto_3f

    .line 494
    :cond_3d
    move-object/from16 v10, p2

    .line 499
    :goto_3f
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 500
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 501
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 502
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v1, v2

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 503
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_76

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 504
    invoke-virtual {v1, v11}, Lcom/android/server/pm/PackageManagerService;->isCallerVerifier(I)Z

    move-result v1

    if-nez v1, :cond_76

    .line 505
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v3, -0x10001

    and-int/2addr v1, v3

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_76

    .line 488
    :cond_6e
    move-object/from16 v10, p2

    .line 489
    :goto_70
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 509
    :cond_76
    :goto_76
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_90

    invoke-direct {v0, v11}, Lcom/android/server/pm/PackageInstallerService;->isDowngradeAllowedForCaller(I)Z

    move-result v1

    if-eqz v1, :cond_81

    goto :goto_90

    .line 512
    :cond_81
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v3, -0x100001

    and-int/2addr v1, v3

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 513
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_97

    .line 510
    :cond_90
    :goto_90
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x100000

    or-int/2addr v1, v3

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 516
    :goto_97
    const/16 v1, 0x3e8

    if-eq v11, v1, :cond_a3

    .line 518
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v3, -0x80001

    and-int/2addr v1, v3

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 521
    :cond_a3
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    const/4 v3, 0x1

    if-eqz v1, :cond_ad

    move v1, v3

    goto :goto_ae

    :cond_ad
    const/4 v1, 0x0

    .line 522
    :goto_ae
    iget-boolean v4, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v4, :cond_b4

    if-eqz v1, :cond_bd

    .line 523
    :cond_b4
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INSTALL_PACKAGES"

    const-string v6, "PackageInstaller"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_bd
    if-eqz v1, :cond_dc

    .line 527
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 531
    iget-boolean v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_cc

    goto :goto_dc

    .line 532
    :cond_cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APEX files can only be installed as part of a staged session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This device doesn\'t support the installation of APEX files"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_dc
    :goto_dc
    iget-boolean v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_186

    .line 539
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_fa

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 540
    const-string v4, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_f2

    goto :goto_fa

    .line 542
    :cond_f2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to use the PackageManager.INSTALL_GRANT_RUNTIME_PERMISSIONS flag"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_fa
    :goto_fa
    iget-object v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_126

    .line 549
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 551
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    .line 552
    iget-object v4, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v1, 0x2

    if-gt v4, v5, :cond_11e

    iget-object v4, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 553
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v5, :cond_126

    .line 554
    :cond_11e
    iget-object v4, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-static {v4, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 559
    :cond_126
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-eq v1, v3, :cond_146

    if-ne v1, v2, :cond_12d

    goto :goto_146

    .line 564
    :cond_12d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid install mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_146
    :goto_146
    nop

    .line 569
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_15e

    .line 570
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v15}, Lcom/android/internal/content/PackageHelper;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v1

    if-eqz v1, :cond_156

    goto :goto_186

    .line 571
    :cond_156
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No suitable internal storage available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_15e
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_16b

    .line 576
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_186

    .line 578
    :cond_16b
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 582
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 584
    :try_start_175
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v15}, Lcom/android/internal/content/PackageHelper;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;
    :try_end_17d
    .catchall {:try_start_175 .. :try_end_17d} :catchall_181

    .line 586
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    goto :goto_186

    .line 586
    :catchall_181
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 593
    :cond_186
    :goto_186
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 595
    :try_start_189
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-static {v2, v11}, Lcom/android/server/pm/PackageInstallerService;->getSessionCount(Landroid/util/SparseArray;I)I

    move-result v2

    .line 596
    int-to-long v2, v2

    const-wide/16 v4, 0x400

    cmp-long v2, v2, v4

    if-gez v2, :cond_253

    .line 600
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 601
    int-to-long v2, v2

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-gez v2, :cond_23c

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v13

    .line 607
    monitor-exit v1
    :try_end_1a9
    .catchall {:try_start_189 .. :try_end_1a9} :catchall_26a

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 611
    nop

    .line 612
    nop

    .line 613
    iget-boolean v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1cc

    .line 614
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1c3

    .line 615
    invoke-direct {v0, v13, v15}, Lcom/android/server/pm/PackageInstallerService;->buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;

    move-result-object v1

    move-object/from16 v16, v1

    move-object/from16 v29, v2

    goto :goto_1d0

    .line 617
    :cond_1c3
    invoke-direct {v0, v13}, Lcom/android/server/pm/PackageInstallerService;->buildExternalStageCid(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v29, v1

    move-object/from16 v16, v2

    goto :goto_1d0

    .line 613
    :cond_1cc
    move-object/from16 v16, v2

    move-object/from16 v29, v16

    .line 620
    :goto_1d0
    new-instance v14, Lcom/android/server/pm/PackageInstallerSession;

    move-object v1, v14

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 621
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, ""

    move-object/from16 v5, p0

    move v8, v13

    move/from16 v9, p3

    move-object/from16 v10, p2

    move-object/from16 v12, p1

    move/from16 v30, v13

    move-object/from16 v31, v14

    move-wide/from16 v13, v27

    move-object/from16 v15, v16

    move-object/from16 v16, v29

    invoke-direct/range {v1 .. v26}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZZ[IIZZZILjava/lang/String;)V

    .line 626
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 627
    :try_start_20e
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 628
    monitor-exit v2
    :try_end_218
    .catchall {:try_start_20e .. :try_end_218} :catchall_239

    .line 629
    move-object/from16 v1, p1

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_223

    .line 630
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v1, v4}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 633
    :cond_223
    iget-object v1, v4, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_235

    .line 634
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget v2, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v4, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->access$200(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    .line 636
    :cond_235
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V

    .line 637
    return v3

    .line 628
    :catchall_239
    move-exception v0

    :try_start_23a
    monitor-exit v2
    :try_end_23b
    .catchall {:try_start_23a .. :try_end_23b} :catchall_239

    throw v0

    .line 602
    :cond_23c
    :try_start_23c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many historical sessions for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_253
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many active sessions for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :catchall_26a
    move-exception v0

    monitor-exit v1
    :try_end_26c
    .catchall {:try_start_23c .. :try_end_26c} :catchall_26a

    throw v0

    .line 485
    :cond_26d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "User restriction prevents installing"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSessionCount(Landroid/util/SparseArray;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;I)I"
        }
    .end annotation

    .line 922
    nop

    .line 923
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 924
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_1a

    .line 925
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 926
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v3

    if-ne v3, p1, :cond_17

    .line 927
    add-int/lit8 v2, v2, 0x1

    .line 924
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 930
    :cond_1a
    return v2
.end method

.method private getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 730
    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 4

    .line 934
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 935
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 936
    return v1

    .line 938
    :cond_8
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result p1

    if-ne v0, p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private isDowngradeAllowedForCaller(I)Z
    .registers 3

    .line 641
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_d

    if-eqz p1, :cond_d

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method public static isStageName(Ljava/lang/String;)Z
    .registers 6

    .line 311
    const-string/jumbo v0, "vmdl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ".tmp"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v3

    .line 312
    :goto_16
    const-string/jumbo v4, "smdl"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    move v1, v3

    .line 313
    :goto_28
    const-string/jumbo v4, "smdl2tmp"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    .line 314
    if-nez v0, :cond_37

    if-nez v1, :cond_37

    if-eqz p0, :cond_36

    goto :goto_37

    :cond_36
    move v2, v3

    :cond_37
    :goto_37
    return v2
.end method

.method static synthetic lambda$registerCallback$0(II)Z
    .registers 2

    .line 898
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static varargs newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroid/util/ArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 1111
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1112
    if-eqz p0, :cond_e

    .line 1113
    array-length v1, p0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 1114
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1116
    :cond_e
    return-object v0
.end method

.method private openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 705
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 706
    if-eqz v1, :cond_18

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 709
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    .line 710
    monitor-exit v0

    return-object v1

    .line 707
    :cond_18
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller has no access to session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method static prepareStageDir(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 752
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 753
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_16} :catch_35

    .line 757
    nop

    .line 759
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 762
    return-void

    .line 760
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restorecon session dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :catch_35
    move-exception v0

    .line 756
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare session dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 748
    :cond_4d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session dir already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readSessionsLocked()V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 345
    const-string v0, "PackageInstaller"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 347
    nop

    .line 349
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_a
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 350
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 351
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 354
    :cond_1d
    :goto_1d
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v12, 0x1

    if-eq v3, v12, :cond_bf

    .line 355
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1d

    .line 356
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 357
    const-string/jumbo v4, "session"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_32} :catch_be
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_32} :catch_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_32} :catch_b3
    .catchall {:try_start_a .. :try_end_32} :catchall_b1

    if-eqz v3, :cond_af

    .line 360
    :try_start_34
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 361
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 360
    move-object v3, v11

    move-object v10, p0

    invoke-static/range {v3 .. v10}, Lcom/android/server/pm/PackageInstallerSession;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4a} :catch_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_4a} :catch_be
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4a} :catch_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_4a} :catch_b3
    .catchall {:try_start_34 .. :try_end_4a} :catchall_b1

    .line 366
    nop

    .line 368
    :try_start_4b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long/2addr v4, v6

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getUpdatedMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 372
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 373
    const-wide/32 v4, 0x240c8400

    cmp-long v4, v6, v4

    if-ltz v4, :cond_70

    .line 374
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 375
    move v4, v1

    goto :goto_92

    .line 377
    :cond_70
    move v4, v12

    goto :goto_92

    .line 379
    :cond_72
    const-wide/32 v6, 0xf731400

    cmp-long v4, v4, v6

    if-ltz v4, :cond_91

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Abandoning old session created at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    move v4, v1

    goto :goto_92

    .line 384
    :cond_91
    move v4, v12

    .line 387
    :goto_92
    if-eqz v4, :cond_9c

    .line 388
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v5, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9f

    .line 393
    :cond_9c
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 395
    :goto_9f
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v3, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_af

    .line 363
    :catch_a7
    move-exception v3

    .line 364
    const-string v4, "Could not read session"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ad
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_ad} :catch_be
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_ad} :catch_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_ad} :catch_b3
    .catchall {:try_start_4b .. :try_end_ad} :catchall_b1

    .line 365
    goto/16 :goto_1d

    .line 397
    :cond_af
    :goto_af
    goto/16 :goto_1d

    .line 404
    :catchall_b1
    move-exception v0

    goto :goto_ba

    .line 401
    :catch_b3
    move-exception v3

    .line 402
    :try_start_b4
    const-string v4, "Failed reading install sessions"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b9
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_b1

    goto :goto_bf

    .line 404
    :goto_ba
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 399
    :catch_be
    move-exception v0

    .line 404
    :cond_bf
    :goto_bf
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 405
    nop

    .line 407
    nop

    :goto_c4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_da

    .line 408
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 409
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateIfNecessary()V

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_c4

    .line 411
    :cond_da
    return-void
.end method

.method private reconcileStagesLocked(Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 285
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 286
    sget-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    .line 287
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 286
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p1

    .line 290
    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 291
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 292
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 296
    :cond_27
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting orphan stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageInstaller"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    :try_start_52
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    .line 300
    monitor-exit v1

    .line 301
    goto :goto_2b

    .line 300
    :catchall_59
    move-exception p1

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_59

    throw p1

    .line 302
    :cond_5c
    return-void
.end method

.method private writeSessionsAsync()V
    .registers 3

    .line 459
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerService$2;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    return-void
.end method

.method private writeSessionsLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 430
    const-string/jumbo v0, "sessions"

    .line 432
    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_4a

    .line 434
    :try_start_a
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 435
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 436
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 437
    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 439
    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v4, :cond_3c

    .line 440
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    .line 441
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v6, v3, v7}, Lcom/android/server/pm/PackageInstallerSession;->write(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/File;)V

    .line 439
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 443
    :cond_3c
    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 446
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_47} :catch_48

    .line 451
    goto :goto_53

    .line 447
    :catch_48
    move-exception v0

    goto :goto_4c

    :catch_4a
    move-exception v0

    move-object v2, v1

    .line 448
    :goto_4c
    if-eqz v2, :cond_53

    .line 449
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 452
    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method public abandonSession(I)V
    .registers 6

    .line 685
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 686
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 687
    if-eqz v1, :cond_18

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 690
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 691
    monitor-exit v0

    .line 692
    return-void

    .line 688
    :cond_18
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller has no access to session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public allocateExternalStageCidLegacy()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 335
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v1

    .line 336
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smdl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 338
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter p2

    .line 321
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 323
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 324
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_14} :catch_18
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 325
    :try_start_14
    monitor-exit p2

    return-object p1

    .line 329
    :catchall_16
    move-exception p1

    goto :goto_1f

    .line 326
    :catch_18
    move-exception p1

    .line 327
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 329
    :goto_1f
    monitor-exit p2
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_16

    throw p1
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .registers 4

    .line 472
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 473
    :catch_5
    move-exception p1

    .line 474
    invoke-static {p1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 1202
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1203
    :try_start_3
    const-string v1, "Active install sessions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1205
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1206
    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_26

    .line 1207
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 1208
    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1209
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1206
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1211
    :cond_26
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1212
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1214
    const-string v1, "Historical install sessions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1216
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1217
    nop

    :goto_3b
    if-ge v2, v1, :cond_4e

    .line 1218
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1217
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1221
    :cond_4e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1222
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1224
    const-string v1, "Legacy install sessions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1226
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1228
    monitor-exit v0

    .line 1229
    return-void

    .line 1228
    :catchall_6a
    move-exception p1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method public getAllSessions(I)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 786
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 787
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "getAllSessions"

    move v1, v6

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 791
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 792
    const/4 v2, 0x0

    move v3, v2

    :goto_19
    :try_start_19
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 793
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 794
    iget v5, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v5, p1, :cond_3a

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 795
    invoke-virtual {v4, v2, v6}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 798
    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_19 .. :try_end_3e} :catchall_44

    .line 799
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    .line 798
    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 804
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "getMySessions"

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 809
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 810
    const/4 v2, 0x0

    move v3, v2

    :goto_21
    :try_start_21
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_51

    .line 811
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 813
    const/16 v5, 0x3e8

    .line 814
    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    .line 815
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    iget v6, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v6, p2, :cond_4e

    .line 816
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 817
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 820
    :cond_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_21 .. :try_end_52} :catchall_58

    .line 821
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    .line 820
    :catchall_58
    move-exception p1

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method public getSession(I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 4

    .line 915
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 916
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    monitor-exit v0

    return-object p1

    .line 917
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 5

    .line 770
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 771
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    .line 773
    if-eqz p1, :cond_17

    .line 774
    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    goto :goto_18

    .line 775
    :cond_17
    const/4 p1, 0x0

    :goto_18
    monitor-exit v0

    .line 773
    return-object p1

    .line 776
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public getStagedSessions()Landroid/content/pm/ParceledListSlice;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->getSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/IntentSender;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move v2, p5

    move v3, p2

    move v4, p3

    move-object v5, p6

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)I

    .line 880
    return-void
.end method

.method okToSendBroadcasts()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return v0
.end method

.method public onPrivateVolumeMounted(Ljava/lang/String;)V
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 306
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .registers 2

    .line 697
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 698
    :catch_5
    move-exception p1

    .line 699
    invoke-static {p1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .registers 9

    .line 896
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 897
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 896
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "registerCallback"

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 898
    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageInstallerService$vra5ZkE3juVvcgDBu5xv0wVzno8;

    invoke-direct {v0, p2}, Lcom/android/server/pm/-$$Lambda$PackageInstallerService$vra5ZkE3juVvcgDBu5xv0wVzno8;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerService;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    .line 899
    return-void
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V
    .registers 4

    .line 905
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->register(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    .line 906
    return-void
.end method

.method restoreAndApplyStagedSessionIfNeeded()V
    .registers 7

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 252
    const/4 v2, 0x0

    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 253
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 254
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 255
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 258
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_84

    .line 261
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v1

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 263
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v3

    if-nez v3, :cond_7a

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 264
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v3

    if-nez v3, :cond_7a

    .line 265
    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An orphan staged session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is found, parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is missing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 269
    :cond_7a
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/pm/StagingManager;->restoreSession(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 270
    goto :goto_30

    .line 280
    :cond_80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    .line 281
    return-void

    .line 258
    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0
.end method

.method public setPermissionsResult(IZ)V
    .registers 6

    .line 884
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const-string v2, "PackageInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 887
    :try_start_c
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    .line 888
    if-eqz p1, :cond_19

    .line 889
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->setPermissionsResult(Z)V

    .line 891
    :cond_19
    monitor-exit v0

    .line 892
    return-void

    .line 891
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public systemReady()V
    .registers 7

    .line 220
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 223
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->readSessionsLocked()V

    .line 225
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 227
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 231
    const/4 v2, 0x0

    :goto_22
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 232
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 233
    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 237
    :cond_3e
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 238
    const-string v3, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting orphan icon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 240
    goto :goto_42

    .line 244
    :cond_68
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()V

    .line 246
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_f .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .registers 15

    .line 827
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 828
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "uninstall"

    move v1, v6

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 829
    const/16 v0, 0x7d0

    if-eq v6, v0, :cond_1b

    if-eqz v6, :cond_1b

    .line 830
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v6, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 835
    :cond_1b
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 836
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 837
    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 838
    invoke-virtual {v0, p2, v6}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    move v0, v1

    .line 840
    :goto_2f
    new-instance v8, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 841
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v8

    move-object v4, p4

    move v6, v0

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 843
    iget-object p4, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    invoke-virtual {p4, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p4

    if-nez p4, :cond_52

    .line 846
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p4

    invoke-virtual {p2, p1, p4, p5, p3}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    goto :goto_b1

    .line 847
    :cond_52
    if-eqz v0, :cond_78

    .line 850
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 852
    :try_start_58
    iget-object p4, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v2

    invoke-virtual {p4, p1, v2, p5, p3}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_73

    .line 854
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    nop

    .line 856
    const/16 p1, 0x71

    .line 857
    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 858
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 859
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 860
    goto :goto_b1

    .line 854
    :catchall_73
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 861
    :cond_78
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3, p2, v1, p5}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 862
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x1c

    const/4 p4, 0x0

    if-lt p2, p3, :cond_8c

    .line 863
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_8c
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "package"

    invoke-static {p3, p1, p4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 870
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string p3, "android.content.pm.extra.CALLBACK"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 871
    invoke-virtual {v8, p2}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onUserActionRequired(Landroid/content/Intent;)V

    .line 873
    :goto_b1
    return-void
.end method

.method public unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 3

    .line 910
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->unregister(Landroid/content/pm/IPackageInstallerCallback;)V

    .line 911
    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .registers 7

    .line 647
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 648
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 649
    if-eqz v1, :cond_47

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 654
    if-eqz p2, :cond_36

    .line 655
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 657
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p1

    .line 658
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    if-gt v2, v3, :cond_31

    .line 659
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v3, :cond_36

    .line 660
    :cond_31
    const/4 v2, 0x1

    invoke-static {p2, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 664
    :cond_36
    iget-object p1, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 665
    iget-object p1, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    const-wide/16 v2, -0x1

    iput-wide v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 667
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 668
    monitor-exit v0

    .line 669
    return-void

    .line 650
    :cond_47
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller has no access to session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 668
    :catchall_5e
    move-exception p1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw p1
.end method

.method public updateSessionAppLabel(ILjava/lang/String;)V
    .registers 6

    .line 673
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 674
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 675
    if-eqz v1, :cond_1e

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 678
    iget-object p1, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 679
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 680
    monitor-exit v0

    .line 681
    return-void

    .line 676
    :cond_1e
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller has no access to session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 680
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p1
.end method
