.class public Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;
.super Ljava/lang/Object;
.source "AODFingerprintViewMoveAlgorithm.java"


# instance fields
.field private mColumn:I

.field private mContentLeft:[I

.field private mContentTop:[I

.field private mRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x7

    .line 17
    iput p1, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mColumn:I

    .line 18
    iput p1, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mRow:I

    .line 20
    iget p1, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mColumn:I

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mContentLeft:[I

    .line 21
    iget p1, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mRow:I

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mContentTop:[I

    .line 23
    invoke-direct {p0}, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->computeMoveData()V

    return-void
.end method

.method private computeMoveData()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 27
    :goto_2
    iget v2, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mColumn:I

    mul-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_21

    if-ge v1, v2, :cond_13

    .line 29
    iget-object v2, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mContentLeft:[I

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, -0x6

    aput v3, v2, v1

    goto :goto_1e

    .line 31
    :cond_13
    iget-object v3, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mContentLeft:[I

    rem-int v4, v1, v2

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    aput v2, v3, v1

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 35
    :cond_21
    :goto_21
    iget v1, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mRow:I

    mul-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_40

    if-ge v0, v1, :cond_32

    .line 37
    iget-object v1, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mContentTop:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, -0x6

    aput v2, v1, v0

    goto :goto_3d

    .line 39
    :cond_32
    iget-object v2, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mContentTop:[I

    rem-int v3, v0, v1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    aput v1, v2, v0

    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_40
    return-void
.end method


# virtual methods
.method public getColumns()I
    .registers 1

    .line 53
    iget p0, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mColumn:I

    return p0
.end method

.method public getRows()I
    .registers 1

    .line 57
    iget p0, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mRow:I

    return p0
.end method

.method public getXOffset(I)I
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mContentLeft:[I

    iget p0, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mColumn:I

    mul-int/lit8 p0, p0, 0x2

    rem-int/2addr p1, p0

    aget p0, v0, p1

    return p0
.end method

.method public getYOffset(I)I
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mContentTop:[I

    iget v1, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mColumn:I

    iget p0, p0, Lcom/flyme/systemui/fingerprint/AODFingerprintViewMoveAlgorithm;->mRow:I

    mul-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x2

    rem-int/2addr p1, p0

    div-int/2addr p1, v1

    aget p0, v0, p1

    return p0
.end method
