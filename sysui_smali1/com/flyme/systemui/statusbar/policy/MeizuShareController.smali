.class public interface abstract Lcom/flyme/systemui/statusbar/policy/MeizuShareController;
.super Ljava/lang/Object;
.source "MeizuShareController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isEnabled()Z
.end method

.method public abstract setEnabled(Z)V
.end method
