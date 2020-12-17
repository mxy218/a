.class public Lcom/android/settingslib/volume/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final AUDIO_MANAGER_FLAGS:[I

.field private static final AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 35
    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/settingslib/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    const-string v1, "SHOW_UI"

    const-string v2, "VIBRATE"

    const-string v3, "PLAY_SOUND"

    const-string v4, "ALLOW_RINGER_MODES"

    const-string v5, "REMOVE_SOUND_AND_VIBRATE"

    const-string v6, "SHOW_VIBRATE_HINT"

    const-string v7, "SHOW_SILENT_HINT"

    const-string v8, "FROM_KEY"

    const-string v9, "SHOW_UI_WARNINGS"

    .line 47
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    return-void

    :array_22
    .array-data 4
        0x1
        0x10
        0x4
        0x2
        0x8
        0x800
        0x80
        0x1000
        0x400
    .end array-data
.end method

.method public static audioManagerFlagsToString(I)Ljava/lang/String;
    .registers 3

    .line 146
    sget-object v0, Lcom/android/settingslib/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    sget-object v1, Lcom/android/settingslib/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/volume/Util;->bitFieldToString(I[I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static bitFieldToString(I[I[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 151
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 152
    :goto_b
    array-length v2, p1

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_2a

    .line 153
    aget v2, p1, v1

    and-int/2addr v2, p0

    if-eqz v2, :cond_23

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_1e
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_23
    aget v2, p1, v1

    not-int v2, v2

    and-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2a
    if-eqz p0, :cond_3d

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_35

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_35
    const-string p1, "UNKNOWN_"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static emptyToNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    if-eqz p0, :cond_8

    .line 167
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "phone"

    .line 184
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_12

    .line 185
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static logTag(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vol."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1f

    goto :goto_24

    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_24
    return-object p0
.end method

.method public static mediaMetadataToString(Landroid/media/MediaMetadata;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_4
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static playbackInfoToString(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_4
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    invoke-static {v0}, Lcom/android/settingslib/volume/Util;->playbackInfoTypeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v1

    invoke-static {v1}, Lcom/android/settingslib/volume/Util;->volumeProviderControlToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 83
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "PlaybackInfo[vol=%s,max=%s,type=%s,vc=%s],atts=%s"

    .line 82
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static playbackInfoTypeToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_18

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    const-string p0, "REMOTE"

    return-object p0

    :cond_1b
    const-string p0, "LOCAL"

    return-object p0
.end method

.method public static playbackStateStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p0, "STATE_PLAYING"

    return-object p0

    :cond_20
    const-string p0, "STATE_PAUSED"

    return-object p0

    :cond_23
    const-string p0, "STATE_STOPPED"

    return-object p0

    :cond_26
    const-string p0, "STATE_NONE"

    return-object p0
.end method

.method public static playbackStateToString(Landroid/media/session/PlaybackState;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settingslib/volume/Util;->playbackStateStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .registers 4

    .line 174
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/volume/Util;->emptyToNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settingslib/volume/Util;->emptyToNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x0

    return p0

    .line 175
    :cond_14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static volumeProviderControlToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VOLUME_CONTROL_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p0, "VOLUME_CONTROL_ABSOLUTE"

    return-object p0

    :cond_1d
    const-string p0, "VOLUME_CONTROL_RELATIVE"

    return-object p0

    :cond_20
    const-string p0, "VOLUME_CONTROL_FIXED"

    return-object p0
.end method
