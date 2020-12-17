.class public interface abstract Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;
.super Ljava/lang/Object;
.source "ScreenRecordController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isReadying()Z
.end method

.method public abstract isScreenRecordSupported()Z
.end method

.method public abstract isScreenRecording()Z
.end method

.method public abstract running(Z)V
.end method

.method public abstract takeScreenRecord(Z)V
.end method
