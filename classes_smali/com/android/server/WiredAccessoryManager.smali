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

.field private static final LOG:Z = false

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

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

.field private mDpCount:I

.field private final mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 57
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "soc:qcom,msm-ext-disp/1/0"

    const-string/jumbo v1, "soc:qcom,msm-ext-disp/0/0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 7

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 292
    new-instance v0, Lcom/android/server/WiredAccessoryManager$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 101
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 102
    const-string v1, "WiredAccessoryManager"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 104
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 105
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 107
    nop

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11100ee

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 110
    new-instance p1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-direct {p1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    .line 111
    new-instance p1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000([IILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateBit([IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryManager;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 56
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WiredAccessoryManager;)Z
    .registers 1

    .line 56
    iget-boolean p0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return p0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .registers 1

    .line 56
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private onSystemReady()V
    .registers 7

    .line 115
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_30

    .line 116
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    const/16 v3, -0x100

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    const/4 v2, 0x4

    const/4 v5, 0x1

    if-ne v1, v5, :cond_14

    .line 119
    move v0, v2

    .line 121
    :cond_14
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_1e

    .line 123
    or-int/lit8 v0, v0, 0x10

    .line 125
    :cond_1e
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x6

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_29

    .line 126
    or-int/lit8 v0, v0, 0x40

    .line 128
    :cond_29
    const-wide/16 v1, 0x0

    const/16 v3, 0x54

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 133
    :cond_30
    invoke-static {}, Lcom/android/server/ExtconUEventObserver;->extconExists()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->uEventCount()I

    move-result v0

    if-lez v0, :cond_4f

    .line 134
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_49

    .line 135
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "Both input event and extcon are used for audio jack, please just choose one."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_49
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;->access$000(Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;)V

    goto :goto_54

    .line 140
    :cond_4f
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 142
    :goto_54
    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .registers 11

    .line 324
    and-int/2addr p2, p1

    and-int/2addr p3, p1

    if-eq p2, p3, :cond_77

    .line 325
    nop

    .line 326
    nop

    .line 329
    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_c

    .line 330
    move p2, v0

    goto :goto_d

    .line 332
    :cond_c
    move p2, p3

    .line 335
    :goto_d
    const/16 v1, 0x8

    const/4 v2, 0x4

    if-ne p1, v0, :cond_18

    .line 336
    nop

    .line 337
    const p1, -0x7ffffff0

    move v1, v2

    goto :goto_38

    .line 338
    :cond_18
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1d

    .line 339
    move p1, p3

    goto :goto_38

    .line 340
    :cond_1d
    const/16 v3, 0x20

    if-ne p1, v3, :cond_25

    .line 341
    const/high16 v1, 0x20000

    move p1, p3

    goto :goto_38

    .line 342
    :cond_25
    if-ne p1, v2, :cond_2b

    .line 343
    const/16 v1, 0x800

    move p1, p3

    goto :goto_38

    .line 344
    :cond_2b
    if-ne p1, v1, :cond_31

    .line 345
    const/16 v1, 0x1000

    move p1, p3

    goto :goto_38

    .line 346
    :cond_31
    const/16 v1, 0x10

    if-ne p1, v1, :cond_5f

    .line 347
    const/16 v1, 0x400

    move p1, p3

    .line 358
    :goto_38
    const-string v2, "/"

    invoke-virtual {p4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 359
    const-string v2, ""

    if-eqz v1, :cond_50

    .line 360
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 361
    array-length v4, p4

    if-le v4, v0, :cond_4a

    aget-object v4, p4, v0

    goto :goto_4b

    :cond_4a
    move-object v4, v2

    :goto_4b
    aget-object v5, p4, p3

    .line 360
    invoke-virtual {v3, v1, p2, v4, v5}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_50
    if-eqz p1, :cond_77

    .line 364
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 365
    array-length v3, p4

    if-le v3, v0, :cond_59

    aget-object v2, p4, v0

    :cond_59
    aget-object p3, p4, p3

    .line 364
    invoke-virtual {v1, p1, p2, v2, p3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 349
    :cond_5f
    sget-object p2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setDeviceState() invalid headset type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 368
    :cond_77
    :goto_77
    return-void
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .registers 8

    .line 310
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    const/16 v1, 0x3f

    .line 312
    const/4 v2, 0x1

    :goto_6
    if-eqz v1, :cond_14

    .line 313
    and-int v3, v2, v1

    if-eqz v3, :cond_11

    .line 314
    :try_start_c
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    .line 316
    not-int v3, v2

    and-int/2addr v1, v3

    .line 312
    :cond_11
    shl-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 319
    :cond_14
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw p1
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .registers 5

    .line 371
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 372
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_12

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_12

    .line 374
    const-string v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    :cond_12
    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_1f

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1f

    .line 378
    const-string p1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static updateBit([IILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 789
    const/4 v0, 0x0

    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 790
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

    .line 791
    aget p2, p0, v0

    or-int/2addr p2, p1

    aput p2, p0, v0

    .line 792
    aget p2, p0, v2

    or-int/2addr p1, p2

    aput p1, p0, v2

    goto :goto_4b

    .line 793
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "=0"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 794
    aget p2, p0, v0

    or-int/2addr p2, p1

    aput p2, p0, v0

    .line 795
    aget p2, p0, v2

    not-int p1, p1

    and-int/2addr p1, p2

    aput p1, p0, v2

    .line 797
    :cond_4b
    :goto_4b
    return-void
.end method

.method private updateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    .line 211
    and-int/lit8 v0, p3, 0x3f

    .line 212
    and-int/lit8 p3, p3, 0x10

    .line 213
    and-int/lit8 v1, v0, 0x4

    .line 214
    and-int/lit8 v2, v0, 0x8

    .line 215
    and-int/lit8 v3, v0, 0x23

    .line 216
    nop

    .line 217
    nop

    .line 218
    iget v4, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v4, v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_16

    move v4, v6

    goto :goto_17

    :cond_16
    move v4, v5

    .line 219
    :goto_17
    iget v7, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-eqz v7, :cond_1d

    move v7, v6

    goto :goto_1e

    :cond_1d
    move v7, v5

    .line 228
    :goto_1e
    iget v8, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    const-string/jumbo v9, "soc:qcom,msm-ext-disp"

    if-ne v8, v0, :cond_33

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_33

    .line 229
    sget-object p1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p2, "No state change."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 236
    :cond_33
    const/16 v8, 0x23

    if-ne v3, v8, :cond_40

    .line 237
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting h2w flag"

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    move v3, v5

    goto :goto_41

    .line 236
    :cond_40
    move v3, v6

    .line 242
    :goto_41
    const/4 v8, 0x4

    if-ne v1, v8, :cond_50

    const/16 v1, 0x8

    if-ne v2, v1, :cond_50

    .line 243
    sget-object v1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "Invalid combination, unsetting usb flag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    goto :goto_51

    .line 246
    :cond_50
    move v5, v6

    :goto_51
    if-nez v3, :cond_5d

    if-nez v5, :cond_5d

    .line 247
    sget-object p1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p2, "invalid transition, returning ..."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 251
    :cond_5d
    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 252
    if-lez p3, :cond_72

    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    sget-object v2, Lcom/android/server/WiredAccessoryManager;->DP_AUDIO_CONNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_72

    if-ne v4, v7, :cond_72

    .line 256
    add-int/2addr v1, v6

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    goto :goto_84

    .line 257
    :cond_72
    if-nez p3, :cond_7c

    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-lez v1, :cond_7c

    .line 258
    sub-int/2addr v1, v6

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    goto :goto_84

    .line 260
    :cond_7c
    sget-object p1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p2, "No state change for DP."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 265
    :cond_84
    :goto_84
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 267
    sget-object v1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v2, "MSG_NEW_DEVICE_STATE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 271
    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 272
    if-eqz v4, :cond_9e

    if-eqz p3, :cond_9e

    .line 274
    and-int/lit8 p1, p1, -0x11

    .line 276
    :cond_9e
    iget-object p3, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "soc:qcom,msm-ext-disp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v6, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 279
    if-nez v0, :cond_bf

    iget p2, p0, Lcom/android/server/WiredAccessoryManager;->mDpCount:I

    if-eqz p2, :cond_bf

    .line 281
    or-int/lit8 p2, v0, 0x10

    move v0, p2

    .line 283
    :cond_bf
    goto :goto_dc

    .line 284
    :cond_c0
    iget-object p3, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v6, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 287
    :goto_dc
    iget-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    iput v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 290
    return-void
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .registers 6

    .line 152
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 154
    :try_start_3
    iget p2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int p4, p4

    and-int/2addr p2, p4

    or-int/2addr p2, p3

    iput p2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 155
    iget p2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 p2, p2, 0x54

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_2c

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2a

    const/16 v0, 0x10

    if-eq p2, v0, :cond_28

    const/16 v0, 0x14

    if-eq p2, v0, :cond_26

    const/16 p3, 0x40

    if-eq p2, p3, :cond_23

    .line 178
    move p3, p4

    goto :goto_2e

    .line 166
    :cond_23
    const/16 p3, 0x20

    .line 167
    goto :goto_2e

    .line 170
    :cond_26
    nop

    .line 171
    goto :goto_2e

    .line 174
    :cond_28
    nop

    .line 175
    goto :goto_2e

    .line 162
    :cond_2a
    const/4 p3, 0x2

    .line 163
    goto :goto_2e

    .line 158
    :cond_2c
    nop

    .line 159
    move p3, p4

    .line 182
    :goto_2e
    const-string p2, "h2w"

    const-string p4, ""

    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v0, v0, -0x24

    or-int/2addr p3, v0

    invoke-direct {p0, p2, p4, p3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    monitor-exit p1

    .line 185
    return-void

    .line 184
    :catchall_3c
    move-exception p2

    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p2
.end method

.method public systemReady()V
    .registers 6

    .line 189
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 192
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
