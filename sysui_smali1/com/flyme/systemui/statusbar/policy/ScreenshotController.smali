.class public interface abstract Lcom/flyme/systemui/statusbar/policy/ScreenshotController;
.super Ljava/lang/Object;
.source "ScreenshotController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract capturePicture()V
.end method

.method public abstract isCapturing()Z
.end method

.method public abstract takeScreenShot()V
.end method
