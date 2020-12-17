.class public Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
.super Landroidx/constraintlayout/solver/widgets/ResolutionNode;
.source "ResolutionAnchor.java"


# instance fields
.field computedValue:F

.field private dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field private dimensionMultiplier:I

.field myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field offset:F

.field private opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field private oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field private oppositeDimensionMultiplier:I

.field private oppositeOffset:F

.field resolvedOffset:F

.field resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

.field type:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    const/4 v1, 0x1

    .line 47
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 48
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 49
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 52
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-void
.end method


# virtual methods
.method addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V
    .registers 5

    .line 304
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 306
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-nez v1, :cond_11

    .line 307
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    float-to-int p0, p0

    invoke-virtual {p1, v0, p0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    goto :goto_1e

    .line 309
    :cond_11
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 310
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    float-to-int p0, p0

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, p0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    :goto_1e
    return-void
.end method

.method public dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V
    .registers 4

    .line 262
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 263
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    int-to-float p1, p3

    .line 264
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 265
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    return-void
.end method

.method public dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V
    .registers 3

    .line 272
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    int-to-float p1, p2

    .line 273
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 274
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    return-void
.end method

.method public dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .registers 4

    .line 281
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 282
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 283
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 284
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 285
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    return-void
.end method

.method public getResolvedValue()F
    .registers 1

    .line 315
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    return p0
.end method

.method public reset()V
    .registers 4

    .line 229
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->reset()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    const/4 v1, 0x0

    .line 231
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 232
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    const/4 v2, 0x1

    .line 233
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    .line 234
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 235
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    .line 236
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 237
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 238
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->computedValue:F

    .line 239
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 240
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    return-void
.end method

.method public resolve()V
    .registers 9

    .line 110
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 113
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    return-void

    .line 116
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_1d

    .line 117
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    if-eq v2, v1, :cond_15

    return-void

    .line 120
    :cond_15
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dimensionMultiplier:I

    int-to-float v2, v2

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    mul-float/2addr v2, v0

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    .line 122
    :cond_1d
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_2e

    .line 123
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    if-eq v2, v1, :cond_26

    return-void

    .line 126
    :cond_26
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    int-to-float v2, v2

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->value:F

    mul-float/2addr v2, v0

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    .line 128
    :cond_2e
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    if-ne v0, v1, :cond_55

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_3a

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    if-ne v0, v1, :cond_55

    .line 133
    :cond_3a
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-nez v0, :cond_45

    .line 134
    iput-object p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 135
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_50

    .line 137
    :cond_45
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 138
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 140
    :goto_50
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->didResolve()V

    goto/16 :goto_19a

    .line 141
    :cond_55
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x1

    if-ne v0, v2, :cond_141

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_141

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    if-ne v0, v1, :cond_141

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_141

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_141

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    if-ne v0, v1, :cond_141

    .line 149
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 150
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v0

    iget-wide v5, v0, Landroidx/constraintlayout/solver/Metrics;->centerConnectionResolved:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Landroidx/constraintlayout/solver/Metrics;->centerConnectionResolved:J

    .line 152
    :cond_7f
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 153
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v2, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 158
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9c

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v2, :cond_9b

    goto :goto_9c

    :cond_9b
    move v1, v3

    :cond_9c
    :goto_9c
    if-eqz v1, :cond_a9

    .line 162
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_b3

    .line 164
    :cond_a9
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    :goto_b3
    sub-float/2addr v0, v2

    .line 167
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v4, v5, :cond_d0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_c1

    goto :goto_d0

    .line 172
    :cond_c1
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 173
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_e0

    .line 169
    :cond_d0
    :goto_d0
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 170
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 175
    :goto_e0
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 176
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    .line 177
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    if-ne v6, v7, :cond_102

    const/high16 v2, 0x3f000000  # 0.5f

    move v5, v3

    goto :goto_103

    :cond_102
    move v3, v4

    :goto_103
    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v4, v5

    sub-float/2addr v0, v4

    const/high16 v5, 0x3f800000  # 1.0f

    if-eqz v1, :cond_122

    .line 188
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    add-float/2addr v6, v4

    mul-float v4, v0, v2

    add-float/2addr v6, v4

    iput v6, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 190
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float/2addr v1, v3

    sub-float/2addr v5, v2

    mul-float/2addr v0, v5

    sub-float/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    goto :goto_138

    .line 192
    :cond_122
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    add-float/2addr v1, v3

    mul-float v3, v0, v2

    add-float/2addr v1, v3

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 193
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    sub-float/2addr v3, v4

    sub-float/2addr v5, v2

    mul-float/2addr v0, v5

    sub-float/2addr v3, v0

    iput v3, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 197
    :goto_138
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->didResolve()V

    .line 198
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->didResolve()V

    goto :goto_19a

    .line 199
    :cond_141
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_18e

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_18e

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    if-ne v0, v1, :cond_18e

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_18e

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v0, :cond_18e

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    if-ne v0, v1, :cond_18e

    .line 207
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v0

    if-eqz v0, :cond_169

    .line 208
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v0

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->matchConnectionResolved:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->matchConnectionResolved:J

    .line 210
    :cond_169
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 211
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iput-object v3, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 213
    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 214
    iget v0, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->offset:F

    add-float/2addr v0, v2

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 216
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->didResolve()V

    .line 217
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->didResolve()V

    goto :goto_19a

    .line 218
    :cond_18e
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_19a

    .line 219
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resolve()V

    :cond_19a
    :goto_19a
    return-void
.end method

.method public resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V
    .registers 4

    .line 79
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eq v0, p1, :cond_1d

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1d

    .line 80
    :cond_e
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 81
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 82
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1a

    .line 83
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->invalidate()V

    .line 85
    :cond_1a
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->didResolve()V

    :cond_1d
    return-void
.end method

.method sType(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_6

    const-string p0, "DIRECT"

    return-object p0

    :cond_6
    const/4 p0, 0x2

    if-ne p1, p0, :cond_c

    const-string p0, "CENTER"

    return-object p0

    :cond_c
    const/4 p0, 0x3

    if-ne p1, p0, :cond_12

    const-string p0, "MATCH"

    return-object p0

    :cond_12
    const/4 p0, 0x4

    if-ne p1, p0, :cond_18

    const-string p0, "CHAIN"

    return-object p0

    :cond_18
    const/4 p0, 0x5

    if-ne p1, p0, :cond_1e

    const-string p0, "BARRIER"

    return-object p0

    :cond_1e
    const-string p0, "UNCONNECTED"

    return-object p0
.end method

.method public setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V
    .registers 3

    .line 293
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 294
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeOffset:F

    return-void
.end method

.method public setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V
    .registers 4

    .line 298
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->opposite:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 299
    iput-object p3, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimension:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 300
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->oppositeDimensionMultiplier:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 224
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 68
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionNode;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_67

    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    const-string v1, ", RESOLVED: "

    const-string v2, "["

    if-ne v0, p0, :cond_35

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]  type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 73
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UNRESOLVED} type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->sType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update()V
    .registers 5

    .line 245
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 249
    :cond_9
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x4

    .line 250
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 251
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iput v1, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    .line 253
    :cond_1a
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 254
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->myAnchor:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v3, :cond_2c

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v3, :cond_2d

    :cond_2c
    neg-int v1, v1

    .line 258
    :cond_2d
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    return-void
.end method
