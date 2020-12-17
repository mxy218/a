.class public Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;
.super Ljava/lang/Object;
.source "BrightLineFalsingManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;


# instance fields
.field private final mClassifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/classifier/brightline/FalsingClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

.field private mIsFalseTouchCalls:I

.field private mJustUnlockedWithFace:Z

.field private final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mProximitySensor:Lcom/android/systemui/util/ProximitySensor;

.field private mScreenOn:Z

.field private mSensorEventListener:Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;

.field private mSessionStarted:Z

.field private mShowingAod:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/ProximitySensor;)V
    .registers 6

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$EIbc1Czf0k1qNoCbD0gLgP-Ksv4;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$EIbc1Czf0k1qNoCbD0gLgP-Ksv4;-><init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorEventListener:Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;

    .line 60
    new-instance v0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$1;-><init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 76
    iput-object p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    .line 78
    iput-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mProximitySensor:Lcom/android/systemui/util/ProximitySensor;

    .line 79
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 81
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    .line 83
    new-instance p1, Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    iget-object p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {p1, p2}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    .line 84
    new-instance p2, Lcom/android/systemui/classifier/brightline/ProximityClassifier;

    iget-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/classifier/brightline/ProximityClassifier;-><init>(Lcom/android/systemui/classifier/brightline/DistanceClassifier;Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    .line 86
    iget-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;

    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {v0, v1}, Lcom/android/systemui/classifier/brightline/PointerCountClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/classifier/brightline/TypeClassifier;

    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {v0, v1}, Lcom/android/systemui/classifier/brightline/TypeClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;

    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {v0, v1}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-direct {p2, p0}, Lcom/android/systemui/classifier/brightline/ZigZagClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;Z)Z
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mJustUnlockedWithFace:Z

    return p1
.end method

