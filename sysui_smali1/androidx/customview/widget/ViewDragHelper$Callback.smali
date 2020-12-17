.class public abstract Landroidx/customview/widget/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clampViewPositionHorizontal(Landroid/view/View;II)I
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract clampViewPositionVertical(Landroid/view/View;II)I
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public getOrderedChildIndex(I)I
    .registers 2

    return p1
.end method

.method public abstract getViewHorizontalDragRange(Landroid/view/View;)I
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onEdgeDragStarted(II)V
.end method

.method public onEdgeLock(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onEdgeTouched(II)V
    .registers 3

    return-void
.end method

.method public abstract onViewCaptured(Landroid/view/View;I)V
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onViewDragStateChanged(I)V
.end method

.method public abstract onViewPositionChanged(Landroid/view/View;IIII)V
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p5  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
.end method

.method public abstract onViewReleased(Landroid/view/View;FF)V
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract tryCaptureView(Landroid/view/View;I)Z
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
