.class public final Lcom/android/server/audio/PlaybackActivityMonitor;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;,
        Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DUCK_ID:Landroid/media/VolumeShaper$Configuration;

.field private static final DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field private static final FLAGS_FOR_SILENCE_OVERRIDE:I = 0xc0

.field private static final PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

.field private static final PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

.field public static final TAG:Ljava/lang/String; = "AudioService.PlaybackActivityMonitor"

.field private static final UNDUCKABLE_PLAYER_TYPES:[I

.field private static final VOLUME_SHAPER_SYSTEM_DUCK_ID:I = 0x1

.field private static final sEventLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private final mAllowedCapturePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBannedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

.field private mHasPublicClients:Z

.field private final mMaxAlarmVolume:I

.field private final mMutedPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayerLock:Ljava/lang/Object;

.field private final mPlayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivilegedAlarmActiveCount:I

.field private mSavedAlarmVolume:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 57
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_7a

    new-array v4, v2, [F

    fill-array-data v4, :array_82

    .line 60
    invoke-virtual {v0, v3, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 65
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 63
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 68
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_ID:Landroid/media/VolumeShaper$Configuration;

    .line 70
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    sget-object v1, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 72
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    .line 76
    new-array v0, v2, [I

    fill-array-data v0, :array_8a

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->UNDUCKABLE_PLAYER_TYPES:[I

    .line 82
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    sget-object v1, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 83
    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Operation$Builder;->setXOffset(F)Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    .line 946
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x64

    const-string/jumbo v2, "playback activity as reported through PlayerBase"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    return-void

    :array_7a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_82
    .array-data 4
        0x3f800000  # 1.0f
        0x3e4ccccd  # 0.2f
    .end array-data

    :array_8a
    .array-data 4
        0xd
        0x3
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    .line 91
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    .line 98
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;-><init>(Lcom/android/server/audio/PlaybackActivityMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    .line 101
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    .line 102
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    .line 103
    sput-object p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->sListenerDeathMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 104
    sput-object p0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    .line 105
    return-void
.end method

.method static synthetic access$100()Lcom/android/server/audio/AudioEventLogger;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    return-object v0
.end method

.method static synthetic access$200()Landroid/media/VolumeShaper$Configuration;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method static synthetic access$300()Landroid/media/VolumeShaper$Operation;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method static synthetic access$400()Landroid/media/VolumeShaper$Operation;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method static synthetic access$500()Landroid/media/VolumeShaper$Configuration;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_ID:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method private anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 495
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 496
    invoke-static {v1}, Landroid/media/AudioPlaybackConfiguration;->anonymizedCopy(Landroid/media/AudioPlaybackConfiguration;)Landroid/media/AudioPlaybackConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_22
    goto :goto_9

    .line 499
    :cond_23
    return-object v0
.end method

.method private checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z
    .registers 9

    .line 137
    const-string v0, " uid:"

    const-string v1, "AudioService.PlaybackActivityMonitor"

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    if-ne v2, p2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 138
    :goto_d
    if-eqz v2, :cond_50

    .line 139
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v3

    .line 141
    :try_start_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "banning player "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/PlayerProxy;->pause()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_34} :catch_35

    .line 145
    goto :goto_50

    .line 143
    :catch_35
    move-exception p1

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error banning player "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :cond_50
    :goto_50
    return v2
.end method

.method private static checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z
    .registers 5

    .line 428
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 429
    return v0

    .line 430
    :cond_4
    if-eqz p2, :cond_2b

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result p1

    if-eq p1, p2, :cond_2b

    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forbidden operation from uid "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for player "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioService.PlaybackActivityMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v0

    .line 434
    :cond_2b
    const/4 p0, 0x1

    return p0
.end method

.method private checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V
    .registers 9

    .line 205
    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    .line 206
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-ne v1, v0, :cond_6c

    .line 207
    :cond_9
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v1

    const/16 v2, 0xc0

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6c

    .line 209
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6c

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v4

    .line 210
    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_6c

    .line 213
    if-ne p2, v0, :cond_4f

    .line 214
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-eq v1, v0, :cond_4f

    .line 215
    iget p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    if-nez p1, :cond_6c

    .line 216
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    .line 218
    iget p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    invoke-static {v2, p1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    goto :goto_6c

    .line 221
    :cond_4f
    if-eq p2, v0, :cond_6c

    .line 222
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result p1

    if-ne p1, v0, :cond_6c

    .line 223
    iget p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    if-nez p1, :cond_6c

    .line 224
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    move-result p1

    iget p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    if-ne p1, p2, :cond_6c

    .line 227
    iget p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    invoke-static {v2, p1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    .line 234
    :cond_6c
    :goto_6c
    return-void
.end method

.method private dispatchPlaybackChange(Z)V
    .registers 11

    .line 442
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 444
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 445
    monitor-exit v0

    return-void

    .line 447
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_96

    .line 453
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_11
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 455
    monitor-exit v1

    return-void

    .line 457
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 458
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_93

    .line 459
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v2

    .line 461
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 462
    monitor-exit v2

    return-void

    .line 464
    :cond_34
    iget-boolean v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    if-eqz v1, :cond_3d

    invoke-direct {p0, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    .line 465
    :goto_3e
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 466
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 467
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :try_end_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_90

    .line 470
    :try_start_50
    iget v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_65

    .line 471
    iget-boolean v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    if-eqz v5, :cond_5f

    .line 472
    iget-object v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v5, v0, p1}, Landroid/media/IPlaybackConfigDispatcher;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V

    goto :goto_65

    .line 477
    :cond_5f
    iget-object v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Landroid/media/IPlaybackConfigDispatcher;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_65} :catch_66
    .catchall {:try_start_50 .. :try_end_65} :catchall_90

    .line 484
    :cond_65
    :goto_65
    goto :goto_8d

    .line 480
    :catch_66
    move-exception v5

    .line 481
    :try_start_67
    iget v6, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    .line 482
    const-string v6, "AudioService.PlaybackActivityMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") trying to dispatch playback config change to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    :goto_8d
    goto :goto_44

    .line 486
    :cond_8e
    monitor-exit v2

    .line 487
    return-void

    .line 486
    :catchall_90
    move-exception p1

    monitor-exit v2
    :try_end_92
    .catchall {:try_start_67 .. :try_end_92} :catchall_90

    throw p1

    .line 458
    :catchall_93
    move-exception p1

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p1

    .line 447
    :catchall_96
    move-exception p1

    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p1
.end method

.method private updateAllowedCapturePolicy(Landroid/media/AudioPlaybackConfiguration;I)V
    .registers 5

    .line 354
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllowedCapturePolicy()I

    move-result v0

    if-lt v0, p2, :cond_b

    .line 356
    return-void

    .line 358
    :cond_b
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 359
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 360
    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 358
    invoke-virtual {p1, p2}, Landroid/media/AudioPlaybackConfiguration;->handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z

    .line 361
    return-void
.end method


# virtual methods
.method public disableAudioForUid(ZI)V
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 114
    if-ltz v1, :cond_18

    .line 115
    if-nez p1, :cond_3e

    .line 119
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3e

    .line 123
    :cond_18
    if-eqz p1, :cond_3e

    .line 124
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 125
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z

    .line 126
    goto :goto_24

    .line 130
    :cond_34
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_3e
    :goto_3e
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
    .registers 12

    .line 515
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 517
    monitor-exit v0

    return v2

    .line 521
    :cond_e
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 522
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 524
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 525
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 526
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v5

    if-nez v5, :cond_df

    .line 527
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 528
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_df

    .line 530
    const/4 v5, 0x0

    if-nez p3, :cond_8b

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v6

    if-ne v6, v2, :cond_8b

    .line 534
    const-string p1, "AudioService.PlaybackActivityMonitor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "not ducking player "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " uid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " pid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " - SPEECH"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 534
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    monitor-exit v0

    return v5

    .line 538
    :cond_8b
    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->UNDUCKABLE_PLAYER_TYPES:[I

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_dc

    .line 539
    const-string p1, "AudioService.PlaybackActivityMonitor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "not ducking player "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " uid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " pid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " due to type:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result p3

    .line 542
    invoke-static {p3}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 539
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    monitor-exit v0

    return v5

    .line 546
    :cond_dc
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_df
    goto/16 :goto_1d

    .line 552
    :cond_e1
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p2}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result p2

    invoke-virtual {p1, p2, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->duckUid(ILjava/util/ArrayList;)V

    .line 553
    monitor-exit v0

    .line 554
    return v2

    .line 553
    :catchall_ec
    move-exception p1

    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_ec

    throw p1
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 8

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nPlaybackActivityMonitor dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_24
    const-string v1, "\n  playback listeners:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_15d

    .line 376
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    if-eqz v5, :cond_4f

    const-string v5, "(S)"

    goto :goto_51

    :cond_4f
    const-string v5, "(P)"

    :goto_51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    goto :goto_32

    .line 380
    :cond_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_2c .. :try_end_64} :catchall_15a

    .line 381
    :try_start_64
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const-string v1, "\n  players:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 385
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 386
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 387
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 388
    if-eqz v2, :cond_99

    .line 389
    invoke-virtual {v2, p1}, Landroid/media/AudioPlaybackConfiguration;->dump(Ljava/io/PrintWriter;)V

    .line 391
    :cond_99
    goto :goto_80

    .line 393
    :cond_9a
    const-string v1, "\n  ducked players piids:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->dump(Ljava/io/PrintWriter;)V

    .line 396
    const-string v1, "\n  muted player piids:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_af
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    goto :goto_af

    .line 400
    :cond_d4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 402
    const-string v1, "\n  banned uids:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    goto :goto_e2

    .line 406
    :cond_107
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    sget-object v1, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 409
    monitor-exit v0
    :try_end_112
    .catchall {:try_start_64 .. :try_end_112} :catchall_15d

    .line 410
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 411
    :try_start_115
    const-string v0, "\n  allowed capture policies:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_124
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_155

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    goto :goto_124

    .line 415
    :cond_155
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_157
    move-exception p1

    monitor-exit v1
    :try_end_159
    .catchall {:try_start_115 .. :try_end_159} :catchall_157

    throw p1

    .line 380
    :catchall_15a
    move-exception p1

    :try_start_15b
    monitor-exit v1
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_15a

    :try_start_15c
    throw p1

    .line 409
    :catchall_15d
    move-exception p1

    monitor-exit v0
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_15d

    throw p1
.end method

.method getActivePlaybackConfigurations(Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    monitor-enter v0

    .line 674
    if-eqz p1, :cond_12

    .line 675
    :try_start_5
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    .line 678
    :cond_12
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_2a

    .line 679
    :try_start_15
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 680
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 679
    invoke-direct {p0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 681
    monitor-exit p1
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_27

    .line 682
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2a

    return-object v1

    .line 681
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v1

    .line 684
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public getAllAllowedCapturePolicies()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAllowedCapturePolicy(I)I
    .registers 4

    .line 343
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public mutePlayersForCall([I)V
    .registers 11

    .line 572
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 574
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 576
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 577
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 578
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 579
    if-nez v3, :cond_24

    .line 580
    goto :goto_d

    .line 582
    :cond_24
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    .line 583
    nop

    .line 584
    array-length v5, p1

    const/4 v6, 0x0

    move v7, v6

    :goto_30
    if-ge v7, v5, :cond_3c

    aget v8, p1, v7
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_9d

    .line 585
    if-ne v4, v8, :cond_39

    .line 586
    nop

    .line 587
    const/4 v6, 0x1

    goto :goto_3c

    .line 584
    :cond_39
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 590
    :cond_3c
    :goto_3c
    if-eqz v6, :cond_99

    .line 592
    :try_start_3e
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call: muting piid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v6, "AudioService.PlaybackActivityMonitor"

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 592
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 594
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/PlayerProxy;->setVolume(F)V

    .line 595
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_81} :catch_82
    .catchall {:try_start_3e .. :try_end_81} :catchall_9d

    .line 598
    goto :goto_99

    .line 596
    :catch_82
    move-exception v3

    .line 597
    :try_start_83
    const-string v4, "AudioService.PlaybackActivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call: error muting player "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    :cond_99
    :goto_99
    goto/16 :goto_d

    .line 601
    :cond_9b
    monitor-exit v0

    .line 602
    return-void

    .line 601
    :catchall_9d
    move-exception p1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_83 .. :try_end_9f} :catchall_9d

    throw p1
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;I)V
    .registers 8

    .line 178
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 179
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 180
    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getAllowedCapturePolicy()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 181
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1, p2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    .line 182
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 184
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_7b

    .line 185
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_46
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 187
    invoke-static {p1, v0, p3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_69

    .line 188
    sget-object p3, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;

    invoke-direct {v3, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;-><init>(ILandroid/media/AudioAttributes;)V

    invoke-virtual {p3, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 189
    invoke-virtual {v0, p2}, Landroid/media/AudioPlaybackConfiguration;->handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z

    move-result p1

    goto :goto_71

    .line 191
    :cond_69
    const-string p1, "AudioService.PlaybackActivityMonitor"

    const-string p2, "Error updating audio attributes"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move p1, v2

    .line 194
    :goto_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_46 .. :try_end_72} :catchall_78

    .line 195
    if-eqz p1, :cond_77

    .line 196
    invoke-direct {p0, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 198
    :cond_77
    return-void

    .line 194
    :catchall_78
    move-exception p1

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p1

    .line 184
    :catchall_7b
    move-exception p1

    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p1
.end method

.method public playerDeath(I)V
    .registers 3

    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    .line 367
    return-void
.end method

.method public playerEvent(III)V
    .registers 9

    .line 239
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 241
    if-nez v1, :cond_14

    .line 242
    monitor-exit v0

    return-void

    .line 244
    :cond_14
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;

    invoke-direct {v3, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 245
    const/4 v2, 0x2

    if-ne p2, v2, :cond_61

    .line 246
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 247
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 249
    sget-object p2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not starting piid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,is banned"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 251
    monitor-exit v0

    return-void

    .line 253
    :cond_60
    goto :goto_27

    .line 255
    :cond_61
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6a

    .line 257
    monitor-exit v0

    return-void

    .line 259
    :cond_6a
    invoke-static {p1, v1, p3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_79

    .line 261
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 262
    invoke-virtual {v1, p2}, Landroid/media/AudioPlaybackConfiguration;->handleStateEvent(I)Z

    move-result p1

    goto :goto_90

    .line 264
    :cond_79
    const-string p1, "AudioService.PlaybackActivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error handling event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move p1, p3

    .line 267
    :goto_90
    if-eqz p1, :cond_99

    if-ne p2, v2, :cond_99

    .line 268
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->checkDuck(Landroid/media/AudioPlaybackConfiguration;)V

    .line 270
    :cond_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_3 .. :try_end_9a} :catchall_a3

    .line 271
    if-eqz p1, :cond_a2

    .line 272
    if-nez p2, :cond_9f

    const/4 p3, 0x1

    :cond_9f
    invoke-direct {p0, p3}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 274
    :cond_a2
    return-void

    .line 270
    :catchall_a3
    move-exception p1

    :try_start_a4
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw p1
.end method

.method public playerHasOpPlayAudio(IZI)V
    .registers 6

    .line 278
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;-><init>(IZI)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 279
    return-void
.end method

.method registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V
    .registers 5

    .line 634
    if-nez p1, :cond_3

    .line 635
    return-void

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 638
    :try_start_6
    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;-><init>(Landroid/media/IPlaybackConfigDispatcher;Z)V

    .line 639
    invoke-virtual {v1}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->init()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 640
    if-nez p2, :cond_16

    .line 641
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    .line 643
    :cond_16
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_1b
    monitor-exit v0

    .line 646
    return-void

    .line 645
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public releasePlayer(II)V
    .registers 9

    .line 283
    nop

    .line 284
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_4
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 286
    invoke-static {p1, v1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_4a

    .line 287
    sget-object p2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "releasing player piid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 289
    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V

    .line 291
    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 292
    invoke-virtual {v1, v2}, Landroid/media/AudioPlaybackConfiguration;->handleStateEvent(I)Z

    move-result v2

    .line 294
    :cond_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_52

    .line 295
    if-eqz v2, :cond_51

    .line 296
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 298
    :cond_51
    return-void

    .line 294
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public setAllowedCapturePolicy(II)V
    .registers 7

    .line 317
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 318
    const/4 v1, 0x1

    if-ne p2, v1, :cond_11

    .line 321
    :try_start_6
    iget-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    monitor-exit v0

    return-void

    .line 324
    :cond_11
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_47

    .line 327
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_22
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 329
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v3

    if-ne v3, p1, :cond_41

    .line 330
    invoke-direct {p0, v2, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->updateAllowedCapturePolicy(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 332
    :cond_41
    goto :goto_2c

    .line 333
    :cond_42
    monitor-exit v1

    .line 334
    return-void

    .line 333
    :catchall_44
    move-exception p1

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_44

    throw p1

    .line 326
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .registers 7

    .line 157
    invoke-static {}, Landroid/media/AudioSystem;->newAudioPlayerId()I

    move-result v0

    .line 159
    new-instance v1, Landroid/media/AudioPlaybackConfiguration;

    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/media/AudioPlaybackConfiguration;-><init>(Landroid/media/PlayerBase$PlayerIdCard;III)V

    .line 162
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->init()V

    .line 163
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    monitor-enter p1

    .line 164
    :try_start_17
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    .line 165
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 166
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAllowedCapturePolicies:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->updateAllowedCapturePolicy(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 168
    :cond_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_56

    .line 169
    sget-object p1, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;

    invoke-direct {v2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;)V

    invoke-virtual {p1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 170
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 171
    :try_start_48
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    monitor-exit v2

    .line 173
    return v0

    .line 172
    :catchall_53
    move-exception p1

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_53

    throw p1

    .line 168
    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit p1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0
.end method

.method public unduckPlayers(Lcom/android/server/audio/FocusRequester;)V
    .registers 5

    .line 560
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result p1

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->unduckUid(ILjava/util/HashMap;)V

    .line 562
    monitor-exit v0

    .line 563
    return-void

    .line 562
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public unmutePlayersForCall()V
    .registers 9

    .line 609
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 611
    monitor-exit v0

    return-void

    .line 613
    :cond_d
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 614
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_87

    .line 615
    if-eqz v3, :cond_7f

    .line 617
    :try_start_31
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call: unmuting piid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v6, "AudioService.PlaybackActivityMonitor"

    .line 618
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 617
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 619
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v4

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v4, v5}, Landroid/media/PlayerProxy;->setVolume(F)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5b} :catch_5c
    .catchall {:try_start_31 .. :try_end_5b} :catchall_87

    .line 623
    goto :goto_7f

    .line 620
    :catch_5c
    move-exception v4

    .line 621
    :try_start_5d
    const-string v5, "AudioService.PlaybackActivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call: error unmuting player "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-static {v5, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    :cond_7f
    :goto_7f
    goto :goto_13

    .line 626
    :cond_80
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 627
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_5d .. :try_end_89} :catchall_87

    throw v1
.end method

.method unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .registers 7

    .line 649
    if-nez p1, :cond_3

    .line 650
    return-void

    .line 652
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 653
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 654
    const/4 v2, 0x0

    .line 657
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 658
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 659
    iget-object v4, v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 660
    invoke-virtual {v3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->release()V

    .line 661
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2d

    .line 663
    :cond_28
    iget-boolean v3, v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    if-nez v3, :cond_2d

    .line 664
    const/4 v2, 0x1

    .line 667
    :cond_2d
    :goto_2d
    goto :goto_d

    .line 668
    :cond_2e
    iput-boolean v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    .line 669
    monitor-exit v0

    .line 670
    return-void

    .line 669
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw p1
.end method
