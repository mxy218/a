.class final Lcom/android/server/display/DisplayPowerState;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerState$BinderDeath;,
        Lcom/android/server/display/DisplayPowerState$BrightnessListener;,
        Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    }
.end annotation


# static fields
.field public static final COLOR_FADE_LEVEL:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static COUNTER_COLOR_FADE:Ljava/lang/String; = null

.field private static DEBUG:Z = false

.field public static final SCREEN_BRIGHTNESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DisplayPowerState"


# instance fields
.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBrightnessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayPowerState$BrightnessListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCleanListener:Ljava/lang/Runnable;

.field private final mColorFade:Lcom/android/server/display/ColorFade;

.field private mColorFadeDrawPending:Z

.field private final mColorFadeDrawRunnable:Ljava/lang/Runnable;

.field private mColorFadeLevel:F

.field private mColorFadePrepared:Z

.field private mColorFadeReady:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

.field private mScreenBrightness:I

.field private final mScreenBrightnessLock:Ljava/lang/Object;

.field private mScreenReady:Z

.field private mScreenState:I

.field private mScreenUpdatePending:Z

.field private final mScreenUpdateRunnable:Ljava/lang/Runnable;

.field private mUseAutoBrightness:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 59
    const-string v0, "ColorFadeLevel"

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    const-string v1, "electronBeamLevel"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    .line 115
    new-instance v0, Lcom/android/server/display/DisplayPowerState$2;

    const-string/jumbo v1, "screenBrightness"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V
    .registers 6
    .param p1, "blanker"  # Lcom/android/server/display/DisplayBlanker;
    .param p2, "colorFade"  # Lcom/android/server/display/ColorFade;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Lcom/android/server/display/DisplayPowerState$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$3;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    .line 340
    new-instance v0, Lcom/android/server/display/DisplayPowerState$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mBrightnessListeners:Ljava/util/ArrayList;

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mUseAutoBrightness:Z

    .line 566
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightnessLock:Ljava/lang/Object;

    .line 80
    new-instance v1, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 82
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 83
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 84
    new-instance v1, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 85
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->start()V

    .line 93
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 94
    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    .line 95
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 97
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 98
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 99
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 100
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"  # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerState;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;

    .line 55
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;

    .line 55
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .line 55
    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"  # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerState;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;

    .line 55
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;

    .line 55
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerState;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;

    .line 55
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightnessLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayPowerState;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;

    .line 55
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mBrightnessListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerState;)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;

    .line 55
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerState;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;

    .line 55
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;

    .line 55
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 55
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"  # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerState;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;

    .line 55
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->invokeCleanListenerIfNeeded()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"  # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayPowerState;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayPowerState;

    .line 55
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    return v0
.end method

.method private findByCallbackLocked(Lcom/android/server/display/DisplayPowerState$BrightnessListener;)I
    .registers 4
    .param p1, "listener"  # Lcom/android/server/display/DisplayPowerState$BrightnessListener;

    .line 492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 493
    if-eqz p1, :cond_18

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/display/DisplayPowerState$BrightnessListener;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 494
    return v0

    .line 492
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 497
    .end local v0  # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method private invokeCleanListenerIfNeeded()V
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 313
    .local v0, "listener":Ljava/lang/Runnable;
    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-eqz v1, :cond_12

    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 315
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 317
    :cond_12
    return-void
.end method

