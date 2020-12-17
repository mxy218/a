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
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

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

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 157
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "handleMediaEvent"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 158
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/media/MediaSessionService;->mLongPressTimeout:I

    .line 159
    nop

    .line 160
    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 159
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 161
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getCallingPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/media/MediaSessionService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/media/MediaSessionService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateActiveSessionListeners()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;
    .registers 9
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # Ljava/lang/String;
    .param p5, "x5"  # Landroid/media/session/ISessionCallback;
    .param p6, "x6"  # Ljava/lang/String;
    .param p7, "x7"  # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-direct/range {p0 .. p7}, Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # Landroid/media/session/IActiveSessionsListener;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # Landroid/media/session/ISession2TokensListener;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSession2TokensListenerLocked(Landroid/media/session/ISession2TokensListener;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # Landroid/media/session/MediaSession$Token;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getMediaSessionRecordLocked(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/media/MediaSessionService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget v0, p0, Lcom/android/server/media/MediaSessionService;->mLongPressTimeout:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # Landroid/view/KeyEvent;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService;->enforceStatusBarServicePermission(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # Landroid/content/ComponentName;
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # I

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/media/MediaSessionService;II)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->hasStatusBarServicePermission(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/media/MediaSessionService;)Landroid/app/INotificationManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/media/MediaSessionService;)Landroid/media/AudioManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/media/MediaSessionService;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/media/MediaSessionService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService;->mHasFeatureLeanback:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/media/MediaSessionService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushSessionsChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;
    .param p1, "x1"  # Lcom/android/server/media/MediaSessionRecord;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService;

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;
    .registers 10
    .param p1, "callerPid"  # I
    .param p2, "callerUid"  # I
    .param p3, "userId"  # I
    .param p4, "callerPackageName"  # Ljava/lang/String;
    .param p5, "cb"  # Landroid/media/session/ISessionCallback;
    .param p6, "tag"  # Ljava/lang/String;
    .param p7, "sessionInfo"  # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_3
    invoke-direct/range {p0 .. p7}, Lcom/android/server/media/MediaSessionService;->createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 562
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;
    .registers 24
    .param p1, "callerPid"  # I
    .param p2, "callerUid"  # I
    .param p3, "userId"  # I
    .param p4, "callerPackageName"  # Ljava/lang/String;
    .param p5, "cb"  # Landroid/media/session/ISessionCallback;
    .param p6, "tag"  # Ljava/lang/String;
    .param p7, "sessionInfo"  # Landroid/os/Bundle;

    .line 574
    move-object/from16 v11, p0

    move/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct {v11, v12}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v14

    .line 575
    .local v14, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    const-string v0, "MediaSessionService"

    if-eqz v14, :cond_70

    .line 580
    new-instance v15, Lcom/android/server/media/MediaSessionRecord;

    iget-object v1, v11, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 581
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

    .line 583
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    :try_start_2a
    invoke-interface/range {p5 .. p5}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_32} :catch_65

    .line 586
    nop

    .line 588
    invoke-static {v14}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 589
    iget-object v2, v11, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {v2, v12}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 591
    sget-boolean v2, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v2, :cond_62

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 591
    :cond_62
    move-object/from16 v3, p6

    .line 594
    :goto_64
    return-object v1

    .line 584
    :catch_65
    move-exception v0

    move-object/from16 v3, p6

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Media Session owner died prematurely."

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 576
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v1  # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_70
    move-object/from16 v3, p6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request from invalid user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Session request from invalid user."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 5
    .param p1, "session"  # Lcom/android/server/media/MediaSessionRecord;

    .line 455
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 459
    .local v0, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-ne v1, p1, :cond_35

    .line 460
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 461
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    .line 462
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    goto :goto_3e

    .line 465
    :cond_35
    if-eqz v0, :cond_3e

    .line 466
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 471
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getCallback()Landroid/media/session/ISessionCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_4b

    .line 474
    goto :goto_4c

    .line 472
    :catch_4b
    move-exception v1

    .line 475
    :goto_4c
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->onDestroy()V

    .line 476
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 477
    return-void
.end method

