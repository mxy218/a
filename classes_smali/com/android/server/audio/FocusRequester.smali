.class public Lcom/android/server/audio/FocusRequester;
.super Ljava/lang/Object;
.source "FocusRequester.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"


# instance fields
.field private final mAttributes:Landroid/media/AudioAttributes;

.field private final mCallingUid:I

.field private final mClientId:Ljava/lang/String;

.field private mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

.field private final mFocusController:Lcom/android/server/audio/MediaFocusControl;

.field private mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mFocusGainRequest:I

.field private mFocusLossReceived:I

.field private mFocusLossWasNotified:Z

.field private final mGrantFlags:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSdkTarget:I

.field private final mSourceRef:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V
    .registers 12

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 95
    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 96
    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 97
    iput-object p6, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 98
    iput-object p7, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 99
    iput-object p8, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 100
    iput p9, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 101
    iput p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 102
    iput p3, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 103
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 104
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 105
    iput-object p10, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 106
    iput p11, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 107
    return-void
.end method

.method constructor <init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V
    .registers 7

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    .line 112
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 115
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 118
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 119
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getSdkTarget()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 121
    iput-object p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 122
    iput-object p3, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 123
    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 124
    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 125
    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .registers 4

    .line 207
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 208
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1a

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DELAY_OK"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_1a
    and-int/lit8 v1, p0, 0x4

    const-string/jumbo v2, "|"

    if-eqz v1, :cond_47

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "LOCK"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_47
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_71

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_60

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PAUSES_ON_DUCKABLE_LOSS"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_71
    return-object v0
.end method

