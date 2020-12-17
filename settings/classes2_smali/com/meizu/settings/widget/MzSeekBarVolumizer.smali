.class public Lcom/meizu/settings/widget/MzSeekBarVolumizer;
.super Ljava/lang/Object;
.source "MzSeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;,
        Lcom/meizu/settings/widget/MzSeekBarVolumizer$Observer;,
        Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;,
        Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;
    }
.end annotation


# instance fields
.field private mAffectedByRingerMode:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mLastAudibleStreamVolume:I

.field private mLastProgress:I

.field private final mMaxStreamVolume:I

.field private mMuted:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationOrRing:Z

.field private mOriginalStreamVolume:I

.field private final mReceiver:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;

.field private mRingerMode:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSilentMode:Z

.field private final mStreamType:I

.field private final mUiHandler:Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Observer;

.field private mZenMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;)V
    .registers 7

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;-><init>(Lcom/meizu/settings/widget/MzSeekBarVolumizer;Lcom/meizu/settings/widget/MzSeekBarVolumizer$1;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mUiHandler:Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;

    .line 70
    new-instance v0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;-><init>(Lcom/meizu/settings/widget/MzSeekBarVolumizer;Lcom/meizu/settings/widget/MzSeekBarVolumizer$1;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mReceiver:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastProgress:I

    .line 80
    iput v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mVolumeBeforeMute:I

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSilentMode:Z

    .line 93
    iput-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 95
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 96
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 97
    iput p2, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    .line 98
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAffectedByRingerMode:Z

    .line 99
    iget p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    invoke-static {p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mNotificationOrRing:Z

    .line 100
    iget-boolean p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz p1, :cond_56

    .line 101
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mRingerMode:I

    .line 103
    :cond_56
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mZenMode:I

    .line 104
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mMaxStreamVolume:I

    .line 105
    iput-object p4, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mCallback:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;

    .line 106
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mOriginalStreamVolume:I

    .line 107
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastAudibleStreamVolume:I

    .line 108
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mMuted:Z

    .line 109
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mCallback:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;

    if-eqz p1, :cond_95

    .line 110
    iget-boolean p2, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mMuted:Z

    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->isZenMuted()Z

    move-result p4

    invoke-interface {p1, p2, p4}, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;->onMuted(ZZ)V

    :cond_95
    if-nez p3, :cond_a7

    .line 113
    iget p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_9f

    .line 114
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_a7

    :cond_9f
    const/4 p2, 0x5

    if-ne p1, p2, :cond_a5

    .line 116
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_a7

    .line 118
    :cond_a5
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 121
    :cond_a7
    :goto_a7
    iput-object p3, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 122
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->updateSlilentMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mNotificationOrRing:Z

    return p0
.end method

.method static synthetic access$1100(I)Z
    .registers 1

    .line 51
    invoke-static {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    return p0
.end method

.method static synthetic access$1300(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Landroid/media/AudioManager;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mUiHandler:Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->updateSlilentMode()V

    return-void
.end method

.method static synthetic access$1602(Lcom/meizu/settings/widget/MzSeekBarVolumizer;I)I
    .registers 2

    .line 51
    iput p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mRingerMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAffectedByRingerMode:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/meizu/settings/widget/MzSeekBarVolumizer;I)I
    .registers 2

    .line 51
    iput p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mZenMode:I

    return p1
.end method

.method static synthetic access$1900(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Landroid/app/NotificationManager;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Landroid/widget/SeekBar;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/widget/MzSeekBarVolumizer;I)I
    .registers 2

    .line 51
    iput p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastAudibleStreamVolume:I

    return p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/widget/MzSeekBarVolumizer;I)I
    .registers 2

    .line 51
    iput p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastAudibleStreamVolume:I

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mMuted:Z

    return p0
.end method

.method static synthetic access$502(Lcom/meizu/settings/widget/MzSeekBarVolumizer;Z)Z
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mMuted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mCallback:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->isZenMuted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->updateSlider()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Landroid/content/Context;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static isNotificationOrRing(I)Z
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method private isZenMuted()Z
    .registers 3

    .line 141
    iget-boolean v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mZenMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    :cond_9
    iget p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mZenMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private onInitSample()V
    .registers 3

    .line 188
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->onStopSample()V

    .line 189
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 190
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_16

    .line 191
    iget p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_16
    return-void
.end method

.method private onStartSample()V
    .registers 5

    const-string v0, "SeekBarVolumizer"

    .line 203
    invoke-virtual {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->isSamplePlaying()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 204
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->onInitSample()V

    .line 205
    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mCallback:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;

    if-eqz v1, :cond_14

    .line 206
    invoke-interface {v1, p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;->onSampleStarting(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z

    move-result v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_6c

    .line 209
    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_6c

    .line 211
    :try_start_1b
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 212
    invoke-virtual {v1}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    const/16 v3, 0xc0

    .line 213
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 211
    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MzSeekBarVolumizer mRingtone.getUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_54
    .catchall {:try_start_1b .. :try_end_54} :catchall_55

    goto :goto_6c

    :catchall_55
    move-exception v1

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error playing ringtone, stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6c
    :goto_6c
    return-void
.end method

.method private onStopSample()V
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz p0, :cond_7

    .line 235
    invoke-virtual {p0}, Landroid/media/Ringtone;->stop()V

    :cond_7
    return-void
.end method

.method private postSetVolume(I)V
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 296
    :cond_5
    iput p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastProgress:I

    const/4 p1, 0x0

    .line 297
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private postStartSample()V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 197
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private postStopSample()V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateSlider()V
    .registers 5

    .line 397
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2a

    .line 398
    iget v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    .line 400
    iget-object v2, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    if-eqz v2, :cond_25

    if-nez v0, :cond_25

    .line 402
    invoke-virtual {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->stopSample()V

    .line 404
    :cond_25
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mUiHandler:Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/settings/widget/MzSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    :cond_2a
    return-void
.end method

.method private updateSlilentMode()V
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 470
    :cond_d
    :goto_d
    iput-boolean v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSilentMode:Z

    return-void
.end method


# virtual methods
.method public getSeekBar()Landroid/widget/SeekBar;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    if-eq v0, v1, :cond_3c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_38

    const/4 v3, 0x3

    if-eq v0, v3, :cond_34

    const/4 v3, 0x4

    const-string v4, "SeekBarVolumizer"

    if-eq v0, v3, :cond_29

    .line 182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid SeekBarVolumizer message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_29
    const-string p1, "setRingerModeInternal"

    .line 178
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_54

    .line 175
    :cond_34
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->onInitSample()V

    goto :goto_54

    .line 172
    :cond_38
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->onStopSample()V

    goto :goto_54

    .line 169
    :cond_3c
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->onStartSample()V

    goto :goto_54

    .line 163
    :cond_40
    iget-boolean p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mMuted:Z

    if-eqz p1, :cond_49

    iget p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastProgress:I

    if-nez p1, :cond_49

    return v1

    .line 165
    :cond_49
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    iget p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastProgress:I

    const/16 v2, 0x400

    invoke-virtual {p1, v0, p0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_54
    return v1
.end method

.method public isSamplePlaying()Z
    .registers 1

    .line 318
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    if-eqz p3, :cond_9

    .line 288
    iget-boolean p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSilentMode:Z

    if-nez p1, :cond_9

    .line 289
    invoke-direct {p0, p2}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->postSetVolume(I)V

    :cond_9
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    .line 305
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 306
    iget-boolean v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSilentMode:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    if-lez p1, :cond_1e

    .line 309
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopTrackingTouch,mStreamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeekBarVolumizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->postSetVolume(I)V

    .line 314
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->postStartSample()V

    return-void
.end method

.method public setNotificationOrRingActived(Z)V
    .registers 2

    .line 465
    iput-boolean p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mNotificationOrRing:Z

    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 133
    :cond_8
    iput-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 134
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 136
    invoke-virtual {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->updateSeekBar()V

    .line 137
    iget-object p1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public start()V
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    return-void

    .line 272
    :cond_5
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 274
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 275
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    new-instance v0, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Observer;

    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Observer;-><init>(Lcom/meizu/settings/widget/MzSeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mVolumeObserver:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Observer;

    .line 277
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    aget-object v1, v1, v2

    .line 278
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mVolumeObserver:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Observer;

    .line 277
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 280
    iget-object p0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mReceiver:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->setListening(Z)V

    return-void
.end method

.method public startSample()V
    .registers 1

    .line 322
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->postStartSample()V

    return-void
.end method

.method public stop()V
    .registers 6

    .line 240
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 241
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    iget v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x2

    const-string v3, "SeekBarVolumizer"

    const-string v4, "volume_settings"

    if-eq v1, v2, :cond_45

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1a

    goto :goto_55

    .line 255
    :cond_1a
    iget v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastProgress:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "volume_notification"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {v1, v4, v3, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_55

    .line 248
    :cond_2b
    iget v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastProgress:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_34

    .line 249
    iget v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastAudibleStreamVolume:I

    iput v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastProgress:I

    .line 251
    :cond_34
    iget v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastProgress:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "volume_music"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {v1, v4, v3, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_55

    .line 244
    :cond_45
    iget v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mLastProgress:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "volume_ring"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {v1, v4, v3, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 261
    :goto_55
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->postStopSample()V

    .line 262
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mVolumeObserver:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 263
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mReceiver:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/MzSeekBarVolumizer$Receiver;->setListening(Z)V

    .line 264
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 265
    iget-object v0, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 266
    iput-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 267
    iput-object v1, p0, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->mVolumeObserver:Lcom/meizu/settings/widget/MzSeekBarVolumizer$Observer;

    return-void
.end method

.method public stopSample()V
    .registers 1

    .line 326
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->postStopSample()V

    return-void
.end method

.method protected updateSeekBar()V
    .registers 1

    const p0, 0x0

    throw p0
.end method
