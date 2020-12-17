.class public Lcom/android/systemui/statusbar/phone/DozeScrimController;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mFullyPulsing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutExtended:Ljava/lang/Runnable;

.field private mPulseReason:I

.field private final mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "DozeScrimController"

    const/4 v1, 0x3

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 185
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    .line 193
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 100
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 33
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/DozeScrimController;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/os/Handler;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/DozeScrimController;Z)Z
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mFullyPulsing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    return-void
.end method

.method private cancelPulsing()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_23

    .line 162
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "DozeScrimController"

    const-string v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mFullyPulsing:Z

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    :cond_23
    return-void
.end method

.method private pulseFinished()V
    .registers 2

    .line 178
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->tracePulseFinish()V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_d

    .line 180
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    :cond_d
    return-void
.end method

.method private pulseStarted()V
    .registers 2

    .line 171
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz p0, :cond_c

    .line 173
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    :cond_c
    return-void
.end method


# virtual methods
.method public cancelPendingPulseTimeout()V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public extendPulse()V
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getScrimCallback()Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-object p0
.end method

.method public isPulsing()Z
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onDozingChanged(Z)V
    .registers 2

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozing(Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .registers 2

    return-void
.end method

.method public pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .registers 4

    if-eqz p1, :cond_3f

    .line 118
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_b

    goto :goto_10

    .line 130
    :cond_b
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 131
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    return-void

    .line 119
    :cond_10
    :goto_10
    sget-boolean p2, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    if-eqz p2, :cond_3b

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pulse supressed. Dozing: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " had callback? "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DozeScrimController"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_3b
    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    return-void

    .line 115
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pulseOutNow()V
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mFullyPulsing:Z

    if-eqz v0, :cond_d

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_d
    return-void
.end method

.method public setDozing(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 106
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    .line 107
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-nez p1, :cond_e

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPulsing()V

    :cond_e
    return-void
.end method
