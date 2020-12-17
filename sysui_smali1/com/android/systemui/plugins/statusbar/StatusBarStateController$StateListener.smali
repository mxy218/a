.class public interface abstract Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.super Ljava/lang/Object;
.source "StatusBarStateController.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public onDozeAmountChanged(FF)V
    .registers 3

    return-void
.end method

.method public onDozingChanged(Z)V
    .registers 2

    return-void
.end method

.method public onPulsingChanged(Z)V
    .registers 2

    return-void
.end method

.method public onStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onStatePostChange()V
    .registers 1

    return-void
.end method

.method public onStatePreChange(II)V
    .registers 3

    return-void
.end method

.method public onSystemUiVisibilityChanged(I)V
    .registers 2

    return-void
.end method
