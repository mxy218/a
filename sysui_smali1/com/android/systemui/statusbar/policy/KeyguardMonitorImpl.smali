.class public Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMonitorImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mBypassFadingAnimation:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mKeyguardFadingAway:Z

.field private mKeyguardFadingAwayDelay:J

.field private mKeyguardFadingAwayDuration:J

.field private mKeyguardGoingAway:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLaunchTransitionFadingAway:Z

.field private mListening:Z

.field private mOccluded:Z

.field private mSecure:Z

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    .line 59
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method private notifyKeyguardChanged()V
    .registers 2

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$CusFj6pVztwBZlitsnMLA9Hx95I;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$CusFj6pVztwBZlitsnMLA9Hx95I;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setKeyguardFadingAway(Z)V
    .registers 3

    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    if-eq v0, p1, :cond_20

    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 129
    :goto_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_20

    .line 130
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;->onKeyguardFadingAwayChanged()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_e

    :cond_20
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .registers 3

    const-string v0, "Callback must not be null. b/128895449"

    .line 64
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_1e

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    if-nez p1, :cond_1e

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    .line 68
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_1e
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 33
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method

.method public calculateGoingToFullShadeDelay()J
    .registers 5

    .line 167
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDelay:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .registers 3

    .line 157
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .registers 3

    .line 162
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method public isBypassFadingAnimation()Z
    .registers 1

    .line 152
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mBypassFadingAnimation:Z

    return p0
.end method

.method public isDeviceInteractive()Z
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p0

    return p0
.end method

.method public isKeyguardFadingAway()Z
    .registers 1

    .line 142
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAway:Z

    return p0
.end method

.method public isKeyguardGoingAway()Z
    .registers 1

    .line 147
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    return p0
.end method

.method public isLaunchTransitionFadingAway()Z
    .registers 1

    .line 180
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mLaunchTransitionFadingAway:Z

    return p0
.end method

.method public isOccluded()Z
    .registers 1

    .line 93
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    return p0
.end method

.method public isSecure()Z
    .registers 1

    .line 88
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    return p0
.end method

.method public isShowing()Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    return p0
.end method

.method public notifyKeyguardDoneFading()V
    .registers 2

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    .line 137
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->setKeyguardFadingAway(Z)V

    return-void
.end method

.method public notifyKeyguardFadingAway(JJZ)V
    .registers 6

    .line 119
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDelay:J

    .line 120
    iput-wide p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardFadingAwayDuration:J

    .line 121
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mBypassFadingAnimation:Z

    const/4 p1, 0x1

    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->setKeyguardFadingAway(Z)V

    return-void
.end method

.method public notifyKeyguardGoingAway(Z)V
    .registers 2

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardGoingAway:Z

    return-void
.end method

.method public notifyKeyguardState(ZZZ)V
    .registers 5

    .line 97
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    if-ne v0, p1, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    if-ne v0, p2, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    if-ne v0, p3, :cond_d

    return-void

    .line 98
    :cond_d
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mShowing:Z

    .line 99
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mSecure:Z

    .line 100
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mOccluded:Z

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardChanged()V

    return-void
.end method

.method public onTrustChanged(I)V
    .registers 2

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardChanged()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .registers 3

    const-string v0, "Callback must not be null. b/128895449"

    .line 74
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_21

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    if-eqz p1, :cond_21

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mListening:Z

    .line 77
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_21
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 33
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method

.method public setLaunchTransitionFadingAway(Z)V
    .registers 2

    .line 175
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->mLaunchTransitionFadingAway:Z

    return-void
.end method
