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
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p3, "am"  # Lcom/android/server/pm/ApexManager;

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
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 197
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PackageInstaller"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 198
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 200
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    .line 202
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 204
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 205
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "install_sessions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "package-session"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    .line 207
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "install_sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 208
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 210
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 212
    new-instance v0, Lcom/android/server/pm/StagingManager;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/server/pm/StagingManager;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/ApexManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerService;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackageInstallerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerService;

    .line 112
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerService;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/StagingManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerService;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerService;
    .param p1, "x1"  # Lcom/android/server/pm/PackageInstallerSession;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerService;
    .param p1, "x1"  # I

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerService;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .registers 5
    .param p0, "x0"  # Landroid/content/Context;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I

    .line 112
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerService;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/PackageInstallerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerService;

    .line 112
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/PackageInstallerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerService;

    .line 112
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return v0
.end method

.method private addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 7
    .param p1, "session"  # Lcom/android/server/pm/PackageInstallerSession;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 409
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 410
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 411
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v2

    .line 415
    .local v2, "installerUid":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 416
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 415
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 417
    return-void
.end method

.method private allocateSessionIdLocked()I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 713
    const/4 v0, 0x0

    .line 716
    .local v0, "n":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 717
    .local v1, "sessionId":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 718
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 719
    return v1

    .line 721
    :cond_1b
    add-int/lit8 v2, v0, 0x1

    .end local v0  # "n":I
    .local v2, "n":I
    const/16 v3, 0x20

    if-ge v0, v3, :cond_23

    move v0, v2

    goto :goto_1

    .line 723
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to allocate session ID"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildAppIconFile(I)Ljava/io/File;
    .registers 6
    .param p1, "sessionId"  # I

    .line 448
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_icon."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildExternalStageCid(I)Ljava/lang/String;
    .registers 4
    .param p1, "sessionId"  # I

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "smdl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;
    .registers 7
    .param p1, "sessionId"  # I
    .param p2, "params"  # Landroid/content/pm/PackageInstaller$SessionParams;

    .line 736
    iget-boolean v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_22

    .line 737
    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 738
    .local v0, "sessionStagingDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "session_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 740
    .end local v0  # "sessionStagingDir":Ljava/io/File;
    :cond_22
    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .registers 11
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "contentText"  # Ljava/lang/String;
    .param p2, "basePackageName"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 1078
    const/4 v0, 0x0

    .line 1080
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-interface {v1, p2, v2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 1083
    goto :goto_e

    .line 1082
    :catch_d
    move-exception v1

    .line 1084
    :goto_e
    if-eqz v0, :cond_7a

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_15

    goto :goto_7a

    .line 1088
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1089
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1090
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1091
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1093
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1089
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1095
    .local v2, "packageIcon":Landroid/graphics/Bitmap;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1096
    .local v3, "packageLabel":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x1080338

    .line 1097
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1098
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1100
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1101
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1102
    invoke-virtual {v5, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1103
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1104
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 1096
    return-object v4

    .line 1085
    .end local v1  # "pm":Landroid/content/pm/PackageManager;
    .end local v2  # "packageIcon":Landroid/graphics/Bitmap;
    .end local v3  # "packageLabel":Ljava/lang/CharSequence;
    :cond_7a
    :goto_7a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification not built for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageInstaller"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v1, 0x0

    return-object v1
.end method

.method private buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;
    .registers 7
    .param p1, "sessionId"  # I
    .param p2, "volumeUuid"  # Ljava/lang/String;

    .line 731
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 732
    .local v0, "sessionStagingDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vmdl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .registers 38
    .param p1, "params"  # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    const/16 v0, 0x5a

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 474
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 475
    .local v14, "callingUid":I
    iget-object v1, v15, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "createSession"

    move v2, v14

    move/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 478
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "no_install_apps"

    move/from16 v12, p3

    invoke-virtual {v0, v12, v1}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a1

    .line 482
    iput v14, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageUid:I

    .line 483
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackagePid:I

    .line 485
    const/16 v0, 0x7d0

    const/4 v1, 0x2

    if-eq v14, v0, :cond_7b

    if-nez v14, :cond_38

    move-object/from16 v11, p2

    goto :goto_7d

    .line 491
    :cond_38
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4a

    .line 493
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v11, p2

    invoke-virtual {v0, v14, v11}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    goto :goto_4c

    .line 491
    :cond_4a
    move-object/from16 v11, p2

    .line 496
    :goto_4c
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 497
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 498
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 499
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v0, v1

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 500
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_83

    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 501
    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageManagerService;->isCallerVerifier(I)Z

    move-result v0

    if-nez v0, :cond_83

    .line 502
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v2, -0x10001

    and-int/2addr v0, v2

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_83

    .line 485
    :cond_7b
    move-object/from16 v11, p2

    .line 486
    :goto_7d
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 506
    :cond_83
    :goto_83
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_9d

    invoke-direct {v15, v14}, Lcom/android/server/pm/PackageInstallerService;->isDowngradeAllowedForCaller(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_9d

    .line 509
    :cond_8e
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v2, -0x100001

    and-int/2addr v0, v2

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 510
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_a4

    .line 507
    :cond_9d
    :goto_9d
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 513
    :goto_a4
    const/16 v0, 0x3e8

    if-eq v14, v0, :cond_b0

    .line 515
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v2, -0x80001

    and-int/2addr v0, v2

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 518
    :cond_b0
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_ba

    move v0, v2

    goto :goto_bb

    :cond_ba
    const/4 v0, 0x0

    :goto_bb
    move/from16 v27, v0

    .line 519
    .local v27, "isApex":Z
    iget-boolean v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_c3

    if-eqz v27, :cond_cc

    .line 520
    :cond_c3
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    const-string v4, "PackageInstaller"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_cc
    if-eqz v27, :cond_eb

    .line 524
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 528
    iget-boolean v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_db

    goto :goto_eb

    .line 529
    :cond_db
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APEX files can only be installed as part of a staged session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_e3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This device doesn\'t support the installation of APEX files"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_eb
    :goto_eb
    iget-boolean v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v0, :cond_197

    .line 536
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_109

    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 537
    const-string v3, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_101

    goto :goto_109

    .line 539
    :cond_101
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to use the PackageManager.INSTALL_GRANT_RUNTIME_PERMISSIONS flag"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_109
    :goto_109
    iget-object v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_137

    .line 546
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 548
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    .line 549
    .local v3, "iconSize":I
    iget-object v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    if-gt v4, v5, :cond_12f

    iget-object v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 550
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    if-le v4, v5, :cond_137

    .line 551
    :cond_12f
    iget-object v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-static {v4, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v13, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 556
    .end local v0  # "am":Landroid/app/ActivityManager;
    .end local v3  # "iconSize":I
    :cond_137
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-eq v0, v2, :cond_157

    if-ne v0, v1, :cond_13e

    goto :goto_157

    .line 561
    :cond_13e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid install mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_157
    :goto_157
    nop

    .line 566
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_16f

    .line 567
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v13}, Lcom/android/internal/content/PackageHelper;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v0

    if-eqz v0, :cond_167

    goto :goto_197

    .line 568
    :cond_167
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No suitable internal storage available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_16f
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_17c

    .line 573
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_197

    .line 575
    :cond_17c
    iget v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 579
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 581
    .local v1, "ident":J
    :try_start_186
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v13}, Lcom/android/internal/content/PackageHelper;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;
    :try_end_18e
    .catchall {:try_start_186 .. :try_end_18e} :catchall_192

    .line 583
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    goto :goto_197

    .line 583
    :catchall_192
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 590
    .end local v1  # "ident":J
    :cond_197
    :goto_197
    iget-object v1, v15, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 592
    :try_start_19a
    iget-object v0, v15, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-static {v0, v14}, Lcom/android/server/pm/PackageInstallerService;->getSessionCount(Landroid/util/SparseArray;I)I

    move-result v0

    .line 593
    .local v0, "activeCount":I
    int-to-long v2, v0

    const-wide/16 v4, 0x400

    cmp-long v2, v2, v4

    if-gez v2, :cond_27f

    .line 597
    iget-object v2, v15, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2
    :try_end_1ad
    .catchall {:try_start_19a .. :try_end_1ad} :catchall_299

    .line 598
    .local v2, "historicalCount":I
    int-to-long v3, v2

    const-wide/32 v5, 0x100000

    cmp-long v3, v3, v5

    if-gez v3, :cond_25e

    .line 603
    :try_start_1b5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v3

    move v10, v3

    .line 604
    .end local v0  # "activeCount":I
    .end local v2  # "historicalCount":I
    .local v10, "sessionId":I
    monitor-exit v1
    :try_end_1bb
    .catchall {:try_start_1b5 .. :try_end_1bb} :catchall_259

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 608
    .local v28, "createdMillis":J
    const/4 v0, 0x0

    .line 609
    .local v0, "stageDir":Ljava/io/File;
    const/4 v1, 0x0

    .line 610
    .local v1, "stageCid":Ljava/lang/String;
    iget-boolean v2, v13, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v2, :cond_1dd

    .line 611
    iget v2, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1d4

    .line 612
    invoke-direct {v15, v10, v13}, Lcom/android/server/pm/PackageInstallerService;->buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;

    move-result-object v0

    move-object/from16 v30, v0

    move-object/from16 v31, v1

    goto :goto_1e1

    .line 614
    :cond_1d4
    invoke-direct {v15, v10}, Lcom/android/server/pm/PackageInstallerService;->buildExternalStageCid(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v0

    move-object/from16 v31, v1

    goto :goto_1e1

    .line 610
    :cond_1dd
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    .line 617
    .end local v0  # "stageDir":Ljava/io/File;
    .end local v1  # "stageCid":Ljava/lang/String;
    .local v30, "stageDir":Ljava/io/File;
    .local v31, "stageCid":Ljava/lang/String;
    :goto_1e1
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession;

    move-object v1, v0

    iget-object v2, v15, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v3, v15, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v4, v15, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v15, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 618
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, v15, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

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

    move v8, v10

    move/from16 v9, p3

    move/from16 v32, v10

    .end local v10  # "sessionId":I
    .local v32, "sessionId":I
    move-object/from16 v10, p2

    move v11, v14

    move-object/from16 v12, p1

    move/from16 v33, v14

    .end local v14  # "callingUid":I
    .local v33, "callingUid":I
    move-wide/from16 v13, v28

    move-object/from16 v15, v30

    move-object/from16 v16, v31

    invoke-direct/range {v1 .. v26}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZZ[IIZZZILjava/lang/String;)V

    move-object v2, v0

    .line 623
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v4

    .line 624
    :try_start_223
    iget-object v0, v3, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;
    :try_end_225
    .catchall {:try_start_223 .. :try_end_225} :catchall_250

    move/from16 v5, v32

    .end local v32  # "sessionId":I
    .local v5, "sessionId":I
    :try_start_227
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 625
    monitor-exit v4
    :try_end_22b
    .catchall {:try_start_227 .. :try_end_22b} :catchall_24c

    .line 626
    move-object/from16 v6, p1

    iget-boolean v0, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_236

    .line 627
    iget-object v0, v3, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 630
    :cond_236
    iget-object v0, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_248

    .line 631
    iget-object v0, v3, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget v1, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v4, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0, v1, v4}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->access$200(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    .line 633
    :cond_248
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V

    .line 634
    return v5

    .line 625
    :catchall_24c
    move-exception v0

    move-object/from16 v6, p1

    goto :goto_255

    .end local v5  # "sessionId":I
    .restart local v32  # "sessionId":I
    :catchall_250
    move-exception v0

    move-object/from16 v6, p1

    move/from16 v5, v32

    .end local v32  # "sessionId":I
    .restart local v5  # "sessionId":I
    :goto_255
    :try_start_255
    monitor-exit v4
    :try_end_256
    .catchall {:try_start_255 .. :try_end_256} :catchall_257

    throw v0

    :catchall_257
    move-exception v0

    goto :goto_255

    .line 604
    .end local v2  # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v5  # "sessionId":I
    .end local v28  # "createdMillis":J
    .end local v30  # "stageDir":Ljava/io/File;
    .end local v31  # "stageCid":Ljava/lang/String;
    .end local v33  # "callingUid":I
    .restart local v14  # "callingUid":I
    :catchall_259
    move-exception v0

    move-object v6, v13

    move-object v3, v15

    move v7, v14

    .end local v14  # "callingUid":I
    .restart local v33  # "callingUid":I
    goto :goto_29d

    .line 599
    .end local v33  # "callingUid":I
    .local v0, "activeCount":I
    .local v2, "historicalCount":I
    .restart local v14  # "callingUid":I
    :cond_25e
    move-object v6, v13

    move/from16 v33, v14

    move-object v3, v15

    .end local v14  # "callingUid":I
    .restart local v33  # "callingUid":I
    :try_start_262
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many historical sessions for UID "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_26e
    .catchall {:try_start_262 .. :try_end_26e} :catchall_27b

    move/from16 v7, v33

    .end local v33  # "callingUid":I
    .local v7, "callingUid":I
    :try_start_270
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7  # "callingUid":I
    .end local v27  # "isApex":Z
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local p2  # "installerPackageName":Ljava/lang/String;
    .end local p3  # "userId":I
    throw v4

    .line 604
    .end local v0  # "activeCount":I
    .end local v2  # "historicalCount":I
    .restart local v27  # "isApex":Z
    .restart local v33  # "callingUid":I
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local p2  # "installerPackageName":Ljava/lang/String;
    .restart local p3  # "userId":I
    :catchall_27b
    move-exception v0

    move/from16 v7, v33

    .end local v33  # "callingUid":I
    .restart local v7  # "callingUid":I
    goto :goto_29d

    .line 594
    .end local v7  # "callingUid":I
    .restart local v0  # "activeCount":I
    .restart local v14  # "callingUid":I
    :cond_27f
    move-object v6, v13

    move v7, v14

    move-object v3, v15

    .end local v14  # "callingUid":I
    .restart local v7  # "callingUid":I
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many active sessions for UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7  # "callingUid":I
    .end local v27  # "isApex":Z
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local p2  # "installerPackageName":Ljava/lang/String;
    .end local p3  # "userId":I
    throw v2

    .line 604
    .end local v0  # "activeCount":I
    .restart local v14  # "callingUid":I
    .restart local v27  # "isApex":Z
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local p2  # "installerPackageName":Ljava/lang/String;
    .restart local p3  # "userId":I
    :catchall_299
    move-exception v0

    move-object v6, v13

    move v7, v14

    move-object v3, v15

    .end local v14  # "callingUid":I
    .restart local v7  # "callingUid":I
    :goto_29d
    monitor-exit v1
    :try_end_29e
    .catchall {:try_start_270 .. :try_end_29e} :catchall_29f

    throw v0

    :catchall_29f
    move-exception v0

    goto :goto_29d

    .line 479
    .end local v7  # "callingUid":I
    .end local v27  # "isApex":Z
    .restart local v14  # "callingUid":I
    :cond_2a1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "User restriction prevents installing"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSessionCount(Landroid/util/SparseArray;I)I
    .registers 7
    .param p1, "installerUid"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;I)I"
        }
    .end annotation

    .line 919
    .local p0, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/PackageInstallerSession;>;"
    const/4 v0, 0x0

    .line 920
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 921
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_19

    .line 922
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 923
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v4

    if-ne v4, p1, :cond_16

    .line 924
    add-int/lit8 v0, v0, 0x1

    .line 921
    .end local v3  # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 927
    .end local v2  # "i":I
    :cond_19
    return v0
.end method

.method private getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "volumeUuid"  # Ljava/lang/String;

    .line 727
    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 5
    .param p1, "session"  # Lcom/android/server/pm/PackageInstallerSession;

    .line 931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 932
    .local v0, "callingUid":I
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 933
    return v1

    .line 935
    :cond_8
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v2

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private isDowngradeAllowedForCaller(I)Z
    .registers 3
    .param p1, "callingUid"  # I

    .line 638
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_d

    if-eqz p1, :cond_d

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static isStageName(Ljava/lang/String;)Z
    .registers 6
    .param p0, "name"  # Ljava/lang/String;

    .line 304
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

    .line 305
    .local v0, "isFile":Z
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

    .line 306
    .local v1, "isContainer":Z
    :goto_28
    const-string/jumbo v4, "smdl2tmp"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 307
    .local v4, "isLegacyContainer":Z
    if-nez v0, :cond_37

    if-nez v1, :cond_37

    if-eqz v4, :cond_36

    goto :goto_37

    :cond_36
    move v2, v3

    :cond_37
    :goto_37
    return v2
.end method

.method static synthetic lambda$registerCallback$0(II)Z
    .registers 3
    .param p0, "userId"  # I
    .param p1, "eventUserId"  # I

    .line 895
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
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

    .line 1108
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1109
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    if-eqz p0, :cond_e

    .line 1110
    array-length v1, p0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 1111
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1113
    :cond_e
    return-object v0
.end method

.method private openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;
    .registers 7
    .param p1, "sessionId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 702
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 703
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_18

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 706
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    .line 707
    monitor-exit v0

    return-object v1

    .line 704
    :cond_18
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1  # "sessionId":I
    throw v2

    .line 708
    .end local v1  # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1  # "sessionId":I
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method static prepareStageDir(Ljava/io/File;)V
    .registers 5
    .param p0, "stageDir"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 749
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 750
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_16} :catch_35

    .line 754
    nop

    .line 756
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 759
    return-void

    .line 757
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restorecon session dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :catch_35
    move-exception v0

    .line 753
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare session dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 745
    .end local v0  # "e":Landroid/system/ErrnoException;
    :cond_4d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session dir already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readSessionsLocked()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 338
    const-string v0, "PackageInstaller"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 340
    const/4 v1, 0x0

    .line 342
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 343
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 344
    .local v2, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 347
    :cond_1c
    :goto_1c
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v11, v3

    .local v11, "type":I
    const/4 v12, 0x1

    if-eq v3, v12, :cond_b2

    .line 348
    const/4 v3, 0x2

    if-ne v11, v3, :cond_1c

    .line 349
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .line 350
    .local v13, "tag":Ljava/lang/String;
    const-string/jumbo v3, "session"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_33} :catch_c1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_33} :catch_b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_33} :catch_b5
    .catchall {:try_start_8 .. :try_end_33} :catchall_b3

    if-eqz v3, :cond_b0

    .line 353
    :try_start_35
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 354
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 353
    move-object v3, v2

    move-object v10, p0

    invoke-static/range {v3 .. v10}, Lcom/android/server/pm/PackageInstallerSession;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v3
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4b} :catch_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_4b} :catch_c1
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4b} :catch_b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_4b} :catch_b5
    .catchall {:try_start_35 .. :try_end_4b} :catchall_b3

    .line 359
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    nop

    .line 361
    :try_start_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long/2addr v4, v6

    .line 363
    .local v4, "age":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getUpdatedMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 365
    .local v6, "timeSinceUpdate":J
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v8

    if-eqz v8, :cond_73

    .line 366
    const-wide/32 v8, 0x240c8400

    cmp-long v8, v6, v8

    if-ltz v8, :cond_71

    .line 367
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v8

    if-eqz v8, :cond_71

    .line 368
    const/4 v8, 0x0

    .local v8, "valid":Z
    goto :goto_93

    .line 370
    .end local v8  # "valid":Z
    :cond_71
    const/4 v8, 0x1

    .restart local v8  # "valid":Z
    goto :goto_93

    .line 372
    .end local v8  # "valid":Z
    :cond_73
    const-wide/32 v8, 0xf731400

    cmp-long v8, v4, v8

    if-ltz v8, :cond_92

    .line 373
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Abandoning old session created at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v8, 0x0

    .restart local v8  # "valid":Z
    goto :goto_93

    .line 377
    .end local v8  # "valid":Z
    :cond_92
    const/4 v8, 0x1

    .line 380
    .restart local v8  # "valid":Z
    :goto_93
    if-eqz v8, :cond_9d

    .line 381
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v10, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v9, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a0

    .line 386
    :cond_9d
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 388
    :goto_a0
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    iget v10, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v9, v10, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_b0

    .line 356
    .end local v3  # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v4  # "age":J
    .end local v6  # "timeSinceUpdate":J
    .end local v8  # "valid":Z
    :catch_a8
    move-exception v3

    .line 357
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Could not read session"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_ae} :catch_c1
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_ae} :catch_b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_ae} :catch_b5
    .catchall {:try_start_4c .. :try_end_ae} :catchall_b3

    .line 358
    goto/16 :goto_1c

    .line 390
    .end local v3  # "e":Ljava/lang/Exception;
    .end local v13  # "tag":Ljava/lang/String;
    :cond_b0
    :goto_b0
    goto/16 :goto_1c

    .line 347
    .end local v2  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11  # "type":I
    :cond_b2
    goto :goto_c2

    .line 397
    :catchall_b3
    move-exception v0

    goto :goto_bd

    .line 394
    :catch_b5
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/Exception;
    :try_start_b6
    const-string v3, "Failed reading install sessions"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_b3

    .line 397
    nop

    .end local v2  # "e":Ljava/lang/Exception;
    goto :goto_c3

    :goto_bd
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 392
    :catch_c1
    move-exception v0

    .line 397
    :goto_c2
    nop

    :goto_c3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 398
    nop

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c8
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_de

    .line 401
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 402
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateIfNecessary()V

    .line 400
    .end local v2  # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v0, v0, 0x1

    goto :goto_c8

    .line 404
    .end local v0  # "i":I
    :cond_de
    return-void
