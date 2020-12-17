.class public Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;
    }
.end annotation


# instance fields
.field private mAccessibilityClass:Ljava/lang/String;

.field private final mBg:Landroid/widget/ImageView;

.field private mCircleColor:I

.field private mClicked:Z

.field private mCollapsedView:Z

.field private final mColorActive:I

.field private final mColorDisabled:I

.field private final mColorInactive:I

.field private final mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

.field protected mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private final mIconFrame:Landroid/widget/FrameLayout;

.field private final mLocInScreen:[I

.field protected mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mShowRippleEffect:Z

.field private mTileBackground:Landroid/graphics/drawable/Drawable;

.field private mTileState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .registers 10

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 56
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_quick_tile_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 84
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 86
    new-instance v1, Landroid/graphics/Path;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104017e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 89
    new-instance v2, Landroid/graphics/drawable/shapes/PathShape;

    const/high16 v3, 0x42c80000  # 100.0f

    invoke-direct {v2, v1, v3, v3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 90
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v2, 0x0

    .line 91
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_tile_background_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 93
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 94
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 95
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 97
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 100
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v1, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 103
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v1, v3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 105
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_bb

    .line 109
    check-cast p2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 111
    :cond_bb
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 112
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x1010435

    .line 114
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorActive:I

    const p2, 0x1010212

    .line 116
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    .line 115
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorDisabled:I

    const p2, 0x1010038

    .line 117
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorInactive:I

    .line 119
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 120
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 121
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 122
    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCollapsedView:Z

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method

.method private getCircleColor(I)I
    .registers 3

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileBaseView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 245
    :cond_20
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorActive:I

    return p0

    .line 248
    :cond_23
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorDisabled:I

    return p0
.end method

.method static synthetic lambda$init$0(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .registers 2

    .line 155
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    return-void
.end method

.method static synthetic lambda$init$1(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .registers 2

    .line 155
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->secondaryClick()V

    return-void
.end method

.method static synthetic lambda$init$2(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z
    .registers 2

    .line 156
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick()V

    const/4 p0, 0x1

    return p0
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 140
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    if-eqz p1, :cond_b

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateRippleSize()V

    :cond_b
    return-void
.end method

.method private updateRippleSize()V
    .registers 6

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 149
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f59999a  # 0.85f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 150
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v4, v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    return-void
.end method


# virtual methods
.method protected animationsEnabled()Z
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object p0
.end method

.method public getIconWithBackground()Landroid/view/View;
    .registers 1

    .line 271
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .registers 9

    .line 197
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getCircleColor(I)I

    move-result v0

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->animationsEnabled()Z

    move-result v1

    .line 199
    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCircleColor:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_36

    if-eqz v1, :cond_2f

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v2, v5, v4

    aput v0, v5, v3

    .line 201
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v5, 0x15e

    .line 202
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 203
    new-instance v5, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$R4RxHhlQ5aUQCBgq0kdDEHJXn14;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$R4RxHhlQ5aUQCBgq0kdDEHJXn14;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 205
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_34

    .line 207
    :cond_2f
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 209
    :goto_34
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCircleColor:I

    .line 212
    :cond_36
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    .line 213
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v0, :cond_3f

    goto :goto_40

    :cond_3f
    move v3, v4

    :goto_40
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V

    .line 214
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 216
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 219
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_58

    const/4 v0, 0x0

    goto :goto_5a

    :cond_58
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    :goto_5a
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 220
    instance-of v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v0, :cond_6c

    .line 221
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 222
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-eq v0, p1, :cond_6c

    .line 223
    iput-boolean v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    .line 224
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    :cond_6c
    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 4

    .line 163
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .registers 5

    .line 155
    new-instance v0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$aVxKNvlJE7IFS8nVmOyLdAcByFA;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$aVxKNvlJE7IFS8nVmOyLdAcByFA;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$W9w1scJAVZm5V6Q1VB4ZO5o3C8A;

    invoke-direct {v1, p1}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$W9w1scJAVZm5V6Q1VB4ZO5o3C8A;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$STEfvGmwtIL_pMrVYwBQuK3x1jo;

    invoke-direct {v2, p1}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$STEfvGmwtIL_pMrVYwBQuK3x1jo;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public synthetic lambda$handleStateChanged$3$QSTileBaseView(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 203
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 204
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 203
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method protected newTileBackground()Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101045c

    aput v2, v0, v1

    .line 132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 133
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 282
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 284
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 285
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 286
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_2c

    :cond_28
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2a
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    .line 287
    :goto_2c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_35

    .line 288
    sget v1, Lcom/android/systemui/R$string;->switch_bar_on:I

    goto :goto_37

    :cond_35
    sget v1, Lcom/android/systemui/R$string;->switch_bar_off:I

    :goto_37
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    :cond_41
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 297
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 301
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 302
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 303
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-nez v1, :cond_2f

    move v0, v2

    goto :goto_2f

    :cond_2d
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    .line 304
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_38

    .line 305
    sget v3, Lcom/android/systemui/R$string;->switch_bar_on:I

    goto :goto_3a

    :cond_38
    sget v3, Lcom/android/systemui/R$string;->switch_bar_off:I

    :goto_3a
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 308
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 309
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 310
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 313
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    .line 314
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->accessibility_long_click_tile:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_65
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 170
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_7

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateRippleSize()V

    :cond_7
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .registers 3

    .line 193
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public performClick()Z
    .registers 2

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    .line 277
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result p0

    return p0
.end method

.method public setClickable(Z)V
    .registers 2

    .line 257
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    if-eqz p1, :cond_c

    .line 258
    iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locInScreen=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", iconView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", tileState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 327
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method
