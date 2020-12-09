.class public final Lcom/android/server/tv/TvInputManagerService;
.super Lcom/android/server/SystemService;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;,
        Lcom/android/server/tv/TvInputManagerService$HardwareListener;,
        Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;,
        Lcom/android/server/tv/TvInputManagerService$SessionCallback;,
        Lcom/android/server/tv/TvInputManagerService$ServiceCallback;,
        Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;,
        Lcom/android/server/tv/TvInputManagerService$SessionState;,
        Lcom/android/server/tv/TvInputManagerService$TvInputState;,
        Lcom/android/server/tv/TvInputManagerService$ServiceState;,
        Lcom/android/server/tv/TvInputManagerService$ClientState;,
        Lcom/android/server/tv/TvInputManagerService$UserState;,
        Lcom/android/server/tv/TvInputManagerService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DVB_DIRECTORY:Ljava/lang/String; = "/dev/dvb"

.field private static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field private static final sAdapterDirPattern:Ljava/util/regex/Pattern;

.field private static final sFrontEndDevicePattern:Ljava/util/regex/Pattern;

.field private static final sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mLock:Ljava/lang/Object;

.field private final mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tv/TvInputManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 110
    nop

    .line 111
    const-string v0, "^dvb([0-9]+)\\.frontend([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    .line 112
    nop

    .line 113
    const-string v0, "^adapter([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 114
    nop

    .line 115
    const-string v0, "^frontend([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 136
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 137
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 138
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    .line 139
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager;

    new-instance v1, Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/tv/TvInputHardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 141
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 142
    :try_start_3b
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 143
    monitor-exit p1

    .line 144
    return-void

    .line 143
    :catchall_42
    move-exception v0

    monitor-exit p1
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_42

    throw v0
.end method

.method private abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 13

    .line 614
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 615
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 616
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 617
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 618
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4

    if-nez v4, :cond_3c

    if-eqz p2, :cond_39

    .line 619
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 620
    :cond_39
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_3c
    goto :goto_11

    .line 623
    :cond_3d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 624
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 625
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    .line 626
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v8

    .line 625
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 627
    goto :goto_41

    .line 628
    :cond_6b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3700(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 629
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvInputManagerService;)I
    .registers 1

    .line 102
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V
    .registers 3

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I
    .registers 5

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .registers 3

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/tv/TvInputManagerService;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder$DeathRecipient;)Landroid/os/IBinder$DeathRecipient;
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 6

    .line 102
    invoke-direct/range {p0 .. p5}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z
    .registers 4

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .registers 3

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .registers 3

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V
    .registers 4

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
    .registers 5

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 4

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    return-object p0
.end method

