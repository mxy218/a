.class public Lcom/android/systemui/doze/DozeScreenState;
.super Ljava/lang/Object;
.source "DozeScreenState.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mApplyPendingScreenState:Ljava/lang/Runnable;

.field private final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field private final mHandler:Landroid/os/Handler;

.field private final mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mPendingScreenState:I

.field private mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .registers 6

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$eRrLSFQgxPfG2I_jJDfdCLwKzVE;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$eRrLSFQgxPfG2I_jJDfdCLwKzVE;-><init>(Lcom/android/systemui/doze/DozeScreenState;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 57
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 60
    new-instance p1, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const-string p2, "DozeScreenState"

    invoke-direct {p1, p4, p2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    return-void
.end method

.method private applyPendingScreenState()V
    .registers 2

    .line 123
    iget v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    return-void
.end method

.method private applyScreenState(I)V
    .registers 4

    if-eqz p1, :cond_2e

    .line 129
    sget-boolean v0, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDozeScreenState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeScreenState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenState(I)V

    const/4 p1, 0x0

    .line 131
    iput p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 132
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_2e
    return-void
.end method

.method public static synthetic lambda$eRrLSFQgxPfG2I_jJDfdCLwKzVE(Lcom/android/systemui/doze/DozeScreenState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenState;->applyPendingScreenState()V

    return-void
.end method


# virtual methods
.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .registers 10

    .line 65
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2, v0}, Lcom/android/systemui/doze/DozeMachine$State;->screenState(Lcom/android/systemui/statusbar/phone/DozeParameters;)I

    move-result v0

    .line 67
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1d

    .line 69
    iput v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 70
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    .line 73
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    return-void

    :cond_1d
    if-nez v0, :cond_20

    return-void

    .line 82
    :cond_20
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 83
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_33

    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v3, :cond_33

    move v3, v4

    goto :goto_34

    :cond_33
    move v3, v2

    .line 85
    :goto_34
    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v5, :cond_3c

    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v5, :cond_42

    :cond_3c
    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v5, :cond_42

    move v5, v4

    goto :goto_43

    :cond_42
    move v5, v2

    .line 87
    :goto_43
    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v6, :cond_49

    move p1, v4

    goto :goto_4a

    :cond_49
    move p1, v2

    :goto_4a
    if-nez v1, :cond_57

    if-nez p1, :cond_57

    if-nez v3, :cond_57

    if-eqz v5, :cond_53

    goto :goto_57

    .line 118
    :cond_53
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(I)V

    goto :goto_c3

    .line 93
    :cond_57
    :goto_57
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 96
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_68

    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 97
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p1

    if-eqz p1, :cond_68

    if-nez v5, :cond_68

    move v2, v4

    :cond_68
    if-eqz v2, :cond_6f

    .line 100
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p1, v4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_6f
    const-string p1, "DozeScreenState"

    if-nez v1, :cond_ab

    .line 104
    sget-boolean p2, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    if-eqz p2, :cond_97

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display state changed to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " delayed by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_8d

    const/16 v4, 0xfa0

    .line 106
    :cond_8d
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 105
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    if-eqz v2, :cond_a3

    .line 110
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c3

    .line 112
    :cond_a3
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c3

    .line 114
    :cond_ab
    sget-boolean p0, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    if-eqz p0, :cond_c3

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Pending display state change to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    :goto_c3
    return-void
.end method