.method private dispatchVolumeKeyLongPressLocked(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "keyEvent"  # Landroid/view/KeyEvent;

    .line 712
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    if-nez v0, :cond_9

    .line 713
    return-void

    .line 716
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/session/IOnVolumeKeyLongPressListener;->onVolumeKeyLongPress(Landroid/view/KeyEvent;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    .line 719
    goto :goto_2f

    .line 717
    :catch_13
    move-exception v0

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to volume key long-press listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method private enforceMediaPermissions(Landroid/content/ComponentName;III)V
    .registers 7
    .param p1, "compName"  # Landroid/content/ComponentName;
    .param p2, "pid"  # I
    .param p3, "uid"  # I
    .param p4, "resolvedUserId"  # I

    .line 505
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->hasStatusBarServicePermission(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 506
    :cond_7
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 507
    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_24

    .line 509
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/media/MediaSessionService;->isEnabledNotificationListener(Landroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_24

    .line 511
    :cond_1c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing permission to control media."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_24
    :goto_24
    return-void
.end method

.method private enforcePackageName(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 480
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 483
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "packages":[Ljava/lang/String;
    array-length v1, v0

    .line 485
    .local v1, "packageCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_20

    .line 486
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 487
    return-void

    .line 485
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 490
    .end local v2  # "i":I
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "packageName is not owned by the calling process"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 481
    .end local v0  # "packages":[Ljava/lang/String;
    .end local v1  # "packageCount":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceStatusBarServicePermission(Ljava/lang/String;II)V
    .registers 7
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "pid"  # I
    .param p3, "uid"  # I

    .line 521
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService;->hasStatusBarServicePermission(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 524
    return-void

    .line 522
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only System UI and Settings may "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findIndexOfSession2TokensListenerLocked(Landroid/media/session/ISession2TokensListener;)I
    .registers 5
    .param p1, "listener"  # Landroid/media/session/ISession2TokensListener;

    .line 607
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 608
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

    .line 609
    return v0

    .line 607
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 612
    .end local v0  # "i":I
    :cond_22
    const/4 v0, -0x1

    return v0
.end method

.method private findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    .registers 5
    .param p1, "listener"  # Landroid/media/session/IActiveSessionsListener;

    .line 598
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 599
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

    .line 600
    return v0

    .line 598
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 603
    .end local v0  # "i":I
    :cond_22
    const/4 v0, -0x1

    return v0
.end method

.method private getActiveSessionsLocked(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"  # I
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
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    const/4 v1, -0x1

    if-ne p1, v1, :cond_28

    .line 248
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 249
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_27

    .line 250
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 252
    .end local v2  # "size":I
    .end local v3  # "i":I
    :cond_27
    goto :goto_50

    .line 253
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    .line 254
    .local v2, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v2, :cond_45

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSessions failed. Unknown user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MediaSessionService"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-object v0

    .line 258
    :cond_45
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    .end local v2  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :goto_50
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    move-result v2

    if-eqz v2, :cond_66

    if-eq p1, v1, :cond_60

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 263
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    if-ne p1, v1, :cond_66

    .line 264
    :cond_60
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 266
    :cond_66
    return-object v0
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .registers 3

    .line 196
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 197
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    return-object v1
.end method

.method private getCallingPackageName(I)Ljava/lang/String;
    .registers 4
    .param p1, "uid"  # I

    .line 704
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_13

    array-length v1, v0

    if-lez v1, :cond_13

    .line 706
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 708
    :cond_13
    const-string v1, ""

    return-object v1
.end method

.method private getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .registers 4
    .param p1, "userId"  # I

    .line 723
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 724
    .local v0, "fullUserId":I
    if-gez v0, :cond_b

    .line 725
    const/4 v1, 0x0

    return-object v1

    .line 727
    :cond_b
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    return-object v1
.end method

.method private getMediaSessionRecordLocked(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .registers 4
    .param p1, "sessionToken"  # Landroid/media/session/MediaSession$Token;

    .line 731
    invoke-virtual {p1}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 732
    .local v0, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v0, :cond_17

    .line 733
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionStack;->getMediaSessionRecord(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    return-object v1

    .line 735
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasStatusBarServicePermission(II)Z
    .registers 5
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 516
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isEnabledNotificationListener(Landroid/content/ComponentName;II)Z
    .registers 8
    .param p1, "compName"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I
    .param p3, "forUserId"  # I

    .line 538
    const/4 v0, 0x0

    if-eq p2, p3, :cond_4

    .line 540
    return v0

    .line 542
    :cond_4
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    const-string v2, "MediaSessionService"

    if-eqz v1, :cond_1e

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking if enabled notification listener "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_1e
    if-eqz p1, :cond_2d

    .line 547
    :try_start_20
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return v0

    .line 549
    :catch_27
    move-exception v1

    .line 550
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Dead NotificationManager in isEnabledNotificationListener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    .end local v1  # "e":Landroid/os/RemoteException;
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
    .registers 11
    .param p1, "userId"  # I

    .line 645
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 646
    .local v0, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v0, :cond_1e

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushRemoteVolumeUpdateLocked failed. No user with id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void

    .line 651
    :cond_1e
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_21
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 653
    .local v2, "size":I
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v3

    .line 654
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    if-nez v3, :cond_33

    const/4 v4, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_59

    .line 656
    .local v4, "token":Landroid/media/session/MediaSession$Token;
    :goto_37
    add-int/lit8 v5, v2, -0x1

    .local v5, "i":I
    :goto_39
    if-ltz v5, :cond_52

    .line 658
    :try_start_3b
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/media/IRemoteVolumeController;

    .line 659
    .local v6, "cb":Landroid/media/IRemoteVolumeController;
    invoke-interface {v6, v4}, Landroid/media/IRemoteVolumeController;->updateRemoteController(Landroid/media/session/MediaSession$Token;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_46} :catch_47
    .catchall {:try_start_3b .. :try_end_46} :catchall_59

    .line 662
    .end local v6  # "cb":Landroid/media/IRemoteVolumeController;
    goto :goto_4f

    .line 660
    :catch_47
    move-exception v6

    .line 661
    .local v6, "e":Ljava/lang/Exception;
    :try_start_48
    const-string v7, "MediaSessionService"

    const-string v8, "Error sending default remote volume."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    .end local v6  # "e":Ljava/lang/Exception;
    :goto_4f
    add-int/lit8 v5, v5, -0x1

    goto :goto_39

    .line 664
    .end local v5  # "i":I
    :cond_52
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 665
    .end local v2  # "size":I
    .end local v3  # "record":Lcom/android/server/media/MediaSessionRecord;
    .end local v4  # "token":Landroid/media/session/MediaSession$Token;
    monitor-exit v1

    .line 666
    return-void

    .line 665
    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_48 .. :try_end_5b} :catchall_59

    throw v2
.end method

.method private pushSessionsChanged(I)V
    .registers 12
    .param p1, "userId"  # I

    .line 616
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 617
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 618
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v1, :cond_22

    .line 619
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pushSessionsChanged failed. No user with id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    monitor-exit v0

    return-void

    .line 622
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    move-result-object v2

    .line 623
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 624
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v4, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30
    if-ge v5, v3, :cond_42

    .line 626
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 628
    .end local v5  # "i":I
    :cond_42
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 629
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .restart local v5  # "i":I
    :goto_4d
    if-ltz v5, :cond_76

    .line 630
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 631
    .local v6, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    iget v7, v6, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_60

    iget v7, v6, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_78

    if-ne v7, p1, :cond_73

    .line 633
    :cond_60
    :try_start_60
    iget-object v7, v6, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {v7, v4}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_65} :catch_66
    .catchall {:try_start_60 .. :try_end_65} :catchall_78

    .line 638
    goto :goto_73

    .line 634
    :catch_66
    move-exception v7

    .line 635
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_67
    const-string v8, "MediaSessionService"

    const-string v9, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    iget-object v8, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 629
    .end local v6  # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v7  # "e":Landroid/os/RemoteException;
    :cond_73
    :goto_73
    add-int/lit8 v5, v5, -0x1

    goto :goto_4d

    .line 641
    .end local v1  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v2  # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v3  # "size":I
    .end local v4  # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    .end local v5  # "i":I
    :cond_76
    monitor-exit v0

    .line 642
    return-void

    .line 641
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_67 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method private updateActiveSessionListeners()V
    .registers 8

    .line 424
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_53

    .line 426
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_55

    .line 428
    .local v2, "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_15
    iget-object v3, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    iget v4, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->pid:I

    iget v5, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->uid:I

    iget v6, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_20} :catch_21
    .catchall {:try_start_15 .. :try_end_20} :catchall_55

    .line 440
    goto :goto_50

    .line 430
    :catch_21
    move-exception v3

    .line 431
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_22
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActiveSessionsListener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is no longer authorized. Disconnecting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_55

    .line 435
    :try_start_44
    iget-object v4, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-interface {v4, v5}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4e} :catch_4f
    .catchall {:try_start_44 .. :try_end_4e} :catchall_55

    .line 439
    goto :goto_50

    .line 437
    :catch_4f
    move-exception v4

    .line 425
    .end local v2  # "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v3  # "e":Ljava/lang/SecurityException;
    :goto_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 442
    .end local v1  # "i":I
    :cond_53
    :try_start_53
    monitor-exit v0

    .line 443
    return-void

    .line 442
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private updateUser()V
    .registers 10

    .line 389
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 391
    .local v1, "manager":Landroid/os/UserManager;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 392
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 393
    .local v2, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v2, :cond_71

    .line 394
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 395
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 396
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5a

    .line 398
    :cond_39
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 399
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5a

    .line 400
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    new-instance v7, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v7, p0, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    :cond_5a
    :goto_5a
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_70

    .line 404
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    .end local v4  # "userInfo":Landroid/content/pm/UserInfo;
    :cond_70
    goto :goto_1d

    .line 409
    :cond_71
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 410
    .local v3, "currentFullUserId":I
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iput-object v4, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 411
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    if-nez v4, :cond_b9

    .line 412
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find FullUserInfo for the current user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v4, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-direct {v4, p0, v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;-><init>(Lcom/android/server/media/MediaSessionService;I)V

    iput-object v4, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 414
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_b9

    .line 416
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    :cond_b9
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 420
    .end local v1  # "manager":Landroid/os/UserManager;
    .end local v2  # "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3  # "currentFullUserId":I
    monitor-exit v0

    .line 421
    return-void

    .line 420
    :catchall_c0
    move-exception v1

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_3 .. :try_end_c2} :catchall_c0

    throw v1
.end method


# virtual methods
.method destroySession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 4
    .param p1, "session"  # Lcom/android/server/media/MediaSessionRecord;

    .line 383
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 385
    monitor-exit v0

    .line 386
    return-void

    .line 385
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected enforcePhoneStatePermission(II)V
    .registers 5
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 370
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_b

    .line 374
    return-void

    .line 372
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold the MODIFY_PHONE_STATE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getSession2TokensLocked(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"  # I
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
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    const/4 v1, -0x1

    if-ne p1, v1, :cond_20

    .line 272
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 273
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .end local v1  # "i":I
    :cond_1f
    goto :goto_2b

    .line 276
    :cond_20
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    :goto_2b
    return-object v0
.end method

.method public synthetic lambda$onStart$0$MediaSessionService(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 6
    .param p1, "config"  # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "isRemoved"  # Z

    .line 175
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 177
    return-void

    .line 179
    :cond_8
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    nop

    .line 181
    :try_start_c
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 180
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 182
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v1, :cond_21

    .line 183
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 185
    .end local v1  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_21
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw v1
.end method

.method public monitor()V
    .registers 3

    .line 364
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_3
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V
    .registers 10
    .param p1, "flags"  # I
    .param p2, "session"  # Lcom/android/server/media/MediaSessionRecord;

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
    .local v1, "size":I
    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_36

    .line 291
    .local v2, "token":Landroid/media/session/MediaSession$Token;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_16
    if-ltz v3, :cond_2f

    .line 293
    :try_start_18
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/media/IRemoteVolumeController;

    .line 294
    .local v4, "cb":Landroid/media/IRemoteVolumeController;
    invoke-interface {v4, v2, p1}, Landroid/media/IRemoteVolumeController;->remoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_24
    .catchall {:try_start_18 .. :try_end_23} :catchall_36

    .line 297
    .end local v4  # "cb":Landroid/media/IRemoteVolumeController;
    goto :goto_2c

    .line 295
    :catch_24
    move-exception v4

    .line 296
    .local v4, "e":Ljava/lang/Exception;
    :try_start_25
    const-string v5, "MediaSessionService"

    const-string v6, "Error sending volume change."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_2c
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 299
    .end local v3  # "i":I
    :cond_2f
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 300
    .end local v1  # "size":I
    .end local v2  # "token":Landroid/media/session/MediaSession$Token;
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 5
    .param p1, "record"  # Lcom/android/server/media/MediaSessionRecord;

    .line 693
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 694
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 695
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    nop

    .line 696
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionStack;->getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    .line 697
    .local v2, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    if-ne p1, v2, :cond_19

    .line 698
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 700
    .end local v1  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v2  # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_19
    monitor-exit v0

    .line 701
    return-void

    .line 700
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 6
    .param p1, "record"  # Lcom/android/server/media/MediaSessionRecord;

    .line 319
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 321
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v1, :cond_21

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_21

    .line 325
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 326
    .end local v1  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v0

    .line 327
    return-void

    .line 322
    .restart local v1  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_21
    :goto_21
    const-string v2, "MediaSessionService"

    const-string v3, "Unknown session changed playback type. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    monitor-exit v0

    return-void

    .line 326
    .end local v1  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public onSessionPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V
    .registers 9
    .param p1, "record"  # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"  # I
    .param p3, "newState"  # I

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "updateSessions":Z
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    .line 307
    .local v2, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v2, :cond_2f

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->contains(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_2f

    .line 311
    :cond_19
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/media/MediaSessionStack;->onPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)Z

    move-result v3

    move v0, v3

    .line 312
    .end local v2  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_38

    .line 313
    if-eqz v0, :cond_2e

    .line 314
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 316
    :cond_2e
    return-void

    .line 308
    .restart local v2  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_2f
    :goto_2f
    :try_start_2f
    const-string v3, "MediaSessionService"

    const-string v4, "Unknown session changed playback state. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit v1

    return-void

    .line 312
    .end local v2  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public onStart()V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    const-string/jumbo v1, "media_session"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 166
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

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
    .param p1, "userId"  # I

    .line 331
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 333
    return-void
.end method

.method public onStopUser(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 344
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

    .line 345
    :cond_1b
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 349
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v1, :cond_37

    .line 350
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v2

    if-ne v2, p1, :cond_34

    .line 351
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->destroySessionsForUserLocked(I)V

    .line 352
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_37

    .line 354
    :cond_34
    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->destroySessionsForUserLocked(I)V

    .line 357
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 358
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 359
    .end local v1  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_41

    throw v1
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 337
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSwitchUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 339
    return-void
.end method

.method pushSession2TokensChangedLocked(I)V
    .registers 10
    .param p1, "userId"  # I

    .line 669
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object v1

    .line 670
    .local v1, "allSession2Tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object v2

    .line 672
    .local v2, "session2Tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_3f

    .line 673
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    .line 675
    .local v4, "listenerRecord":Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_start_1b
    iget v5, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    if-ne v5, v0, :cond_25

    .line 676
    iget-object v5, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v5, v1}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V

    goto :goto_2e

    .line 677
    :cond_25
    iget v5, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    if-ne v5, p1, :cond_2e

    .line 678
    iget-object v5, v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v5, v2}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2e} :catch_2f

    .line 683
    :cond_2e
    :goto_2e
    goto :goto_3c

    .line 680
    :catch_2f
    move-exception v5

    .line 681
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "MediaSessionService"

    const-string v7, "Failed to notify Session2Token change. Removing listener."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 672
    .end local v4  # "listenerRecord":Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    .end local v5  # "e":Landroid/os/RemoteException;
    :goto_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 685
    .end local v3  # "i":I
    :cond_3f
    return-void
.end method

.method sessionDied(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 4
    .param p1, "session"  # Lcom/android/server/media/MediaSessionRecord;

    .line 377
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 379
    monitor-exit v0

    .line 380
    return-void

    .line 379
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 7
    .param p1, "record"  # Lcom/android/server/media/MediaSessionRecord;

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
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
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

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 242
    .end local v1  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_44
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method updateSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 8
    .param p1, "record"  # Lcom/android/server/media/MediaSessionRecord;

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
    .local v1, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-nez v1, :cond_16

    .line 208
    const-string v2, "MediaSessionService"

    const-string v3, "Unknown session updated. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    const-string v2, "MediaSessionService"

    const-string v3, "Unknown session updated. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-exit v0

    return-void

    .line 221
    :cond_55
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaSessionStack;->onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V

    .line 223
    :goto_5c
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 224
    .end local v1  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw v1
.end method
