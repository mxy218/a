.class public interface abstract Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;
.super Ljava/lang/Object;
.source "FlymeCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract hideAlwaysTextAndIcon(Ljava/lang/String;)V
.end method

.method public abstract notifyEventForSystemUI(II)V
.end method

.method public abstract releaseAndCloseHeadsUp()V
.end method

.method public abstract setNavButtonVisible(Z)V
.end method

.method public abstract setNavigationBarBackground(IZ)V
.end method

.method public abstract setNavigationBarCarMode(Z)V
.end method

.method public abstract setNavigationBarColorTheme(IZ)V
.end method

.method public abstract setNavigationBarDarkTheme(ZZ)V
.end method

.method public abstract setNotificationReplyingInfo(Landroid/os/Bundle;)V
.end method

.method public abstract setStatusBarColorTheme(IZ)V
.end method

.method public abstract setStatusBarDarkTheme(ZZ)V
.end method

.method public abstract showAlwaysTextAndIcon(Landroid/os/Bundle;)V
.end method