.method static synthetic access$5900()Ljava/util/regex/Pattern;
    .registers 1

    .line 102
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$6000()Ljava/util/regex/Pattern;
    .registers 1

    .line 102
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$6100()Ljava/util/regex/Pattern;
    .registers 1

    .line 102
    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$6700(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 2

    .line 102
    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6800(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .registers 5

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->removeUser(I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 4

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 3

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7200(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    .registers 4

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setStateLocked(Ljava/lang/String;II)V

    return-void
.end method

.method private buildTvContentRatingSystemListLocked(I)V
    .registers 6

    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    .line 354
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 356
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 357
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 360
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 361
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 362
    if-nez v2, :cond_35

    .line 363
    goto :goto_22

    .line 366
    :cond_35
    const-string v3, "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 367
    if-nez v2, :cond_60

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing meta-data \'android.media.tv.metadata.CONTENT_RATING_SYSTEMS\' on receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TvInputManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    goto :goto_22

    .line 373
    :cond_60
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v3

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 374
    invoke-static {v2, v1}, Landroid/media/tv/TvContentRatingSystemInfo;->createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;

    move-result-object v1

    .line 373
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    goto :goto_22

    .line 377
    :cond_6e
    return-void
.end method

.method private buildTvInputListLocked(I[Ljava/lang/String;)V
    .registers 14

    .line 266
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 270
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 271
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.TvInputService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 275
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_cb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 277
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 278
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v8, "android.permission.BIND_TV_INPUT"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "TvInputManagerService"

    if-nez v7, :cond_61

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping TV input "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": it does not require the permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    goto :goto_27

    .line 284
    :cond_61
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {v1, v7}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 286
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 287
    if-nez v4, :cond_8c

    .line 290
    new-instance v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    invoke-direct {v4, p0, v7, p1, v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V

    .line 291
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-direct {p0, v7, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    goto :goto_97

    .line 294
    :cond_8c
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    :goto_97
    goto :goto_a7

    .line 298
    :cond_98
    :try_start_98
    new-instance v5, Landroid/media/tv/TvInputInfo$Builder;

    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v4}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    move-result-object v4

    .line 299
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a6} :catch_b2

    .line 303
    nop

    .line 305
    :goto_a7
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    goto/16 :goto_27

    .line 300
    :catch_b2
    move-exception v4

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to load TV input "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    goto/16 :goto_27

    .line 308
    :cond_cb
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 309
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_100

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/TvInputInfo;

    .line 313
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 314
    if-nez v4, :cond_f5

    .line 315
    new-instance v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-direct {v4, v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>(Lcom/android/server/tv/TvInputManagerService$1;)V

    .line 317
    :cond_f5
    invoke-static {v4, v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1402(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;

    .line 318
    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    goto :goto_d4

    .line 321
    :cond_100
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_108
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 322
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_122

    .line 323
    invoke-direct {p0, v0, v3}, Lcom/android/server/tv/TvInputManagerService;->notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_14c

    .line 324
    :cond_122
    if-eqz p2, :cond_14c

    .line 326
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 327
    array-length v5, p2

    const/4 v6, 0x0

    :goto_134
    if-ge v6, v5, :cond_14c

    aget-object v7, p2, v6

    .line 328
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_149

    .line 329
    invoke-direct {p0, v4, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 330
    invoke-direct {p0, v0, v3}, Lcom/android/server/tv/TvInputManagerService;->notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    .line 331
    goto :goto_14c

    .line 327
    :cond_149
    add-int/lit8 v6, v6, 0x1

    goto :goto_134

    .line 335
    :cond_14c
    :goto_14c
    goto :goto_108

    .line 337
    :cond_14d
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_159
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_190

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 338
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18f

    .line 339
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v3

    .line 340
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 341
    if-eqz v3, :cond_18c

    .line 342
    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    .line 344
    :cond_18c
    invoke-direct {p0, v0, v2}, Lcom/android/server/tv/TvInputManagerService;->notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    .line 346
    :cond_18f
    goto :goto_159

    .line 348
    :cond_190
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 349
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1202(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)Ljava/util/Map;

    .line 350
    return-void
.end method

.method private clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 9

    .line 427
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    const-string v1, "error in onSessionReleased"

    const-string v2, "TvInputManagerService"

    if-eqz v0, :cond_1a

    .line 429
    :try_start_a
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 432
    goto :goto_1a

    .line 430
    :catch_16
    move-exception v0

    .line 431
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    :cond_1a
    :goto_1a
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 436
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 437
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_61

    .line 438
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V

    .line 440
    :try_start_51
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5c} :catch_5d

    .line 443
    goto :goto_61

    .line 441
    :catch_5d
    move-exception v3

    .line 442
    invoke-static {v2, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    :cond_61
    :goto_61
    goto :goto_2e

    .line 446
    :cond_62
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 447
    return-void
.end method

.method private createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z
    .registers 13

    .line 633
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p3

    .line 634
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 638
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object p2

    .line 641
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V

    .line 643
    nop

    .line 646
    const/4 v1, 0x1

    :try_start_1d
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 647
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/media/tv/ITvInputService;->createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V

    goto :goto_34

    .line 649
    :cond_2b
    aget-object v2, p2, v1

    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v0, v3}, Landroid/media/tv/ITvInputService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_34} :catch_36

    .line 656
    :goto_34
    move p1, v1

    goto :goto_51

    .line 651
    :catch_36
    move-exception p1

    .line 652
    const-string v0, "TvInputManagerService"

    const-string v2, "error in createSession"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 654
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v8

    .line 653
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 655
    const/4 p1, 0x0

    .line 657
    :goto_51
    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/view/InputChannel;->dispose()V

    .line 658
    return p1
.end method

.method private getContentResolverForUser(I)Landroid/content/ContentResolver;
    .registers 5

    .line 495
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 498
    :try_start_5
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_e} :catch_f

    .line 502
    goto :goto_28

    .line 499
    :catch_f
    move-exception p1

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to create package context as user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TvInputManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 503
    :goto_28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    return-object p1
.end method

.method private getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 5

    .line 507
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 508
    if-nez v0, :cond_17

    .line 509
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService$1;)V

    .line 510
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 512
    :cond_17
    return-object v0
.end method

.method private getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 6

    .line 516
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 517
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 518
    if-eqz v0, :cond_11

    .line 522
    return-object v0

    .line 519
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service state not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (userId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 4

    .line 540
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    return-object p1
.end method

.method private getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 5

    .line 544
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_7

    .line 549
    return-object v0

    .line 546
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session not yet created for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 6

    .line 526
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p3

    .line 527
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 528
    if-eqz p3, :cond_3b

    .line 532
    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_3a

    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    goto :goto_3a

    .line 533
    :cond_1b
    new-instance p3, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal access to the session with token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from uid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 536
    :cond_3a
    :goto_3a
    return-object p3

    .line 529
    :cond_3b
    new-instance p2, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session state not found for token "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 3

    .line 261
    nop

    .line 262
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 261
    const-string v0, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 6

    .line 754
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    .line 756
    :try_start_14
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputAdded(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 759
    goto :goto_20

    .line 757
    :catch_18
    move-exception v0

    .line 758
    const-string v1, "TvInputManagerService"

    const-string v2, "failed to report added input to callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 760
    :goto_20
    goto :goto_8

    .line 761
    :cond_21
    return-void
.end method

.method private notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 6

    .line 767
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    .line 769
    :try_start_14
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputRemoved(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 772
    goto :goto_20

    .line 770
    :catch_18
    move-exception v0

    .line 771
    const-string v1, "TvInputManagerService"

    const-string v2, "failed to report removed input to callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    :goto_20
    goto :goto_8

    .line 774
    :cond_21
    return-void
.end method

.method private notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .registers 7

    .line 795
    const-string v0, "failed to report state change to callback"

    const-string v1, "TvInputManagerService"

    if-nez p4, :cond_24

    .line 796
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/tv/ITvInputManagerCallback;

    .line 798
    :try_start_1a
    invoke-interface {p4, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 801
    goto :goto_22

    .line 799
    :catch_1e
    move-exception p4

    .line 800
    invoke-static {v1, v0, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    :goto_22
    goto :goto_e

    :cond_23
    goto :goto_2c

    .line 805
    :cond_24
    :try_start_24
    invoke-interface {p4, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    .line 808
    goto :goto_2c

    .line 806
    :catch_28
    move-exception p1

    .line 807
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    :goto_2c
    return-void
.end method

.method private notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 6

    .line 780
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    .line 782
    :try_start_14
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputUpdated(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 785
    goto :goto_20

    .line 783
    :catch_18
    move-exception v0

    .line 784
    const-string v1, "TvInputManagerService"

    const-string v2, "failed to report updated input to callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
    :goto_20
    goto :goto_8

    .line 787
    :cond_21
    return-void
.end method

.method private registerBroadcastReceivers()V
    .registers 12

    .line 177
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputManagerService$1;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    .line 242
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 244
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 245
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/tv/TvInputManagerService$2;

    invoke-direct {v6, p0}, Lcom/android/server/tv/TvInputManagerService$2;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 258
    return-void
.end method

.method private releaseSessionLocked(Landroid/os/IBinder;II)V
    .registers 8

    .line 671
    nop

    .line 673
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_39
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_2 .. :try_end_6} :catch_39
    .catchall {:try_start_2 .. :try_end_6} :catchall_36

    .line 674
    :try_start_6
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 675
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 676
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1a

    .line 677
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    .line 679
    :cond_1a
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p2

    invoke-interface {p2}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 680
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p2

    invoke-interface {p2}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2c} :catch_34
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_6 .. :try_end_2c} :catch_34
    .catchall {:try_start_6 .. :try_end_2c} :catchall_32

    .line 685
    :cond_2c
    if-eqz v1, :cond_45

    .line 686
    :goto_2e
    invoke-static {v1, v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    goto :goto_45

    .line 685
    :catchall_32
    move-exception p1

    goto :goto_49

    .line 682
    :catch_34
    move-exception p2

    goto :goto_3b

    .line 685
    :catchall_36
    move-exception p1

    move-object v1, v0

    goto :goto_49

    .line 682
    :catch_39
    move-exception p2

    move-object v1, v0

    .line 683
    :goto_3b
    :try_start_3b
    const-string v2, "TvInputManagerService"

    const-string v3, "error in releaseSession"

    invoke-static {v2, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_32

    .line 685
    if-eqz v1, :cond_45

    .line 686
    goto :goto_2e

    .line 689
    :cond_45
    :goto_45
    invoke-direct {p0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 690
    return-void

    .line 685
    :goto_49
    if-eqz v1, :cond_4e

    .line 686
    invoke-static {v1, v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    :cond_4e
    throw p1
.end method

.method private removeSessionStateLocked(Landroid/os/IBinder;I)V
    .registers 8

    .line 693
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 694
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v1

    if-ne p1, v1, :cond_e

    .line 698
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3002(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 702
    :cond_e
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 704
    if-nez v1, :cond_1b

    .line 705
    return-void

    .line 710
    :cond_1b
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 711
    if-eqz v2, :cond_57

    .line 712
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$3800(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 713
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputManagerService$ClientState;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 714
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 719
    :cond_57
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 720
    if-eqz v0, :cond_6e

    .line 721
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 723
    :cond_6e
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 726
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 727
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 729
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 730
    return-void
.end method

.method private removeUser(I)V
    .registers 9

    .line 450
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 452
    if-nez v1, :cond_f

    .line 453
    monitor-exit v0

    return-void

    .line 456
    :cond_f
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 457
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_bc

    if-eqz v4, :cond_3d

    .line 459
    :try_start_2d
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_35
    .catchall {:try_start_2d .. :try_end_34} :catchall_bc

    .line 462
    goto :goto_3d

    .line 460
    :catch_35
    move-exception v3

    .line 461
    :try_start_36
    const-string v4, "TvInputManagerService"

    const-string v5, "error in release"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    :cond_3d
    :goto_3d
    goto :goto_1b

    .line 465
    :cond_3e
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 468
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 469
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    if-eqz v4, :cond_86

    .line 470
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v4
    :try_end_67
    .catchall {:try_start_36 .. :try_end_67} :catchall_bc

    if-eqz v4, :cond_7d

    .line 472
    :try_start_69
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_74} :catch_75
    .catchall {:try_start_69 .. :try_end_74} :catchall_bc

    .line 475
    goto :goto_7d

    .line 473
    :catch_75
    move-exception v4

    .line 474
    :try_start_76
    const-string v5, "TvInputManagerService"

    const-string v6, "error in unregisterCallback"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    :cond_7d
    :goto_7d
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 479
    :cond_86
    goto :goto_51

    .line 480
    :cond_87
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 483
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 484
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 485
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 486
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 487
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 488
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3002(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 490
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 491
    monitor-exit v0

    .line 492
    return-void

    .line 491
    :catchall_bc
    move-exception p1

    monitor-exit v0
    :try_end_be
    .catchall {:try_start_76 .. :try_end_be} :catchall_bc

    throw p1
.end method

.method private resolveCallingUserId(IIILjava/lang/String;)I
    .registers 12

    .line 554
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 6

    .line 664
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/media/tv/ITvInputClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 667
    goto :goto_c

    .line 665
    :catch_4
    move-exception p1

    .line 666
    const-string p2, "TvInputManagerService"

    const-string p3, "error in onSessionCreated"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    :goto_c
    return-void
.end method

.method private setMainLocked(Landroid/os/IBinder;ZII)V
    .registers 5

    .line 734
    :try_start_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    .line 735
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p3

    if-eqz p3, :cond_14

    .line 736
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p1

    const/16 p3, 0x3e8

    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    .line 739
    :cond_14
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object p3

    invoke-direct {p0, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object p3

    .line 740
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result p3

    if-nez p3, :cond_23

    .line 741
    return-void

    .line 743
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 744
    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputSession;->setMain(Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2b
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 747
    goto :goto_33

    .line 745
    :catch_2b
    move-exception p1

    .line 746
    const-string p2, "TvInputManagerService"

    const-string p3, "error in setMain"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    :goto_33
    return-void
.end method

.method private setStateLocked(Ljava/lang/String;II)V
    .registers 7

    .line 834
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p3

    .line 835
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 836
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 837
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$4000(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v2

    .line 838
    invoke-static {v0, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$4002(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)I

    .line 839
    if-eqz v1, :cond_40

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v0

    if-nez v0, :cond_40

    .line 840
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 842
    :cond_3f
    return-void

    .line 844
    :cond_40
    if-eq v2, p2, :cond_46

    .line 845
    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    .line 847
    :cond_46
    return-void
.end method

.method private switchUser(I)V
    .registers 9

    .line 380
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_9

    .line 382
    monitor-exit v0

    return-void

    .line 384
    :cond_9
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 385
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 386
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 387
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    if-eqz v5, :cond_3f

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 388
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_3f
    goto :goto_24

    .line 391
    :cond_40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_d5

    .line 393
    :try_start_50
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/ITvInputSession;->release()V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_57} :catch_58
    .catchall {:try_start_50 .. :try_end_57} :catchall_d5

    .line 396
    goto :goto_60

    .line 394
    :catch_58
    move-exception v4

    .line 395
    :try_start_59
    const-string v5, "TvInputManagerService"

    const-string v6, "error in release"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    :goto_60
    invoke-direct {p0, v3}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 398
    goto :goto_44

    .line 400
    :cond_64
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 401
    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 402
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 403
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 404
    if-eqz v3, :cond_b8

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 405
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v4
    :try_end_96
    .catchall {:try_start_59 .. :try_end_96} :catchall_d5

    if-eqz v4, :cond_ac

    .line 407
    :try_start_98
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a3} :catch_a4
    .catchall {:try_start_98 .. :try_end_a3} :catchall_d5

    .line 410
    goto :goto_ac

    .line 408
    :catch_a4
    move-exception v4

    .line 409
    :try_start_a5
    const-string v5, "TvInputManagerService"

    const-string v6, "error in unregisterCallback"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    :cond_ac
    :goto_ac
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 413
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 415
    :cond_b8
    goto :goto_70

    .line 417
    :cond_b9
    iput p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 418
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 419
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 421
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    const/4 v2, 0x3

    .line 422
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getContentResolverForUser(I)Landroid/content/ContentResolver;

    move-result-object p1

    .line 421
    invoke-virtual {v1, v2, p1}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 422
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 423
    monitor-exit v0

    .line 424
    return-void

    .line 423
    :catchall_d5
    move-exception p1

    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_a5 .. :try_end_d7} :catchall_d5

    throw p1
.end method

.method private updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    .registers 8

    .line 559
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 560
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 561
    if-nez v1, :cond_11

    .line 562
    return-void

    .line 564
    :cond_11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 565
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 567
    return-void

    .line 569
    :cond_23
    invoke-static {v1, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3302(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    .line 573
    :cond_26
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v4, 0x1

    if-ne p2, v2, :cond_3d

    .line 574
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3400(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_3b
    move v3, v4

    goto :goto_47

    .line 580
    :cond_3d
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    .line 583
    :cond_47
    :goto_47
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v2

    if-nez v2, :cond_77

    if-eqz v3, :cond_77

    .line 586
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3500(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 589
    return-void

    .line 595
    :cond_56
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.tv.TvInputService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 596
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 597
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v2

    const v3, 0x2000001

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 596
    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3502(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)Z

    goto :goto_90

    .line 600
    :cond_77
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object p2

    if-eqz p2, :cond_90

    if-nez v3, :cond_90

    .line 606
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 607
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 600
    :cond_90
    :goto_90
    nop

    .line 609
    :goto_91
    return-void
.end method

.method private updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .registers 6

    .line 816
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 817
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 818
    const-string v2, "TvInputManagerService"

    if-nez v1, :cond_27

    .line 819
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to set input info - unknown input id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return-void

    .line 822
    :cond_27
    invoke-static {v1, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1402(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;

    .line 824
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    .line 826
    :try_start_3e
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42

    .line 829
    goto :goto_48

    .line 827
    :catch_42
    move-exception v0

    .line 828
    const-string v1, "failed to report updated input info to callback"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 830
    :goto_48
    goto :goto_32

    .line 831
    :cond_49
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5

    .line 153
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_8

    .line 154
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V

    goto :goto_1f

    .line 155
    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1f

    .line 156
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_f
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 158
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 159
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw p1

    .line 161
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onBootPhase(I)V

    .line 162
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 148
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V

    const-string/jumbo v1, "tv_input"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/TvInputManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 149
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-eq v1, p1, :cond_9

    .line 169
    monitor-exit v0

    return-void

    .line 171
    :cond_9
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 172
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method
