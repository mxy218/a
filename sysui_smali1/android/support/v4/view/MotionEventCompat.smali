.class public final Landroid/support/v4/view/MotionEventCompat;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# direct methods
.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 488
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p0

    return p0
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 477
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p0

    return p0
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    return p0
.end method

.method public static getAxisValue(Landroid/view/MotionEvent;I)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 570
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    return p0
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 532
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    return p0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p0

    return p0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 510
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    return p0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 521
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    return p0
.end method

.method public static isFromSource(Landroid/view/MotionEvent;I)Z
    .registers 2

    .line 553
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method