.method private static focusChangeToString(I)Ljava/lang/String;
    .registers 3

    .line 176
    packed-switch p0, :pswitch_data_34

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[invalid focus change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 186
    :pswitch_1a  #0x4
    const-string p0, "GAIN_TRANSIENT_EXCLUSIVE"

    return-object p0

    .line 184
    :pswitch_1d  #0x3
    const-string p0, "GAIN_TRANSIENT_MAY_DUCK"

    return-object p0

    .line 182
    :pswitch_20  #0x2
    const-string p0, "GAIN_TRANSIENT"

    return-object p0

    .line 180
    :pswitch_23  #0x1
    const-string p0, "GAIN"

    return-object p0

    .line 178
    :pswitch_26  #0x0
    const-string/jumbo p0, "none"

    return-object p0

    .line 188
    :pswitch_2a  #0xffffffff
    const-string p0, "LOSS"

    return-object p0

    .line 190
    :pswitch_2d  #0xfffffffe
    const-string p0, "LOSS_TRANSIENT"

    return-object p0

    .line 192
    :pswitch_30  #0xfffffffd
    const-string p0, "LOSS_TRANSIENT_CAN_DUCK"

    return-object p0

    nop

    :pswitch_data_34
    .packed-switch -0x3
        :pswitch_30  #fffffffd
        :pswitch_2d  #fffffffe
        :pswitch_2a  #ffffffff
        :pswitch_26  #00000000
        :pswitch_23  #00000001
        :pswitch_20  #00000002
        :pswitch_1d  #00000003
        :pswitch_1a  #00000004
    .end packed-switch
.end method

.method private focusGainToString()Ljava/lang/String;
    .registers 2

    .line 199
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    invoke-static {v0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private focusLossForGainRequest(I)I
    .registers 6

    .line 261
    const/4 v0, 0x1

    const/4 v1, -0x3

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq p1, v0, :cond_10

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_24

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    goto :goto_2e

    .line 263
    :cond_10
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq v0, v1, :cond_4b

    if-eq v0, v2, :cond_4b

    if-eq v0, v3, :cond_4b

    if-eqz v0, :cond_4b

    .line 272
    :cond_1a
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq v0, v1, :cond_4a

    if-eq v0, v2, :cond_4a

    if-eq v0, v3, :cond_49

    if-eqz v0, :cond_4a

    .line 281
    :cond_24
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq v0, v1, :cond_48

    if-eq v0, v2, :cond_47

    if-eq v0, v3, :cond_46

    if-eqz v0, :cond_48

    .line 291
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focusLossForGainRequest() for invalid focus request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaFocusControl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 p1, 0x0

    return p1

    .line 288
    :cond_46
    return v3

    .line 286
    :cond_47
    return v2

    .line 284
    :cond_48
    return v1

    .line 278
    :cond_49
    return v3

    .line 276
    :cond_4a
    return v2

    .line 268
    :cond_4b
    return v3
.end method

.method private focusLossToString()Ljava/lang/String;
    .registers 2

    .line 203
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    invoke-static {v0}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dispatchFocusChange(I)I
    .registers 8

    .line 419
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 420
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 422
    return v1

    .line 424
    :cond_6
    if-nez p1, :cond_9

    .line 426
    return v1

    .line 427
    :cond_9
    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, "MediaFocusControl"

    if-eq p1, v2, :cond_17

    const/4 v2, 0x4

    if-eq p1, v2, :cond_17

    const/4 v2, 0x2

    if-eq p1, v2, :cond_17

    if-ne p1, v3, :cond_3a

    :cond_17
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    if-eq v2, p1, :cond_3a

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focus gain was requested with "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", dispatching "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 434
    :cond_3a
    const/4 v2, -0x3

    if-eq p1, v2, :cond_43

    const/4 v2, -0x2

    if-eq p1, v2, :cond_43

    const/4 v2, -0x1

    if-ne p1, v2, :cond_45

    .line 437
    :cond_43
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 440
    :cond_45
    :goto_45
    :try_start_45
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4a} :catch_4c

    .line 444
    nop

    .line 445
    return v3

    .line 441
    :catch_4c
    move-exception p1

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchFocusChange: error talking to focus listener "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    return v1
.end method

.method dispatchFocusResultFromExtPolicy(I)V
    .registers 4

    .line 449
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 450
    if-nez v0, :cond_5

    .line 454
    return-void

    .line 460
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchFocusResultFromExtPolicy(ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 464
    goto :goto_24

    .line 461
    :catch_b
    move-exception p1

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchFocusResultFromExtPolicy: error talking to focus listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFocusControl"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    :goto_24
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {p0}, Lcom/android/server/audio/FocusRequester;->focusGainToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    .line 227
    invoke-static {v1}, Lcom/android/server/audio/FocusRequester;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- loss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {p0}, Lcom/android/server/audio/FocusRequester;->focusLossToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- notified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -- uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -- attr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- sdk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 251
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 252
    return-void
.end method

.method getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method getClientId()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method getClientUid()I
    .registers 2

    .line 152
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    return v0
.end method

.method getGainRequest()I
    .registers 2

    .line 160
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    return v0
.end method

.method getGrantFlags()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    return v0
.end method

.method getSdkTarget()I
    .registers 2

    .line 172
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    return v0
.end method

.method handleFocusGain(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "MediaFocusControl.mAudioFocusLock"
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 314
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 316
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 317
    if-eqz v0, :cond_1a

    .line 322
    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    if-eqz v1, :cond_1a

    .line 323
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 326
    :cond_1a
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1, p0}, Lcom/android/server/audio/MediaFocusControl;->unduckPlayers(Lcom/android/server/audio/FocusRequester;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1f} :catch_20

    .line 329
    goto :goto_28

    .line 327
    :catch_20
    move-exception p1

    .line 328
    const-string v0, "MediaFocusControl"

    const-string v1, "Failure to signal gain of audio focus due to: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    :goto_28
    return-void
.end method

.method handleFocusGainFromRequest(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "MediaFocusControl.mAudioFocusLock"
        }
    .end annotation

    .line 334
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 335
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1, p0}, Lcom/android/server/audio/MediaFocusControl;->unduckPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 337
    :cond_8
    return-void
.end method

.method handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "MediaFocusControl.mAudioFocusLock"
        }
    .end annotation

    .line 343
    const-string v0, "MediaFocusControl"

    :try_start_2
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq p1, v1, :cond_ab

    .line 344
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 345
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 352
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->mustNotifyFocusOwnerOnDuck()Z

    move-result v2

    const/4 v3, -0x3

    if-nez v2, :cond_28

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_28

    .line 360
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 361
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object p2

    .line 360
    invoke-virtual {p1, p2, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 362
    return-void

    .line 366
    :cond_28
    nop

    .line 367
    if-ne p1, v3, :cond_87

    if-eqz p2, :cond_87

    .line 371
    iget p1, p2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_31} :catch_ac

    if-eq p1, v2, :cond_87

    .line 372
    const-string/jumbo p1, "not ducking uid "

    if-nez p3, :cond_5a

    :try_start_38
    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5a

    .line 376
    nop

    .line 377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - flags"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_88

    .line 378
    :cond_5a
    if-nez p3, :cond_80

    .line 379
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getSdkTarget()I

    move-result v2

    const/16 v3, 0x19

    if-gt v2, v3, :cond_80

    .line 382
    nop

    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - old SDK"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_88

    .line 385
    :cond_80
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/audio/MediaFocusControl;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    move-result p1

    goto :goto_88

    .line 391
    :cond_87
    move p1, v1

    :goto_88
    if-eqz p1, :cond_94

    .line 396
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 397
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object p2

    .line 396
    invoke-virtual {p1, p2, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 398
    return-void

    .line 401
    :cond_94
    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 402
    if-eqz p1, :cond_ab

    .line 407
    iget-object p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 408
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object p3

    .line 407
    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 409
    iput-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 410
    iget p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget-object p3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_ab} :catch_ac

    .line 415
    :cond_ab
    goto :goto_b2

    .line 413
    :catch_ac
    move-exception p1

    .line 414
    const-string p2, "Failure to signal loss of audio focus due to:"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    :goto_b2
    return-void
.end method

.method handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "MediaFocusControl.mAudioFocusLock"
        }
    .end annotation

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/audio/FocusRequester;->focusLossForGainRequest(I)I

    move-result p1

    .line 306
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 307
    const/4 p2, -0x1

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method hasSameBinder(Landroid/os/IBinder;)Z
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method hasSameClient(Ljava/lang/String;)Z
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method hasSamePackage(Ljava/lang/String;)Z
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method hasSameUid(I)Z
    .registers 3

    .line 148
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method isLockedFocusOwner()Z
    .registers 2

    .line 132
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method release()V
    .registers 4

    .line 237
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 238
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 240
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    .line 241
    const/4 v2, 0x0

    :try_start_9
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_e

    .line 243
    :catch_d
    move-exception v0

    :cond_e
    :goto_e
    nop

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 245
    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 246
    return-void
.end method

.method toAudioFocusInfo()Landroid/media/AudioFocusInfo;
    .registers 11

    .line 468
    new-instance v9, Landroid/media/AudioFocusInfo;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    iget v6, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    iget v8, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v9
.end method
