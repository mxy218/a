.class public Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;
.super Landroid/widget/LinearLayout;
.source "FlymeCustomEvaluationView.java"


# instance fields
.field private mCStatus:I

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mEvaluationItem:[Landroid/widget/ImageView;

.field private mItemCount:I

.field private mItemRects:[Landroid/graphics/Rect;

.field private mPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;-><init>(Landroid/content/Context;)V

    .line 32
    iput p2, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x5

    .line 36
    iput p2, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemCount:I

    const/4 p2, -0x1

    .line 40
    iput p2, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mCurrentState:I

    .line 19
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mContext:Landroid/content/Context;

    .line 20
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mRes:Landroid/content/res/Resources;

    .line 21
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mContext:Landroid/content/Context;

    const-string p2, "layout_inflater"

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0d00e0

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private setCheckedItem(Landroid/view/MotionEvent;)I
    .registers 7

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    const/4 p1, 0x0

    const/4 v2, -0x1

    .line 103
    :goto_f
    :try_start_f
    iget v3, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemCount:I

    if-ge p1, v3, :cond_36

    .line 104
    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 105
    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    .line 106
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    if-lt v1, v4, :cond_33

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_36

    if-ge v1, v3, :cond_33

    add-int/lit8 v2, p1, 0x1

    .line 109
    :try_start_2c
    invoke-virtual {p0, v2}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->setState(I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_31

    move v2, p1

    goto :goto_33

    :catch_31
    move v2, p1

    goto :goto_36

    :cond_33
    :goto_33
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :catch_36
    :cond_36
    :goto_36
    return v2
.end method


# virtual methods
.method public getState()I
    .registers 1

    .line 142
    iget p0, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mCurrentState:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .line 57
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 58
    iget v0, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemCount:I

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemRects:[Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 59
    :goto_a
    iget v1, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemCount:I

    if-ge v0, v1, :cond_25

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 61
    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    aget-object v3, v2, v0

    if-eqz v3, :cond_22

    .line 62
    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 63
    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemRects:[Landroid/graphics/Rect;

    aput-object v1, v2, v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_25
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 75
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    iget v0, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemCount:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    const v1, 0x7f0a037a

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 49
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    const v1, 0x7f0a037b

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 50
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    const v1, 0x7f0a037c

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 51
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    const v1, 0x7f0a037d

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 52
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    const v1, 0x7f0a037e

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 70
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 80
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 85
    iget v0, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mCStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 86
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->setCheckedItem(Landroid/view/MotionEvent;)I

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public setCStatus(I)V
    .registers 2

    .line 146
    iput p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mCStatus:I

    return-void
.end method

.method public setPreference(Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    return-void
.end method

.method public setState(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_2e

    .line 118
    iget v2, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemCount:I

    if-gt p1, v2, :cond_2e

    move v2, v0

    :goto_9
    if-ge v2, p1, :cond_15

    .line 120
    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    move v1, p1

    .line 123
    :goto_16
    iget v2, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemCount:I

    if-ge v1, v2, :cond_24

    .line 124
    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 126
    :cond_24
    iput p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mCurrentState:I

    .line 127
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mPreference:Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;

    if-eqz p0, :cond_51

    .line 128
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->notifyEvaluationChanged()V

    goto :goto_51

    :cond_2e
    if-gtz p1, :cond_3f

    move p1, v0

    .line 131
    :goto_31
    iget v1, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemCount:I

    if-ge p1, v1, :cond_51

    .line 132
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    .line 134
    :cond_3f
    iget v2, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemCount:I

    if-lt p1, v2, :cond_51

    .line 135
    :goto_43
    iget p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mItemCount:I

    if-ge v0, p1, :cond_51

    .line 136
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->mEvaluationItem:[Landroid/widget/ImageView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_51
    :goto_51
    return-void
.end method
