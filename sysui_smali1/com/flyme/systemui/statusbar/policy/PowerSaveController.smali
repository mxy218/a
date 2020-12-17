.class public interface abstract Lcom/flyme/systemui/statusbar/policy/PowerSaveController;
.super Ljava/lang/Object;
.source "PowerSaveController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getIntentMode()I
.end method

.method public abstract getPowerSaveMode()I
.end method

.method public abstract isUserUnlocked()Z
.end method

.method public abstract setPowerSaveMode(I)V
.end method
