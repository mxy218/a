.class public Lcom/android/systemui/statusbar/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mAllowAnimation:Z

.field mAnim:Landroid/graphics/drawable/AnimationDrawable;

.field mAttached:Z

.field mDrawableId:I

.field private final mHasOverlappingRendering:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/R$styleable;->AnimatedImageView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    :try_start_11
    sget p2, Lcom/android/systemui/R$styleable;->AnimatedImageView_hasOverlappingRendering:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mHasOverlappingRendering:Z
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_1d
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private updateAnim()V
    .registers 3

    .line 72
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_f

    .line 74
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 76
    :cond_f
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_27

    .line 77
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 78
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    if-eqz v0, :cond_2a

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2a

    :cond_27
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 1

    .line 139
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mHasOverlappingRendering:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 111
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 118
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_a

    .line 120
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_a
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 127
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 128
    iget-object p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1c

    .line 129
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    if-eqz p1, :cond_17

    .line 130
    iget-object p0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1c

    .line 132
    :cond_17
    iget-object p0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setAllowAnimation(Z)V
    .registers 3

    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    if-eq v0, p1, :cond_1e

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    .line 64
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1e

    .line 66
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1a

    move p0, v0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    :cond_1e
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 89
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_b

    return-void

    .line 91
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    goto :goto_15

    :cond_12
    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    .line 95
    :goto_15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    return-void
.end method

.method public setImageResource(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 102
    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    if-ne v0, p1, :cond_5

    return-void

    .line 104
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    .line 105
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    return-void
.end method
