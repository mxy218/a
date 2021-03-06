.class public Landroidx/constraintlayout/widget/Barrier;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "Barrier.java"


# instance fields
.field private mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

.field private mIndicatedType:I

.field private mResolvedType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 116
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 111
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    .line 112
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    const/16 p1, 0x8

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 121
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 111
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    .line 112
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    const/16 p1, 0x8

    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 111
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    .line 112
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    const/16 p1, 0x8

    .line 127
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    .line 136
    iget p0, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    return p0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 8

    .line 182
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 183
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Barrier;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz p1, :cond_3f

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_3f

    .line 188
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 189
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_barrierDirection:I

    if-ne v3, v4, :cond_2e

    .line 190
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    goto :goto_3c

    .line 191
    :cond_2e
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v3, v4, :cond_3c

    .line 192
    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 196
    :cond_3f
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    .line 197
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    return-void
.end method

.method public setType(I)V
    .registers 7

    .line 145
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    .line 146
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    .line 147
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    if-ge p1, v4, :cond_1a

    .line 150
    iget p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne p1, v1, :cond_15

    .line 151
    iput v2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_44

    :cond_15
    if-ne p1, v0, :cond_44

    .line 153
    iput v3, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_44

    .line 157
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne v3, p1, :cond_2a

    move p1, v3

    goto :goto_2b

    :cond_2a
    move p1, v2

    :goto_2b
    if-eqz p1, :cond_39

    .line 160
    iget p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne p1, v1, :cond_34

    .line 161
    iput v3, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_44

    :cond_34
    if-ne p1, v0, :cond_44

    .line 163
    iput v2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_44

    .line 166
    :cond_39
    iget p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne p1, v1, :cond_40

    .line 167
    iput v2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_44

    :cond_40
    if-ne p1, v0, :cond_44

    .line 169
    iput v3, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    .line 173
    :cond_44
    :goto_44
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    iget p0, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/Barrier;->setBarrierType(I)V

    return-void
.end method
