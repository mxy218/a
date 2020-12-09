.class public Lcom/android/server/media/MediaSessionService;
.super Lcom/android/server/SystemService;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$Controller2Callback;,
        Lcom/android/server/media/MediaSessionService$MessageHandler;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl;,
        Lcom/android/server/media/MediaSessionService$SettingsObserver;,
        Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;,
        Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;,
        Lcom/android/server/media/MediaSessionService$FullUserRecord;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final DEBUG_KEY_EVENT:Z = true

.field private static final MEDIA_KEY_LISTENER_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionService"

.field private static final WAKELOCK_TIMEOUT:I = 0x1388


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field private mAudioService:Landroid/media/IAudioService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

.field private final mFullUserIds:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

.field private final mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

.field private mHasFeatureLeanback:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLock:Ljava/lang/Object;

.field private final mLongPressTimeout:I

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mNotificationManager:Landroid/app/INotificationManager;

.field final mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IRemoteVolumeController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSession2TokensListenerRecords:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSession2TokensPerUser:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field private final mSessionsListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/media/MediaSessionService$FullUserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 102
    const-string v0, "MediaSessionService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 117
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 148
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    .line 154
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 155
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 156
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 157
    const/4 v0, 0x1

    const-string v1, "handleMediaEvent"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 158
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    iput p1, p0, Lcom/android/server/media/MediaSessionService;->mLongPressTimeout:I

    .line 159
    nop

    .line 160
    const-string/jumbo p1, "notification"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 159
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 161
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getCallingPackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/media/MediaSessionService;)Z
    .registers 1

    .line 100
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/media/MediaSessionService;)V
    .registers 1

    .line 100
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateActiveSessionListeners()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V
    .registers 3

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-direct/range {p0 .. p7}, Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSession2TokensListenerLocked(Landroid/media/session/ISession2TokensListener;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getMediaSessionRecordLocked(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/server/media/MediaSessionService;)I
    .registers 1

    .line 100
    iget p0, p0, Lcom/android/server/media/MediaSessionService;->mLongPressTimeout:I

    return p0
.end method

.method static synthetic access$3700(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V
    .registers 4

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService;->enforceStatusBarServicePermission(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V
    .registers 5

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/media/MediaSessionService;II)Z
    .registers 3

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->hasStatusBarServicePermission(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/android/server/media/MediaSessionService;)Landroid/app/INotificationManager;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/server/media/MediaSessionService;)Landroid/media/AudioManagerInternal;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/server/media/MediaSessionService;)Z
    .registers 1

    .line 100
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    return p0
.end method

.method static synthetic access$5600(Lcom/android/server/media/MediaSessionService;I)V
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushSessionsChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method private createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    invoke-direct/range {p0 .. p7}, Lcom/android/server/media/MediaSessionService;->createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 558
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method private createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;
    .registers 24

    .line 570
    move-object/from16 v0, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct {v0, v11}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v13

    .line 571
    const-string v14, "MediaSessionService"

    if-eqz v13, :cond_6b

    .line 576
    new-instance v15, Lcom/android/server/media/MediaSessionRecord;

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 577
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    move-object v1, v15

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/media/MediaSessionRecord;-><init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;)V

    .line 579
    :try_start_2a
    invoke-interface/range {p5 .. p5}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v15, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_32} :catch_62

    .line 582
    nop

    .line 584
    invoke-static {v13}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 585
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {v0, v11}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 587
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_61

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created session for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_61
    return-object v15

    .line 580
    :catch_62
    move-exception v0

    .line 581
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Media Session owner died prematurely."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 572
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request from invalid user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Session request from invalid user."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 4

    .line 451
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-ne v1, p1, :cond_35

    .line 456
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 457
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    .line 458
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    goto :goto_3e

    .line 461
    :cond_35
    if-eqz v0, :cond_3e

    .line 462
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 467
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getCallback()Landroid/media/session/ISessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_4b

    .line 470
    goto :goto_4c

    .line 468
    :catch_4b
    move-exception v0

    .line 471
    :goto_4c
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->onDestroy()V

    .line 472
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 473
    return-void
.end method

