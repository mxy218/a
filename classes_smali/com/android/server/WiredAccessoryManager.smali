.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;,
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_LINEOUT:I = 0x20

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final DP_AUDIO_CONNS:[Ljava/lang/String;

.field private static final LOG:Z = true

.field private static final MSG_HIDE_NOTIFY_DIALOG:I = 0x4

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final MSG_SHOW_NOTIFY_DIALOG:I = 0x3

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final NAME_DP_AUDIO:Ljava/lang/String; = "soc:qcom,msm-ext-disp"

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SUPPORTED_HEADSETS:I = 0x3f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDpCount:I

.field private final mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUnsupportedDeviceLock:Ljava/lang/Object;

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 64
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "soc:qcom,msm-ext-disp/1/0"

    const-string/jumbo v1, "soc:qcom,msm-ext-disp/0/0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "inputManager"  # Lcom/android/server/input/InputManagerService;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mUnsupportedDeviceLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mDialog:Landroid/app/AlertDialog;

    .line 363
    new-instance v1, Lcom/android/server/WiredAccessoryManager$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 114
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 115
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "WiredAccessoryManager"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 116
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 117
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 118
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 120
    nop

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 123
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    .line 126
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    .line 127
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100([IILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"  # [I
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Ljava/lang/String;

    .line 63
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateBit([IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/WiredAccessoryManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/WiredAccessoryManager;

    .line 63
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WiredAccessoryManager;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/WiredAccessoryManager;
    .param p1, "x1"  # Z

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager;->showOrHideUnsupportedDeviceDialog(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/WiredAccessoryManager;

    .line 63
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 63
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryManager;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/WiredAccessoryManager;

    .line 63
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .registers 1

    .line 63
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/WiredAccessoryManager;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/WiredAccessoryManager;

    .line 63
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return v0
.end method

.method private onSystemReady()V
    .registers 7

    .line 131
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_3c

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "switchValues":I
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    const/16 v3, -0x100

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 135
    or-int/lit8 v0, v0, 0x4

    .line 137
    :cond_14
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_1f

    .line 139
    or-int/lit8 v0, v0, 0x10

    .line 141
    :cond_1f
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_2a

    .line 142
    or-int/lit8 v0, v0, 0x40

    .line 147
    :cond_2a
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v2, :cond_35

    .line 148
    or-int/lit16 v0, v0, 0x80

    .line 150
    :cond_35
    const-wide/16 v1, 0x0

    const/16 v3, 0xd4

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 156
    .end local v0  # "switchValues":I
    :cond_3c
    invoke-static {}, Lcom/android/server/ExtconUEventObserver;->extconExists()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->uEventCount()I

    move-result v0

    if-lez v0, :cond_5b

    .line 157
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_55

    .line 158
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "Both input event and extcon are used for audio jack, please just choose one."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_55
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->access$000(Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;)V

    goto :goto_60

    .line 163
    :cond_5b
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 165
    :goto_60
    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .registers 15
    .param p1, "headset"  # I
    .param p2, "headsetState"  # I
    .param p3, "prevHeadsetState"  # I
    .param p4, "headsetNameAddr"  # Ljava/lang/String;

    .line 408
    and-int v0, p2, p1

    and-int v1, p3, p1

    if-eq v0, v1, :cond_be

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "outDevice":I
    const/4 v1, 0x0

    .line 413
    .local v1, "inDevice":I
    and-int v2, p2, p1

    if-eqz v2, :cond_e

    .line 414
    const/4 v2, 0x1

    .local v2, "state":I
    goto :goto_f

    .line 416
    .end local v2  # "state":I
    :cond_e
    const/4 v2, 0x0

    .line 419
    .restart local v2  # "state":I
    :goto_f
    const/4 v3, 0x1

    if-ne p1, v3, :cond_17

    .line 420
    const/4 v0, 0x4

    .line 421
    const v1, -0x7ffffff0

    goto :goto_37

    .line 422
    :cond_17
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1d

    .line 423
    const/16 v0, 0x8

    goto :goto_37

    .line 424
    :cond_1d
    const/16 v4, 0x20

    if-ne p1, v4, :cond_24

    .line 425
    const/high16 v0, 0x20000

    goto :goto_37

    .line 426
    :cond_24
    const/4 v4, 0x4

    if-ne p1, v4, :cond_2a

    .line 427
    const/16 v0, 0x800

    goto :goto_37

    .line 428
    :cond_2a
    const/16 v4, 0x8

    if-ne p1, v4, :cond_31

    .line 429
    const/16 v0, 0x1000

    goto :goto_37

    .line 430
    :cond_31
    const/16 v4, 0x10

    if-ne p1, v4, :cond_a6

    .line 431
    const/16 v0, 0x400

    .line 438
    :goto_37
    sget-object v4, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "headset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    if-ne v2, v3, :cond_4b

    const-string v6, " connected"

    goto :goto_4d

    :cond_4b
    const-string v6, " disconnected"

    :goto_4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 438
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v4, "/"

    invoke-virtual {p4, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "hs":[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, ""

    if-eqz v0, :cond_97

    .line 445
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Output device address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v4

    if-le v9, v3, :cond_74

    aget-object v9, v4, v3

    goto :goto_75

    :cond_74
    move-object v9, v6

    :goto_75
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v4, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 449
    array-length v8, v4

    if-le v8, v3, :cond_91

    aget-object v8, v4, v3

    goto :goto_92

    :cond_91
    move-object v8, v6

    :goto_92
    aget-object v9, v4, v5

    .line 448
    invoke-virtual {v7, v0, v2, v8, v9}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_97
    if-eqz v1, :cond_be

    .line 453
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 454
    array-length v8, v4

    if-le v8, v3, :cond_a0

    aget-object v6, v4, v3

    :cond_a0
    aget-object v3, v4, v5

    .line 453
    invoke-virtual {v7, v1, v2, v6, v3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    .line 433
    .end local v4  # "hs":[Ljava/lang/String;
    :cond_a6
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceState() invalid headset type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 457
    .end local v0  # "outDevice":I
    .end local v1  # "inDevice":I
    .end local v2  # "state":I
    :cond_be
    :goto_be
    return-void
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .registers 8
    .param p1, "headsetState"  # I
    .param p2, "prevHeadsetState"  # I
    .param p3, "headsetNameAddr"  # Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    const/16 v1, 0x3f

    .line 396
    .local v1, "allHeadsets":I
    const/4 v2, 0x1

    .local v2, "curHeadset":I
    :goto_6
    if-eqz v1, :cond_14

    .line 397
    and-int v3, v2, v1

    if-eqz v3, :cond_11

    .line 398
    :try_start_c
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    .line 400
    not-int v3, v2

    and-int/2addr v1, v3

    .line 396
    :cond_11
    shl-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 403
    .end local v1  # "allHeadsets":I
    .end local v2  # "curHeadset":I
    :cond_14
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v1
.end method

.method private showOrHideUnsupportedDeviceDialog(Z)V
    .registers 7
    .param p1, "show"  # Z

    .line 170
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mUnsupportedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    const/4 v1, 0x0

    if-eqz p1, :cond_71

    .line 172
    :try_start_6
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_5c

    .line 173
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v3, "Create the unsupported device dailog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    const v4, 0xa1001a4

    .line 175
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    const v4, 0xa1001a3

    .line 176
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    const v4, 0xa1001a2

    .line 177
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mDialog:Landroid/app/AlertDialog;

    .line 179
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 180
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 181
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 183
    :cond_5c
    sget-object v1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "Show the unsupported device dailog"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 185
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_8b

    .line 188
    :cond_71
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_8b

    .line 189
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 190
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v3, "Hide the unsupported device dailog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 193
    :cond_89
    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mDialog:Landroid/app/AlertDialog;

    .line 196
    :cond_8b
    :goto_8b
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_6 .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .registers 5
    .param p1, "switchValues"  # I
    .param p2, "switchMask"  # I

    .line 460
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 461
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_12

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_12

    .line 463
    const-string v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    :cond_12
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1f

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1f

    .line 467
    const-string v1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static updateBit([IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "maskAndState"  # [I
    .param p1, "position"  # I
    .param p2, "state"  # Ljava/lang/String;
    .param p3, "name"  # Ljava/lang/String;

    .line 888
    const/4 v0, 0x0

    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    .line 890
    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 891
    aget v0, p0, v2

    or-int/2addr v0, p1

    aput v0, p0, v2

    goto :goto_4b

    .line 892
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 893
    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 894
    aget v0, p0, v2

    not-int v1, p1

    and-int/2addr v0, v1

    aput v0, p0, v2

    .line 896
    :cond_4b
    :goto_4b
    return-void
.end method

.method private updateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 20
    .param p1, "newName"  # Ljava/lang/String;
    .param p2, "address"  # Ljava/lang/String;
    .param p3, "newState"  # I

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    and-int/lit8 v4, v3, 0x3f

    .line 279
    .local v4, "headsetState":I
    and-int/lit8 v5, v3, 0x10

    .line 280
    .local v5, "newDpState":I
    and-int/lit8 v6, v4, 0x4

    .line 281
    .local v6, "usb_headset_anlg":I
    and-int/lit8 v7, v4, 0x8

    .line 282
    .local v7, "usb_headset_dgtl":I
    and-int/lit8 v8, v4, 0x23

    .line 283
    .local v8, "h2w_headset":I
    const/4 v9, 0x1

    .line 284
    .local v9, "h2wStateChange":Z
    const/4 v10, 0x1

    .line 285
    .local v10, "usbStateChange":Z
    iget v11, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v11, v11, 0x10

    const/4 v12, 0x0

    if-lez v11, :cond_1d

    const/4 v11, 0x1

    goto :goto_1e

    :cond_1d
    move v11, v12

    .line 286
    .local v11, "dpBitState":Z
    :goto_1e
    iget v14, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-nez v14, :cond_23

    goto :goto_24

    :cond_23
    const/4 v12, 0x1

    .line 289
    .local v12, "dpCountState":Z
    :goto_24
    sget-object v14, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "newName="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " newState="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " headsetState="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " prev headsetState="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " num of active dp conns= "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    const-string/jumbo v14, "soc:qcom,msm-ext-disp"

    if-ne v13, v4, :cond_74

    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_74

    .line 297
    sget-object v13, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v14, "No state change."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 304
    :cond_74
    const/16 v13, 0x23

    if-ne v8, v13, :cond_80

    .line 305
    sget-object v13, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v15, "Invalid combination, unsetting h2w flag"

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v9, 0x0

    .line 310
    :cond_80
    const/4 v13, 0x4

    if-ne v6, v13, :cond_8f

    const/16 v13, 0x8

    if-ne v7, v13, :cond_8f

    .line 311
    sget-object v13, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v15, "Invalid combination, unsetting usb flag"

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v10, 0x0

    .line 314
    :cond_8f
    if-nez v9, :cond_9c

    if-nez v10, :cond_9c

    .line 315
    sget-object v13, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "invalid transition, returning ..."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 319
    :cond_9c
    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c5

    .line 320
    if-lez v5, :cond_b2

    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    sget-object v15, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    array-length v15, v15

    if-ge v13, v15, :cond_b2

    if-ne v11, v12, :cond_b2

    .line 324
    const/4 v15, 0x1

    add-int/2addr v13, v15

    iput v13, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    goto :goto_c5

    .line 325
    :cond_b2
    if-nez v5, :cond_bd

    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-lez v13, :cond_bd

    .line 326
    const/4 v15, 0x1

    sub-int/2addr v13, v15

    iput v13, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    goto :goto_c5

    .line 328
    :cond_bd
    sget-object v13, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v14, "No state change for DP."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void

    .line 333
    :cond_c5
    :goto_c5
    iget-object v13, v0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 335
    sget-object v13, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v15, "MSG_NEW_DEVICE_STATE"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_103

    .line 340
    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 341
    .local v13, "pseudoHeadsetState":I
    if-eqz v11, :cond_e1

    if-eqz v5, :cond_e1

    .line 343
    iget v14, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v13, v14, -0x11

    .line 345
    :cond_e1
    iget-object v14, v0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "soc:qcom,msm-ext-disp/"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v4, v13, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 349
    .local v3, "msg":Landroid/os/Message;
    if-nez v4, :cond_102

    iget v14, v0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-eqz v14, :cond_102

    .line 351
    or-int/lit8 v4, v4, 0x10

    .line 353
    .end local v13  # "pseudoHeadsetState":I
    :cond_102
    goto :goto_120

    .line 354
    .end local v3  # "msg":Landroid/os/Message;
    :cond_103
    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    iget v13, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v3, v15, v4, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 358
    .restart local v3  # "msg":Landroid/os/Message;
    :goto_120
    iget-object v13, v0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 360
    iput v4, v0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 361
    return-void
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .registers 11
    .param p1, "whenNanos"  # J
    .param p3, "switchValues"  # I
    .param p4, "switchMask"  # I

    .line 203
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    and-int/lit16 v1, p3, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x80

    const/4 v5, 0x0

    if-ne v1, v4, :cond_4e

    .line 211
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 212
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 213
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    nop

    .end local v1  # "msg":Landroid/os/Message;
    goto :goto_5e

    .line 215
    :cond_4e
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 216
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 217
    .restart local v1  # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    .end local v1  # "msg":Landroid/os/Message;
    :goto_5e
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int v2, p4

    and-int/2addr v1, v2

    or-int/2addr v1, p3

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 222
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 v1, v1, 0x54

    if-eqz v1, :cond_84

    if-eq v1, v3, :cond_82

    const/16 v2, 0x10

    if-eq v1, v2, :cond_80

    const/16 v2, 0x14

    if-eq v1, v2, :cond_7e

    const/16 v2, 0x40

    if-eq v1, v2, :cond_7b

    .line 245
    move v1, v5

    .local v1, "headset":I
    goto :goto_86

    .line 233
    .end local v1  # "headset":I
    :cond_7b
    const/16 v1, 0x20

    .line 234
    .restart local v1  # "headset":I
    goto :goto_86

    .line 237
    .end local v1  # "headset":I
    :cond_7e
    const/4 v1, 0x1

    .line 238
    .restart local v1  # "headset":I
    goto :goto_86

    .line 241
    .end local v1  # "headset":I
    :cond_80
    const/4 v1, 0x1

    .line 242
    .restart local v1  # "headset":I
    goto :goto_86

    .line 229
    .end local v1  # "headset":I
    :cond_82
    const/4 v1, 0x2

    .line 230
    .restart local v1  # "headset":I
    goto :goto_86

    .line 225
    .end local v1  # "headset":I
    :cond_84
    const/4 v1, 0x0

    .line 226
    .restart local v1  # "headset":I
    nop

    .line 249
    :goto_86
    const-string v2, "h2w"

    const-string v3, ""

    iget v4, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v4, v4, -0x24

    or-int/2addr v4, v1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    .end local v1  # "headset":I
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_94
    move-exception v1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3b .. :try_end_96} :catchall_94

    throw v1
.end method

.method public systemReady()V
    .registers 6

    .line 256
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 259
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 260
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    nop

    .end local v1  # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method
