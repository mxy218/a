.class public interface abstract Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OverviewProxyListener"
.end annotation


# virtual methods
.method public onAssistantGestureCompletion(F)V
    .registers 2

    return-void
.end method

.method public onAssistantProgress(F)V
    .registers 2

    return-void
.end method

.method public onConnectionChanged(Z)V
    .registers 2

    return-void
.end method

.method public onNavBarButtonAlphaChanged(FZ)V
    .registers 3

    return-void
.end method

.method public onOverviewShown(Z)V
    .registers 2

    return-void
.end method

.method public onSystemUiStateChanged(I)V
    .registers 2

    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method
