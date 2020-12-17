.class public Lcom/android/systemui/statusbar/OperatorNameView;
.super Landroid/widget/TextView;
.source "OperatorNameView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mDemoMode:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/OperatorNameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/OperatorNameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance p1, Lcom/android/systemui/statusbar/OperatorNameView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/OperatorNameView$1;-><init>(Lcom/android/systemui/statusbar/OperatorNameView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/OperatorNameView;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameView;->updateText()V

    return-void
.end method

.method private update()V
    .registers 4

    .line 119
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    const-string/jumbo v2, "show_operator_name"

    .line 120
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    const/16 v0, 0x8

    if-eqz v1, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    move v1, v0

    .line 121
    :goto_1c
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    .line 125
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v1, :cond_3c

    if-eqz v2, :cond_34

    goto :goto_3c

    .line 132
    :cond_34
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mDemoMode:Z

    if-nez v0, :cond_3b

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameView;->updateText()V

    :cond_3b
    return-void

    :cond_3c
    :goto_3c
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateText()V
    .registers 8

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_b
    if-ge v1, v2, :cond_43

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 143
    iget-object v4, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 145
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_40

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v6, :cond_40

    .line 146
    iget-object v4, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 147
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_40

    goto :goto_44

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_43
    const/4 v5, 0x0

    .line 154
    :goto_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateText: displayText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperatorNameView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mDemoMode:Z

    if-nez v0, :cond_10

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mDemoMode:Z

    goto :goto_38

    .line 110
    :cond_10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mDemoMode:Z

    if-eqz v0, :cond_23

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mDemoMode:Z

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameView;->update()V

    goto :goto_38

    .line 113
    :cond_23
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mDemoMode:Z

    if-eqz v0, :cond_38

    const-string v0, "operator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    const-string p1, "name"

    .line 114
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_38
    :goto_38
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 73
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const-string v0, "OperatorNameView"

    const-string v1, "onAttachedToWindow: "

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 77
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 78
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 79
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "show_operator_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    .line 93
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 84
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 86
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 87
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 88
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameView;->update()V

    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .registers 2

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameView;->update()V

    return-void
.end method
