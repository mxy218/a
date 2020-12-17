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
    .registers 13
    .param p1, "aa"  # Landroid/media/AudioAttributes;
    .param p2, "focusRequest"  # I
    .param p3, "grantFlags"  # I
    .param p4, "afl"  # Landroid/media/IAudioFocusDispatcher;
    .param p5, "source"  # Landroid/os/IBinder;
    .param p6, "id"  # Ljava/lang/String;
    .param p7, "hdlr"  # Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .param p8, "pn"  # Ljava/lang/String;
    .param p9, "uid"  # I
    .param p10, "ctlr"  # Lcom/android/server/audio/MediaFocusControl;
    .param p11, "sdk"  # I

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
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 105
    iput-object p10, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 106
    iput p11, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    .line 107
    return-void
.end method

.method constructor <init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V
    .registers 7
    .param p1, "afi"  # Landroid/media/AudioFocusInfo;
    .param p2, "afl"  # Landroid/media/IAudioFocusDispatcher;
    .param p3, "source"  # Landroid/os/IBinder;
    .param p4, "hdlr"  # Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .param p5, "ctlr"  # Lcom/android/server/audio/MediaFocusControl;

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

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

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
    .registers 5
    .param p0, "flags"  # I

    .line 207
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 208
    .local v0, "msg":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1a

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DELAY_OK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v3, "LOCK"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_47
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_71

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_60

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PAUSES_ON_DUCKABLE_LOSS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_71
    return-object v0
.end method

.method private static focusChangeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "focus"  # I

    .line 176
    packed-switch p0, :pswitch_data_34

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[invalid focus change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :pswitch_1a  #0x4
    const-string v0, "GAIN_TRANSIENT_EXCLUSIVE"

    return-object v0

    .line 184
    :pswitch_1d  #0x3
    const-string v0, "GAIN_TRANSIENT_MAY_DUCK"

    return-object v0

    .line 182
    :pswitch_20  #0x2
    const-string v0, "GAIN_TRANSIENT"

    return-object v0

    .line 180
    :pswitch_23  #0x1
    const-string v0, "GAIN"

    return-object v0

    .line 178
    :pswitch_26  #0x0
    const-string/jumbo v0, "none"

    return-object v0

    .line 188
    :pswitch_2a  #0xffffffff
    const-string v0, "LOSS"

    return-object v0

    .line 190
    :pswitch_2d  #0xfffffffe
    const-string v0, "LOSS_TRANSIENT"

    return-object v0

    .line 192
    :pswitch_30  #0xfffffffd
    const-string v0, "LOSS_TRANSIENT_CAN_DUCK"

    return-object v0

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
    .param p1, "gainRequest"  # I

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

    move-result-object v0

    const-string v1, "MediaFocusControl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    return v0

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
    .registers 7
    .param p1, "focusChange"  # I

    .line 419
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 421
    return v1

    .line 423
    :cond_6
    if-nez p1, :cond_9

    .line 425
    return v1

    .line 426
    :cond_9
    const/4 v0, 0x3

    const/4 v2, 0x1

    const-string v3, "MediaFocusControl"

    if-eq p1, v0, :cond_17

    const/4 v0, 0x4

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    if-ne p1, v2, :cond_3a

    :cond_17
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    if-eq v0, p1, :cond_3a

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focus gain was requested with "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dispatching "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 433
    :cond_3a
    const/4 v0, -0x3

    if-eq p1, v0, :cond_43

    const/4 v0, -0x2

    if-eq p1, v0, :cond_43

    const/4 v0, -0x1

    if-ne p1, v0, :cond_45

    .line 436
    :cond_43
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    .line 439
    :cond_45
    :goto_45
    :try_start_45
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v4}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_4e

    .line 443
    nop

    .line 444
    return v2

    .line 440
    :catch_4e
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchFocusChange: error talking to focus listener "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    return v1
.end method

