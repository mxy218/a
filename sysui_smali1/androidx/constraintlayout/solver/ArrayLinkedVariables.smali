.class public Landroidx/constraintlayout/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroidx/constraintlayout/solver/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field private final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroidx/constraintlayout/solver/ArrayRow;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V
    .registers 6

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    const/16 v1, 0x8

    .line 48
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    .line 53
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 56
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 59
    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 78
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 81
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 101
    iput-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 102
    iput-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    return-void
.end method

.method private isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z
    .registers 3

    .line 491
    iget p0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 p1, 0x1

    if-gt p0, p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method


# virtual methods
.method final add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .registers 14

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    return-void

    .line 229
    :cond_6
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_45

    .line 230
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 231
    iget-object p3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput p2, p3, v0

    .line 232
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget p3, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput p3, p2, v0

    .line 233
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput v3, p2, v0

    .line 234
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v4

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 235
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 236
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 237
    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_44

    .line 239
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 240
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p3, p2

    if-lt p1, p3, :cond_44

    .line 241
    iput-boolean v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 242
    array-length p1, p2

    sub-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_44
    return-void

    :cond_45
    move v5, v2

    move v6, v3

    :goto_47
    if-eq v1, v3, :cond_97

    .line 250
    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v7, :cond_97

    .line 251
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v8, v7, v1

    .line 252
    iget v9, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v8, v9, :cond_8b

    .line 253
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v1

    add-float/2addr v3, p2

    aput v3, v2, v1

    .line 255
    aget p2, v2, v1

    cmpl-float p2, p2, v0

    if-nez p2, :cond_8a

    .line 256
    iget p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v1, p2, :cond_6d

    .line 257
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget p2, p2, v1

    iput p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_73

    .line 259
    :cond_6d
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, p2, v1

    aput v0, p2, v6

    :goto_73
    if-eqz p3, :cond_7a

    .line 262
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 264
    :cond_7a
    iget-boolean p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz p2, :cond_80

    .line 266
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 268
    :cond_80
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    sub-int/2addr p2, v4

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 269
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    sub-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    :cond_8a
    return-void

    .line 273
    :cond_8b
    aget v7, v7, v1

    if-ge v7, v9, :cond_90

    move v6, v1

    .line 276
    :cond_90
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v7, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 282
    :cond_97
    iget p3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v0, p3, 0x1

    .line 283
    iget-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v1, :cond_a8

    .line 286
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v1, v0, p3

    if-ne v1, v3, :cond_a6

    goto :goto_a9

    .line 289
    :cond_a6
    array-length p3, v0

    goto :goto_a9

    :cond_a8
    move p3, v0

    .line 292
    :goto_a9
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v0

    if-lt p3, v1, :cond_c2

    .line 293
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    array-length v0, v0

    if-ge v1, v0, :cond_c2

    move v0, v2

    .line 295
    :goto_b4
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v5, v1

    if-ge v0, v5, :cond_c2

    .line 296
    aget v1, v1, v0

    if-ne v1, v3, :cond_bf

    move p3, v0

    goto :goto_c2

    :cond_bf
    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    .line 304
    :cond_c2
    :goto_c2
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v0

    if-lt p3, v1, :cond_f2

    .line 305
    array-length p3, v0

    .line 306
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 307
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    add-int/lit8 v0, p3, -0x1

    .line 308
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 309
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 310
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 311
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 315
    :cond_f2
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v1, v0, p3

    .line 316
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v0, p3

    if-eq v6, v3, :cond_107

    .line 318
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, p2, v6

    aput v0, p2, p3

    .line 319
    aput p3, p2, v6

    goto :goto_10f

    .line 321
    :cond_107
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v0, p2, p3

    .line 322
    iput p3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 324
    :goto_10f
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v4

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 325
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 326
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 327
    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_127

    .line 329
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 331
    :cond_127
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p3, p2

    if-lt p1, p3, :cond_134

    .line 332
    iput-boolean v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 333
    array-length p1, p2

    sub-int/2addr p1, v4

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_134
    return-void
