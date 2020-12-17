.class public interface abstract Lcom/android/systemui/statusbar/policy/BatteryController;
.super Ljava/lang/Object;
.source "BatteryController.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallbackExt;,
        Lcom/android/systemui/statusbar/policy/BatteryController$EstimateFetchCompletion;,
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/DemoMode;",
        "Lcom/android/systemui/Dumpable;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public getEstimatedTimeRemainingString(Lcom/android/systemui/statusbar/policy/BatteryController$EstimateFetchCompletion;)V
    .registers 2

    return-void
.end method

.method public isAodPowerSave()Z
    .registers 1

    .line 49
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result p0

    return p0
.end method

.method public abstract isPowerSave()Z
.end method

.method public isQuickCharging()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract setPowerSaveMode(Z)V
.end method
