.class public Landroidx/leanback/widget/SearchOrbView;
.super Landroid/widget/FrameLayout;
.source "SearchOrbView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/SearchOrbView$Colors;
    }
.end annotation


# instance fields
.field private mAttachedToWindow:Z

.field private mColorAnimationEnabled:Z

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private final mColorEvaluator:Landroid/animation/ArgbEvaluator;

.field private mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

.field private final mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mFocusedZ:F

.field private final mFocusedZoom:F

.field private mIcon:Landroid/widget/ImageView;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mListener:Landroid/view/View$OnClickListener;

.field private final mPulseDurationMs:I

.field private mRootView:Landroid/view/View;

.field private final mScaleDurationMs:I

.field private mSearchOrbView:Landroid/view/View;

.field private mShadowFocusAnimator:Landroid/animation/ValueAnimator;

.field private final mUnfocusedZ:F

.field private final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 161
    sget v0, Landroidx/leanback/R$attr;->searchOrbViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15

    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    .line 133
    new-instance v0, Landroidx/leanback/widget/SearchOrbView$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/SearchOrbView$1;-><init>(Landroidx/leanback/widget/SearchOrbView;)V

    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 144
    new-instance v0, Landroidx/leanback/widget/SearchOrbView$2;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/SearchOrbView$2;-><init>(Landroidx/leanback/widget/SearchOrbView;)V

    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 170
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 171
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->getLayoutResourceId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    .line 172
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    sget v2, Landroidx/leanback/R$id;->search_orb:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 173
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    sget v2, Landroidx/leanback/R$id;->icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/leanback/R$fraction;->lb_search_orb_focused_zoom:I

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusedZoom:F

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/leanback/R$integer;->lb_search_orb_pulse_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroidx/leanback/widget/SearchOrbView;->mPulseDurationMs:I

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/leanback/R$integer;->lb_search_orb_scale_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroidx/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/leanback/R$dimen;->lb_search_orb_focused_z:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusedZ:F

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/leanback/R$dimen;->lb_search_orb_unfocused_z:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    .line 186
    sget-object v1, Landroidx/leanback/R$styleable;->lbSearchOrbView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 188
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_9b

    .line 189
    sget-object v6, Landroidx/leanback/R$styleable;->lbSearchOrbView:[I

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v1

    move v9, p3

    invoke-virtual/range {v4 .. v10}, Landroid/widget/FrameLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 193
    :cond_9b
    sget p1, Landroidx/leanback/R$styleable;->lbSearchOrbView_searchOrbIcon:I

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_a9

    .line 195
    sget p1, Landroidx/leanback/R$drawable;->lb_ic_in_app_search:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 197
    :cond_a9
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 199
    sget p1, Landroidx/leanback/R$color;->lb_default_search_color:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 200
    sget p2, Landroidx/leanback/R$styleable;->lbSearchOrbView_searchOrbColor:I

    invoke-virtual {v1, p2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 201
    sget p2, Landroidx/leanback/R$styleable;->lbSearchOrbView_searchOrbBrightColor:I

    invoke-virtual {v1, p2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 203
    sget p3, Landroidx/leanback/R$styleable;->lbSearchOrbView_searchOrbIconColor:I

    invoke-virtual {v1, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 204
    new-instance v0, Landroidx/leanback/widget/SearchOrbView$Colors;

    invoke-direct {v0, p1, p2, p3}, Landroidx/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    .line 205
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 208
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 209
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setSoundEffectsEnabled(Z)V

    const/4 p1, 0x0

    .line 211
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->setSearchOrbZ(F)V

    .line 214
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget p0, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusedZ:F

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setZ(Landroid/view/View;F)V

    return-void
.end method

.method private startShadowFocusAnimation(ZI)V
    .registers 5

    .line 238
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_17

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 239
    fill-array-data v0, :array_2c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    .line 240
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_17
    if-eqz p1, :cond_1f

    .line 243
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_24

    .line 245
    :cond_1f
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 247
    :goto_24
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_2c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private updateColorAnimator()V
    .registers 5

    .line 353
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 354
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 357
    :cond_a
    iget-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    if-eqz v0, :cond_59

    iget-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    if-eqz v0, :cond_59

    .line 359
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    iget v3, v3, Landroidx/leanback/widget/SearchOrbView$Colors;->color:I

    .line 360
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    iget v3, v3, Landroidx/leanback/widget/SearchOrbView$Colors;->brightColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    iget v2, v2, Landroidx/leanback/widget/SearchOrbView$Colors;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 359
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 361
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 362
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroidx/leanback/widget/SearchOrbView;->mPulseDurationMs:I

    mul-int/2addr v1, v3

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 363
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 364
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_59
    return-void
.end method


# virtual methods
.method animateOnFocus(Z)V
    .registers 5

    if-eqz p1, :cond_5

    .line 257
    iget v0, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusedZoom:F

    goto :goto_7

    :cond_5
    const/high16 v0, 0x3f800000  # 1.0f

    .line 258
    :goto_7
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 259
    iget v0, p0, Landroidx/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/SearchOrbView;->startShadowFocusAnimation(ZI)V

    .line 260
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    return-void
.end method

.method public enableOrbColorAnimation(Z)V
    .registers 2

    .line 348
    iput-boolean p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    .line 349
    invoke-direct {p0}, Landroidx/leanback/widget/SearchOrbView;->updateColorAnimator()V

    return-void
.end method

.method getFocusedZoom()F
    .registers 1

    .line 227
    iget p0, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusedZoom:F

    return p0
.end method

.method getLayoutResourceId()I
    .registers 1

    .line 218
    sget p0, Landroidx/leanback/R$layout;->lb_search_orb:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 376
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 378
    invoke-direct {p0}, Landroidx/leanback/widget/SearchOrbView;->updateColorAnimator()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 232
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_7

    .line 233
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    .line 383
    iput-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 385
    invoke-direct {p0}, Landroidx/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 386
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 253
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->animateOnFocus(Z)V

    return-void
.end method

.method scaleOrbViewOnly(F)V
    .registers 3

    .line 222
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 223
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 285
    iput-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V
    .registers 3

    .line 321
    iput-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 322
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    iget v0, v0, Landroidx/leanback/widget/SearchOrbView$Colors;->iconColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 324
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_17

    .line 325
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    iget p1, p1, Landroidx/leanback/widget/SearchOrbView$Colors;->color:I

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->setOrbViewColor(I)V

    goto :goto_1b

    :cond_17
    const/4 p1, 0x1

    .line 327
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    :goto_1b
    return-void
.end method

.method public setOrbIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 268
    iput-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setOrbViewColor(I)V
    .registers 3

    .line 369
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_15

    .line 370
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_15
    return-void
.end method

.method setSearchOrbZ(F)V
    .registers 4

    .line 153
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    iget v1, p0, Landroidx/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    iget p0, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusedZ:F

    sub-float/2addr p0, v1

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setZ(Landroid/view/View;F)V

    return-void
.end method