.end method

.method chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 16

    .line 512
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v1

    move v6, v2

    move v8, v6

    move v5, v3

    move v7, v5

    :goto_a
    const/4 v9, -0x1

    if-eq v0, v9, :cond_96

    .line 515
    iget v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v9, :cond_96

    .line 516
    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v10, v9, v0

    const v11, 0x3a83126f  # 0.001f

    .line 518
    iget-object v12, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v12, v12, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v13, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v13, v13, v0

    aget-object v12, v12, v13

    cmpg-float v13, v10, v3

    if-gez v13, :cond_35

    const v11, -0x457ced91  # -0.001f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_41

    .line 521
    aput v3, v9, v0

    .line 523
    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v12, v9}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_40

    :cond_35
    cmpg-float v11, v10, v11

    if-gez v11, :cond_41

    .line 527
    aput v3, v9, v0

    .line 529
    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v12, v9}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    :goto_40
    move v10, v3

    :cond_41
    cmpl-float v9, v10, v3

    const/4 v11, 0x1

    if-eqz v9, :cond_8e

    .line 533
    iget-object v9, v12, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v13, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v9, v13, :cond_6a

    if-nez v4, :cond_56

    .line 537
    invoke-direct {p0, v12, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v4

    :goto_52
    move v6, v4

    move v5, v10

    :goto_54
    move-object v4, v12

    goto :goto_8e

    :cond_56
    cmpl-float v9, v5, v10

    if-lez v9, :cond_5f

    .line 541
    invoke-direct {p0, v12, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v4

    goto :goto_52

    :cond_5f
    if-nez v6, :cond_8e

    .line 542
    invoke-direct {p0, v12, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v9

    if-eqz v9, :cond_8e

    move v5, v10

    move v6, v11

    goto :goto_54

    :cond_6a
    if-nez v4, :cond_8e

    cmpg-float v9, v10, v3

    if-gez v9, :cond_8e

    if-nez v1, :cond_7a

    .line 552
    invoke-direct {p0, v12, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v1

    :goto_76
    move v8, v1

    move v7, v10

    :goto_78
    move-object v1, v12

    goto :goto_8e

    :cond_7a
    cmpl-float v9, v7, v10

    if-lez v9, :cond_83

    .line 556
    invoke-direct {p0, v12, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v1

    goto :goto_76

    :cond_83
    if-nez v8, :cond_8e

    .line 557
    invoke-direct {p0, v12, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v9

    if-eqz v9, :cond_8e

    move v7, v10

    move v8, v11

    goto :goto_78

    .line 565
    :cond_8e
    :goto_8e
    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v9, v0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_96
    if-eqz v4, :cond_99

    return-object v4

    :cond_99
    return-object v1
.end method

.method public final clear()V
    .registers 6

    .line 385
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_23

    .line 387
    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_23

    .line 388
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_1c

    .line 390
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 392
    :cond_1c
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 395
    :cond_23
    iput v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 396
    iput v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 397
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 398
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    return-void
.end method

.method final containsKey(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .registers 8

    .line 408
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    return v2

    :cond_7
    move v3, v2

    :goto_8
    if-eq v0, v1, :cond_1f

    .line 413
    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_1f

    .line 414
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_18

    const/4 p0, 0x1

    return p0

    .line 417
    :cond_18
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1f
    return v2
.end method

.method divideByAmount(F)V
    .registers 6

    .line 458
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    .line 460
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_18

    .line 461
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    .line 462
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    return-void
.end method

.method public final get(Landroidx/constraintlayout/solver/SolverVariable;)F
    .registers 6

    .line 759
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    .line 761
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1e

    .line 762
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v2, v0

    iget v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_17

    .line 763
    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p0, p0, v0

    return p0

    .line 765
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method getPivotCandidate([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 11

    .line 691
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    :goto_6
    const/4 v5, -0x1

    if-eq v0, v5, :cond_44

    .line 695
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v5, :cond_44

    .line 696
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v5, v5, v0

    cmpg-float v5, v5, v1

    if-gez v5, :cond_3d

    .line 700
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    if-eqz p1, :cond_27

    .line 701
    iget v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v6, p1, v6

    if-nez v6, :cond_3d

    :cond_27
    if-eq v5, p2, :cond_3d

    .line 702
    iget-object v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v7, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v6, v7, :cond_33

    sget-object v7, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_3d

    .line 704
    :cond_33
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v6, v6, v0

    cmpg-float v7, v6, v4

    if-gez v7, :cond_3d

    move-object v3, v5

    move v4, v6

    .line 712
    :cond_3d
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_44
    return-object v3
.end method

.method final getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 5

    .line 724
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    .line 726
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1e

    if-ne v1, p1, :cond_17

    .line 728
    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object p1, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget p0, p0, v0

    aget-object p0, p1, p0

    return-object p0

    .line 730
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method final getVariableValue(I)F
    .registers 5

    .line 742
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    .line 744
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_18

    if-ne v1, p1, :cond_11

    .line 746
    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p0, p0, v0

    return p0

    .line 748
    :cond_11
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method invert()V
    .registers 6

    .line 443
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1a

    .line 445
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1a

    .line 446
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000  # -1.0f

    mul-float/2addr v3, v4

    aput v3, v2, v0

    .line 447
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1a
    return-void
.end method

.method public final put(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .registers 12

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 118
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    return-void

    .line 122
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_48

    .line 123
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 124
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput p2, v0, v2

    .line 125
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v0, p2, v2

    .line 126
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput v3, p2, v2

    .line 127
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v1

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 128
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 129
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 130
    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_47

    .line 132
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 133
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, p2

    if-lt p1, v0, :cond_47

    .line 134
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 135
    array-length p1, p2

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_47
    return-void

    :cond_48
    move v4, v2

    move v5, v3

    :goto_4a
    if-eq v0, v3, :cond_69

    .line 143
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v6, :cond_69

    .line 144
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v6, v0

    iget v8, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v7, v8, :cond_5d

    .line 145
    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, p0, v0

    return-void

    .line 148
    :cond_5d
    aget v6, v6, v0

    if-ge v6, v8, :cond_62

    move v5, v0

    .line 151
    :cond_62
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 157
    :cond_69
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v4, v0, 0x1

    .line 158
    iget-boolean v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v6, :cond_7a

    .line 161
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v4, v0

    if-ne v6, v3, :cond_78

    goto :goto_7b

    .line 164
    :cond_78
    array-length v0, v4

    goto :goto_7b

    :cond_7a
    move v0, v4

    .line 167
    :goto_7b
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v4

    if-lt v0, v6, :cond_94

    .line 168
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    array-length v4, v4

    if-ge v6, v4, :cond_94

    move v4, v2

    .line 170
    :goto_86
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v7, v6

    if-ge v4, v7, :cond_94

    .line 171
    aget v6, v6, v4

    if-ne v6, v3, :cond_91

    move v0, v4

    goto :goto_94

    :cond_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    .line 179
    :cond_94
    :goto_94
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v4

    if-lt v0, v6, :cond_c4

    .line 180
    array-length v0, v4

    .line 181
    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 182
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    add-int/lit8 v2, v0, -0x1

    .line 183
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 184
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 185
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 186
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 190
    :cond_c4
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v4, v2, v0

    .line 191
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v2, v0

    if-eq v5, v3, :cond_d9

    .line 193
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, p2, v5

    aput v2, p2, v0

    .line 194
    aput v0, p2, v5

    goto :goto_e1

    .line 196
    :cond_d9
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v2, p2, v0

    .line 197
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 199
    :goto_e1
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr p2, v1

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 200
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 201
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 202
    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_f9

    .line 204
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 206
    :cond_f9
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p2, p2

    if-lt p1, p2, :cond_102

    .line 207
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 209
    :cond_102
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, p2

    if-lt p1, v0, :cond_10f

    .line 210
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 211
    array-length p1, p2

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    :cond_10f
    return-void
.end method

.method public final remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .registers 11

    .line 345
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    .line 348
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    return v1

    :cond_e
    const/4 v3, 0x0

    move v4, v2

    :goto_10
    if-eq v0, v2, :cond_5b

    .line 354
    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v5, :cond_5b

    .line 355
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    .line 356
    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v5, v6, :cond_51

    .line 357
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v0, v1, :cond_29

    .line 358
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_2f

    .line 360
    :cond_29
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v3, v1, v0

    aput v3, v1, v4

    :goto_2f
    if-eqz p2, :cond_36

    .line 364
    iget-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 366
    :cond_36
    iget p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 367
    iget p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 368
    iget-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aput v2, p1, v0

    .line 369
    iget-boolean p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz p1, :cond_4c

    .line 371
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 373
    :cond_4c
    iget-object p0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p0, p0, v0

    return p0

    .line 376
    :cond_51
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_10

    :cond_5b
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 799
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const-string v1, ""

    const/4 v2, 0x0

    :goto_5
    const/4 v3, -0x1

    if-eq v0, v3, :cond_55

    .line 801
    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_55

    .line 802
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v1, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 805
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_55
    return-object v1
.end method

.method final updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .registers 12

    .line 583
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    move v2, v1

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_59

    .line 585
    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_59

    .line 586
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    iget-object v5, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v4, v6, :cond_52

    .line 587
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v2, v0

    .line 588
    invoke-virtual {p0, v5, p3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 590
    iget-object v2, p2, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    .line 591
    iget v4, v2, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v5, v1

    :goto_21
    if-eq v4, v3, :cond_40

    .line 593
    iget v6, v2, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_40

    .line 594
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v6, v6, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v2, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v4

    aget-object v6, v6, v7

    .line 596
    iget-object v7, v2, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v7, v7, v4

    mul-float/2addr v7, v0

    .line 597
    invoke-virtual {p0, v6, v7, p3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 598
    iget-object v6, v2, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v4, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 600
    :cond_40
    iget v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v3, p2, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    if-eqz p3, :cond_4f

    .line 602
    iget-object v0, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 608
    :cond_4f
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_3

    .line 612
    :cond_52
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_59
    return-void
.end method

.method updateFromSystem(Landroidx/constraintlayout/solver/ArrayRow;[Landroidx/constraintlayout/solver/ArrayRow;)V
    .registers 13

    .line 626
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    :goto_3
    move v2, v1

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_64

    .line 628
    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_64

    .line 629
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    .line 630
    iget v5, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    if-eq v5, v3, :cond_5d

    .line 631
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v2, v0

    const/4 v2, 0x1

    .line 632
    invoke-virtual {p0, v4, v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 634
    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    aget-object v4, p2, v4

    .line 635
    iget-boolean v5, v4, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v5, :cond_4d

    .line 636
    iget-object v5, v4, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    .line 637
    iget v6, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    move v7, v1

    :goto_2e
    if-eq v6, v3, :cond_4d

    .line 639
    iget v8, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v7, v8, :cond_4d

    .line 640
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v8, v8, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v9, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v9, v9, v6

    aget-object v8, v8, v9

    .line 642
    iget-object v9, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v9, v9, v6

    mul-float/2addr v9, v0

    .line 643
    invoke-virtual {p0, v8, v9, v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 644
    iget-object v8, v5, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 648
    :cond_4d
    iget v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v3, v4, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 649
    iget-object v0, v4, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 654
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_3

    .line 658
    :cond_5d
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_64
    return-void
.end method