.method private dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V
    .registers 4

    .line 708
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    if-nez v0, :cond_9

    .line 709
    return-void

    .line 712
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/session/IOnVolumeKeyLongPressListener;->onVolumeKeyLongPress(Landroid/view/KeyEvent;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    .line 715
    goto :goto_2f

    .line 713
    :catch_13
    move-exception v0

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to volume key long-press listener"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :goto_2f
    return-void
.end method

.method private enforceMediaPermissions(Landroid/content/ComponentName;III)V
    .registers 7

    .line 501
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->hasStatusBarServicePermission(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 502
    :cond_7
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 503
    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_24

    .line 505
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/media/MediaSessionService;->isEnabledNotificationListener(Landroid/content/ComponentName;II)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_24

    .line 507
    :cond_1c
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Missing permission to control media."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 509
    :cond_24
    :goto_24
    return-void
.end method

.method private enforcePackageName(Ljava/lang/String;I)V
    .registers 6

    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 479
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 480
    array-length v0, p2

    .line 481
    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_20

    .line 482
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 483
    return-void

    .line 481
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 486
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "packageName is not owned by the calling process"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 477
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "packageName may not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private enforceStatusBarServicePermission(Ljava/lang/String;II)V
    .registers 5

    .line 517
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->hasStatusBarServicePermission(II)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 520
    return-void

    .line 518
    :cond_7
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Only System UI and Settings may "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private findIndexOfSession2TokensListenerLocked(Landroid/media/session/ISession2TokensListener;)I
    .registers 5

    .line 603
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 604
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v1}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1f

    .line 605
    return v0

    .line 603
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 608
    :cond_22
    const/4 p1, -0x1

    return p1
.end method

.method private findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    .registers 5

    .line 594
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 595
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {v1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1f

    .line 596
    return v0

    .line 594
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 599
    :cond_22
    const/4 p1, -0x1

    return p1
.end method

.method private getActiveSessionsLocked(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_29

    .line 248
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 249
    move v4, v1

    :goto_10
    if-ge v4, v3, :cond_28

    .line 250
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 252
    :cond_28
    goto :goto_51

    .line 253
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    .line 254
    if-nez v3, :cond_46

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSessions failed. Unknown user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaSessionService"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-object v0

    .line 258
    :cond_46
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    :goto_51
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    move-result v3

    if-eqz v3, :cond_66

    if-eq p1, v2, :cond_61

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 263
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    if-ne p1, v2, :cond_66

    .line 264
    :cond_61
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 266
    :cond_66
    return-object v0
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .registers 2

    .line 196
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    return-object v0
.end method

.method private getCallingPackageName(I)Ljava/lang/String;
    .registers 3

    .line 700
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 701
    if-eqz p1, :cond_13

    array-length v0, p1

    if-lez v0, :cond_13

    .line 702
    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    .line 704
    :cond_13
    const-string p1, ""

    return-object p1
.end method

.method private getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .registers 4

    .line 719
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 720
    if-gez p1, :cond_b

    .line 721
    const/4 p1, 0x0

    return-object p1

    .line 723
    :cond_b
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    return-object p1
.end method

.method private getMediaSessionRecordLocked(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .registers 3

    .line 727
    invoke-virtual {p1}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 728
    if-eqz v0, :cond_17

    .line 729
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionStack;->getMediaSessionRecord(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p1

    return-object p1

    .line 731
    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasStatusBarServicePermission(II)Z
    .registers 5

    .line 512
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private isEnabledNotificationListener(Landroid/content/ComponentName;II)Z
    .registers 7

    .line 534
    const/4 v0, 0x0

    if-eq p2, p3, :cond_4

    .line 536
    return v0

    .line 538
    :cond_4
    sget-boolean p3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    const-string v1, "MediaSessionService"

    if-eqz p3, :cond_1e

    .line 539
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking if enabled notification listener "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_1e
    if-eqz p1, :cond_2d

    .line 543
    :try_start_20
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {p3, p1, p2}, Landroid/app/INotificationManager;->isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z

    move-result p1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return p1

    .line 545
    :catch_27
    move-exception p1

    .line 546
    const-string p2, "Dead NotificationManager in isEnabledNotificationListener"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    :cond_2d
    return v0
.end method

.method private isGlobalPriorityActiveLocked()Z
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private pushRemoteVolumeUpdateLocked(I)V
    .registers 7

    .line 641
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 642
    if-nez v0, :cond_1e

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pushRemoteVolumeUpdateLocked failed. No user with id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 647
    :cond_1e
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 648
    :try_start_21
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 649
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionStack;->getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p1

    .line 650
    if-nez p1, :cond_33

    const/4 p1, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_59

    .line 652
    :goto_37
    add-int/lit8 v2, v2, -0x1

    :goto_39
    if-ltz v2, :cond_52

    .line 654
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/IRemoteVolumeController;

    .line 655
    invoke-interface {v0, p1}, Landroid/media/IRemoteVolumeController;->updateRemoteController(Landroid/media/session/MediaSession$Token;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_46} :catch_47
    .catchall {:try_start_3b .. :try_end_46} :catchall_59

    .line 658
    goto :goto_4f

    .line 656
    :catch_47
    move-exception v0

    .line 657
    :try_start_48
    const-string v3, "MediaSessionService"

    const-string v4, "Error sending default remote volume."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    :goto_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    .line 660
    :cond_52
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 661
    monitor-exit v1

    .line 662
    return-void

    .line 661
    :catchall_59
    move-exception p1

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_48 .. :try_end_5b} :catchall_59

    throw p1
.end method

.method private pushSessionsChanged(I)V
    .registers 8

    .line 612
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 614
    if-nez v1, :cond_22

    .line 615
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pushSessionsChanged failed. No user with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    monitor-exit v0

    return-void

    .line 618
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object v1

    .line 619
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 620
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 621
    const/4 v4, 0x0

    :goto_30
    if-ge v4, v2, :cond_42

    .line 622
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 624
    :cond_42
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 625
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4d
    if-ltz v1, :cond_76

    .line 626
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 627
    iget v4, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_60

    iget v4, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_78

    if-ne v4, p1, :cond_73

    .line 629
    :cond_60
    :try_start_60
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {v2, v3}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_65} :catch_66
    .catchall {:try_start_60 .. :try_end_65} :catchall_78

    .line 634
    goto :goto_73

    .line 630
    :catch_66
    move-exception v2

    .line 631
    :try_start_67
    const-string v4, "MediaSessionService"

    const-string v5, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 625
    :cond_73
    :goto_73
    add-int/lit8 v1, v1, -0x1

    goto :goto_4d

    .line 637
    :cond_76
    monitor-exit v0

    .line 638
    return-void

    .line 637
    :catchall_78
    move-exception p1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_67 .. :try_end_7a} :catchall_78

    throw p1
.end method

.method private updateActiveSessionListeners()V
    .registers 8

    .line 420
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_53

    .line 422
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_55

    .line 424
    :try_start_15
    iget-object v3, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    iget v4, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->pid:I

    iget v5, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->uid:I

    iget v6, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_20} :catch_21
    .catchall {:try_start_15 .. :try_end_20} :catchall_55

    .line 436
    goto :goto_50

    .line 426
    :catch_21
    move-exception v3

    .line 427
    :try_start_22
    const-string v3, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActiveSessionsListener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is no longer authorized. Disconnecting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_55

    .line 431
    :try_start_44
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 432
    invoke-interface {v2, v3}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4e} :catch_4f
    .catchall {:try_start_44 .. :try_end_4e} :catchall_55

    .line 435
    goto :goto_50

    .line 433
    :catch_4f
    move-exception v2

    .line 421
    :goto_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 438
    :cond_53
    :try_start_53
    monitor-exit v0

    .line 439
    return-void

    .line 438
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private updateUser()V
    .registers 8

    .line 385
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 387
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 388
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 389
    if-eqz v1, :cond_71

    .line 390
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 391
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 392
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    iget v5, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5a

    .line 394
    :cond_39
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 395
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5a

    .line 396
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    new-instance v5, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v5, p0, v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    :cond_5a
    :goto_5a
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_70

    .line 400
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    :cond_70
    goto :goto_1d

    .line 405
    :cond_71
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 406
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iput-object v2, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 407
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    if-nez v2, :cond_b9

    .line 408
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find FullUserInfo for the current user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-direct {v2, p0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    iput-object v2, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 410
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b9

    .line 412
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    :cond_b9
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 416
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :catchall_c0
    move-exception v1

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_3 .. :try_end_c2} :catchall_c0

    throw v1
