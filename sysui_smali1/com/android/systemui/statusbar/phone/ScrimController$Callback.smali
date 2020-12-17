.class public interface abstract Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
.super Ljava/lang/Object;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onCancelled()V
    .registers 1

    return-void
.end method

.method public onDisplayBlanked()V
    .registers 1

    return-void
.end method

.method public onFinished()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public shouldTimeoutWallpaper()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
