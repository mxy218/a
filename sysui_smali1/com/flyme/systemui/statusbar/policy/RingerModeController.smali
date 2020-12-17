.class public interface abstract Lcom/flyme/systemui/statusbar/policy/RingerModeController;
.super Ljava/lang/Object;
.source "RingerModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isMuteOn()Z
.end method

.method public abstract isVibrateOn()Z
.end method

.method public abstract setMuteOn(Z)V
.end method

.method public abstract setVibrateOn(Z)V
.end method
