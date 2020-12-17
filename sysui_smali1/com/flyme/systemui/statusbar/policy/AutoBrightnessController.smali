.class public interface abstract Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;
.super Ljava/lang/Object;
.source "AutoBrightnessController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract initAutoBrightness()V
.end method

.method public abstract isAutoBrightnessOn()Z
.end method

.method public abstract isAutoBrightnessSupport()Z
.end method

.method public abstract setAutoBrightnessOn(Z)V
.end method