.method dispatchFocusResultFromExtPolicy(I)V
    .registers 5
    .param p1, "requestResult"  # I

    .line 448
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 457
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchFocusResultFromExtPolicy(ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    .line 461
    goto :goto_21

    .line 458
    :catch_8
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchFocusResultFromExtPolicy: error talking to focus listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaFocusControl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

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
    .param p1, "focusGain"  # I
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
    .local v0, "fd":Landroid/media/IAudioFocusDispatcher;
    if-eqz v0, :cond_1a

    .line 322
    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    if-eqz v1, :cond_1a

    .line 323
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 326
    :cond_1a
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p0}, Lcom/android/server/audio/MediaFocusControl;->unduckPlayers(Lcom/android/server/audio/FocusRequester;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1f} :catch_20

    .line 329
    .end local v0  # "fd":Landroid/media/IAudioFocusDispatcher;
    goto :goto_28

    .line 327
    :catch_20
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Failure to signal gain of audio focus due to: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method handleFocusGainFromRequest(I)V
    .registers 3
    .param p1, "focusRequestResult"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "MediaFocusControl.mAudioFocusLock"
        }
    .end annotation

    .line 334
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 335
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/MediaFocusControl;->unduckPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 337
    :cond_8
    return-void
.end method

.method handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V
    .registers 10
    .param p1, "focusLoss"  # I
    .param p2, "frWinner"  # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "MediaFocusControl.mAudioFocusLock"
        }
    .end annotation

    .line 343
    const-string v0, "MediaFocusControl"

    :try_start_2
    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq p1, v1, :cond_a8

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
    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 361
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    .line 360
    invoke-virtual {v2, v3, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 362
    return-void

    .line 366
    :cond_28
    const/4 v2, 0x0

    .line 367
    .local v2, "handled":Z
    if-ne p1, v3, :cond_85

    if-eqz p2, :cond_85

    .line 371
    iget v3, p2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget v4, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_31} :catch_a9

    if-eq v3, v4, :cond_85

    .line 372
    const-string/jumbo v3, "not ducking uid "

    if-nez p3, :cond_59

    :try_start_38
    iget v4, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_59

    .line 376
    const/4 v2, 0x0

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - flags"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 378
    :cond_59
    if-nez p3, :cond_7e

    .line 379
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getSdkTarget()I

    move-result v4

    const/16 v5, 0x19

    if-gt v4, v5, :cond_7e

    .line 382
    const/4 v2, 0x0

    .line 383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - old SDK"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 385
    :cond_7e
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v3, p2, p0, p3}, Lcom/android/server/audio/MediaFocusControl;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    move-result v3

    move v2, v3

    .line 391
    :cond_85
    :goto_85
    if-eqz v2, :cond_91

    .line 396
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 397
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v4

    .line 396
    invoke-virtual {v3, v4, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 398
    return-void

    .line 401
    :cond_91
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 402
    .local v1, "fd":Landroid/media/IAudioFocusDispatcher;
    if-eqz v1, :cond_a8

    .line 407
    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 408
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v4

    .line 407
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 409
    iput-boolean v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    .line 410
    iget v3, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_a8} :catch_a9

    .line 415
    .end local v1  # "fd":Landroid/media/IAudioFocusDispatcher;
    .end local v2  # "handled":Z
    :cond_a8
    goto :goto_af

    .line 413
    :catch_a9
    move-exception v1

    .line 414
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failure to signal loss of audio focus due to:"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_af
    return-void
.end method

.method handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z
    .registers 6
    .param p1, "focusGain"  # I
    .param p2, "frWinner"  # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "MediaFocusControl.mAudioFocusLock"
        }
    .end annotation

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/audio/FocusRequester;->focusLossForGainRequest(I)I

    move-result v0

    .line 306
    .local v0, "focusLoss":I
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 307
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method hasSameBinder(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "ib"  # Landroid/os/IBinder;

    .line 136
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method hasSameClient(Ljava/lang/String;)Z
    .registers 3
    .param p1, "otherClient"  # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z
    .registers 3
    .param p1, "fd"  # Landroid/media/IAudioFocusDispatcher;

    .line 140
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method hasSamePackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pack"  # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method hasSameUid(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 148
    iget v0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
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
    .local v0, "srcRef":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 240
    .local v1, "deathHdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
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
    move-exception v2

    :cond_e
    :goto_e
    nop

    .line 244
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 245
    iput-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 246
    return-void
.end method

.method toAudioFocusInfo()Landroid/media/AudioFocusInfo;
    .registers 11

    .line 465
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
