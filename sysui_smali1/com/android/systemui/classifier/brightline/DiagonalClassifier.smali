.class Lcom/android/systemui/classifier/brightline/DiagonalClassifier;
.super Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.source "DiagonalClassifier.java"


# instance fields
.field private final mHorizontalAngleRange:F

.field private final mVerticalAngleRange:F


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V
    .registers 5

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    const p1, 0x3db2b8c2

    const-string v0, "brightline_falsing_diagonal_horizontal_angle_range"

    const-string/jumbo v1, "systemui"

    .line 48
    invoke-static {v1, v0, p1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->mHorizontalAngleRange:F

    .line 52
    invoke-static {v1, v0, p1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->mVerticalAngleRange:F

    return-void
.end method

.method private angleBetween(FFF)Z
    .registers 6

    .line 87
    invoke-direct {p0, p2}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->normalizeAngle(F)F

    move-result p2

    .line 88
    invoke-direct {p0, p3}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->normalizeAngle(F)F

    move-result p0

    cmpl-float p3, p2, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_19

    cmpl-float p2, p1, p2

    if-gez p2, :cond_18

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :cond_18
    :goto_18
    return v0

    :cond_19
    cmpl-float p2, p1, p2

    if-ltz p2, :cond_22

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    return v0
.end method

.method private normalizeAngle(F)F
    .registers 3

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    const v0, 0x40c90fdb

    if-gez p0, :cond_b

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    return p1

    :cond_b
    cmpl-float p0, p1, v0

    if-lez p0, :cond_10

    rem-float/2addr p1, v0

    :cond_10
    return p1
.end method


# virtual methods
.method isFalseTouch()Z
    .registers 8

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getAngle()F

    move-result v0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    return v2

    .line 66
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getInteractionType()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_58

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getInteractionType()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1c

    goto :goto_58

    .line 71
    :cond_1c
    iget v1, p0, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->mHorizontalAngleRange:F

    const v3, 0x3f490fdb

    sub-float v4, v3, v1

    add-float/2addr v1, v3

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isVertical()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 74
    iget v1, p0, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->mVerticalAngleRange:F

    sub-float v4, v3, v1

    add-float/2addr v1, v3

    .line 78
    :cond_2f
    invoke-direct {p0, v0, v4, v1}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->angleBetween(FFF)Z

    move-result v3

    if-nez v3, :cond_57

    const v3, 0x3fc90fdb

    add-float v5, v4, v3

    add-float v6, v1, v3

    .line 79
    invoke-direct {p0, v0, v5, v6}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->angleBetween(FFF)Z

    move-result v5

    if-nez v5, :cond_57

    sub-float v5, v4, v3

    sub-float v3, v1, v3

    .line 80
    invoke-direct {p0, v0, v5, v3}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->angleBetween(FFF)Z

    move-result v3

    if-nez v3, :cond_57

    const v3, 0x40490fdb  # (float)Math.PI

    add-float/2addr v4, v3

    add-float/2addr v1, v3

    .line 81
    invoke-direct {p0, v0, v4, v1}, Lcom/android/systemui/classifier/brightline/DiagonalClassifier;->angleBetween(FFF)Z

    move-result p0

    if-eqz p0, :cond_58

    :cond_57
    const/4 v2, 0x1

    :cond_58
    :goto_58
    return v2
.end method
