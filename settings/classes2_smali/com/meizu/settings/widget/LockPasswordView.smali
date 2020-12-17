.class public Lcom/meizu/settings/widget/LockPasswordView;
.super Landroid/view/View;
.source "LockPasswordView.java"


# instance fields
.field private mCircleHollow:Landroid/graphics/drawable/Drawable;

.field private mCircleSize:I

.field private mCircleSolid:Landroid/graphics/drawable/Drawable;

.field private mCurNum:I

.field private mHollowVisible:Z

.field private mMaxNum:I

.field private padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/LockPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f1304ec

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/LockPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mHollowVisible:Z

    const/16 v1, 0x19

    .line 40
    iput v1, p0, Lcom/meizu/settings/widget/LockPasswordView;->padding:I

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070554

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/settings/widget/LockPasswordView;->padding:I

    .line 55
    iget v1, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSize:I

    .line 56
    sget-object v2, Lcom/android/settings/R$styleable;->LockPasswordView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    move v2, v1

    move-object v1, p3

    :goto_27
    if-ge v3, p2, :cond_5f

    .line 60
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_39

    .line 62
    iget v5, p0, Lcom/meizu/settings/widget/LockPasswordView;->mMaxNum:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/settings/widget/LockPasswordView;->mMaxNum:I

    goto :goto_5c

    :cond_39
    const/4 v5, 0x2

    if-ne v4, v5, :cond_45

    .line 64
    iget-boolean v5, p0, Lcom/meizu/settings/widget/LockPasswordView;->mHollowVisible:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/settings/widget/LockPasswordView;->mHollowVisible:Z

    goto :goto_5c

    :cond_45
    const/4 v5, 0x4

    if-ne v4, v5, :cond_4d

    .line 66
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_5c

    :cond_4d
    if-ne v4, v0, :cond_54

    .line 68
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_5c

    :cond_54
    if-nez v4, :cond_5c

    .line 70
    iget v2, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSize:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    :cond_5c
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 73
    :cond_5f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {p0, p3, v1, v2}, Lcom/meizu/settings/widget/LockPasswordView;->setPasswordDrawablesAndSize(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method


# virtual methods
.method public getCurNum()I
    .registers 1

    .line 120
    iget p0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCurNum:I

    return p0
.end method

.method public getMaxNum()I
    .registers 1

    .line 97
    iget p0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mMaxNum:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 166
    iget-boolean v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mHollowVisible:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mMaxNum:I

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCurNum:I

    .line 169
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSize:I

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSize:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 172
    iget v2, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCurNum:I

    if-lez v2, :cond_5c

    .line 173
    iget-object v2, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 174
    iget-object v3, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 175
    iget v4, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSize:I

    sub-int v5, v4, v2

    shr-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v3

    shr-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    .line 177
    :goto_40
    iget v7, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCurNum:I

    if-ge v6, v7, :cond_5c

    .line 178
    iget v7, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSize:I

    mul-int/2addr v7, v6

    add-int/2addr v7, v1

    add-int/2addr v7, v5

    add-int v8, v0, v4

    .line 180
    iget-object v9, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    add-int v10, v7, v2

    add-int v11, v8, v3

    invoke-virtual {v9, v7, v8, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    iget-object v7, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 185
    :cond_5c
    iget-boolean v2, p0, Lcom/meizu/settings/widget/LockPasswordView;->mHollowVisible:Z

    if-eqz v2, :cond_99

    iget v2, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCurNum:I

    iget v3, p0, Lcom/meizu/settings/widget/LockPasswordView;->mMaxNum:I

    if-ge v2, v3, :cond_99

    .line 186
    iget-object v2, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 187
    iget-object v3, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 188
    iget v4, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSize:I

    sub-int v5, v4, v2

    shr-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v3

    shr-int/lit8 v4, v4, 0x1

    .line 190
    iget v6, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCurNum:I

    :goto_7d
    iget v7, p0, Lcom/meizu/settings/widget/LockPasswordView;->mMaxNum:I

    if-ge v6, v7, :cond_99

    .line 191
    iget v7, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSize:I

    mul-int/2addr v7, v6

    add-int/2addr v7, v1

    add-int/2addr v7, v5

    add-int v8, v0, v4

    .line 193
    iget-object v9, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    add-int v10, v7, v2

    add-int v11, v8, v3

    invoke-virtual {v9, v7, v8, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    iget-object v7, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7d

    :cond_99
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p1

    iget v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSize:I

    iget v1, p0, Lcom/meizu/settings/widget/LockPasswordView;->mMaxNum:I

    mul-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    iget v1, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 204
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    .line 203
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCircleHollowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setCircleSolidDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setCurNum(I)Z
    .registers 3

    if-ltz p1, :cond_11

    .line 106
    iget v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mMaxNum:I

    if-gt p1, v0, :cond_11

    .line 107
    iget v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCurNum:I

    if-eq v0, p1, :cond_f

    .line 108
    iput p1, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCurNum:I

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_f
    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public setHollowVisible(Z)V
    .registers 3

    .line 127
    iget-boolean v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mHollowVisible:Z

    if-eq v0, p1, :cond_c

    .line 128
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LockPasswordView;->mHollowVisible:Z

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    return-void
.end method

.method public setMaxNum(I)V
    .registers 3

    .line 81
    iget v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mMaxNum:I

    if-eq v0, p1, :cond_1a

    .line 82
    iput p1, p0, Lcom/meizu/settings/widget/LockPasswordView;->mMaxNum:I

    .line 83
    iget p1, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCurNum:I

    if-gez p1, :cond_e

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCurNum:I

    goto :goto_14

    .line 85
    :cond_e
    iget v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mMaxNum:I

    if-le p1, v0, :cond_14

    .line 86
    iput v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCurNum:I

    .line 88
    :cond_14
    :goto_14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1a
    return-void
.end method

.method public setPasswordDrawablesAndSize(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    if-gtz p3, :cond_25

    .line 146
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    .line 147
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 146
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 148
    iget-boolean v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mHollowVisible:Z

    if-eqz v0, :cond_22

    .line 150
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 151
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 149
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 153
    :cond_22
    iget v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->padding:I

    add-int/2addr p3, v0

    .line 155
    :cond_25
    iget-object v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_31

    iget-object v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    if-ne v0, p2, :cond_31

    iget v0, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSize:I

    if-eq p3, v0, :cond_3d

    .line 156
    :cond_31
    iput-object p1, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSolid:Landroid/graphics/drawable/Drawable;

    .line 157
    iput-object p2, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleHollow:Landroid/graphics/drawable/Drawable;

    .line 158
    iput p3, p0, Lcom/meizu/settings/widget/LockPasswordView;->mCircleSize:I

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3d
    return-void
.end method
