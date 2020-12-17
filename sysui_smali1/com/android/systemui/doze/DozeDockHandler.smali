.class public Lcom/android/systemui/doze/DozeDockHandler;
.super Ljava/lang/Object;
.source "DozeDockHandler.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mDockEventListener:Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mDockState:I

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mHandler:Landroid/os/Handler;

.field private final mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private mPulsePending:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeDockHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Landroid/hardware/display/AmbientDisplayConfiguration;Landroid/os/Handler;Lcom/android/systemui/dock/DockManager;)V
    .registers 8

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance p1, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;-><init>(Lcom/android/systemui/doze/DozeDockHandler;Lcom/android/systemui/doze/DozeDockHandler$1;)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockEventListener:Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockState:I

    .line 50
    iput-object p2, p0, Lcom/android/systemui/doze/DozeDockHandler;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 51
    iput-object p3, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 52
    iput-object p4, p0, Lcom/android/systemui/doze/DozeDockHandler;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 53
    iput-object p5, p0, Lcom/android/systemui/doze/DozeDockHandler;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object p6, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockManager:Lcom/android/systemui/dock/DockManager;

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockManager:Lcom/android/systemui/dock/DockManager;

    return-object p0
.end method

.method private isDocked()Z
    .registers 3

    .line 101
    iget p0, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method

.method private requestPulse(Lcom/android/systemui/doze/DozeMachine$State;)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine$State;->canPulse()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 85
    iget-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/DozeMachine;->requestPulse(I)V

    :cond_14
    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeDockHandler;->mPulsePending:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, " DozeDockTriggers docking="

    .line 107
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeDockHandler;->isDocked()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public synthetic lambda$transitionTo$0$DozeDockHandler(Lcom/android/systemui/doze/DozeMachine$State;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeDockHandler;->requestPulse(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .registers 5

    .line 59
    sget-object p1, Lcom/android/systemui/doze/DozeDockHandler$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_27

    const/4 p2, 0x4

    if-eq p1, p2, :cond_15

    goto :goto_41

    .line 76
    :cond_15
    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockEventListener:Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->unregister()V

    goto :goto_41

    .line 64
    :cond_1b
    iget p1, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockState:I

    if-ne p1, v1, :cond_27

    .line 65
    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_41

    .line 70
    :cond_27
    iget p1, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockState:I

    if-ne p1, v0, :cond_41

    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeDockHandler;->mPulsePending:Z

    if-nez p1, :cond_41

    .line 71
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler;->mPulsePending:Z

    .line 72
    iget-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/doze/-$$Lambda$DozeDockHandler$G1vlJ8PUXQ7yuPGBUT3Rojg64gY;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/doze/-$$Lambda$DozeDockHandler$G1vlJ8PUXQ7yuPGBUT3Rojg64gY;-><init>(Lcom/android/systemui/doze/DozeDockHandler;Lcom/android/systemui/doze/DozeMachine$State;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_41

    .line 61
    :cond_3c
    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockEventListener:Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->register()V

    :cond_41
    :goto_41
    return-void
.end method