.end method

.method private reconcileStagesLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "volumeUuid"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 279
    .local v0, "stagingDir":Ljava/io/File;
    sget-object v1, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    .line 280
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 279
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 283
    .local v1, "unclaimedStages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 284
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 285
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 283
    .end local v3  # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 289
    .end local v2  # "i":I
    :cond_27
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 290
    .local v3, "stage":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting orphan stage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageInstaller"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 292
    :try_start_52
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    .line 293
    monitor-exit v4

    .line 294
    .end local v3  # "stage":Ljava/io/File;
    goto :goto_2b

    .line 293
    .restart local v3  # "stage":Ljava/io/File;
    :catchall_59
    move-exception v2

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_59

    throw v2

    .line 295
    .end local v3  # "stage":Ljava/io/File;
    :cond_5c
    return-void
.end method

.method private writeSessionsAsync()V
    .registers 3

    .line 452
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerService$2;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    return-void
.end method

.method private writeSessionsLocked()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessions"
        }
    .end annotation

    .line 423
    const-string/jumbo v0, "sessions"

    const/4 v1, 0x0

    .line 425
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 427
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 428
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 429
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 430
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 432
    .local v3, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2c
    if-ge v5, v3, :cond_3e

    .line 433
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    .line 434
    .local v6, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/pm/PackageInstallerSession;->write(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/File;)V

    .line 432
    .end local v6  # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 436
    .end local v5  # "i":I
    :cond_3e
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 437
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 439
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_49} :catch_4a

    .line 444
    .end local v2  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3  # "size":I
    goto :goto_52

    .line 440
    :catch_4a
    move-exception v0

    .line 441
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_52

    .line 442
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 445
    .end local v0  # "e":Ljava/io/IOException;
    :cond_52
    :goto_52
    return-void
