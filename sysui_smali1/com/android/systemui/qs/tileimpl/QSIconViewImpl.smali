.class public Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.super Lcom/android/systemui/plugins/qs/QSIconView;
.source "QSIconViewImpl.java"


# instance fields
.field private mAnimationEnabled:Z

.field protected mIcon:Landroid/view/View;

.field protected mIconSizePx:I

.field private mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mState:I

.field private mTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateResources()V

    return-void
.end method

.method private animateGrayScale(IILandroid/widget/ImageView;Ljava/lang/Runnable;)V
    .registers 12

    .line 190
    instance-of v0, p3, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    if-eqz v0, :cond_e

    .line 191
    move-object v0, p3

    check-cast v0, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    .line 192
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;->setFinalImageTintList(Landroid/content/res/ColorStateList;)V

    .line 194
    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz v0, :cond_51

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 195
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v2, v0

    .line 196
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v3, v0

    .line 197
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float v4, p1

    .line 198
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float v5, p1

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 200
    fill-array-data p1, :array_58

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x15e

    .line 201
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 202
    new-instance p2, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$CeqSBPdIhNYTow_6QM6a9ZwQyb8;

    move-object v1, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$CeqSBPdIhNYTow_6QM6a9ZwQyb8;-><init>(FFFFLandroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 209
    new-instance p2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$2;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$2;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_57

    .line 217
    :cond_51
    invoke-static {p3, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 218
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :goto_57
    return-void

    :array_58
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method static synthetic lambda$animateGrayScale$1(FFFFLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 203
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    sub-float/2addr p1, p0

    mul-float/2addr p1, p5

    add-float/2addr p0, p1

    float-to-int p0, p0

    sub-float/2addr p3, p2

    mul-float/2addr p3, p5

    add-float/2addr p2, p3

    float-to-int p1, p2

    .line 207
    invoke-static {p0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p4, p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public static setTint(Landroid/widget/ImageView;I)V
    .registers 2

    .line 223
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private shouldAnimate(Landroid/widget/ImageView;)Z
    .registers 2

    .line 154
    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz p0, :cond_12

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private updateResources()V
    .registers 4

    .line 276
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    if-eqz v1, :cond_21

    .line 278
    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_icon_size_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_27

    .line 279
    :cond_21
    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_27
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    return-void
.end method


# virtual methods
.method public addIcon(Z)V
    .registers 2

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->createIcon(Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    .line 284
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public createIcon(Z)Landroid/view/View;
    .registers 2

    if-eqz p1, :cond_a

    .line 290
    new-instance p1, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;-><init>(Landroid/content/Context;)V

    goto :goto_11

    .line 292
    :cond_a
    new-instance p1, Lcom/flyme/systemui/qs/QSTileAnimationView;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/QSTileAnimationView;-><init>(Landroid/content/Context;)V

    :goto_11
    const p0, 0x1020006

    .line 294
    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    return-object p1
.end method

.method public disableAnimation()V
    .registers 2

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    return-void
.end method

.method protected final exactly(I)I
    .registers 2

    const/high16 p0, 0x40000000  # 2.0f

    .line 242
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method protected getColor(I)I
    .registers 2

    .line 185
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method protected getIconMeasureMode()I
    .registers 1

    const/high16 p0, 0x40000000  # 2.0f

    return p0
.end method

.method public getIconView()Landroid/view/View;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    return-object p0
.end method

.method public synthetic lambda$setIcon$0$QSIconViewImpl(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .registers 4

    .line 167
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method protected final layout(Landroid/view/View;II)V
    .registers 5

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, p2, p3, p0, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateResources()V

    .line 272
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 96
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 98
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 99
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->layout(Landroid/view/View;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 79
    iget p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->exactly(I)I

    move-result p2

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getIconMeasureMode()I

    move-result v1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V

    .line 81
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .registers 7

    .line 158
    iget-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v0, :cond_12

    .line 159
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->qs_tile_disabled_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_15

    .line 161
    :cond_12
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 163
    :goto_15
    iget v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    if-eq v0, v1, :cond_54

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getColor(I)I

    move-result v0

    .line 165
    iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    .line 166
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    if-eqz v1, :cond_3c

    if-eqz p3, :cond_3c

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->shouldAnimate(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 167
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    new-instance v2, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$xTIBDrD33UKSYZv6_hT3f3X3znk;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$xTIBDrD33UKSYZv6_hT3f3X3znk;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->animateGrayScale(IILandroid/widget/ImageView;Ljava/lang/Runnable;)V

    .line 168
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    goto :goto_57

    .line 170
    :cond_3c
    instance-of v1, p1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    if-eqz v1, :cond_4b

    .line 171
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    .line 172
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;->setFinalImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_4e

    .line 174
    :cond_4b
    invoke-static {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 176
    :goto_4e
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    .line 177
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto :goto_57

    .line 180
    :cond_54
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    :goto_57
    return-void
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    instance-of v1, v0, Lcom/flyme/systemui/qs/QSTileAnimationView;

    if-eqz v1, :cond_c

    .line 105
    check-cast v0, Lcom/flyme/systemui/qs/QSTileAnimationView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Lcom/flyme/systemui/qs/QSTileAnimationView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void

    .line 110
    :cond_c
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method protected setIcon(Lcom/flyme/systemui/qs/QSTileAnimationView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .registers 5

    .line 252
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    sget v1, Lcom/android/systemui/R$id;->qs_icon_tag:I

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 253
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v0, :cond_17

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 255
    :cond_17
    iget-object p0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    instance-of p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    if-eqz p0, :cond_4c

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[foree] setAnimatedVectorIcon: name = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isOn = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/plugins/qs/QSTile$State;->isOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "foree"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p2}, Lcom/android/systemui/plugins/qs/QSTile$State;->isOn()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/flyme/systemui/qs/QSTileAnimationView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$Icon;Z)V

    .line 265
    :cond_4c
    sget p0, Lcom/android/systemui/R$id;->qs_icon_tag:I

    iget-object p2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p1, p0, p2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    :cond_53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", tint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", lastIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    const-string p0, "]"

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .registers 10

    .line 114
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_d

    :cond_b
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 115
    :goto_d
    sget v1, Lcom/android/systemui/R$id;->qs_icon_tag:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    sget v2, Lcom/android/systemui/R$id;->qs_slash_tag:I

    .line 116
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    :cond_27
    const/4 v1, 0x0

    if-eqz p3, :cond_32

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->shouldAnimate(Landroid/widget/ImageView;)Z

    move-result p3

    if-eqz p3, :cond_32

    const/4 p3, 0x1

    goto :goto_33

    :cond_32
    move p3, v1

    .line 118
    :goto_33
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    if-eqz p3, :cond_41

    .line 120
    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_49

    .line 121
    :cond_41
    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_49

    :cond_48
    move-object v3, v2

    :goto_49
    if-eqz v0, :cond_50

    .line 122
    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getPadding()I

    move-result v4

    goto :goto_51

    :cond_50
    move v4, v1

    :goto_51
    if-eqz v3, :cond_5d

    .line 124
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 125
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 128
    :cond_5d
    instance-of v5, p1, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    if-eqz v5, :cond_6b

    .line 129
    move-object v5, p1

    check-cast v5, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    invoke-virtual {v5, p3}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setAnimationEnabled(Z)V

    .line 130
    invoke-virtual {v5, v2, v3}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setState(Lcom/android/systemui/plugins/qs/QSTile$SlashState;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6e

    .line 132
    :cond_6b
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :goto_6e
    sget p3, Lcom/android/systemui/R$id;->qs_icon_tag:I

    invoke-virtual {p1, p3, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 136
    sget p3, Lcom/android/systemui/R$id;->qs_slash_tag:I

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-virtual {p1, p3, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 137
    invoke-virtual {p1, v1, v4, v1, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 138
    instance-of p1, v3, Landroid/graphics/drawable/Animatable2;

    if-eqz p1, :cond_92

    .line 139
    check-cast v3, Landroid/graphics/drawable/Animatable2;

    .line 140
    invoke-interface {v3}, Landroid/graphics/drawable/Animatable2;->start()V

    .line 141
    iget-boolean p1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz p1, :cond_92

    .line 142
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;

    invoke-direct {p1, p0, v3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/graphics/drawable/Animatable2;)V

    invoke-interface {v3, p1}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_92
    return-void
.end method
