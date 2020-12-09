.class public Lcom/android/server/media/MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionRecord$MessageHandler;,
        Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;,
        Lcom/android/server/media/MediaSessionRecord$ControllerStub;,
        Lcom/android/server/media/MediaSessionRecord$SessionCb;,
        Lcom/android/server/media/MediaSessionRecord$SessionStub;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final OPTIMISTIC_VOLUME_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionRecord"


# instance fields
.field private mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field private final mControllerCallbackHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVolume:I

.field private mDestroyed:Z

.field private mDuration:J

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:J

.field private final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field private mIsActive:Z

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLock:Ljava/lang/Object;

.field private mMaxVolume:I

.field private mMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mMetadataDescription:Ljava/lang/String;

.field private mOptimisticVolume:I

.field private final mOwnerPid:I

.field private final mOwnerUid:I

.field private final mPackageName:Ljava/lang/String;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mService:Lcom/android/server/media/MediaSessionService;

.field private final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field private final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field private final mSessionInfo:Landroid/os/Bundle;

.field private final mSessionToken:Landroid/media/session/MediaSession$Token;

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I

.field private mVolumeControlType:I

.field private mVolumeType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 67
    const-string v0, "MediaSessionRecord"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;)V
    .registers 13

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 114
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 115
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 116
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 117
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 120
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 123
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 789
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$3;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$3;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    .line 129
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    .line 130
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 131
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 132
    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 133
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 134
    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    .line 135
    new-instance p1, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 136
    new-instance p1, Landroid/media/session/MediaSession$Token;

    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {p1, p2}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 137
    new-instance p1, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$1;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 138
    new-instance p1, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-direct {p1, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 139
    iput-object p8, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 140
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 141
    new-instance p1, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    invoke-direct {p1, p0, p9}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 142
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 143
    const-class p1, Landroid/media/AudioManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManagerInternal;

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 144
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 145
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/server/media/MediaSessionRecord;Z)Z
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaSessionRecord;)J
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/media/MediaSessionRecord;J)J
    .registers 3

    .line 65
    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/server/media/MediaSessionRecord;J)J
    .registers 3

    .line 65
    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/server/media/MediaSessionRecord;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    .line 65
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p0
.end method

.method static synthetic access$2302(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    .line 65
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return p0
.end method

.method static synthetic access$2402(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3300()Z
    .registers 1

    .line 65
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/MediaController$PlaybackInfo;
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V
    .registers 8

    .line 65
    invoke-direct/range {p0 .. p7}, Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    .line 65
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 1

    .line 65
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    return-object p0
.end method

.method private getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .registers 4

    .line 761
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 762
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_28

    .line 763
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 764
    return v0

    .line 762
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 767
    :cond_28
    const/4 p1, -0x1

    return p1
.end method

.method private getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .registers 14

    .line 731
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 733
    iget-wide v2, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 734
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_66

    .line 735
    const/4 v0, 0x0

    .line 736
    if-eqz v1, :cond_62

    .line 737
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_20

    .line 738
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_20

    .line 739
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_62

    .line 740
    :cond_20
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v4

    .line 741
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 742
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_62

    .line 743
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v0

    sub-long v4, v11, v4

    long-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-long v4, v0

    .line 744
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 745
    cmp-long v0, v2, v6

    if-ltz v0, :cond_46

    cmp-long v0, v4, v2

    if-lez v0, :cond_46

    .line 746
    move-wide v8, v2

    goto :goto_4d

    .line 747
    :cond_46
    cmp-long v0, v4, v6

    if-gez v0, :cond_4c

    .line 748
    move-wide v8, v6

    goto :goto_4d

    .line 747
    :cond_4c
    move-wide v8, v4

    .line 750
    :goto_4d
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0, v1}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 751
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v10

    move-object v6, v0

    invoke-virtual/range {v6 .. v12}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 753
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 757
    :cond_62
    if-nez v0, :cond_65

    move-object v0, v1

    :cond_65
    return-object v0

    .line 734
    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v1
.end method

.method private getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .registers 9

    .line 773
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_3
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 775
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    goto :goto_12

    :cond_10
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    :goto_12
    move v6, v1

    .line 776
    new-instance v1, Landroid/media/session/MediaController$PlaybackInfo;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;)V

    monitor-exit v0

    return-object v1

    .line 779
    :cond_23
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 780
    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 781
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_40

    .line 782
    invoke-static {v7}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 783
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    .line 784
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 785
    new-instance v0, Landroid/media/session/MediaController$PlaybackInfo;

    const/4 v4, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;)V

    return-object v0

    .line 781
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V
    .registers 5

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", callback package="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$300(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exception="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionRecord"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void
.end method

.method private postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V
    .registers 21

    .line 519
    move-object v1, p0

    move/from16 v0, p7

    sget-boolean v2, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v2, :cond_3a

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjusting local volume, stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dir="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", asSystemService="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", useSuggested="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p8

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "MediaSessionRecord"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 519
    :cond_3a
    move v3, p1

    move v4, p2

    move/from16 v5, p8

    .line 526
    :goto_3e
    if-eqz v0, :cond_4b

    .line 527
    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 528
    const/16 v2, 0x3e8

    move-object v6, v0

    move v7, v2

    goto :goto_4f

    .line 530
    :cond_4b
    nop

    .line 531
    move-object v6, p4

    move/from16 v7, p6

    .line 533
    :goto_4f
    iget-object v9, v1, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v10, Lcom/android/server/media/MediaSessionRecord$2;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p8

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord$2;-><init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;II)V

    invoke-virtual {v9, v10}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void
