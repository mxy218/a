.class public Lflyme/support/v7/app/WindowDecorActionBar;
.super Lflyme/support/v7/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lflyme/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;,
        Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field private static final ALLOW_SHOW_HIDE_ANIMATIONS:Z

.field private static final sHideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sShowInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mActionMode:Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextView:Lflyme/support/v7/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

.field private mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Lflyme/support/v7/view/ActionMode;

.field mDeferredModeDestroyCallback:Lflyme/support/v7/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mDropDownViewShowing:Z

.field private mDuration:I

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field final mHideSplitActionBarListener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field private mIsSetScrollTabsExpendView:Z

.field private mIsSplitActionBarShow:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field final mShowSplitActionBarListener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field private mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

.field private mStackedTabsCanBeEmbedded:Z

.field private mTabMinWidth:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabScrollView:Lflyme/support/v7/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

.field private mforceShowTab:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 94
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lflyme/support/v7/app/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    .line 95
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lflyme/support/v7/app/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    sput-boolean v0, Lflyme/support/v7/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 6

    .line 245
    invoke-direct {p0}, Lflyme/support/v7/app/ActionBar;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 143
    iput v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    const/4 v2, 0x1

    .line 145
    iput-boolean v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 150
    iput-boolean v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 162
    iput-boolean v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mStackedTabsCanBeEmbedded:Z

    .line 171
    new-instance v2, Lflyme/support/v7/app/WindowDecorActionBar$1;

    invoke-direct {v2, p0}, Lflyme/support/v7/app/WindowDecorActionBar$1;-><init>(Lflyme/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHideSplitActionBarListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 182
    new-instance v2, Lflyme/support/v7/app/WindowDecorActionBar$2;

    invoke-direct {v2, p0}, Lflyme/support/v7/app/WindowDecorActionBar$2;-><init>(Lflyme/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowSplitActionBarListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 194
    new-instance v2, Lflyme/support/v7/app/WindowDecorActionBar$3;

    invoke-direct {v2, p0}, Lflyme/support/v7/app/WindowDecorActionBar$3;-><init>(Lflyme/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 221
    new-instance v2, Lflyme/support/v7/app/WindowDecorActionBar$4;

    invoke-direct {v2, p0}, Lflyme/support/v7/app/WindowDecorActionBar$4;-><init>(Lflyme/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 236
    new-instance v2, Lflyme/support/v7/app/WindowDecorActionBar$5;

    invoke-direct {v2, p0}, Lflyme/support/v7/app/WindowDecorActionBar$5;-><init>(Lflyme/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    const/16 v2, 0x120

    .line 1913
    iput v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDuration:I

    .line 2213
    iput-boolean v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDropDownViewShowing:Z

    .line 2214
    iput-boolean v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mIsSetScrollTabsExpendView:Z

    .line 2281
    iput v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabPaddingStart:I

    .line 2282
    iput v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabPaddingEnd:I

    .line 2283
    iput v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabMinWidth:I

    .line 246
    iput-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 247
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 249
    invoke-direct {p0, p1}, Lflyme/support/v7/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    if-nez p2, :cond_67

    const p2, 0x1020002

    .line 251
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    :cond_67
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 5

    .line 255
    invoke-direct {p0}, Lflyme/support/v7/app/ActionBar;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 143
    iput v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    const/4 v2, 0x1

    .line 145
    iput-boolean v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 150
    iput-boolean v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 162
    iput-boolean v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mStackedTabsCanBeEmbedded:Z

    .line 171
    new-instance v2, Lflyme/support/v7/app/WindowDecorActionBar$1;

    invoke-direct {v2, p0}, Lflyme/support/v7/app/WindowDecorActionBar$1;-><init>(Lflyme/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHideSplitActionBarListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 182
    new-instance v2, Lflyme/support/v7/app/WindowDecorActionBar$2;

    invoke-direct {v2, p0}, Lflyme/support/v7/app/WindowDecorActionBar$2;-><init>(Lflyme/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowSplitActionBarListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 194
    new-instance v2, Lflyme/support/v7/app/WindowDecorActionBar$3;

    invoke-direct {v2, p0}, Lflyme/support/v7/app/WindowDecorActionBar$3;-><init>(Lflyme/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 221
    new-instance v2, Lflyme/support/v7/app/WindowDecorActionBar$4;

    invoke-direct {v2, p0}, Lflyme/support/v7/app/WindowDecorActionBar$4;-><init>(Lflyme/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 236
    new-instance v2, Lflyme/support/v7/app/WindowDecorActionBar$5;

    invoke-direct {v2, p0}, Lflyme/support/v7/app/WindowDecorActionBar$5;-><init>(Lflyme/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    const/16 v2, 0x120

    .line 1913
    iput v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDuration:I

    .line 2213
    iput-boolean v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDropDownViewShowing:Z

    .line 2214
    iput-boolean v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mIsSetScrollTabsExpendView:Z

    .line 2281
    iput v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabPaddingStart:I

    .line 2282
    iput v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabPaddingEnd:I

    .line 2283
    iput v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabMinWidth:I

    .line 256
    iput-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    .line 257
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lflyme/support/v7/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ActionBarContainer;
    .registers 1

    .line 90
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    return-object p0
.end method

.method static synthetic access$1000(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ActionBarContextView;
    .registers 1

    .line 90
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    return-object p0
.end method

.method static synthetic access$102(Lflyme/support/v7/app/WindowDecorActionBar;Z)Z
    .registers 2

    .line 90
    iput-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mIsSplitActionBarShow:Z

    return p1
.end method

.method static synthetic access$1100(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/DecorToolbar;
    .registers 1

    .line 90
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    return-object p0
.end method

.method static synthetic access$1200(Lflyme/support/v7/app/WindowDecorActionBar;)Landroid/content/Context;
    .registers 1

    .line 90
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ScrollingTabContainerView;
    .registers 1

    .line 90
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabScrollView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic access$202(Lflyme/support/v7/app/WindowDecorActionBar;Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .registers 2

    .line 90
    iput-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    return-object p1
.end method

.method static synthetic access$300(Lflyme/support/v7/app/WindowDecorActionBar;)Z
    .registers 1

    .line 90
    iget-boolean p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    return p0
.end method

.method static synthetic access$400(Lflyme/support/v7/app/WindowDecorActionBar;)Landroid/view/View;
    .registers 1

    .line 90
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ActionBarContainer;
    .registers 1

    .line 90
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    return-object p0
.end method

.method static synthetic access$600(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ActionBarOverlayLayout;
    .registers 1

    .line 90
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    return-object p0
.end method

.method static synthetic access$700(Lflyme/support/v7/app/WindowDecorActionBar;)Z
    .registers 1

    .line 90
    iget-boolean p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    return p0
.end method

.method static synthetic access$800(Lflyme/support/v7/app/WindowDecorActionBar;)Z
    .registers 1

    .line 90
    iget-boolean p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    return p0
.end method

.method static synthetic access$900(ZZZ)Z
    .registers 3

    .line 90
    invoke-static {p0, p1, p2}, Lflyme/support/v7/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result p0

    return p0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    return v0

    :cond_4
    if-nez p0, :cond_9

    if-nez p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lflyme/support/v7/widget/DecorToolbar;
    .registers 4

    .line 325
    instance-of p0, p1, Lflyme/support/v7/widget/DecorToolbar;

    if-eqz p0, :cond_7

    .line 326
    check-cast p1, Lflyme/support/v7/widget/DecorToolbar;

    return-object p1

    .line 327
    :cond_7
    instance-of p0, p1, Lflyme/support/v7/widget/Toolbar;

    if-eqz p0, :cond_12

    .line 328
    check-cast p1, Lflyme/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Lflyme/support/v7/widget/Toolbar;->getWrapper()Lflyme/support/v7/widget/DecorToolbar;

    move-result-object p0

    return-object p0

    .line 330
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_32

    :cond_30
    const-string p1, "null"

    :goto_32
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private hideForActionMode()V
    .registers 3

    .line 893
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 894
    iput-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 895
    iget-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_e

    .line 896
    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 898
    :cond_e
    invoke-direct {p0, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_11
    return-void
.end method

.method private init(Landroid/view/View;)V
    .registers 7

    .line 270
    sget v0, Lflyme/support/v7/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    .line 271
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_11

    .line 272
    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lflyme/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 274
    :cond_11
    sget v0, Lflyme/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lflyme/support/v7/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    .line 275
    sget v0, Lflyme/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    .line 277
    sget v0, Lflyme/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/ActionBarContainer;

    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    .line 280
    sget v0, Lflyme/support/v7/appcompat/R$id;->split_action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/ActionBarContainer;

    iput-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    .line 282
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    if-eqz p1, :cond_c7

    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    if-eqz v0, :cond_c7

    .line 287
    invoke-interface {p1}, Lflyme/support/v7/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 290
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {p1}, Lflyme/support/v7/widget/DecorToolbar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5b

    move v0, v1

    goto :goto_5c

    :cond_5b
    move v0, v2

    :goto_5c
    if-eqz v0, :cond_60

    .line 293
    iput-boolean v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 296
    :cond_60
    iget-object v3, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lflyme/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Lflyme/support/v7/view/ActionBarPolicy;

    move-result-object v3

    .line 297
    invoke-virtual {v3}, Lflyme/support/v7/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v4

    if-nez v4, :cond_71

    if-eqz v0, :cond_6f

    goto :goto_71

    :cond_6f
    move v0, v2

    goto :goto_72

    :cond_71
    :goto_71
    move v0, v1

    :goto_72
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_7b

    move p1, v1

    goto :goto_7c

    :cond_7b
    move p1, v2

    .line 301
    :goto_7c
    iput-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mforceShowTab:Z

    .line 302
    iget-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mStackedTabsCanBeEmbedded:Z

    if-eqz p1, :cond_88

    invoke-virtual {v3}, Lflyme/support/v7/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    if-nez p1, :cond_8c

    :cond_88
    iget-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mforceShowTab:Z

    if-eqz p1, :cond_8e

    :cond_8c
    move p1, v1

    goto :goto_8f

    :cond_8e
    move p1, v2

    :goto_8f
    invoke-direct {p0, p1}, Lflyme/support/v7/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 305
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->hasFullDisplay()Z

    move-result p1

    if-eqz p1, :cond_9b

    sget p1, Lflyme/support/v7/appcompat/R$attr;->mzActionBarStyleFullScreen:I

    goto :goto_9d

    :cond_9b
    sget p1, Lflyme/support/v7/appcompat/R$attr;->actionBarStyle:I

    .line 307
    :goto_9d
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lflyme/support/v7/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {v0, v3, v4, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 310
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 311
    invoke-virtual {p0, v1}, Lflyme/support/v7/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 313
    :cond_b1
    sget v0, Lflyme/support/v7/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_bd

    int-to-float v0, v0

    .line 315
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->setElevation(F)V

    .line 317
    :cond_bd
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 320
    invoke-virtual {p0}, Lflyme/support/v7/app/WindowDecorActionBar;->isShowing()Z

    move-result p1

    iput-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mIsSplitActionBarShow:Z

    return-void

    .line 283
    :cond_c7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can only be used with a compatible window decor layout"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setHasEmbeddedTabs(Z)V
    .registers 6

    .line 371
    iput-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 373
    iget-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 374
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {p1, v0}, Lflyme/support/v7/widget/DecorToolbar;->setEmbeddedTabView(Lflyme/support/v7/widget/ScrollingTabContainerView;)V

    .line 376
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabScrollView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionBarContainer;->setTabContainer(Lflyme/support/v7/widget/ScrollingTabContainerView;)V

    goto :goto_20

    .line 378
    :cond_14
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionBarContainer;->setTabContainer(Lflyme/support/v7/widget/ScrollingTabContainerView;)V

    .line 379
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabScrollView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-interface {p1, v0}, Lflyme/support/v7/widget/DecorToolbar;->setEmbeddedTabView(Lflyme/support/v7/widget/ScrollingTabContainerView;)V

    .line 381
    :goto_20
    invoke-virtual {p0}, Lflyme/support/v7/app/WindowDecorActionBar;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2b

    move p1, v1

    goto :goto_2c

    :cond_2b
    move p1, v2

    .line 383
    :goto_2c
    invoke-virtual {p0}, Lflyme/support/v7/app/WindowDecorActionBar;->getActionBarTabContainer()Lflyme/support/v7/widget/MzActionBarTabContainer;

    move-result-object v0

    if-eqz v0, :cond_44

    if-eqz p1, :cond_3f

    .line 387
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_44

    .line 389
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_44

    :cond_3f
    const/16 v3, 0x8

    .line 392
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 395
    :cond_44
    :goto_44
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    iget-boolean v3, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_4e

    if-eqz p1, :cond_4e

    move v3, v1

    goto :goto_4f

    :cond_4e
    move v3, v2

    :goto_4f
    invoke-interface {v0, v3}, Lflyme/support/v7/widget/DecorToolbar;->setCollapsible(Z)V

    .line 396
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez p0, :cond_5b

    if-eqz p1, :cond_5b

    goto :goto_5c

    :cond_5b
    move v1, v2

    :goto_5c
    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method private showForActionMode()V
    .registers 3

    .line 868
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 869
    iput-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 870
    iget-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_e

    .line 871
    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_e
    const/4 v0, 0x0

    .line 873
    invoke-direct {p0, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_12
    return-void
.end method

.method private updateVisibility(Z)V
    .registers 5

    .line 947
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v0, v1, v2}, Lflyme/support/v7/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 951
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    .line 952
    iput-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 953
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/WindowDecorActionBar;->doShow(Z)V

    goto :goto_21

    .line 956
    :cond_17
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 957
    iput-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 958
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/WindowDecorActionBar;->doHide(Z)V

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public animateToMode(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1091
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->animateToMode(ZLflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;)V

    return-void
.end method

.method public animateToMode(ZLflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;)V
    .registers 7

    if-eqz p2, :cond_7

    .line 1888
    invoke-virtual {p2}, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;->isShowActionBar()Z

    move-result v0

    goto :goto_8

    :cond_7
    move v0, p1

    :goto_8
    if-eqz v0, :cond_e

    .line 1891
    invoke-direct {p0}, Lflyme/support/v7/app/WindowDecorActionBar;->showForActionMode()V

    goto :goto_11

    .line 1893
    :cond_e
    invoke-direct {p0}, Lflyme/support/v7/app/WindowDecorActionBar;->hideForActionMode()V

    :goto_11
    if-eqz p1, :cond_1d

    .line 1902
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-interface {v0, v1, v2, v3}, Lflyme/support/v7/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    goto :goto_26

    .line 1905
    :cond_1d
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3}, Lflyme/support/v7/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 1908
    :goto_26
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 1909
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/ActionBarContextView;->animateToMode(ZLflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;)V

    return-void
.end method

.method public collapseActionView()Z
    .registers 2

    .line 1179
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lflyme/support/v7/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1180
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {p0}, Lflyme/support/v7/widget/DecorToolbar;->collapseActionView()V

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method completeDeferredDestroyActionMode()V
    .registers 3

    .line 444
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lflyme/support/v7/view/ActionMode$Callback;

    if-eqz v0, :cond_e

    .line 445
    iget-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Lflyme/support/v7/view/ActionMode;

    invoke-interface {v0, v1}, Lflyme/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Lflyme/support/v7/view/ActionMode;)V

    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Lflyme/support/v7/view/ActionMode;

    .line 447
    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lflyme/support/v7/view/ActionMode$Callback;

    :cond_e
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .registers 5

    .line 478
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 481
    :cond_5
    iput-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 483
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    .line 485
    iget-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lflyme/support/v7/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public doHide(Z)V
    .registers 7

    .line 1039
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_7

    .line 1040
    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 1043
    :cond_7
    iget v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v0, :cond_a9

    sget-boolean v0, Lflyme/support/v7/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v0, :cond_a9

    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_15

    if-eqz p1, :cond_a9

    .line 1045
    :cond_15
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 1046
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 1047
    new-instance v0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 1048
    iget-object v3, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    if-eqz p1, :cond_40

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 1050
    fill-array-data p1, :array_b0

    .line 1051
    iget-object v4, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1052
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v3, p1

    .line 1054
    :cond_40
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 1055
    iget-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {p1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 1056
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 1057
    iget-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz p1, :cond_63

    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_63

    .line 1058
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 1060
    :cond_63
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    if-eqz p1, :cond_89

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_89

    .line 1062
    iget-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mIsSplitActionBarShow:Z

    if-eqz p1, :cond_89

    .line 1064
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 1065
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    :cond_89
    const p1, 0x3e947ae1  # 0.29f

    const/high16 v2, 0x3f000000  # 0.5f

    const v3, 0x3e23d70a  # 0.16f

    .line 1071
    invoke-static {p1, v2, v3, v1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 1072
    iget p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDuration:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 1074
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 1075
    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 1076
    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    goto :goto_af

    .line 1078
    :cond_a9
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :goto_af
    return-void

    :array_b0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .registers 8

    .line 964
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_7

    .line 965
    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 967
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 969
    iget v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-nez v0, :cond_b0

    sget-boolean v0, Lflyme/support/v7/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v0, :cond_b0

    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_1e

    if-eqz p1, :cond_b0

    .line 972
    :cond_1e
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 973
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_3d

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 975
    fill-array-data p1, :array_e4

    .line 976
    iget-object v4, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    const/4 v4, 0x1

    .line 977
    aget p1, p1, v4

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 979
    :cond_3d
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 980
    new-instance p1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 981
    iget-object v4, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 982
    iget-object v5, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 983
    invoke-virtual {p1, v4}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 984
    iget-boolean v4, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_6f

    iget-object v4, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_6f

    .line 985
    invoke-static {v4, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 986
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 991
    :cond_6f
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    if-eqz v0, :cond_90

    .line 994
    iget-boolean v4, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mIsSplitActionBarShow:Z

    if-nez v4, :cond_90

    .line 996
    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 997
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 998
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    :cond_90
    const v0, 0x3e4ccccd  # 0.2f

    const/high16 v1, 0x3f000000  # 0.5f

    const v3, 0x3d4ccccd  # 0.05f

    .line 1004
    invoke-static {v0, v1, v3, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 1005
    iget v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 1014
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 1015
    iput-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 1016
    invoke-virtual {p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    goto :goto_dc

    .line 1018
    :cond_b0
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 1019
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 1020
    iget-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz p1, :cond_c5

    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_c5

    .line 1021
    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 1025
    :cond_c5
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    if-eqz p1, :cond_d6

    .line 1027
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 1028
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 1029
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Lflyme/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 1031
    :cond_d6
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 1033
    :goto_dc
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_e3

    .line 1034
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_e3
    return-void

    :array_e4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .registers 2

    .line 856
    iput-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    return-void
.end method

.method public getActionBarTabContainer()Lflyme/support/v7/widget/MzActionBarTabContainer;
    .registers 2

    .line 1800
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v0, :cond_b

    .line 1801
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionBarContainer;->getTabContainer()Lflyme/support/v7/widget/MzActionBarTabContainer;

    move-result-object p0

    return-object p0

    .line 1803
    :cond_b
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {p0}, Lflyme/support/v7/widget/DecorToolbar;->getTabContainer()Lflyme/support/v7/widget/MzActionBarTabContainer;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayOptions()I
    .registers 1

    .line 641
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {p0}, Lflyme/support/v7/widget/DecorToolbar;->getDisplayOptions()I

    move-result p0

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 852
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getHideOffset()I
    .registers 1

    .line 926
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result p0

    return p0
.end method

.method public getNavigationMode()I
    .registers 1

    .line 637
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {p0}, Lflyme/support/v7/widget/DecorToolbar;->getNavigationMode()I

    move-result p0

    return p0
.end method

.method public getSubDecorView()Landroid/view/ViewGroup;
    .registers 1

    .line 346
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    return-object p0
.end method

.method public getTabAt(I)Lflyme/support/v7/app/ActionBar$Tab;
    .registers 2

    .line 1703
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/app/ActionBar$Tab;

    return-object p0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 5

    .line 1125
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_27

    .line 1126
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1127
    iget-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 1128
    sget v2, Lflyme/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1129
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_23

    .line 1132
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_27

    .line 1134
    :cond_23
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 1137
    :cond_27
    :goto_27
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object p0
.end method

.method public hide()V
    .registers 2

    .line 886
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 887
    iput-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    const/4 v0, 0x0

    .line 888
    invoke-direct {p0, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_b
    return-void
.end method

.method public hide(I)V
    .registers 2

    .line 1923
    iput p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDuration:I

    .line 1924
    invoke-virtual {p0}, Lflyme/support/v7/app/WindowDecorActionBar;->hide()V

    return-void
.end method

.method public hideForSystem()V
    .registers 2

    .line 903
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 904
    iput-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 905
    invoke-direct {p0, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_a
    return-void
.end method

.method public isShowing()Z
    .registers 3

    .line 1083
    invoke-virtual {p0}, Lflyme/support/v7/app/WindowDecorActionBar;->getHeight()I

    move-result v0

    .line 1085
    iget-boolean v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_12

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lflyme/support/v7/app/WindowDecorActionBar;->getHideOffset()I

    move-result p0

    if-ge p0, v0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 366
    iget-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mStackedTabsCanBeEmbedded:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lflyme/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Lflyme/support/v7/view/ActionBarPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lflyme/support/v7/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    if-nez p1, :cond_14

    :cond_10
    iget-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mforceShowTab:Z

    if-eqz p1, :cond_16

    :cond_14
    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    invoke-direct {p0, p1}, Lflyme/support/v7/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    return-void
.end method

.method public onContentScrollStarted()V
    .registers 2

    .line 1167
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_a

    .line 1168
    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    const/4 v0, 0x0

    .line 1169
    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    :cond_a
    return-void
.end method

.method public onContentScrollStopped()V
    .registers 1

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 2

    .line 452
    iput p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    return-void
.end method

.method public selectTab(Lflyme/support/v7/app/ActionBar$Tab;)V
    .registers 3

    const/4 v0, 0x0

    .line 775
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->selectTab(Lflyme/support/v7/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public selectTab(Lflyme/support/v7/app/ActionBar$Tab;Z)V
    .registers 7

    .line 780
    invoke-virtual {p0}, Lflyme/support/v7/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    if-eqz p1, :cond_e

    .line 781
    invoke-virtual {p1}, Lflyme/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_e
    iput v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    return-void

    .line 786
    :cond_11
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Lflyme/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_34

    .line 788
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    goto :goto_35

    :cond_34
    move-object v0, v2

    .line 795
    :goto_35
    iget-object v3, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {v3}, Lflyme/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_50

    :cond_42
    iget-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 796
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 799
    :goto_50
    iget-object v3, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    if-ne v3, p1, :cond_7f

    if-eqz v3, :cond_d0

    .line 803
    invoke-virtual {v3}, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Lflyme/support/v7/app/ActionBar$TabListener;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 804
    iget-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Lflyme/support/v7/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Lflyme/support/v7/app/ActionBar$TabListener;->onTabReselected(Lflyme/support/v7/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    goto :goto_73

    .line 806
    :cond_68
    iget-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->getCallbackSDK()Lflyme/support/v7/app/ActionBar$TabListenerSDK;

    move-result-object v1

    iget-object v3, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v3, v2}, Lflyme/support/v7/app/ActionBar$TabListenerSDK;->onTabReselected(Lflyme/support/v7/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :goto_73
    if-eqz p2, :cond_d0

    .line 810
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabScrollView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lflyme/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_d0

    .line 814
    :cond_7f
    iget-object v3, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabScrollView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_87

    invoke-virtual {p1}, Lflyme/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_87
    invoke-virtual {v3, v1, p2}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setTabSelected(IZ)V

    .line 815
    iget-object p2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz p2, :cond_ab

    .line 819
    invoke-virtual {p2}, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Lflyme/support/v7/app/ActionBar$TabListener;

    move-result-object p2

    if-eqz p2, :cond_a0

    .line 820
    iget-object p2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {p2}, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Lflyme/support/v7/app/ActionBar$TabListener;

    move-result-object p2

    iget-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-interface {p2, v1, v0}, Lflyme/support/v7/app/ActionBar$TabListener;->onTabUnselected(Lflyme/support/v7/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    goto :goto_ab

    .line 822
    :cond_a0
    iget-object p2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {p2}, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->getCallbackSDK()Lflyme/support/v7/app/ActionBar$TabListenerSDK;

    move-result-object p2

    iget-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-interface {p2, v1, v2}, Lflyme/support/v7/app/ActionBar$TabListenerSDK;->onTabUnselected(Lflyme/support/v7/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 826
    :cond_ab
    :goto_ab
    check-cast p1, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    iput-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    .line 827
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz p1, :cond_d0

    .line 831
    invoke-virtual {p1}, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Lflyme/support/v7/app/ActionBar$TabListener;

    move-result-object p1

    if-eqz p1, :cond_c5

    .line 832
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {p1}, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Lflyme/support/v7/app/ActionBar$TabListener;

    move-result-object p1

    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-interface {p1, p0, v0}, Lflyme/support/v7/app/ActionBar$TabListener;->onTabSelected(Lflyme/support/v7/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    goto :goto_d0

    .line 834
    :cond_c5
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {p1}, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->getCallbackSDK()Lflyme/support/v7/app/ActionBar$TabListenerSDK;

    move-result-object p1

    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSelectedTab:Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-interface {p1, p0, v2}, Lflyme/support/v7/app/ActionBar$TabListenerSDK;->onTabSelected(Lflyme/support/v7/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_d0
    :goto_d0
    if-eqz v0, :cond_db

    .line 840
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_db

    .line 841
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_db
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 611
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 2

    .line 1621
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {p0, p1}, Lflyme/support/v7/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Lflyme/support/v7/app/ActionBar$LayoutParams;)V
    .registers 3

    .line 1626
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1627
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {p0, p1}, Lflyme/support/v7/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .registers 3

    .line 1736
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_7

    .line 1737
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .registers 3

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 507
    :goto_6
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .registers 5

    .line 603
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Lflyme/support/v7/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    .line 605
    iput-boolean v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 607
    :cond_d
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {p0, p1}, Lflyme/support/v7/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayShowControlTitleBar(Z)V
    .registers 3

    const/16 v0, 0x40

    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 2049
    :goto_7
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowControlTitleBar(ZLflyme/support/v7/app/ActionBar$ControlTitleBarCallback;)V
    .registers 4

    .line 2054
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p2}, Lflyme/support/v7/widget/DecorToolbar;->setControlTitleBarCallback(Lflyme/support/v7/app/ActionBar$ControlTitleBarCallback;)V

    .line 2055
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/WindowDecorActionBar;->setDisplayShowControlTitleBar(Z)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .registers 3

    const/16 v0, 0x10

    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 525
    :goto_7
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .registers 3

    const/16 v0, 0x8

    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 512
    :goto_7
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setElevation(F)V
    .registers 3

    .line 337
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContainerView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 338
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    if-eqz p0, :cond_c

    .line 339
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_c
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_13

    .line 911
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 912
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 915
    :cond_13
    :goto_13
    iput-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 916
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .registers 2

    .line 1152
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {p0, p1}, Lflyme/support/v7/widget/DecorToolbar;->setNavigationIcon(I)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 2

    .line 530
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {p0, p1}, Lflyme/support/v7/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .registers 2

    .line 463
    iput-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez p1, :cond_b

    .line 464
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz p0, :cond_b

    .line 465
    invoke-virtual {p0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    :cond_b
    return-void
.end method

.method public setStackedTabsCanBeEmbedded(Z)V
    .registers 3

    .line 2298
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mStackedTabsCanBeEmbedded:Z

    if-eq v0, p1, :cond_20

    .line 2299
    iput-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mStackedTabsCanBeEmbedded:Z

    .line 2300
    iget-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mStackedTabsCanBeEmbedded:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lflyme/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Lflyme/support/v7/view/ActionBarPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lflyme/support/v7/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    if-nez p1, :cond_1a

    :cond_16
    iget-boolean p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mforceShowTab:Z

    if-eqz p1, :cond_1c

    :cond_1a
    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    invoke-direct {p0, p1}, Lflyme/support/v7/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    :cond_20
    return-void
.end method

.method public setTabScrolled(IFI)V
    .registers 4

    .line 1744
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mTabScrollView:Lflyme/support/v7/widget/ScrollingTabContainerView;

    if-eqz p0, :cond_8

    const/4 p3, 0x1

    .line 1745
    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/ScrollingTabContainerView;->setScrollPosition(IFZ)V

    :cond_8
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 535
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 573
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {p0, p1}, Lflyme/support/v7/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUiOptions(I)V
    .registers 2

    .line 1876
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->setUiOptions(I)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 578
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Lflyme/support/v7/widget/DecorToolbar;

    invoke-interface {p0, p1}, Lflyme/support/v7/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .registers 2

    .line 861
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 862
    iput-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 863
    invoke-direct {p0, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_a
    return-void
.end method

.method public show(I)V
    .registers 2

    .line 1917
    iput p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mDuration:I

    .line 1918
    invoke-virtual {p0}, Lflyme/support/v7/app/WindowDecorActionBar;->show()V

    return-void
.end method

.method public showForSystem()V
    .registers 2

    .line 878
    iget-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 879
    iput-boolean v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    const/4 v0, 0x1

    .line 880
    invoke-direct {p0, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_b
    return-void
.end method

.method public startActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;
    .registers 5

    .line 645
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mActionMode:Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v0, :cond_7

    .line 646
    invoke-virtual {v0}, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 649
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 650
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ActionBarContextView;->killMode()V

    .line 651
    new-instance v0, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lflyme/support/v7/app/WindowDecorActionBar;Landroid/content/Context;Lflyme/support/v7/view/ActionMode$Callback;)V

    .line 652
    invoke-virtual {v0}, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 653
    invoke-virtual {v0}, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 654
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionBarContextView;->initForMode(Lflyme/support/v7/view/ActionMode;)V

    const/4 p1, 0x1

    .line 655
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 656
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    if-eqz p1, :cond_45

    .line 658
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_45

    .line 659
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Lflyme/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 660
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_45

    .line 661
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 665
    :cond_45
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 666
    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mActionMode:Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    return-object v0

    :cond_4f
    const/4 p0, 0x0

    return-object p0
.end method

.method public startMultiChoiceActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;
    .registers 5

    .line 1753
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mActionMode:Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v0, :cond_7

    .line 1754
    invoke-virtual {v0}, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 1757
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1758
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ActionBarContextView;->killMode()V

    .line 1759
    new-instance v0, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lflyme/support/v7/app/WindowDecorActionBar;Landroid/content/Context;Lflyme/support/v7/view/ActionMode$Callback;)V

    .line 1760
    invoke-virtual {v0}, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 1761
    invoke-virtual {v0}, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 1762
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    iget-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1, v2}, Lflyme/support/v7/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 1763
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionBarContextView;->initForMultiChoiceMode(Lflyme/support/v7/view/ActionMode;)V

    const/4 p1, 0x1

    .line 1764
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/app/WindowDecorActionBar;->animateToMode(ZLflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;)V

    .line 1765
    iget-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    if-eqz v2, :cond_4c

    .line 1767
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4c

    .line 1768
    iget-object v2, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mSplitView:Lflyme/support/v7/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 1769
    iget-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Lflyme/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_4c

    .line 1770
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1774
    :cond_4c
    iget-object v1, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mContextView:Lflyme/support/v7/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1775
    invoke-virtual {v0, p1}, Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;->setIsMultiChoiceMode(Z)V

    .line 1776
    iput-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar;->mActionMode:Lflyme/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    return-object v0

    :cond_59
    const/4 p0, 0x0

    return-object p0
.end method
