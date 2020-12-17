.class public interface abstract Lcom/flyme/systemui/statusbar/policy/DriveModeController;
.super Ljava/lang/Object;
.source "DriveModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isDriveModeEnabled()Z
.end method

.method public abstract isDriveModeSupported()Z
.end method

.method public abstract setDriveModeEnabled(Z)V
.end method
