.class public interface abstract Lcom/flyme/systemui/statusbar/policy/AcceleratorController;
.super Ljava/lang/Object;
.source "AcceleratorController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isAcceleratorEnabled()Z
.end method

.method public abstract isAcceleratorSupported()Z
.end method

.method public abstract setAcceleratorEnabled()V
.end method
