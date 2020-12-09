.class public Lcom/android/server/wm/utils/DisplayRotationUtil;
.super Ljava/lang/Object;
.source "DisplayRotationUtil.java"


# instance fields
.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/utils/DisplayRotationUtil;->mTmpMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method static getBoundIndexFromRotation(II)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 57
    invoke-static {p1}, Lcom/android/server/wm/utils/DisplayRotationUtil;->getRotationToBoundsOffset(I)I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x4

    invoke-static {p0, p1}, Ljava/lang/Math;->floorMod(II)I

    move-result p0

    return p0
.end method

.method private static getRotationToBoundsOffset(I)I
    .registers 4

    .line 40
    const/4 v0, 0x0

    if-eqz p0, :cond_11

    const/4 v1, 0x1

    if-eq p0, v1, :cond_f

    const/4 v2, 0x2

    if-eq p0, v2, :cond_e

    const/4 v2, 0x3

    if-eq p0, v2, :cond_d

    .line 51
    return v0

    .line 48
    :cond_d
    return v1

    .line 46
    :cond_e
    return v2

    .line 44
    :cond_f
    const/4 p0, -0x1

    return p0

    .line 42
    :cond_11
    return v0
.end method


# virtual methods
.method public getRotatedBounds([Landroid/graphics/Rect;III)[Landroid/graphics/Rect;
    .registers 8

    .line 74
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_31

    .line 78
    if-nez p2, :cond_7

    .line 79
    return-object p1

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/utils/DisplayRotationUtil;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {p2, p3, p4, v0}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 83
    new-array p3, v1, [Landroid/graphics/Rect;

    .line 84
    const/4 p4, 0x0

    :goto_f
    array-length v0, p1

    if-ge p4, v0, :cond_30

    .line 86
    aget-object v0, p1, p4

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 88
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 89
    iget-object v2, p0, Lcom/android/server/wm/utils/DisplayRotationUtil;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 90
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 92
    :cond_27
    invoke-static {p4, p2}, Lcom/android/server/wm/utils/DisplayRotationUtil;->getBoundIndexFromRotation(II)I

    move-result v1

    aput-object v0, p3, v1

    .line 84
    add-int/lit8 p4, p4, 0x1

    goto :goto_f

    .line 94
    :cond_30
    return-object p3

    .line 75
    :cond_31
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bounds must have exactly 4 elements: bounds="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
