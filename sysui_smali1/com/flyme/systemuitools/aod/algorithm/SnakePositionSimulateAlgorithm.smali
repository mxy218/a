.class public Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;
.super Lcom/flyme/systemuitools/aod/algorithm/PositionSimulateAlgorithmBase;
.source "SnakePositionSimulateAlgorithm.java"


# static fields
.field private static TAG:Ljava/lang/String; = "SnakePositionSimulateAlgorithm"


# instance fields
.field protected mColumn:I

.field private mContentHeight:I

.field private mContentLeft:[I

.field private mContentTop:[I

.field private mContentWidth:I

.field protected mDisplayHeight:I

.field protected mDisplayWidth:I

.field private mHorizontalStep:I

.field protected mMaxPaddingLeft:I

.field protected mMaxPaddingTop:I

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field protected mRow:I

.field private mVerticalStep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/algorithm/PositionSimulateAlgorithmBase;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 15
    iput p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingLeft:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingTop:I

    .line 16
    iput p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingRight:I

    iput v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingBottom:I

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mHorizontalStep:I

    iput p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mVerticalStep:I

    .line 27
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/algorithm/PositionSimulateAlgorithmBase;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 29
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mDisplayHeight:I

    .line 30
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mDisplayWidth:I

    .line 31
    iget p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mDisplayWidth:I

    iget v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mDisplayHeight:I

    if-le p1, v0, :cond_3d

    .line 33
    iput v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mDisplayWidth:I

    .line 34
    iput p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mDisplayHeight:I

    :cond_3d
    return-void
.end method

.method private computePadding()V
    .registers 9

    .line 88
    iget v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mColumn:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    move v0, v1

    goto :goto_16

    .line 89
    :cond_8
    iget v3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mDisplayWidth:I

    iget v4, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingLeft:I

    iget v5, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingRight:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentWidth:I

    sub-int/2addr v3, v4

    sub-int/2addr v0, v2

    div-int v0, v3, v0

    :goto_16
    iput v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mHorizontalStep:I

    .line 90
    iget v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mRow:I

    if-ne v0, v2, :cond_1e

    move v0, v1

    goto :goto_2c

    .line 91
    :cond_1e
    iget v3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mDisplayHeight:I

    iget v4, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingTop:I

    iget v5, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingBottom:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentHeight:I

    sub-int/2addr v3, v4

    sub-int/2addr v0, v2

    div-int v0, v3, v0

    :goto_2c
    iput v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mVerticalStep:I

    move v0, v1

    .line 92
    :goto_2f
    iget v3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mColumn:I

    mul-int/lit8 v4, v3, 0x2

    const-string v5, "computePadding i = "

    if-ge v0, v4, :cond_75

    if-ge v0, v3, :cond_44

    .line 94
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentLeft:[I

    iget v4, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingLeft:I

    iget v6, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mHorizontalStep:I

    mul-int/2addr v6, v0

    add-int/2addr v4, v6

    aput v4, v3, v0

    goto :goto_52

    .line 96
    :cond_44
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentLeft:[I

    iget v6, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingLeft:I

    rem-int v7, v0, v3

    sub-int/2addr v3, v7

    sub-int/2addr v3, v2

    iget v7, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mHorizontalStep:I

    mul-int/2addr v3, v7

    add-int/2addr v6, v3

    aput v6, v4, v0

    .line 99
    :goto_52
    sget-object v3, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mContentLeft = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentLeft:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 103
    :cond_75
    :goto_75
    iget v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mRow:I

    mul-int/lit8 v3, v0, 0x2

    if-ge v1, v3, :cond_b9

    if-ge v1, v0, :cond_88

    .line 105
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentTop:[I

    iget v3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingTop:I

    iget v4, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mVerticalStep:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    aput v3, v0, v1

    goto :goto_96

    .line 107
    :cond_88
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentTop:[I

    iget v4, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingTop:I

    rem-int v6, v1, v0

    sub-int/2addr v0, v6

    sub-int/2addr v0, v2

    iget v6, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mVerticalStep:I

    mul-int/2addr v0, v6

    add-int/2addr v4, v0

    aput v4, v3, v1

    .line 110
    :goto_96
    sget-object v0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mContentTop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentTop:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    :cond_b9
    return-void
.end method


# virtual methods
.method public getXOffset(I)I
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentLeft:[I

    iget v1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mColumn:I

    mul-int/lit8 v1, v1, 0x2

    rem-int/2addr p1, v1

    aget p1, v0, p1

    .line 119
    sget-object v0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mPaddingLeft = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMaxPaddingLeft ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mMaxPaddingLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingLeft:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 123
    iget p0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mMaxPaddingLeft:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getYOffset(I)I
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentTop:[I

    iget v1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mColumn:I

    iget v2, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mRow:I

    mul-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    rem-int/2addr p1, v2

    div-int/2addr p1, v1

    aget p1, v0, p1

    .line 130
    sget-object v0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mPaddingTop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMaxPaddingTop ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mMaxPaddingTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget v0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingTop:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 134
    iget p0, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mMaxPaddingTop:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public setUpForVerticalMove(IIIIII)V
    .registers 7

    .line 73
    iput p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentWidth:I

    .line 74
    iput p2, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentHeight:I

    .line 75
    iput p3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mColumn:I

    .line 76
    iput p4, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mRow:I

    .line 77
    iget p3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mDisplayWidth:I

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, -0x1e

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingRight:I

    iput p3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingLeft:I

    .line 78
    iput p5, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingTop:I

    .line 79
    iput p6, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingBottom:I

    .line 80
    iget p3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mColumn:I

    mul-int/lit8 p3, p3, 0x2

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentLeft:[I

    .line 81
    iget p3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mRow:I

    mul-int/lit8 p3, p3, 0x2

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mContentTop:[I

    .line 82
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->computePadding()V

    .line 83
    iget p3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mDisplayWidth:I

    sub-int/2addr p3, p1

    iget p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mPaddingLeft:I

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mMaxPaddingLeft:I

    .line 84
    iget p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mDisplayHeight:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, p6

    iput p1, p0, Lcom/flyme/systemuitools/aod/algorithm/SnakePositionSimulateAlgorithm;->mMaxPaddingTop:I

    return-void
.end method