.method private notifyScreenBrightnessChanged(I)V
    .registers 6
    .param p1, "brightness"  # I

    .line 548
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightnessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState$BrightnessListener;

    .line 551
    .local v2, "listener":Lcom/android/server/display/DisplayPowerState$BrightnessListener;
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerState$BrightnessListener;->callback:Landroid/os/IBrightnessChangedCallback;

    invoke-interface {v3, p1}, Landroid/os/IBrightnessChangedCallback;->onBrightnessChanged(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_1e
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 552
    .end local v2  # "listener":Lcom/android/server/display/DisplayPowerState$BrightnessListener;
    goto :goto_9

    .line 555
    :cond_1b
    goto :goto_1f

    .line 556
    :catchall_1c
    move-exception v1

    goto :goto_21

    .line 553
    :catch_1e
    move-exception v1

    .line 556
    :goto_1f
    :try_start_1f
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    throw v1
.end method

.method private postScreenUpdateThreadSafe()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method private scheduleColorFadeDraw()V
    .registers 5

    .line 304
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    if-nez v0, :cond_10

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 306
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 309
    :cond_10
    return-void
.end method

.method private scheduleScreenUpdate()V
    .registers 2

    .line 292
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    if-nez v0, :cond_a

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    .line 294
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    .line 296
    :cond_a
    return-void
.end method


# virtual methods
.method public dismissColorFade()V
    .registers 5

    .line 205
    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    const-wide/32 v1, 0x20000

    const/16 v3, 0x64

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 206
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 207
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 209
    return-void
.end method

.method public dismissColorFadeResources()V
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 216
    :cond_7
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 273
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 274
    const-string v0, "Display Power State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenUpdatePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadePrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeDrawPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->dump(Ljava/io/PrintWriter;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz v0, :cond_c8

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorFade;->dump(Ljava/io/PrintWriter;)V

    .line 287
    :cond_c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessListeners.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public getColorFadeLevel()F
    .registers 2

    .line 253
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return v0
.end method

.method public getScreenBrightness()I
    .registers 2

    .line 177
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method public getScreenState()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    return v0
.end method

.method public notifyScreenBrightnessChanged()V
    .registers 2

    .line 561
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerState;->notifyScreenBrightnessChanged(I)V

    .line 562
    return-void
.end method

.method public prepareColorFade(Landroid/content/Context;I)Z
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "mode"  # I

    .line 189
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/ColorFade;->prepare(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_15

    .line 195
    :cond_d
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 196
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 197
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    .line 198
    return v1

    .line 190
    :cond_15
    :goto_15
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 192
    return v2
.end method

.method public registerBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V
    .registers 10
    .param p1, "callback"  # Landroid/os/IBrightnessChangedCallback;
    .param p2, "tag"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightnessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    if-nez p1, :cond_d

    .line 459
    :try_start_5
    const-string v1, "DisplayPowerState"

    const-string/jumbo v2, "registerBrightnessCallback null callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_d
    new-instance v1, Lcom/android/server/display/DisplayPowerState$BrightnessListener;

    invoke-interface {p1}, Landroid/os/IBrightnessChangedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/display/DisplayPowerState$BrightnessListener;-><init>(Lcom/android/server/display/DisplayPowerState;Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 462
    .local v1, "listener":Lcom/android/server/display/DisplayPowerState$BrightnessListener;
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerState;->findByCallbackLocked(Lcom/android/server/display/DisplayPowerState$BrightnessListener;)I

    move-result v2

    .line 463
    .local v2, "find":I
    if-lez v2, :cond_34

    .line 464
    const-string v3, "DisplayPowerState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object tried to add duplicate listeners: tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    monitor-exit v0

    return-void

    .line 467
    :cond_34
    new-instance v3, Lcom/android/server/display/DisplayPowerState$BinderDeath;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, p0, p2, v4, v1}, Lcom/android/server/display/DisplayPowerState$BinderDeath;-><init>(Lcom/android/server/display/DisplayPowerState;Ljava/lang/String;ILcom/android/server/display/DisplayPowerState$BrightnessListener;)V

    .line 468
    .local v3, "binderDeath":Lcom/android/server/display/DisplayPowerState$BinderDeath;
    invoke-interface {p1}, Landroid/os/IBrightnessChangedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 469
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState;->mBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerState$BrightnessListener;->callback:Landroid/os/IBrightnessChangedCallback;

    iget v5, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    invoke-interface {v4, v5}, Landroid/os/IBrightnessChangedCallback;->onBrightnessChanged(I)V

    .line 471
    const-string v4, "DisplayPowerState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object tried to add listeners: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mBrightnessListeners.size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState;->mBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    nop

    .end local v1  # "listener":Lcom/android/server/display/DisplayPowerState$BrightnessListener;
    .end local v2  # "find":I
    .end local v3  # "binderDeath":Lcom/android/server/display/DisplayPowerState$BinderDeath;
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_5 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public setColorFadeLevel(F)V
    .registers 5
    .param p1, "level"  # F

    .line 232
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_37

    .line 233
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorFadeLevel: level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerState"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_21
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 238
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2e

    .line 239
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 240
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 242
    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    if-eqz v0, :cond_37

    .line 243
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 244
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    .line 247
    :cond_37
    return-void
.end method

.method public setScreenBrightness(I)V
    .registers 5
    .param p1, "brightness"  # I

    .line 156
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    if-eq v0, p1, :cond_3c

    .line 157
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenBrightness: brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerState"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1f
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    .line 162
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2c

    .line 163
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 164
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 167
    :cond_2c
    nop

    .line 168
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v0, v2, :cond_39

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_39

    move v1, p1

    .line 167
    :cond_39
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerState;->notifyScreenBrightnessChanged(I)V

    .line 171
    :cond_3c
    return-void
.end method

.method public setScreenState(I)V
    .registers 4
    .param p1, "state"  # I

    .line 132
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v0, p1, :cond_27

    .line 133
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenState: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerState"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1f
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 139
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 141
    :cond_27
    return-void
.end method

.method public setUseAutoBrightness(Z)V
    .registers 3
    .param p1, "useAutoBrightness"  # Z

    .line 539
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mUseAutoBrightness:Z

    if-eq v0, p1, :cond_6

    .line 540
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mUseAutoBrightness:Z

    .line 545
    :cond_6
    return-void
.end method

.method public unRegisterBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V
    .registers 9
    .param p1, "callback"  # Landroid/os/IBrightnessChangedCallback;
    .param p2, "tag"  # Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightnessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    if-nez p1, :cond_d

    .line 478
    :try_start_5
    const-string v1, "DisplayPowerState"

    const-string/jumbo v2, "unRegisterBrightnessCallback null callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_d
    new-instance v1, Lcom/android/server/display/DisplayPowerState$BrightnessListener;

    invoke-interface {p1}, Landroid/os/IBrightnessChangedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/display/DisplayPowerState$BrightnessListener;-><init>(Lcom/android/server/display/DisplayPowerState;Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 481
    .local v1, "listener":Lcom/android/server/display/DisplayPowerState$BrightnessListener;
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerState;->findByCallbackLocked(Lcom/android/server/display/DisplayPowerState$BrightnessListener;)I

    move-result v2

    .line 482
    .local v2, "find":I
    if-gez v2, :cond_25

    .line 483
    const-string v3, "DisplayPowerState"

    const-string v4, "can\'t find the listener."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    monitor-exit v0

    return-void

    .line 486
    :cond_25
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState;->mBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 487
    const-string v3, "DisplayPowerState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object tried to remove listeners: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mBrightnessListeners.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState;->mBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    nop

    .end local v1  # "listener":Lcom/android/server/display/DisplayPowerState$BrightnessListener;
    .end local v2  # "find":I
    monitor-exit v0

    .line 489
    return-void

    .line 488
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public waitUntilClean(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "listener"  # Ljava/lang/Runnable;

    .line 263
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-nez v0, :cond_9

    goto :goto_e

    .line 267
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 268
    const/4 v0, 0x1

    return v0

    .line 264
    :cond_e
    :goto_e
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 265
    const/4 v0, 0x0

    return v0
.end method
