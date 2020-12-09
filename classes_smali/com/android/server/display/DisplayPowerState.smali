.class final Lcom/android/server/display/DisplayPowerState;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private mScreenReady:Z

.field private mScreenState:I

.field private mScreenUpdatePending:Z

.field private final mScreenUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 53
    const-string v0, "ColorFadeLevel"

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    const-string v1, "electronBeamLevel"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    .line 109
    new-instance v0, Lcom/android/server/display/DisplayPowerState$2;

    const-string/jumbo v1, "screenBrightness"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V
    .registers 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Lcom/android/server/display/DisplayPowerState$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$3;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    .line 327
    new-instance v0, Lcom/android/server/display/DisplayPowerState$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 75
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 76
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 77
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 78
    new-instance p1, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 79
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->start()V

    .line 87
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 88
    const/16 p1, 0xff

    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    .line 89
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 91
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 92
    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 93
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 94
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerState;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerState;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerState;)F
    .registers 1

    .line 49
    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerState;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    return-object p0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 49
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerState;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->invokeCleanListenerIfNeeded()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/display/DisplayPowerState;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayPowerState;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    return p0
.end method

.method private invokeCleanListenerIfNeeded()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 300
    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-eqz v1, :cond_12

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 302
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 304
    :cond_12
    return-void
.end method

.method private postScreenUpdateThreadSafe()V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method private scheduleColorFadeDraw()V
    .registers 5

    .line 291
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    if-nez v0, :cond_10

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 293
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 296
    :cond_10
    return-void
.end method

.method private scheduleScreenUpdate()V
    .registers 2

    .line 279
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    if-nez v0, :cond_a

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    .line 281
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    .line 283
    :cond_a
    return-void
.end method


# virtual methods
.method public dismissColorFade()V
    .registers 5

    .line 195
    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    const-wide/32 v1, 0x20000

    const/16 v3, 0x64

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 196
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 197
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 199
    return-void
.end method

.method public dismissColorFadeResources()V
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 206
    :cond_7
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 263
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 264
    const-string v0, "Display Power State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
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

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenUpdatePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadePrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeDrawPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->dump(Ljava/io/PrintWriter;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz v0, :cond_c8

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorFade;->dump(Ljava/io/PrintWriter;)V

    .line 276
    :cond_c8
    return-void
.end method

.method public getColorFadeLevel()F
    .registers 2

    .line 243
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return v0
.end method

.method public getScreenBrightness()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method public getScreenState()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    return v0
.end method

.method public prepareColorFade(Landroid/content/Context;I)Z
    .registers 6

    .line 179
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/ColorFade;->prepare(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_15

    .line 185
    :cond_d
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 187
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    .line 188
    return v1

    .line 180
    :cond_15
    :goto_15
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 182
    return v2
.end method

.method public setColorFadeLevel(F)V
    .registers 4

    .line 222
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_37

    .line 223
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorFadeLevel: level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerState"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_21
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 228
    iget p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2e

    .line 229
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 230
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 232
    :cond_2e
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    if-eqz p1, :cond_37

    .line 233
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 234
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    .line 237
    :cond_37
    return-void
.end method

.method public setScreenBrightness(I)V
    .registers 4

    .line 150
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    if-eq v0, p1, :cond_2c

    .line 151
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenBrightness: brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerState"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1f
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    .line 156
    iget p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    .line 157
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 158
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 161
    :cond_2c
    return-void
.end method

.method public setScreenState(I)V
    .registers 4

    .line 126
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v0, p1, :cond_27

    .line 127
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenState: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerState"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1f
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 132
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 133
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 135
    :cond_27
    return-void
.end method

.method public waitUntilClean(Ljava/lang/Runnable;)Z
    .registers 3

    .line 253
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-nez v0, :cond_9

    goto :goto_e

    .line 257
    :cond_9
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 258
    const/4 p1, 0x1

    return p1

    .line 254
    :cond_e
    :goto_e
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 255
    const/4 p1, 0x0

    return p1
.end method
