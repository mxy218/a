.class final Lcom/android/server/accessibility/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D
    .registers 4

    .line 35
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p0, v1, p1}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method private static eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z
    .registers 5

    .line 24
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 25
    return v0

    .line 27
    :cond_8
    invoke-static {p0, p1}, Lcom/android/server/accessibility/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide p0

    .line 28
    int-to-double p2, p3

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_12

    .line 29
    return v0

    .line 31
    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static isDraggingGesture(FFFFFFFFF)Z
    .registers 14

    .line 53
    sub-float/2addr p4, p0

    .line 54
    sub-float/2addr p5, p1

    .line 56
    const/4 p0, 0x0

    cmpl-float p1, p4, p0

    const/4 v0, 0x1

    if-nez p1, :cond_d

    cmpl-float p1, p5, p0

    if-nez p1, :cond_d

    .line 57
    return v0

    .line 60
    :cond_d
    float-to-double v1, p4

    float-to-double v3, p5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float p1, v1

    .line 62
    cmpl-float v1, p1, p0

    if-lez v1, :cond_19

    div-float/2addr p4, p1

    .line 64
    :cond_19
    if-lez v1, :cond_1c

    div-float/2addr p5, p1

    .line 66
    :cond_1c
    sub-float/2addr p6, p2

    .line 67
    sub-float/2addr p7, p3

    .line 69
    cmpl-float p1, p6, p0

    if-nez p1, :cond_27

    cmpl-float p1, p7, p0

    if-nez p1, :cond_27

    .line 70
    return v0

    .line 73
    :cond_27
    float-to-double p1, p6

    float-to-double v1, p7

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    .line 75
    cmpl-float p0, p1, p0

    if-lez p0, :cond_33

    div-float/2addr p6, p1

    .line 77
    :cond_33
    if-lez p0, :cond_36

    div-float/2addr p7, p1

    .line 79
    :cond_36
    mul-float/2addr p4, p6

    mul-float/2addr p5, p7

    add-float/2addr p4, p5

    .line 82
    cmpg-float p0, p4, p8

    if-gez p0, :cond_3f

    .line 83
    const/4 p0, 0x0

    return p0

    .line 86
    :cond_3f
    return v0
.end method

.method public static isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z
    .registers 4

    .line 17
    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 18
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z

    move-result p0

    return p0

    .line 17
    :cond_a
    :goto_a
    const/4 p0, 0x0

    return p0
.end method

.method public static isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .registers 5

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    .line 40
    int-to-long p0, p2

    cmp-long p0, v0, p0

    if-ltz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
