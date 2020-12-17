.class public Lcom/meizu/settings/utils/RingtoneExt;
.super Ljava/lang/Object;
.source "RingtoneExt.java"


# instance fields
.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mRingtone:Landroid/media/Ringtone;

.field private mStreamType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/meizu/settings/utils/RingtoneExt$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/utils/RingtoneExt$1;-><init>(Lcom/meizu/settings/utils/RingtoneExt;)V

    iput-object v0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const-string v0, "audio"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mAudioManager:Landroid/media/AudioManager;

    .line 40
    iput-object p1, p0, Lcom/meizu/settings/utils/RingtoneExt;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p2}, Lcom/meizu/settings/utils/RingtoneExt;->getStreamTypeByRingtoneType(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/utils/RingtoneExt;->mStreamType:I

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/utils/RingtoneExt;)Landroid/media/Ringtone;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mRingtone:Landroid/media/Ringtone;

    return-object p0
.end method

.method private buildRingtone()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/settings/utils/RingtoneExt;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mRingtone:Landroid/media/Ringtone;

    .line 66
    iget-object v0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_29

    .line 67
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Lcom/meizu/settings/utils/RingtoneExt;->mStreamType:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x40

    .line 69
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    goto :goto_41

    .line 73
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not get a ringtone for uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RingtonePlayHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return-void
.end method

.method public static getStreamTypeByRingtoneType(I)I
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v0, :cond_10

    if-eq p0, v1, :cond_11

    const/16 v0, 0x800

    if-eq p0, v0, :cond_10

    const/16 v0, 0x1000

    if-eq p0, v0, :cond_10

    const/4 v1, 0x5

    goto :goto_11

    :cond_10
    const/4 v1, 0x2

    :cond_11
    :goto_11
    return v1
.end method


# virtual methods
.method public play(Landroid/net/Uri;)V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 84
    iget-object v0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_f
    if-nez p1, :cond_19

    const-string p0, "RingtonePlayHelper"

    const-string p1, "play uri is null, return"

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_19
    iget-object v0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    iput-object p1, p0, Lcom/meizu/settings/utils/RingtoneExt;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_2d

    .line 93
    iget-object p1, p0, Lcom/meizu/settings/utils/RingtoneExt;->mRingtone:Landroid/media/Ringtone;

    if-eqz p1, :cond_2d

    .line 94
    iget-object v0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    goto :goto_34

    .line 95
    :cond_2d
    iget-object p1, p0, Lcom/meizu/settings/utils/RingtoneExt;->mRingtone:Landroid/media/Ringtone;

    if-nez p1, :cond_34

    .line 96
    invoke-direct {p0}, Lcom/meizu/settings/utils/RingtoneExt;->buildRingtone()V

    .line 98
    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/meizu/settings/utils/RingtoneExt;->mRingtone:Landroid/media/Ringtone;

    if-eqz p1, :cond_3b

    .line 99
    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    .line 101
    :cond_3b
    iget-object p1, p0, Lcom/meizu/settings/utils/RingtoneExt;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public stop(Z)V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_7

    .line 113
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_7
    if-eqz p1, :cond_10

    .line 116
    iget-object p1, p0, Lcom/meizu/settings/utils/RingtoneExt;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/meizu/settings/utils/RingtoneExt;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_10
    return-void
.end method
