.class public interface abstract Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;
.super Ljava/lang/Object;
.source "EyeProtectiveController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isEyeProtectiveEnabled()Z
.end method

.method public abstract isEyeProtectiveSupported()Z
.end method

.method public abstract setEyeProtectiveEnabled(Z)V
.end method