.method public static synthetic lambda$EIbc1Czf0k1qNoCbD0gLgP-Ksv4(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;Lcom/android/systemui/util/ProximitySensor$ProximityEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->onProximityEvent(Lcom/android/systemui/util/ProximitySensor$ProximityEvent;)V

    return-void
.end method

.method static synthetic lambda$isFalseTouch$1(Lcom/android/systemui/classifier/brightline/FalsingClassifier;)Z
    .registers 3

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isFalseTouch()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": true"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    goto :goto_3b

    .line 144
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": false"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_3b
    return v0
.end method

.method static synthetic lambda$onProximityEvent$3(Lcom/android/systemui/util/ProximitySensor$ProximityEvent;Lcom/android/systemui/classifier/brightline/FalsingClassifier;)V
    .registers 2

    .line 165
    invoke-virtual {p1, p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->onProximityEvent(Lcom/android/systemui/util/ProximitySensor$ProximityEvent;)V

    return-void
.end method

.method static synthetic lambda$onTouchEvent$2(Landroid/view/MotionEvent;Lcom/android/systemui/classifier/brightline/FalsingClassifier;)V
    .registers 2

    .line 159
    invoke-virtual {p1, p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic lambda$updateInteractionType$0(ILcom/android/systemui/classifier/brightline/FalsingClassifier;)V
    .registers 2

    .line 129
    invoke-virtual {p1, p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->setInteractionType(I)V

    return-void
.end method

.method static logInfo(Ljava/lang/String;)V
    .registers 2

    const-string v0, "FalsingManagerPlugin"

    .line 347
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onProximityEvent(Lcom/android/systemui/util/ProximitySensor$ProximityEvent;)V
    .registers 3

    .line 165
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$-SnpFjXg0evvwd5NWvIx70G2rfg;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$-SnpFjXg0evvwd5NWvIx70G2rfg;-><init>(Lcom/android/systemui/util/ProximitySensor$ProximityEvent;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private registerSensors()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mProximitySensor:Lcom/android/systemui/util/ProximitySensor;

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorEventListener:Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/ProximitySensor;->register(Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;)Z

    return-void
.end method

.method private sessionEnd()V
    .registers 5

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->unregisterSensors()V

    .line 118
    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->onSessionEnd()V

    .line 119
    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    sget-object v2, Lcom/android/systemui/classifier/brightline/-$$Lambda$47wU6WxQ-76Gt_ecwypSCrFl04Q;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$47wU6WxQ-76Gt_ecwypSCrFl04Q;

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 120
    iget v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mIsFalseTouchCalls:I

    if-eqz v1, :cond_23

    .line 121
    iget-object v2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v3, "falsing_failure_after_attempts"

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 122
    iput v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mIsFalseTouchCalls:I

    :cond_23
    return-void
.end method

.method private sessionStart()V
    .registers 2

    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mShowingAod:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSessionStarted:Z

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mJustUnlockedWithFace:Z

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->registerSensors()V

    .line 109
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$HclOlu42IVtKALxwbwHP3Y1rdRk;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$HclOlu42IVtKALxwbwHP3Y1rdRk;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1c
    return-void
.end method

.method private unregisterSensors()V
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mProximitySensor:Lcom/android/systemui/util/ProximitySensor;

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mSensorEventListener:Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/ProximitySensor;->unregister(Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;)V

    return-void
.end method

.method private updateInteractionType(I)V
    .registers 4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$lNVlN0g8I4PHJqQP26X1fXH_2TU;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$lNVlN0g8I4PHJqQP26X1fXH_2TU;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 2

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->unregisterSensors()V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    return-void
.end method

.method public isClassiferEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isFalseTouch()Z
    .registers 3

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mJustUnlockedWithFace:Z

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$Hwyy_7VqHdYEMuILU__cqMTjCOk;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$Hwyy_7VqHdYEMuILU__cqMTjCOk;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    .line 149
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is false touch? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return p0
.end method

.method public isReportingEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isUnlockingDisabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onAffordanceSwipingAborted()V
    .registers 1

    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x6

    goto :goto_5

    :cond_4
    const/4 p1, 0x5

    .line 244
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onBouncerHidden()V
    .registers 1

    return-void
.end method

.method public onBouncerShown()V
    .registers 1

    return-void
.end method

.method public onCameraHintStarted()V
    .registers 1

    return-void
.end method

.method public onCameraOn()V
    .registers 1

    return-void
.end method

.method public onExpansionFromPulseStopped()V
    .registers 1

    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .registers 1

    return-void
.end method

.method public onLeftAffordanceOn()V
    .registers 1

    return-void
.end method

.method public onNotificationActive()V
    .registers 1

    return-void
.end method

.method public onNotificationDismissed()V
    .registers 1

    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .registers 4

    return-void
.end method

.method public onNotificatonStartDismissing()V
    .registers 2

    const/4 v0, 0x1

    .line 311
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .registers 2

    const/4 v0, 0x2

    .line 193
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onNotificatonStopDismissing()V
    .registers 1

    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .registers 1

    return-void
.end method

.method public onQsDown()V
    .registers 2

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onScreenOff()V
    .registers 2

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mScreenOn:Z

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionEnd()V

    return-void
.end method

.method public onScreenOnFromTouch()V
    .registers 1

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->onScreenTurningOn()V

    return-void
.end method

.method public onScreenTurningOn()V
    .registers 2

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mScreenOn:Z

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionStart()V

    return-void
.end method

.method public onStartExpandingFromPulse()V
    .registers 2

    const/16 v0, 0x9

    .line 254
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onSucccessfulUnlock()V
    .registers 4

    .line 170
    iget v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mIsFalseTouchCalls:I

    if-eqz v0, :cond_e

    .line 171
    iget-object v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v2, "falsing_success_after_attempts"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mIsFalseTouchCalls:I

    .line 174
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionEnd()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .registers 4

    .line 158
    iget-object p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/brightline/FalsingDataProvider;

    invoke-virtual {p2, p1}, Lcom/android/systemui/classifier/brightline/FalsingDataProvider;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 159
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mClassifiers:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$dqBt-Gf6PUXlUGyEertsddqo7Kg;

    invoke-direct {p2, p1}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$dqBt-Gf6PUXlUGyEertsddqo7Kg;-><init>(Landroid/view/MotionEvent;)V

    invoke-interface {p0, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTrackingStarted(Z)V
    .registers 2

    if-eqz p1, :cond_5

    const/16 p1, 0x8

    goto :goto_6

    :cond_5
    const/4 p1, 0x4

    .line 227
    :goto_6
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->updateInteractionType(I)V

    return-void
.end method

.method public onTrackingStopped()V
    .registers 1

    return-void
.end method

.method public onUnlockHintStarted()V
    .registers 1

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public setNotificationExpanded()V
    .registers 1

    return-void
.end method

.method public setQsExpanded(Z)V
    .registers 2

    return-void
.end method

.method public setShowingAod(Z)V
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->mShowingAod:Z

    if-eqz p1, :cond_8

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionEnd()V

    goto :goto_b

    .line 187
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->sessionStart()V

    :goto_b
    return-void
.end method

.method public shouldEnforceBouncer()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