.end method


# virtual methods
.method public abandonSession(I)V
    .registers 7
    .param p1, "sessionId"  # I

    .line 682
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 683
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 684
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_18

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 687
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 688
    .end local v1  # "session":Lcom/android/server/pm/PackageInstallerSession;
    monitor-exit v0

    .line 689
    return-void

    .line 685
    .restart local v1  # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_18
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1  # "sessionId":I
    throw v2

    .line 688
    .end local v1  # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1  # "sessionId":I
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public allocateExternalStageCidLegacy()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 328
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v1

    .line 329
    .local v1, "sessionId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smdl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 331
    .end local v1  # "sessionId":I
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;
    .registers 7
    .param p1, "volumeUuid"  # Ljava/lang/String;
    .param p2, "isEphemeral"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 314
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v1

    .line 315
    .local v1, "sessionId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 316
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 317
    .local v2, "sessionStageDir":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_14} :catch_18
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 318
    :try_start_14
    monitor-exit v0

    return-object v2

    .line 322
    .end local v1  # "sessionId":I
    .end local v2  # "sessionStageDir":Ljava/io/File;
    :catchall_16
    move-exception v1

    goto :goto_1f

    .line 319
    :catch_18
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1  # "volumeUuid":Ljava/lang/String;
    .end local p2  # "isEphemeral":Z
    throw v2

    .line 322
    .end local v1  # "e":Ljava/lang/IllegalStateException;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1  # "volumeUuid":Ljava/lang/String;
    .restart local p2  # "isEphemeral":Z
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_16

    throw v1
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .registers 6
    .param p1, "params"  # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 465
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 466
    :catch_5
    move-exception v0

    .line 467
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1199
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1200
    :try_start_3
    const-string v1, "Active install sessions:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1202
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1203
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_25

    .line 1204
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 1205
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1206
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1203
    .end local v3  # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1208
    .end local v2  # "i":I
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1209
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1211
    const-string v2, "Historical install sessions:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1213
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v2

    .line 1214
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_3b
    if-ge v2, v1, :cond_4e

    .line 1215
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1214
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1218
    .end local v2  # "i":I
    :cond_4e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1219
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1221
    const-string v2, "Legacy install sessions:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1223
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1225
    nop

    .end local v1  # "N":I
    monitor-exit v0

    .line 1226
    return-void

    .line 1225
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method public getAllSessions(I)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 783
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 784
    .local v6, "callingUid":I
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "getAllSessions"

    move v1, v6

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 787
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 789
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_19
    :try_start_19
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 790
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 791
    .local v4, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget v5, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v5, p1, :cond_3a

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 792
    invoke-virtual {v4, v2, v6}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    .end local v4  # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 795
    .end local v3  # "i":I
    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_19 .. :try_end_3e} :catchall_44

    .line 796
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 795
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v2
.end method

