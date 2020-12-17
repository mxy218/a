.class public Landroid/support/v7/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroid/support/v7/widget/DecorContentParent;
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ATTRS:[I


# instance fields
.field private mActionBarHeight:I

.field mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private mContent:Landroid/support/v7/widget/ContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

.field private mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/widget/OverScroller;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastBaseInnerInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field final mTopAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 129
    sget v1, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x1010059

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 61
    iput p2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 80
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 81
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 82
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 83
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 84
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/graphics/Rect;

    .line 85
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 86
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 96
    new-instance p2, Landroid/support/v7/widget/ActionBarOverlayLayout$1;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$1;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 110
    new-instance p2, Landroid/support/v7/widget/ActionBarOverlayLayout$2;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$2;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 119
    new-instance p2, Landroid/support/v7/widget/ActionBarOverlayLayout$3;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$3;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 142
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 144
    new-instance p1, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    return-void
.end method

.method private addActionBarHideOffset()V
    .registers 1

    .line 603
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 604
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .registers 8

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    const/4 p1, 0x1

    if-eqz p3, :cond_13

    .line 266
    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-eq p3, v0, :cond_13

    .line 268
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move p3, p1

    goto :goto_14

    :cond_13
    const/4 p3, 0x0

    :goto_14
    if-eqz p4, :cond_1f

    .line 270
    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eq p4, v0, :cond_1f

    .line 272
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move p3, p1

    :cond_1f
    if-eqz p6, :cond_2a

    .line 274
    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p6, p2, Landroid/graphics/Rect;->right:I

    if-eq p4, p6, :cond_2a

    .line 276
    iput p6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move p3, p1

    :cond_2a
    if-eqz p5, :cond_35

    .line 278
    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p4, p2, :cond_35

    .line 280
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_36

    :cond_35
    move p1, p3

    :goto_36
    return p1
.end method

.method private getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;
    .registers 4

    .line 544
    instance-of p0, p1, Landroid/support/v7/widget/DecorToolbar;

    if-eqz p0, :cond_7

    .line 545
    check-cast p1, Landroid/support/v7/widget/DecorToolbar;

    return-object p1

    .line 546
    :cond_7
    instance-of p0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p0, :cond_12

    .line 547
    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/widget/DecorToolbar;

    move-result-object p0

    return-object p0

    .line 549
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 6

    .line 148
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    const/4 v2, 0x1

    .line 150
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_22

    move v3, v2

    goto :goto_23

    :cond_22
    move v3, v1

    :goto_23
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 152
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_34

    move v1, v2

    :cond_34
    iput-boolean v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 157
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    return-void
.end method

.method private postAddActionBarHideOffset()V
    .registers 4

    .line 593
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 594
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .registers 4

    .line 588
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 589
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeActionBarHideOffset()V
    .registers 1

    .line 598
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 599
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .registers 12

    .line 608
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    float-to-int v4, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 609
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result p1

    .line 610
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    if-le p1, p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 335
    instance-of p0, p1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 451
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 452
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v0, :cond_3d

    .line 453
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 454
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_28

    :cond_27
    move v0, v1

    .line 456
    :goto_28
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 457
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 456
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 458
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3d
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 10

    .line 287
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 289
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    .line 294
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    .line 296
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 297
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-static {p0, p1, v1}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 298
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_34

    .line 300
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v0, v1

    .line 302
    :cond_34
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    .line 304
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v0, v1

    :cond_46
    if-eqz v0, :cond_4b

    .line 308
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_4b
    return v1
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    .registers 2

    .line 320
    new-instance p0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 54
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    .registers 3

    .line 325
    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 330
    new-instance p0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getActionBarHideOffset()I
    .registers 1

    .line 569
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    neg-int p0, p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public getNestedScrollAxes()I
    .registers 1

    .line 532
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result p0

    return p0
.end method

.method haltActionBarHideOffsetAnimations()V
    .registers 2

    .line 580
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 581
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 582
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz p0, :cond_11

    .line 583
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_11
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 223
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 225
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 162
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 163
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    .line 425
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 427
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    .line 428
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 430
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    .line 431
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    const/4 p4, 0x0

    :goto_13
    if-ge p4, p1, :cond_3d

    .line 434
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 435
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3a

    .line 436
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    .line 438
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 439
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 441
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, p2

    .line 442
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, p3

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    .line 444
    invoke-virtual {p5, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_3a
    add-int/lit8 p4, p4, 0x1

    goto :goto_13

    :cond_3d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    .line 340
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 349
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 350
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    .line 351
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 352
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 351
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 353
    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 354
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v0

    .line 353
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 355
    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredState()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    .line 357
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_4a

    const/4 v4, 0x1

    goto :goto_4b

    :cond_4a
    move v4, v2

    :goto_4b
    if-eqz v4, :cond_5f

    .line 363
    iget v5, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 364
    iget-boolean v6, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v6, :cond_71

    .line 365
    iget-object v6, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v6}, Landroid/support/v7/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_71

    .line 368
    iget v6, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v5, v6

    goto :goto_71

    .line 371
    :cond_5f
    iget-object v5, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_70

    .line 374
    iget-object v5, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    goto :goto_71

    :cond_70
    move v5, v2

    .line 381
    :cond_71
    :goto_71
    iget-object v6, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 382
    iget-object v6, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 383
    iget-boolean v6, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v6, :cond_92

    if-nez v4, :cond_92

    .line 384
    iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 385
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_9e

    .line 387
    :cond_92
    iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 388
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 390
    :goto_9e
    iget-object v7, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v8, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Landroid/support/v7/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 392
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c2

    .line 396
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 398
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    .line 401
    :cond_c2
    iget-object v6, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v7, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 402
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    .line 403
    iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    .line 404
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 403
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 405
    iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    .line 406
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    .line 405
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 407
    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredState()I

    move-result v2

    invoke-static {v3, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    .line 410
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 411
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 414
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 415
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 418
    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v1, v2, 0x10

    .line 419
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 417
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 508
    iget-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz p1, :cond_18

    if-nez p4, :cond_7

    goto :goto_18

    .line 511
    :cond_7
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 512
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    goto :goto_14

    .line 514
    :cond_11
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    :goto_14
    const/4 p1, 0x1

    .line 516
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return p1

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    .line 488
    iget p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 489
    iget p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 477
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 478
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 479
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 480
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz p0, :cond_15

    .line 481
    invoke-interface {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    :cond_15
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_10

    .line 469
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_10

    .line 472
    :cond_d
    iget-boolean p0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    .line 494
    iget-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez p1, :cond_19

    .line 495
    iget p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_16

    .line 496
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    goto :goto_19

    .line 498
    :cond_16
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    .line 501
    :cond_19
    :goto_19
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz p0, :cond_20

    .line 502
    invoke-interface {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    :cond_20
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .registers 6

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    .line 231
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 233
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 234
    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int/2addr v0, p1

    .line 235
    iput p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_19

    move v1, v3

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_1f

    move v2, v3

    .line 238
    :cond_1f
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz p1, :cond_38

    xor-int/lit8 v3, v2, 0x1

    .line 242
    invoke-interface {p1, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    if-nez v1, :cond_33

    if-nez v2, :cond_2d

    goto :goto_33

    .line 244
    :cond_2d
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_38

    .line 243
    :cond_33
    :goto_33
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    :cond_38
    :goto_38
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_43

    .line 247
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz p1, :cond_43

    .line 248
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_43
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 255
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 256
    iput p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 257
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz p0, :cond_c

    .line 258
    invoke-interface {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    :cond_c
    return-void
.end method

.method pullChildren()V
    .registers 2

    .line 536
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    if-nez v0, :cond_24

    .line 537
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    .line 538
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 539
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    :cond_24
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .registers 3

    .line 573
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 575
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 576
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
