.class final Lcom/android/server/display/DisplayDimColorFade;
.super Ljava/lang/Object;
.source "DisplayDimColorFade.java"


# static fields
.field public static final COLOR_FADE_LEVEL:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/server/display/DisplayDimColorFade;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DisplayDimColorFade"


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mColorFade:Lcom/android/server/display/ColorFade;

.field private mColorFadeDrawPending:Z

.field private final mColorFadeDrawRunnable:Ljava/lang/Runnable;

.field private mColorFadeLevel:F

.field private mColorFadePrepared:Z

.field private mColorFadeReady:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/DisplayDimColorFade;->DEBUG:Z

    .line 74
    new-instance v0, Lcom/android/server/display/DisplayDimColorFade$1;

    const-string v1, "electronBeamLevel"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayDimColorFade$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayDimColorFade;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/ColorFade;)V
    .registers 4
    .param p1, "colorFade"  # Lcom/android/server/display/ColorFade;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Lcom/android/server/display/DisplayDimColorFade$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDimColorFade$2;-><init>(Lcom/android/server/display/DisplayDimColorFade;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mHandler:Landroid/os/Handler;

    .line 66
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mChoreographer:Landroid/view/Choreographer;

    .line 67
    iput-object p1, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadePrepared:Z

    .line 70
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeLevel:F

    .line 71
    iput-boolean v1, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeReady:Z

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/display/DisplayDimColorFade;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayDimColorFade;
    .param p1, "x1"  # Z

    .line 50
    iput-boolean p1, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeDrawPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayDimColorFade;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayDimColorFade;

    .line 50
    iget-boolean v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadePrepared:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayDimColorFade;)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayDimColorFade;

    .line 50
    iget v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeLevel:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayDimColorFade;)Lcom/android/server/display/ColorFade;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayDimColorFade;

    .line 50
    iget-object v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFade:Lcom/android/server/display/ColorFade;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/display/DisplayDimColorFade;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayDimColorFade;
    .param p1, "x1"  # Z

    .line 50
    iput-boolean p1, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeReady:Z

    return p1
.end method

.method private scheduleColorFadeDraw()V
    .registers 5

    .line 163
    iget-boolean v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeDrawPending:Z

    if-nez v0, :cond_10

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeDrawPending:Z

    .line 165
    iget-object v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 168
    :cond_10
    return-void
.end method


# virtual methods
.method public dismissColorFade()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadePrepared:Z

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeReady:Z

    .line 115
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 152
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 153
    const-string v0, "Display Dim Layer State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadePrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadePrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeDrawPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeDrawPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorFade;->dump(Ljava/io/PrintWriter;)V

    .line 160
    return-void
.end method

.method public getColorFadeLevel()F
    .registers 2

    .line 148
    iget v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeLevel:F

    return v0
.end method

.method public prepareColorFade(Landroid/content/Context;I)Z
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "mode"  # I

    .line 96
    iget-object v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/ColorFade;->prepare(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    .line 97
    iput-boolean v1, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadePrepared:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeReady:Z

    .line 99
    return v1

    .line 102
    :cond_f
    iput-boolean v2, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadePrepared:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeReady:Z

    .line 104
    invoke-direct {p0}, Lcom/android/server/display/DisplayDimColorFade;->scheduleColorFadeDraw()V

    .line 105
    return v2
.end method

.method public setColorFadeLevel(F)V
    .registers 6
    .param p1, "level"  # F

    .line 131
    iget v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeLevel:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL  # 1.0E-6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_38

    .line 132
    sget-boolean v0, Lcom/android/server/display/DisplayDimColorFade;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorFadeLevel: level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayDimColorFade"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2c
    iput p1, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeLevel:F

    .line 137
    iget-boolean v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadePrepared:Z

    if-eqz v0, :cond_38

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDimColorFade;->mColorFadeReady:Z

    .line 139
    invoke-direct {p0}, Lcom/android/server/display/DisplayDimColorFade;->scheduleColorFadeDraw()V

    .line 142
    :cond_38
    return-void
.end method