.method public getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "installerPackageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    .line 801
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 802
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 801
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "getMySessions"

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 807
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_21
    :try_start_21
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_51

    .line 808
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 810
    .local v4, "session":Lcom/android/server/pm/PackageInstallerSession;
    const/16 v5, 0x3e8

    .line 811
    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    .line 812
    .local v5, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    iget v6, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v6, p2, :cond_4e

    .line 813
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 814
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    .end local v4  # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v5  # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 817
    .end local v3  # "i":I
    :cond_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_21 .. :try_end_52} :catchall_58

    .line 818
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 817
    :catchall_58
    move-exception v2

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method public getSession(I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 4
    .param p1, "sessionId"  # I

    .line 912
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 913
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    monitor-exit v0

    return-object v1

    .line 914
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 6
    .param p1, "sessionId"  # I

    .line 767
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 768
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 770
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_17

    .line 771
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    goto :goto_18

    .line 772
    :cond_17
    const/4 v2, 0x0

    :goto_18
    monitor-exit v0

    .line 770
    return-object v2

    .line 773
    .end local v1  # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
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

    .line 778
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->getSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    .registers 14
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "installFlags"  # I
    .param p3, "installReason"  # I
    .param p4, "statusReceiver"  # Landroid/content/IntentSender;
    .param p5, "userId"  # I
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

    .line 875
    .local p6, "whiteListedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move v2, p5

    move v3, p2

    move v4, p3

    move-object v5, p6

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)I

    .line 877
    return-void
