.class Lcom/android/systemui/doze/DozeLog$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 316
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .registers 1

    .line 319
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->traceEmergencyCall()V

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .registers 2

    .line 334
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceScreenOff(I)V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .registers 2

    .line 324
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceKeyguardBouncerChanged(Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 2

    .line 339
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceKeyguard(Z)V

    return-void
.end method

.method public onStartedWakingUp()V
    .registers 1

    .line 329
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->traceScreenOn()V

    return-void
.end method