.end method

.method private pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 686
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 688
    monitor-exit v0

    return-void

    .line 690
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_3a

    .line 691
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3c

    .line 693
    :try_start_1b
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_22} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_23
    .catchall {:try_start_1b .. :try_end_22} :catchall_3c

    .line 699
    :goto_22
    goto :goto_37

    .line 697
    :catch_23
    move-exception v3

    .line 698
    :try_start_24
    const-string/jumbo v4, "unexpected exception in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_37

    .line 694
    :catch_2b
    move-exception v3

    .line 695
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 696
    const-string v4, "Removing dead callback in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_22

    .line 690
    :goto_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 701
    :cond_3a
    monitor-exit v0

    .line 702
    return-void

    .line 701
    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method private pushExtrasUpdate()V
    .registers 6

    .line 647
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 649
    monitor-exit v0

    return-void

    .line 651
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_3c

    .line 652
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3e

    .line 654
    :try_start_1b
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_24} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25
    .catchall {:try_start_1b .. :try_end_24} :catchall_3e

    .line 660
    :goto_24
    goto :goto_39

    .line 658
    :catch_25
    move-exception v3

    .line 659
    :try_start_26
    const-string/jumbo v4, "unexpected exception in pushExtrasUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_39

    .line 655
    :catch_2d
    move-exception v3

    .line 656
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 657
    const-string v4, "Removing dead callback in pushExtrasUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_24

    .line 651
    :goto_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 662
    :cond_3c
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private pushMetadataUpdate()V
    .registers 6

    .line 588
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 590
    monitor-exit v0

    return-void

    .line 592
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_3c

    .line 593
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3e

    .line 595
    :try_start_1b
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_24} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25
    .catchall {:try_start_1b .. :try_end_24} :catchall_3e

    .line 601
    :goto_24
    goto :goto_39

    .line 599
    :catch_25
    move-exception v3

    .line 600
    :try_start_26
    const-string/jumbo v4, "unexpected exception in pushMetadataUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_39

    .line 596
    :catch_2d
    move-exception v3

    .line 597
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 598
    const-string v4, "Removing dead callback in pushMetadataUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_24

    .line 592
    :goto_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 603
    :cond_3c
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private pushPlaybackStateUpdate()V
    .registers 6

    .line 567
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 569
    monitor-exit v0

    return-void

    .line 571
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_3c

    .line 572
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3e

    .line 574
    :try_start_1b
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_24} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25
    .catchall {:try_start_1b .. :try_end_24} :catchall_3e

    .line 582
    :goto_24
    goto :goto_39

    .line 579
    :catch_25
    move-exception v3

    .line 580
    :try_start_26
    const-string/jumbo v4, "unexpected exception in pushPlaybackStateUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_39

    .line 575
    :catch_2d
    move-exception v3

    .line 576
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 577
    const-string v4, "Removing dead callback in pushPlaybackStateUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_24

    .line 571
    :goto_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 584
    :cond_3c
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private pushQueueTitleUpdate()V
    .registers 6

    .line 627
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 629
    monitor-exit v0

    return-void

    .line 631
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_3c

    .line 632
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3e

    .line 634
    :try_start_1b
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_24} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25
    .catchall {:try_start_1b .. :try_end_24} :catchall_3e

    .line 641
    :goto_24
    goto :goto_39

    .line 639
    :catch_25
    move-exception v3

    .line 640
    :try_start_26
    const-string/jumbo v4, "unexpected exception in pushQueueTitleUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_39

    .line 635
    :catch_2d
    move-exception v3

    .line 636
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 637
    const-string v4, "Removing dead callback in pushQueueTitleUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_24

    .line 631
    :goto_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 643
    :cond_3c
    monitor-exit v0

    .line 644
    return-void

    .line 643
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private pushQueueUpdate()V
    .registers 7

    .line 607
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 609
    monitor-exit v0

    return-void

    .line 611
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_47

    .line 612
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_49

    .line 614
    :try_start_1b
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez v4, :cond_25

    const/4 v4, 0x0

    goto :goto_2c

    .line 615
    :cond_25
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    invoke-direct {v4, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 614
    :goto_2c
    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_2f
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_2f} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2f} :catch_30
    .catchall {:try_start_1b .. :try_end_2f} :catchall_49

    .line 621
    :goto_2f
    goto :goto_44

    .line 619
    :catch_30
    move-exception v3

    .line 620
    :try_start_31
    const-string/jumbo v4, "unexpected exception in pushQueueUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_44

    .line 616
    :catch_38
    move-exception v3

    .line 617
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 618
    const-string v4, "Removing dead callback in pushQueueUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2f

    .line 611
    :goto_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 623
    :cond_47
    monitor-exit v0

    .line 624
    return-void

    .line 623
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private pushSessionDestroyed()V
    .registers 6

    .line 705
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v1, :cond_9

    .line 709
    monitor-exit v0

    return-void

    .line 711
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_3a

    .line 712
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_41

    .line 714
    :try_start_1b
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_22
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_22} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_23
    .catchall {:try_start_1b .. :try_end_22} :catchall_41

    .line 721
    :goto_22
    goto :goto_37

    .line 719
    :catch_23
    move-exception v3

    .line 720
    :try_start_24
    const-string/jumbo v4, "unexpected exception in pushSessionDestroyed"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_37

    .line 715
    :catch_2b
    move-exception v3

    .line 716
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 717
    const-string v4, "Removing dead callback in pushSessionDestroyed"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_22

    .line 711
    :goto_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 724
    :cond_3a
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 725
    monitor-exit v0

    .line 726
    return-void

    .line 725
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_24 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private pushVolumeUpdate()V
    .registers 7

    .line 666
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 668
    monitor-exit v0

    return-void

    .line 670
    :cond_9
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    .line 671
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_15
    if-ltz v2, :cond_3e

    .line 672
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_40

    .line 674
    :try_start_1f
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    :try_end_26
    .catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_26} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27
    .catchall {:try_start_1f .. :try_end_26} :catchall_40

    .line 680
    :goto_26
    goto :goto_3b

    .line 678
    :catch_27
    move-exception v4

    .line 679
    :try_start_28
    const-string/jumbo v5, "unexpected exception in pushVolumeUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_3b

    .line 675
    :catch_2f
    move-exception v4

    .line 676
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 677
    const-string v5, "Removing dead callback in pushVolumeUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_26

    .line 671
    :goto_3b
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 682
    :cond_3e
    monitor-exit v0

    .line 683
    return-void

    .line 682
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private setVolumeTo(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V
    .registers 15

    .line 315
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 316
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {p1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v2

    .line 317
    nop

    .line 318
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance p3, Lcom/android/server/media/MediaSessionRecord$1;

    move-object v0, p3

    move-object v1, p0

    move v3, p6

    move v4, p7

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord$1;-><init>(Lcom/android/server/media/MediaSessionRecord;IIILjava/lang/String;I)V

    invoke-virtual {p1, p3}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 330
    goto/16 :goto_8d

    .line 331
    :cond_1e
    iget p2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_24

    .line 333
    return-void

    .line 335
    :cond_24
    iget p2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p6, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p6, 0x0

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 336
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V

    .line 338
    iget p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez p1, :cond_3f

    iget p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 339
    :cond_3f
    iget p3, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 340
    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 p4, 0x3e8

    invoke-virtual {p2, p3, p4, p5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    iget p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq p1, p2, :cond_62

    .line 343
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 345
    :cond_62
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p1, p7, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 347
    sget-boolean p1, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz p1, :cond_8d

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Set optimistic volume to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " max is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionRecord"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_8d
    :goto_8d
    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V
    .registers 21

    .line 270
    move-object v0, p0

    move/from16 v8, p7

    and-int/lit8 v9, p8, 0x4

    .line 271
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v1

    if-nez v1, :cond_17

    const/high16 v1, 0x10000

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_17

    :cond_14
    move/from16 v10, p8

    goto :goto_1a

    .line 272
    :cond_17
    :goto_17
    and-int/lit8 v1, p8, -0x5

    move v10, v1

    .line 274
    :goto_1a
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 276
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 277
    move-object v0, p0

    move/from16 v2, p7

    move v3, v10

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V

    .line 279
    goto/16 :goto_e0

    .line 280
    :cond_35
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    if-nez v1, :cond_3a

    .line 282
    return-void

    .line 284
    :cond_3a
    const/16 v1, 0x65

    const-string v9, "MediaSessionRecord"

    if-eq v8, v1, :cond_e1

    const/16 v1, -0x64

    if-eq v8, v1, :cond_e1

    const/16 v1, 0x64

    if-ne v8, v1, :cond_4a

    goto/16 :goto_e1

    .line 290
    :cond_4a
    sget-boolean v1, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v1, :cond_76

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjusting volume, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", asSystemService="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dir="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 290
    :cond_76
    move-object v2, p1

    move/from16 v6, p6

    .line 294
    :goto_79
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZI)V

    .line 296
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v1, :cond_8d

    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 297
    :cond_8d
    add-int v2, v1, v8

    iput v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 298
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iget v4, v0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 299
    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 300
    iget-object v2, v0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v1, v2, :cond_b7

    .line 302
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 304
    :cond_b7
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1, v10, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 306
    sget-boolean v1, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v1, :cond_e0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusted optimistic volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_e0
    :goto_e0
    return-void

    .line 287
    :cond_e1
    :goto_e1
    const-string v0, "Muting remote playback is not supported"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method public binderDied()V
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->sessionDied(Lcom/android/server/media/MediaSessionRecord;)V

    .line 447
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ownerPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ownerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "launchIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mediaButtonReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rating type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "controllers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v1, :cond_124

    const/4 v1, 0x0

    goto :goto_128

    :cond_124
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audioAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "volumeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", controlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "queueTitle="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", size="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez p2, :cond_1ba

    const/4 p2, 0x0

    goto :goto_1be

    :cond_1ba
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_1be
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 506
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getCallback()Landroid/media/session/ISessionCallback;
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->access$200(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v0

    return-object v0
.end method

.method public getControllerBinder()Landroid/media/session/ISessionController;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method public getCurrentVolume()I
    .registers 2

    .line 427
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method public getFlags()J
    .registers 3

    .line 207
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method public getMaxVolume()I
    .registers 2

    .line 417
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getOptimisticVolume()I
    .registers 2

    .line 437
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method public getPlaybackType()I
    .registers 2

    .line 388
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .line 226
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    .line 235
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return v0
.end method

.method public getVolumeControl()I
    .registers 2

    .line 407
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return v0
.end method

.method public hasFlag(I)Z
    .registers 6

    .line 217
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public isActive()Z
    .registers 2

    .line 360
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPlaybackActive()Z
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    .line 379
    :goto_a
    invoke-static {v0}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v0

    return v0
.end method

.method public isSystemPriority()Z
    .registers 5

    .line 245
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isTransportControlEnabled()Z
    .registers 2

    .line 441
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 456
    monitor-exit v0

    return-void

    .line 458
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 459
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 460
    monitor-exit v0

    .line 461
    return-void

    .line 460
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .registers 16

    .line 484
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