.end method


# virtual methods
.method destroySession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 381
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method protected enforcePhoneStatePermission(II)V
    .registers 5

    .line 366
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_b

    .line 370
    return-void

    .line 368
    :cond_b
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Must hold the MODIFY_PHONE_STATE permission."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getSession2TokensLocked(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1f

    .line 272
    const/4 p1, 0x0

    :goto_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_2a

    .line 273
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 276
    :cond_1f
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    :cond_2a
    return-object v0
.end method

.method public synthetic lambda$onStart$0$MediaSessionService(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 4

    .line 175
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 177
    return-void

    .line 179
    :cond_8
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 180
    nop

    .line 181
    :try_start_c
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object p1

    .line 182
    if-eqz p1, :cond_21

    .line 183
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 185
    :cond_21
    monitor-exit p2

    .line 186
    return-void

    .line 185
    :catchall_23
    move-exception p1

    monitor-exit p2
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw p1
.end method

.method public monitor()V
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_3
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V
    .registers 8

    .line 285
    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    if-nez v0, :cond_7

    .line 286
    return-void

    .line 288
    :cond_7
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_a
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 290
    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p2
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_36

    .line 291
    add-int/lit8 v1, v1, -0x1

    :goto_16
    if-ltz v1, :cond_2f

    .line 293
    :try_start_18
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IRemoteVolumeController;

    .line 294
    invoke-interface {v2, p2, p1}, Landroid/media/IRemoteVolumeController;->remoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_24
    .catchall {:try_start_18 .. :try_end_23} :catchall_36

    .line 297
    goto :goto_2c

    .line 295
    :catch_24
    move-exception v2

    .line 296
    :try_start_25
    const-string v3, "MediaSessionService"

    const-string v4, "Error sending volume change."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    :goto_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 299
    :cond_2f
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 5

    .line 689
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 691
    nop

    .line 692
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionStack;->getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    .line 693
    if-ne p1, v2, :cond_19

    .line 694
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 696
    :cond_19
    monitor-exit v0

    .line 697
    return-void

    .line 696
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_21

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_21

    .line 321
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 322
    monitor-exit v0

    .line 323
    return-void

    .line 318
    :cond_21
    :goto_21
    const-string p1, "MediaSessionService"

    const-string v1, "Unknown session changed playback type. Ignoring."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    monitor-exit v0

    return-void

    .line 322
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method onSessionPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V
    .registers 7

    .line 304
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_21

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_21

    .line 310
    :cond_18
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/media/MediaSessionStack;->onPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V

    .line 311
    monitor-exit v0

    .line 312
    return-void

    .line 307
    :cond_21
    :goto_21
    const-string p1, "MediaSessionService"

    const-string p2, "Unknown session changed playback state. Ignoring."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    monitor-exit v0

    return-void

    .line 311
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public onStart()V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    const-string v1, "media_session"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 166
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 168
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    .line 169
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 170
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 171
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mActivityManager:Landroid/app/ActivityManager;

    .line 172
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 173
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    new-instance v1, Lcom/android/server/media/-$$Lambda$MediaSessionService$za_9dlUSlnaiZw6eCdPVEZq0XLw;

    invoke-direct {v1, p0}, Lcom/android/server/media/-$$Lambda$MediaSessionService$za_9dlUSlnaiZw6eCdPVEZq0XLw;-><init>(Lcom/android/server/media/MediaSessionService;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    .line 188
    new-instance v0, Lcom/android/server/media/MediaSessionService$SettingsObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/server/media/MediaSessionService$SettingsObserver;-><init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService$1;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    .line 189
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SettingsObserver;->access$100(Lcom/android/server/media/MediaSessionService$SettingsObserver;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    .line 192
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 193
    return-void
.end method

.method public onStartUser(I)V
    .registers 4

    .line 327
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 329
    return-void
.end method

.method public onStopUser(I)V
    .registers 5

    .line 340
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_1b
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_37

    .line 346
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v2

    if-ne v2, p1, :cond_34

    .line 347
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->destroySessionsForUserLocked(I)V

    .line 348
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_37

    .line 350
    :cond_34
    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->destroySessionsForUserLocked(I)V

    .line 353
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 354
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 355
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_41

    throw p1
.end method

.method public onSwitchUser(I)V
    .registers 4

    .line 333
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSwitchUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 335
    return-void
.end method

.method pushSession2TokensChangedLocked(I)V
    .registers 9

    .line 665
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object v1

    .line 666
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object v2

    .line 668
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_11
    if-ltz v3, :cond_3f

    .line 669
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    .line 671
    :try_start_1b
    iget v5, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    if-ne v5, v0, :cond_25

    .line 672
    iget-object v4, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v4, v1}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V

    goto :goto_2e

    .line 673
    :cond_25
    iget v5, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    if-ne v5, p1, :cond_2e

    .line 674
    iget-object v4, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v4, v2}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2e} :catch_2f

    .line 679
    :cond_2e
    :goto_2e
    goto :goto_3c

    .line 676
    :catch_2f
    move-exception v4

    .line 677
    const-string v5, "MediaSessionService"

    const-string v6, "Failed to notify Session2Token change. Removing listener."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 668
    :goto_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 681
    :cond_3f
    return-void
.end method

.method sessionDied(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3

    .line 373
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 375
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 7

    .line 228
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v2, p1, :cond_44

    .line 231
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global priority session is changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 234
    if-eqz v1, :cond_44

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 239
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 242
    :cond_44
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_46
    move-exception p1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p1
.end method

.method updateSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 8

    .line 205
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 207
    if-nez v1, :cond_16

    .line 208
    const-string p1, "MediaSessionService"

    const-string v1, "Unknown session updated. Ignoring."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    monitor-exit v0

    return-void

    .line 211
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_42

    .line 213
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global priority session is updated, active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    goto :goto_5c

    .line 217
    :cond_42
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 218
    const-string p1, "MediaSessionService"

    const-string v1, "Unknown session updated. Ignoring."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-exit v0

    return-void

    .line 221
    :cond_55
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V

    .line 223
    :goto_5c
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 224
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw p1
.end method
