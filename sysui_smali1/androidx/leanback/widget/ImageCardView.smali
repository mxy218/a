.class public Landroidx/leanback/widget/ImageCardView;
.super Landroidx/leanback/widget/BaseCardView;
.source "ImageCardView.java"


# instance fields
.field private mAttachedToWindow:Z

.field private mBadgeImage:Landroid/widget/ImageView;

.field private mContentView:Landroid/widget/TextView;

.field mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mImageView:Landroid/widget/ImageView;

.field private mInfoArea:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 297
    sget v0, Landroidx/leanback/R$attr;->imageCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/ImageCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    sget p1, Landroidx/leanback/R$style;->Widget_Leanback_ImageCardView:I

    invoke-direct {p0, p2, p3, p1}, Landroidx/leanback/widget/ImageCardView;->buildImageCardView(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private buildImageCardView(Landroid/util/AttributeSet;II)V
    .registers 15

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 168
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 171
    sget v2, Landroidx/leanback/R$layout;->lb_image_card_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 172
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/leanback/R$styleable;->lbImageCardView:[I

    invoke-virtual {v2, p1, v3, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 174
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_32

    .line 176
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroidx/leanback/R$styleable;->lbImageCardView:[I

    move-object v4, p0

    move-object v7, p1

    move-object v8, v2

    move v9, p2

    move v10, p3

    .line 175
    invoke-virtual/range {v4 .. v10}, Landroid/widget/FrameLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 179
    :cond_32
    sget p1, Landroidx/leanback/R$styleable;->lbImageCardView_lbImageCardViewType:I

    const/4 p2, 0x0

    .line 180
    invoke-virtual {v2, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-nez p1, :cond_3d

    move p3, v0

    goto :goto_3e

    :cond_3d
    move p3, p2

    :goto_3e
    and-int/lit8 v3, p1, 0x1

    if-ne v3, v0, :cond_44

    move v3, v0

    goto :goto_45

    :cond_44
    move v3, p2

    :goto_45
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4c

    move v4, v0

    goto :goto_4d

    :cond_4c
    move v4, p2

    :goto_4d
    and-int/lit8 v5, p1, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_54

    move v5, v0

    goto :goto_55

    :cond_54
    move v5, p2

    :goto_55
    const/16 v7, 0x8

    if-nez v5, :cond_5e

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_5e

    move p1, v0

    goto :goto_5f

    :cond_5e
    move p1, p2

    .line 189
    :goto_5f
    sget v8, Landroidx/leanback/R$id;->main_image:I

    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Landroidx/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    .line 190
    iget-object v8, p0, Landroidx/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_76

    .line 191
    iget-object v8, p0, Landroidx/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    :cond_76
    iget-object v6, p0, Landroidx/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    new-array v0, v0, [F

    const/high16 v8, 0x3f800000  # 1.0f

    aput v8, v0, p2

    const-string v8, "alpha"

    invoke-static {v6, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 195
    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Landroidx/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    .line 196
    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v8, 0x10e0000

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v8, v6

    .line 195
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 198
    sget v0, Landroidx/leanback/R$id;->info_field:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    if-eqz p3, :cond_ad

    .line 200
    iget-object p1, p0, Landroidx/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 201
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_ad
    if-eqz v3, :cond_c2

    .line 206
    sget p3, Landroidx/leanback/R$layout;->lb_image_card_view_themed_title:I

    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, p3, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Landroidx/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    .line 208
    iget-object p3, p0, Landroidx/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_c2
    if-eqz v4, :cond_d7

    .line 212
    sget p3, Landroidx/leanback/R$layout;->lb_image_card_view_themed_content:I

    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, p3, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Landroidx/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    .line 214
    iget-object p3, p0, Landroidx/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d7
    if-nez v5, :cond_db

    if-eqz p1, :cond_f2

    .line 218
    :cond_db
    sget p3, Landroidx/leanback/R$layout;->lb_image_card_view_themed_badge_right:I

    if-eqz p1, :cond_e1

    .line 220
    sget p3, Landroidx/leanback/R$layout;->lb_image_card_view_themed_badge_left:I

    .line 222
    :cond_e1
    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, p3, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    .line 223
    iget-object p2, p0, Landroidx/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    iget-object p3, p0, Landroidx/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_f2
    const/16 p2, 0x11

    const/16 p3, 0x10

    if-eqz v3, :cond_120

    if-nez v4, :cond_120

    .line 227
    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_120

    .line 228
    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    .line 229
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_112

    .line 232
    iget-object v1, p0, Landroidx/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_11b

    .line 234
    :cond_112
    iget-object v1, p0, Landroidx/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 236
    :goto_11b
    iget-object v1, p0, Landroidx/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_120
    if-eqz v4, :cond_149

    .line 241
    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    .line 242
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v3, :cond_131

    const/16 v1, 0xa

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_131
    if-eqz p1, :cond_144

    .line 248
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 p1, 0x14

    .line 249
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 250
    iget-object p1, p0, Landroidx/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 252
    :cond_144
    iget-object p1, p0, Landroidx/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    :cond_149
    iget-object p1, p0, Landroidx/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_16f

    .line 257
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_15f

    .line 259
    iget-object p2, p0, Landroidx/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result p2

    invoke-virtual {p1, v7, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_16a

    :cond_15f
    if-eqz v3, :cond_16a

    .line 261
    iget-object p2, p0, Landroidx/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result p2

    invoke-virtual {p1, v7, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 263
    :cond_16a
    :goto_16a
    iget-object p2, p0, Landroidx/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    :cond_16f
    sget p1, Landroidx/leanback/R$styleable;->lbImageCardView_infoAreaBackground:I

    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_17a

    .line 274
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ImageCardView;->setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V

    .line 280
    :cond_17a
    iget-object p1, p0, Landroidx/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_189

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_189

    .line 281
    iget-object p0, p0, Landroidx/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    :cond_189
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private fadeIn()V
    .registers 3

    .line 474
    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 475
    iget-boolean v0, p0, Landroidx/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    if-eqz v0, :cond_f

    .line 476
    iget-object p0, p0, Landroidx/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_f
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 487
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 488
    iput-boolean v0, p0, Landroidx/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    .line 489
    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    .line 490
    invoke-direct {p0}, Landroidx/leanback/widget/ImageCardView;->fadeIn()V

    :cond_14
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    const/4 v0, 0x0

    .line 496
    iput-boolean v0, p0, Landroidx/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    .line 497
    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 498
    iget-object v0, p0, Landroidx/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 499
    invoke-super {p0}, Landroidx/leanback/widget/BaseCardView;->onDetachedFromWindow()V

    return-void
.end method

.method public setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 391
    iget-object p0, p0, Landroidx/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    if-eqz p0, :cond_7

    .line 392
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method