.end method

.method okToSendBroadcasts()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return v0
.end method

.method public onPrivateVolumeMounted(Ljava/lang/String;)V
    .registers 4
    .param p1, "volumeUuid"  # Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 299
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .registers 4
    .param p1, "sessionId"  # I

    .line 694
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 695
    :catch_5
    move-exception v0

    .line 696
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .registers 9
    .param p1, "callback"  # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "userId"  # I

    .line 893
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 894
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 893
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "registerCallback"

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 895
    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageInstallerService$vra5ZkE3juVvcgDBu5xv0wVzno8;

    invoke-direct {v0, p2}, Lcom/android/server/pm/-$$Lambda$PackageInstallerService$vra5ZkE3juVvcgDBu5xv0wVzno8;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerService;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    .line 896
    return-void
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V
    .registers 4
    .param p1, "callback"  # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "userCheck"  # Ljava/util/function/IntPredicate;

    .line 902
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->register(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    .line 903
    return-void
.end method

.method restoreAndApplyStagedSessionIfNeeded()V
    .registers 6

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "stagedSessionsToRestore":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 252
    const/4 v2, 0x0

    .local v2, "i":I
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
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 255
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v3  # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 258
    .end local v2  # "i":I
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_40

    .line 261
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 262
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/StagingManager;->restoreSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 263
    .end local v2  # "session":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_2a

    .line 273
    :cond_3c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    .line 274
    return-void

    .line 258
    :catchall_40
    move-exception v2

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v2
.end method

.method public setPermissionsResult(IZ)V
    .registers 6
    .param p1, "sessionId"  # I
    .param p2, "accepted"  # Z

    .line 881
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const-string v2, "PackageInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 884
    :try_start_c
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 885
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_19

    .line 886
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->setPermissionsResult(Z)V

    .line 888
    .end local v1  # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_19
    monitor-exit v0

    .line 889
    return-void

    .line 888
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public systemReady()V
    .registers 8

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
    .local v1, "unclaimedIcons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 232
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 233
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget v4, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 231
    nop

    .end local v3  # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 237
    .end local v2  # "i":I
    :cond_3f
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 238
    .local v3, "icon":Ljava/io/File;
    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting orphan icon "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 240
    nop

    .end local v3  # "icon":Ljava/io/File;
    goto :goto_43

    .line 244
    :cond_6a
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()V

    .line 246
    .end local v1  # "unclaimedIcons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_f .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .registers 22
    .param p1, "versionedPackage"  # Landroid/content/pm/VersionedPackage;
    .param p2, "callerPackageName"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p4, "statusReceiver"  # Landroid/content/IntentSender;
    .param p5, "userId"  # I

    .line 824
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v11, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 825
    .local v12, "callingUid":I
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-string/jumbo v10, "uninstall"

    move v6, v12

    move/from16 v7, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 826
    const/16 v0, 0x7d0

    if-eq v12, v0, :cond_26

    if-eqz v12, :cond_26

    .line 827
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v12, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 832
    :cond_26
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 833
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 834
    .local v13, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v0, 0x0

    if-eqz v13, :cond_3a

    .line 835
    invoke-virtual {v13, v3, v12}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3a

    const/4 v5, 0x1

    goto :goto_3b

    :cond_3a
    move v5, v0

    :goto_3b
    move v14, v5

    .line 837
    .local v14, "canSilentlyInstallPackage":Z
    new-instance v15, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 838
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v15

    move-object/from16 v7, p4

    move v9, v14

    move/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 840
    .local v5, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_61

    .line 843
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v11, v4}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    goto :goto_c0

    .line 844
    :cond_61
    if-eqz v14, :cond_87

    .line 847
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 849
    .local v6, "ident":J
    :try_start_67
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v8

    invoke-virtual {v0, v2, v8, v11, v4}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_82

    .line 851
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 852
    nop

    .line 853
    const/16 v0, 0x71

    .line 854
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 855
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 857
    .end local v6  # "ident":J
    goto :goto_c0

    .line 851
    .restart local v6  # "ident":J
    :catchall_82
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 858
    .end local v6  # "ident":J
    :cond_87
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v3, v0, v11}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 859
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1c

    const/4 v8, 0x0

    if-lt v6, v7, :cond_9b

    .line 860
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_9b
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "package"

    invoke-static {v9, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 867
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const-string v8, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 868
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onUserActionRequired(Landroid/content/Intent;)V

    .line 870
    .end local v0  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6  # "intent":Landroid/content/Intent;
    :goto_c0
    return-void
.end method

.method public unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 3
    .param p1, "callback"  # Landroid/content/pm/IPackageInstallerCallback;

    .line 907
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->unregister(Landroid/content/pm/IPackageInstallerCallback;)V

    .line 908
    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .registers 9
    .param p1, "sessionId"  # I
    .param p2, "appIcon"  # Landroid/graphics/Bitmap;

    .line 644
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 645
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 646
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_4a

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 651
    if-eqz p2, :cond_39

    .line 652
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 654
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    .line 655
    .local v3, "iconSize":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    if-gt v4, v5, :cond_33

    .line 656
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    if-le v4, v5, :cond_39

    .line 657
    :cond_33
    const/4 v4, 0x1

    invoke-static {p2, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object p2, v4

    .line 661
    .end local v2  # "am":Landroid/app/ActivityManager;
    .end local v3  # "iconSize":I
    :cond_39
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 662
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 664
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 665
    .end local v1  # "session":Lcom/android/server/pm/PackageInstallerSession;
    monitor-exit v0

    .line 666
    return-void

    .line 647
    .restart local v1  # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_4a
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1  # "sessionId":I
    .end local p2  # "appIcon":Landroid/graphics/Bitmap;
    throw v2

    .line 665
    .end local v1  # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1  # "sessionId":I
    .restart local p2  # "appIcon":Landroid/graphics/Bitmap;
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw v1
.end method

.method public updateSessionAppLabel(ILjava/lang/String;)V
    .registers 8
    .param p1, "sessionId"  # I
    .param p2, "appLabel"  # Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 671
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 672
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_1e

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 675
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 676
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 677
    .end local v1  # "session":Lcom/android/server/pm/PackageInstallerSession;
    monitor-exit v0

    .line 678
    return-void

    .line 673
    .restart local v1  # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1e
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1  # "sessionId":I
    .end local p2  # "appLabel":Ljava/lang/String;
    throw v2

    .line 677
    .end local v1  # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1  # "sessionId":I
    .restart local p2  # "appLabel":Ljava/lang/String;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method
