.class public interface abstract Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.super Ljava/lang/Object;
.source "NotificationGuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GutsContent"
.end annotation


# virtual methods
.method public abstract getActualHeight()I
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract handleCloseControls(ZZ)Z
.end method

.method public isLeavebehind()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onFinishedClosing()V
    .registers 1

    return-void
.end method

.method public abstract setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
.end method

.method public abstract shouldBeSaved()Z
.end method

.method public abstract willBeRemoved()Z
.end method
