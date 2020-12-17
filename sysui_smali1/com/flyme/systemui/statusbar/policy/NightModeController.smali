.class public interface abstract Lcom/flyme/systemui/statusbar/policy/NightModeController;
.super Ljava/lang/Object;
.source "NightModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;)V
.end method

.method public abstract isInNightMode()Z
.end method

.method public abstract isNightModeSupport()Z
.end method

.method public abstract isSwitching()Z
.end method

.method public abstract notifyPanelCollapse()V
.end method

.method public abstract setInNightMode(Z)V
.end method
