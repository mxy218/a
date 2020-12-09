.class public Lcom/android/server/wm/utils/CoordinateTransforms;
.super Ljava/lang/Object;
.source "CoordinateTransforms.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V
    .registers 6

    .line 76
    if-eqz p0, :cond_46

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2e

    const/4 p1, 0x3

    if-ne p0, p1, :cond_17

    .line 89
    const/high16 p0, 0x43870000  # 270.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 90
    neg-int p0, p2

    int-to-float p0, p0

    invoke-virtual {p3, p0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 91
    goto :goto_4a

    .line 93
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_2e
    const/high16 p0, 0x43340000  # 180.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 86
    neg-int p0, p1

    int-to-float p0, p0

    neg-int p1, p2

    int-to-float p1, p1

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 87
    goto :goto_4a

    .line 81
    :cond_3b
    const/high16 p0, 0x42b40000  # 90.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 82
    neg-int p0, p1

    int-to-float p0, p0

    invoke-virtual {p3, v1, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 83
    goto :goto_4a

    .line 78
    :cond_46
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 79
    nop

    .line 95
    :goto_4a
    return-void
.end method

.method public static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .registers 6

    .line 46
    if-eqz p0, :cond_42

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_38

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2d

    const/4 p1, 0x3

    if-ne p0, p1, :cond_16

    .line 59
    const/high16 p0, 0x42b40000  # 90.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 60
    int-to-float p0, p2

    invoke-virtual {p3, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 61
    goto :goto_46

    .line 63
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_2d
    const/high16 p0, 0x43340000  # 180.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 56
    int-to-float p0, p1

    int-to-float p1, p2

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 57
    goto :goto_46

    .line 51
    :cond_38
    const/high16 p0, 0x43870000  # 270.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 52
    int-to-float p0, p1

    invoke-virtual {p3, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 53
    goto :goto_46

    .line 48
    :cond_42
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 49
    nop

    .line 65
    :goto_46
    return-void
.end method

.method public static transformRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 5

    .line 148
    if-nez p2, :cond_7

    .line 149
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 151
    :cond_7
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 152
    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 153
    iget p0, p2, Landroid/graphics/RectF;->left:F

    float-to-int p0, p0

    iget v0, p2, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    return-void
.end method

.method public static transformToRotation(IIIILandroid/graphics/Matrix;)V
    .registers 7

    .line 130
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 131
    :cond_8
    :goto_8
    if-eqz v0, :cond_c

    move v1, p2

    goto :goto_d

    :cond_c
    move v1, p3

    .line 132
    :goto_d
    if-eqz v0, :cond_10

    move p2, p3

    .line 134
    :cond_10
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    invoke-static {p0, p2, v1, p4}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 136
    invoke-static {p1, p2, v1, p3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 137
    invoke-virtual {p4, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 138
    return-void
.end method

.method public static transformToRotation(IILandroid/view/DisplayInfo;Landroid/graphics/Matrix;)V
    .registers 7

    .line 108
    iget v0, p2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget v0, p2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 109
    :cond_c
    :goto_c
    if-eqz v1, :cond_11

    iget v0, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_13

    :cond_11
    iget v0, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 110
    :goto_13
    if-eqz v1, :cond_18

    iget p2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_1a

    :cond_18
    iget p2, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 112
    :goto_1a
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    invoke-static {p0, p2, v0, p3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 114
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 115
    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 116
    return-void
.end method
