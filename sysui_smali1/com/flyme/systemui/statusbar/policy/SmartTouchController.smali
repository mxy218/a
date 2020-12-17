.class public interface abstract Lcom/flyme/systemui/statusbar/policy/SmartTouchController;
.super Ljava/lang/Object;
.source "SmartTouchController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onNotificationsPanelExpand(Z)V
.end method

.method public abstract setSmartTouchOn(Z)V
.end method
