.class final Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;
.super Ljava/lang/Object;
.source "AssistHandleLikeHomeBehavior.java"

# interfaces
.implements Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIsAwake:Z

.field private mIsDozing:Z

.field private mIsHomeHandleHiding:Z

.field private final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private final mOverviewProxyService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mWakefulnessLifecycle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$1;-><init>(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 50
    new-instance v0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$2;-><init>(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 72
    new-instance v0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$3;-><init>(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 95
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateController:Ldagger/Lazy;

    .line 96
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    .line 97
    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mOverviewProxyService:Ldagger/Lazy;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;Z)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->handleDozingChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;Z)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->handleWakefullnessChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;I)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->handleSystemUiStateChange(I)V

    return-void
.end method

.method private callbackForCurrentState()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-nez v0, :cond_5

    return-void

    .line 157
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsHomeHandleHiding:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->isFullyAwake()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_16

    .line 160
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndStay()V

    goto :goto_1b

    .line 158
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    :goto_1b
    return-void
.end method

.method private handleDozingChanged(Z)V
    .registers 3

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 129
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->callbackForCurrentState()V

    return-void
.end method

.method private handleSystemUiStateChange(I)V
    .registers 3

    .line 143
    invoke-static {p1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->isHomeHandleHiding(I)Z

    move-result p1

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsHomeHandleHiding:Z

    if-ne v0, p1, :cond_9

    return-void

    .line 148
    :cond_9
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsHomeHandleHiding:Z

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->callbackForCurrentState()V

    return-void
.end method

.method private handleWakefullnessChanged(Z)V
    .registers 3

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsAwake:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 138
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsAwake:Z

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->callbackForCurrentState()V

    return-void
.end method

.method private isFullyAwake()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsAwake:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isHomeHandleHiding(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Current AssistHandleLikeHomeBehavior State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsAwake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsAwake:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "   mIsHomeHandleHiding="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsHomeHandleHiding:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V
    .registers 3

    .line 102
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 103
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    .line 104
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsAwake:Z

    .line 107
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mOverviewProxyService:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->callbackForCurrentState()V

    return-void
.end method

.method public onModeDeactivated()V
    .registers 3

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mOverviewProxyService:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method
