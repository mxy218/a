.class public Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;
.super Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;
.source "SnakeRandomPositionSimulateAlgorithm.java"


# instance fields
.field private mCurIndex:I

.field private mCurRandom:F

.field private mMaxHorizontalRandomOffset:I

.field private mMaxVerticalRandomOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 16
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xf

    .line 10
    iput v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->mMaxHorizontalRandomOffset:I

    const/16 v0, 0x1e

    .line 11
    iput v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->mMaxVerticalRandomOffset:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->mCurIndex:I

    const/high16 v0, -0x40800000  # -1.0f

    .line 13
    iput v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->mCurRandom:F

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->aod_position_horizontal_random_adjust_range:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->mMaxHorizontalRandomOffset:I

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->aod_position_vertical_random_adjust_range:I

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->mMaxVerticalRandomOffset:I

    return-void
.end method

.method private getRandom()F
    .registers 5

    .line 53
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method private getRandomByIndex(I)F
    .registers 3

    .line 45
    iget v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->mCurIndex:I

    if-eq v0, p1, :cond_c

    .line 46
    iput p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->mCurIndex:I

    .line 47
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->getRandom()F

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->mCurRandom:F

    .line 49
    :cond_c
    iget p0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->mCurRandom:F

    return p0
.end method


# virtual methods
.method public getXOffset(I)I
    .registers 4

    .line 28
    invoke-super {p0, p1}, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->getXOffset(I)I

    move-result v0

    .line 29
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->getRandomByIndex(I)F

    move-result p1

    iget v1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->mMaxHorizontalRandomOffset:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 30
    iget p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingLeft:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 31
    iget p0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mMaxPaddingLeft:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getYOffset(I)I
    .registers 4

    .line 37
    invoke-super {p0, p1}, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->getYOffset(I)I

    move-result v0

    .line 38
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->getRandomByIndex(I)F

    move-result p1

    iget v1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakeRandomPositionSimulateAlgorithm;->mMaxVerticalRandomOffset:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 39
    iget p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingTop:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 40
    iget p0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mMaxPaddingTop:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
