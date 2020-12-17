.class Lcom/android/server/audio/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RotationHelper$AudioOrientationListener;,
        Lcom/android/server/audio/RotationHelper$AudioDisplayListener;
    }
.end annotation


# static fields
.field private static final MONITOR_DURATION_MS:I = 0x3e8

.field private static final MUSIC_ACTIVE_JUDGE_DURATION_MS:I = 0x5dc

.field public static final ORIENTATION_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AudioService.RotationHelper"

.field private static mEnabled:Z

.field private static mListenerFullClassName:Ljava/lang/String;

.field private static sAudioservice:Lcom/android/server/audio/AudioService;

.field private static sContext:Landroid/content/Context;

.field private static sDeviceRotation:I

.field private static sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

.field private static sHandler:Landroid/os/Handler;

.field private static sIsScreenOn:Z

.field private static sNewDeviceRotation:I

.field private static final sRotationLock:Ljava/lang/Object;

.field private static sSensorType:I

.field private static sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    .line 60
    sput v0, Lcom/android/server/audio/RotationHelper;->sNewDeviceRotation:I

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/audio/RotationHelper;->sIsScreenOn:Z

    .line 67
    sput v0, Lcom/android/server/audio/RotationHelper;->sSensorType:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/audio/AudioService;
    .registers 1

    .line 46
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sAudioservice:Lcom/android/server/audio/AudioService;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/android/server/audio/RotationHelper;->sIsScreenOn:Z

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/android/server/audio/RotationHelper;->mEnabled:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"  # Z

    .line 46
    sput-boolean p0, Lcom/android/server/audio/RotationHelper;->mEnabled:Z

    return p0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateState()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .line 46
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 46
    sget v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    return v0
.end method

.method static synthetic access$502(I)I
    .registers 1
    .param p0, "x0"  # I

    .line 46
    sput p0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    return p0
.end method

.method static synthetic access$600()I
    .registers 1

    .line 46
    sget v0, Lcom/android/server/audio/RotationHelper;->sNewDeviceRotation:I

    return v0
.end method

.method static synthetic access$602(I)I
    .registers 1
    .param p0, "x0"  # I

    .line 46
    sput p0, Lcom/android/server/audio/RotationHelper;->sNewDeviceRotation:I

    return p0
.end method

.method static synthetic access$700(I)V
    .registers 1
    .param p0, "x0"  # I

    .line 46
    invoke-static {p0}, Lcom/android/server/audio/RotationHelper;->publishRotation(I)V

    return-void
.end method

.method static init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/audio/AudioService;)V
    .registers 5
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "handler"  # Landroid/os/Handler;
    .param p2, "audioservice"  # Lcom/android/server/audio/AudioService;

    .line 70
    if-eqz p0, :cond_37

    .line 73
    sput-object p0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    .line 74
    sput-object p1, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    invoke-direct {v0}, Lcom/android/server/audio/RotationHelper$AudioDisplayListener;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    .line 76
    sput-object p2, Lcom/android/server/audio/RotationHelper;->sAudioservice:Lcom/android/server/audio/AudioService;

    .line 77
    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    .line 78
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->getClassName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/RotationHelper;->mListenerFullClassName:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->enable()V

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/audio/RotationHelper;->mEnabled:Z

    .line 81
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/audio/RotationHelper$1;

    invoke-direct {v1}, Lcom/android/server/audio/RotationHelper$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void

    .line 71
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static publishRotation(I)V
    .registers 5
    .param p0, "rotation"  # I

    .line 155
    const-string v0, ""

    .line 156
    .local v0, "param":Ljava/lang/String;
    const-string v1, "AudioService.RotationHelper"

    if-eqz p0, :cond_21

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1d

    const/4 v2, 0x2

    if-eq p0, v2, :cond_19

    const/4 v2, 0x3

    if-eq p0, v2, :cond_15

    .line 172
    const-string v2, "Unknown device rotation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 169
    :cond_15
    const-string/jumbo v0, "rotation=90"

    .line 170
    goto :goto_25

    .line 165
    :cond_19
    const-string/jumbo v0, "rotation=180"

    .line 166
    goto :goto_25

    .line 162
    :cond_1d
    const-string/jumbo v0, "rotation=270"

    .line 163
    goto :goto_25

    .line 158
    :cond_21
    const-string/jumbo v0, "rotation=0"

    .line 159
    nop

    .line 174
    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUDIO_ROTATION] publishRotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method static updateByScreenStateOff(Z)V
    .registers 2
    .param p0, "isOff"  # Z

    .line 140
    xor-int/lit8 v0, p0, 0x1

    sput-boolean v0, Lcom/android/server/audio/RotationHelper;->sIsScreenOn:Z

    .line 141
    return-void
.end method

.method static updateOrientation()V
    .registers 3

    .line 144
    sget v0, Lcom/android/server/audio/RotationHelper;->sNewDeviceRotation:I

    .line 145
    .local v0, "newRotation":I
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_5
    sget v2, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    if-eq v0, v2, :cond_10

    .line 147
    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    .line 148
    sget v2, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    invoke-static {v2}, Lcom/android/server/audio/RotationHelper;->publishRotation(I)V

    .line 150
    :cond_10
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v2
.end method

.method private static updateState()V
    .registers 3

    .line 114
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    if-nez v0, :cond_c

    .line 115
    const-string v0, "AudioService.RotationHelper"

    const-string v1, "[AUDIO_ROTATION] updateState: sWindowOrientationListener == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 119
    :cond_c
    sget-boolean v0, Lcom/android/server/audio/RotationHelper;->mEnabled:Z

    const-string v1, "display"

    if-eqz v0, :cond_2a

    .line 120
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 122
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->enable()V

    .line 123
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    goto :goto_3c

    .line 125
    :cond_2a
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    .line 126
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 127
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->disable()V

    .line 129
    :goto_3c
    return-void
.end method
