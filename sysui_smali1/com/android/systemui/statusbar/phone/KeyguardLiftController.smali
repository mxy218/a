.class public final Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardLiftController.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008¢\u0006\u0002\u0010\tJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bH\u0016J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u000bH\u0016J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u000bH\u0016J\u0008\u0010\u001b\u001a\u00020\u0015H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \u000f*\u0004\u0018\u00010\u00130\u0013X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
        "Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;",
        "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
        "context",
        "Landroid/content/Context;",
        "statusBarStateController",
        "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
        "asyncSensorManager",
        "Lcom/android/systemui/util/AsyncSensorManager;",
        "(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/AsyncSensorManager;)V",
        "bouncerVisible",
        "",
        "isListening",
        "keyguardUpdateMonitor",
        "Lcom/android/keyguard/KeyguardUpdateMonitor;",
        "kotlin.jvm.PlatformType",
        "listener",
        "Landroid/hardware/TriggerEventListener;",
        "pickupSensor",
        "Landroid/hardware/Sensor;",
        "onDozingChanged",
        "",
        "isDozing",
        "onKeyguardBouncerChanged",
        "bouncer",
        "onKeyguardVisibilityChanged",
        "showing",
        "updateListeningState",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final asyncSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

.field private bouncerVisible:Z

.field private isListening:Z

.field private final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final listener:Landroid/hardware/TriggerEventListener;

.field private final pickupSensor:Landroid/hardware/Sensor;

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/AsyncSensorManager;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncSensorManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->asyncSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    .line 35
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 36
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->asyncSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    const/16 p2, 0x19

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->pickupSensor:Landroid/hardware/Sensor;

    .line 41
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 42
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    .line 46
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$listener$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->listener:Landroid/hardware/TriggerEventListener;

    return-void
.end method

.method public static final synthetic access$getKeyguardUpdateMonitor$p(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method public static final synthetic access$setListening$p(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->isListening:Z

    return-void
.end method

.method public static final synthetic access$updateListeningState(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    return-void
.end method

.method private final updateListeningState()V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->pickupSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_5

    return-void

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "keyguardUpdateMonitor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    if-nez v0, :cond_27

    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->bouncerVisible:Z

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    .line 77
    :cond_27
    :goto_27
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->isListening:Z

    if-eq v1, v0, :cond_42

    .line 78
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->isListening:Z

    if-eqz v1, :cond_39

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->asyncSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->listener:Landroid/hardware/TriggerEventListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->pickupSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    goto :goto_42

    .line 83
    :cond_39
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->asyncSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->listener:Landroid/hardware/TriggerEventListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->pickupSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    :cond_42
    :goto_42
    return-void
.end method


# virtual methods
.method public onDozingChanged(Z)V
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->bouncerVisible:Z

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 2

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    return-void
.end method
