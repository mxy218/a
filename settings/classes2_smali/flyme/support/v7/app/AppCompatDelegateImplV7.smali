.class Lflyme/support/v7/app/AppCompatDelegateImplV7;
.super Lflyme/support/v7/app/AppCompatDelegateImplBase;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Lflyme/support/v7/view/menu/MenuBuilder$Callback;
.implements Landroidx/core/view/LayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;,
        Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;,
        Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;,
        Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;,
        Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

.field mActionMode:Lflyme/support/v7/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

.field private mBackTopClickListener:Landroid/view/View$OnClickListener;

.field private final mBottomMenuCallback:Lflyme/support/v7/view/menu/MenuBuilder$Callback;

.field private mClosingActionMenu:Z

.field private mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mLongPressBackDown:Z

.field private mPanelMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

.field private mPanels:[Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

.field private mPreparedPanel:Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleView:Landroid/widget/TextView;

.field private mTransStatusBarInFlyme3:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lflyme/support/v7/app/AppCompatCallback;)V
    .registers 4

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/app/AppCompatDelegateImplBase;-><init>(Landroid/content/Context;Landroid/view/Window;Lflyme/support/v7/app/AppCompatCallback;)V

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 131
    new-instance p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$1;

    invoke-direct {p1, p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7$1;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 156
    new-instance p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$2;

    invoke-direct {p1, p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7$2;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mBottomMenuCallback:Lflyme/support/v7/view/menu/MenuBuilder$Callback;

    .line 2324
    new-instance p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$8;

    invoke-direct {p1, p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7$8;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mBackTopClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/app/AppCompatDelegateImplV7;)I
    .registers 1

    .line 99
    iget p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    return p0
.end method

.method static synthetic access$002(Lflyme/support/v7/app/AppCompatDelegateImplV7;I)I
    .registers 2

    .line 99
    iput p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic access$100(Lflyme/support/v7/app/AppCompatDelegateImplV7;I)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->doInvalidatePanelMenu(I)V

    return-void
.end method

.method static synthetic access$1000(Lflyme/support/v7/app/AppCompatDelegateImplV7;ILflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .registers 4

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->callOnPanelClosed(ILflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$1100(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .registers 3

    .line 99
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->closePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic access$1200(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->checkCloseActionMenu(Lflyme/support/v7/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic access$1500(Lflyme/support/v7/app/AppCompatDelegateImplV7;I)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->closePanel(I)V

    return-void
.end method

.method static synthetic access$202(Lflyme/support/v7/app/AppCompatDelegateImplV7;Z)Z
    .registers 2

    .line 99
    iput-boolean p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic access$300(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    .line 99
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->onBottomMenuItemSelected(Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lflyme/support/v7/app/AppCompatDelegateImplV7;I)I
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->updateStatusGuard(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V
    .registers 1

    .line 99
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->dismissPopups()V

    return-void
.end method

.method static synthetic access$600(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V
    .registers 1

    .line 99
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->endOnGoingFadeAnimation()V

    return-void
.end method

.method static synthetic access$900(Lflyme/support/v7/app/AppCompatDelegateImplV7;Landroid/view/Menu;)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->findMenuPanel(Landroid/view/Menu;)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object p0

    return-object p0
.end method

.method private applyFixedSizeWindow()V
    .registers 6

    .line 565
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 571
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 572
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 573
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 574
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 572
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 576
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    sget-object v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 577
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 578
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 580
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 581
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 582
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v2

    .line 581
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 584
    :cond_4f
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 585
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 586
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v2

    .line 585
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 588
    :cond_60
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 589
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 590
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v2

    .line 589
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 592
    :cond_71
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 593
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 594
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v2

    .line 593
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 596
    :cond_82
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 598
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method private callOnPanelClosed(ILflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .registers 6

    if-nez p3, :cond_11

    if-nez p2, :cond_d

    if-ltz p1, :cond_d

    .line 1574
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPanels:[Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    array-length v1, v0

    if-ge p1, v1, :cond_d

    .line 1575
    aget-object p2, v0, p1

    :cond_d
    if-eqz p2, :cond_11

    .line 1581
    iget-object p3, p2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    :cond_11
    if-eqz p2, :cond_18

    .line 1586
    iget-boolean p2, p2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-nez p2, :cond_18

    return-void

    .line 1589
    :cond_18
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_23

    .line 1593
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_23
    return-void
.end method

.method private checkCloseActionMenu(Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 4

    .line 1454
    iget-boolean v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mClosingActionMenu:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 1458
    iput-boolean v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mClosingActionMenu:Z

    .line 1459
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Lflyme/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1460
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1461
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1e

    const/16 v1, 0x6c

    .line 1462
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1e
    const/4 p1, 0x0

    .line 1464
    iput-boolean p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mClosingActionMenu:Z

    return-void
.end method

.method private closePanel(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1468
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->closePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    return-void
.end method

.method private closePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .registers 6

    if-eqz p2, :cond_16

    .line 1472
    iget v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_16

    .line 1473
    invoke-interface {v0}, Lflyme/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1474
    iget-object p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->checkCloseActionMenu(Lflyme/support/v7/view/menu/MenuBuilder;)V

    return-void

    .line 1478
    :cond_16
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 1479
    iget-boolean v2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_3d

    iget-object v2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3d

    .line 1480
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 1481
    iget-object v2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_36
    if-eqz p2, :cond_3d

    .line 1485
    iget p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    invoke-direct {p0, p2, p1, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->callOnPanelClosed(ILflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    :cond_3d
    const/4 p2, 0x0

    .line 1489
    iput-boolean p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 1490
    iput-boolean p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    .line 1491
    iput-boolean p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    .line 1494
    iput-object v1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 p2, 0x1

    .line 1498
    iput-boolean p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    .line 1500
    iget-object p2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-ne p2, p1, :cond_4f

    .line 1501
    iput-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    :cond_4f
    return-void
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .registers 8

    .line 382
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    sget-object v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 384
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1b3

    .line 390
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    .line 391
    invoke-virtual {p0, v3}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->requestWindowFeature(I)Z

    goto :goto_2b

    .line 392
    :cond_1e
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v1, 0x6c

    .line 394
    invoke-virtual {p0, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->requestWindowFeature(I)Z

    .line 396
    :cond_2b
    :goto_2b
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v4, 0x6d

    if-eqz v1, :cond_38

    .line 397
    invoke-virtual {p0, v4}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->requestWindowFeature(I)Z

    .line 399
    :cond_38
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_45

    const/16 v1, 0xa

    .line 400
    invoke-virtual {p0, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->requestWindowFeature(I)Z

    .line 402
    :cond_45
    sget v1, Lflyme/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mIsFloating:Z

    .line 403
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 406
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 408
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 412
    iget-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindowNoTitle:Z

    const/4 v5, 0x0

    if-nez v1, :cond_e3

    .line 413
    iget-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mIsFloating:Z

    if-eqz v1, :cond_72

    .line 415
    sget v1, Lflyme/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 419
    iput-boolean v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOverlayActionBar:Z

    iput-boolean v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mHasActionBar:Z

    goto/16 :goto_112

    .line 420
    :cond_72
    iget-boolean v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mHasActionBar:Z

    if-eqz v0, :cond_e1

    .line 426
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 427
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v6, Lflyme/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v1, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 430
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_92

    .line 431
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    iget-object v3, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_94

    .line 433
    :cond_92
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 437
    :goto_94
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 438
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->hasFullDisplay()Z

    move-result v1

    if-eqz v1, :cond_a1

    sget v1, Lflyme/support/v7/appcompat/R$layout;->mz_abc_screen_toolbar_full_screen:I

    goto :goto_a3

    :cond_a1
    sget v1, Lflyme/support/v7/appcompat/R$layout;->mz_abc_screen_toolbar:I

    :goto_a3
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 440
    sget v1, Lflyme/support/v7/appcompat/R$id;->decor_content_parent:I

    .line 441
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/DecorContentParent;

    iput-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    .line 442
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v1, v3}, Lflyme/support/v7/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 447
    iget-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOverlayActionBar:Z

    if-eqz v1, :cond_c5

    .line 448
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    invoke-interface {v1, v4}, Lflyme/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 450
    :cond_c5
    iget-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mFeatureProgress:Z

    if-eqz v1, :cond_cf

    .line 451
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lflyme/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 453
    :cond_cf
    iget-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mFeatureIndeterminateProgress:Z

    if-eqz v1, :cond_d9

    .line 454
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Lflyme/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 457
    :cond_d9
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    iget-boolean v3, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mTransStatusBarInFlyme3:Z

    invoke-interface {v1, v3}, Lflyme/support/v7/widget/DecorContentParent;->setTransStatusBarInFlyme3(Z)V

    goto :goto_112

    :cond_e1
    move-object v0, v5

    goto :goto_112

    .line 461
    :cond_e3
    iget-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOverlayActionMode:Z

    if-eqz v1, :cond_f0

    .line 462
    sget v1, Lflyme/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_f8

    .line 465
    :cond_f0
    sget v1, Lflyme/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 468
    :goto_f8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_107

    .line 471
    new-instance v1, Lflyme/support/v7/app/AppCompatDelegateImplV7$3;

    invoke-direct {v1, p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7$3;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    goto :goto_112

    .line 493
    :cond_107
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/FitWindowsViewGroup;

    new-instance v3, Lflyme/support/v7/app/AppCompatDelegateImplV7$4;

    invoke-direct {v3, p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7$4;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    :goto_112
    if-eqz v0, :cond_16d

    .line 514
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-nez v1, :cond_122

    .line 515
    sget v1, Lflyme/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mTitleView:Landroid/widget/TextView;

    .line 519
    :cond_122
    invoke-static {v0}, Lflyme/support/v7/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 521
    sget v1, Lflyme/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 524
    iget-object v3, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_15f

    .line 528
    :goto_13a
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_14b

    .line 529
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 530
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 531
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_13a

    :cond_14b
    const/4 v2, -0x1

    .line 536
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 537
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 541
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_15f

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_15f

    .line 542
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 547
    :cond_15f
    iget-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 549
    new-instance v2, Lflyme/support/v7/app/AppCompatDelegateImplV7$5;

    invoke-direct {v2, p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7$5;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;)V

    return-object v0

    .line 504
    :cond_16d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mHasActionBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOverlayActionBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mIsFloating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOverlayActionMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindowNoTitle:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_1b3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 386
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private dismissPopups()V
    .registers 3

    .line 1789
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_7

    .line 1790
    invoke-interface {v0}, Lflyme/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1793
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    .line 1794
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1795
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1797
    :try_start_1e
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    const/4 v0, 0x0

    .line 1803
    iput-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1805
    :cond_26
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->endOnGoingFadeAnimation()V

    const/4 v0, 0x0

    .line 1807
    invoke-direct {p0, v0, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 1808
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-eqz p0, :cond_37

    .line 1809
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->close()V

    :cond_37
    return-void
.end method

.method private doInvalidatePanelMenu(I)V
    .registers 6

    const/4 v0, 0x1

    .line 1661
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 1663
    iget-object v2, v1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_25

    .line 1664
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1665
    iget-object v3, v1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lflyme/support/v7/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1666
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 1667
    iput-object v2, v1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1670
    :cond_1b
    iget-object v2, v1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lflyme/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1671
    iget-object v2, v1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lflyme/support/v7/view/menu/MenuBuilder;->clear()V

    .line 1673
    :cond_25
    iput-boolean v0, v1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    .line 1674
    iput-boolean v0, v1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2f

    if-nez p1, :cond_40

    .line 1677
    :cond_2f
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-eqz p1, :cond_40

    const/4 p1, 0x0

    .line 1679
    invoke-direct {p0, p1, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 1681
    iput-boolean p1, v0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    const/4 p1, 0x0

    .line 1682
    invoke-direct {p0, v0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_40
    return-void
.end method

.method private endOnGoingFadeAnimation()V
    .registers 1

    .line 902
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz p0, :cond_7

    .line 903
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_7
    return-void
.end method

.method private ensureSubDecor()V
    .registers 3

    .line 348
    iget-boolean v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    if-nez v0, :cond_47

    .line 349
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    .line 352
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 353
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 354
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 357
    :cond_17
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->applyFixedSizeWindow()V

    .line 359
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    const/4 v0, 0x0

    .line 368
    invoke-direct {p0, v0, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_38

    if-eqz v0, :cond_33

    iget-object v0, v0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_38

    :cond_33
    const/16 v0, 0x6c

    .line 370
    invoke-direct {p0, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->invalidatePanelMenu(I)V

    .line 374
    :cond_38
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 375
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    iget p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mMzUiOptions:I

    invoke-virtual {v0, p0}, Lflyme/support/v7/app/ActionBar;->setUiOptions(I)V

    :cond_47
    return-void
.end method

.method private findMenuPanel(Landroid/view/Menu;)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .registers 6

    .line 1598
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPanels:[Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1599
    array-length v1, p0

    goto :goto_8

    :cond_7
    move v1, v0

    :goto_8
    if-ge v0, v1, :cond_16

    .line 1601
    aget-object v2, p0, v0

    if-eqz v2, :cond_13

    .line 1602
    iget-object v3, v2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-ne v3, p1, :cond_13

    return-object v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .registers 6

    .line 1611
    iget-object p2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPanels:[Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz p2, :cond_7

    array-length v0, p2

    if-gt v0, p1, :cond_15

    :cond_7
    add-int/lit8 v0, p1, 0x1

    .line 1612
    new-array v0, v0, [Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz p2, :cond_12

    .line 1614
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1616
    :cond_12
    iput-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPanels:[Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object p2, v0

    .line 1619
    :cond_15
    aget-object p0, p2, p1

    if-nez p0, :cond_20

    .line 1621
    new-instance p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;-><init>(I)V

    aput-object p0, p2, p1

    :cond_20
    return-object p0
.end method

.method private initializeBottomPanelMenu(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .registers 4

    .line 1316
    new-instance v0, Lflyme/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lflyme/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1317
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mBottomMenuCallback:Lflyme/support/v7/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->setCallback(Lflyme/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1318
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->setBottomMenu(Lflyme/support/v7/view/menu/MenuBuilder;)V

    const/4 p0, 0x1

    return p0
.end method

.method private initializePanelContent(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .registers 6

    .line 1323
    iget-object v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1324
    iput-object v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    return v1

    .line 1328
    :cond_8
    iget-object v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 1332
    :cond_e
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPanelMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    if-nez v0, :cond_1a

    .line 1333
    new-instance v0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/app/AppCompatDelegateImplV7$1;)V

    iput-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPanelMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    .line 1336
    :cond_1a
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPanelMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;

    invoke-virtual {p1, p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->getListMenuView(Lflyme/support/v7/view/menu/MenuPresenter$Callback;)Lflyme/support/v7/view/menu/MenuView;

    move-result-object p0

    .line 1338
    check-cast p0, Landroid/view/View;

    iput-object p0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1340
    iget-object p0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz p0, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    return v1
.end method

.method private initializePanelDecor(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .registers 4

    .line 1222
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1223
    new-instance v0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;

    iget-object v1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;Landroid/content/Context;)V

    iput-object v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    const/16 p0, 0x51

    .line 1224
    iput p0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->gravity:I

    const/4 p0, 0x1

    return p0
.end method

.method private initializePanelMenu(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .registers 8

    .line 1273
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 1276
    iget v1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_63

    :cond_b
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-eqz v1, :cond_63

    .line 1278
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1279
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1280
    sget v4, Lflyme/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    .line 1283
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_38

    .line 1284
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1285
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1286
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1287
    sget v5, Lflyme/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_3d

    .line 1290
    :cond_38
    sget v5, Lflyme/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1294
    :goto_3d
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_53

    if-nez v4, :cond_4e

    .line 1296
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1297
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1299
    :cond_4e
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_53
    if-eqz v4, :cond_63

    .line 1303
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1304
    invoke-virtual {v1}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    .line 1308
    :cond_63
    new-instance v1, Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1309
    invoke-virtual {v1, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->setCallback(Lflyme/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1310
    invoke-virtual {p1, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->setMenu(Lflyme/support/v7/view/menu/MenuBuilder;)V

    return v2
.end method

.method private invalidatePanelMenu(I)V
    .registers 4

    .line 1652
    iget v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    .line 1654
    iget-boolean p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z

    if-nez p1, :cond_19

    .line 1655
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1656
    iput-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z

    :cond_19
    return-void
.end method

.method private onBottomMenuItemSelected(Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    .line 726
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_17

    .line 727
    instance-of p1, p2, Lflyme/support/v7/view/menu/FMenuItem;

    if-eqz p1, :cond_17

    .line 728
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

    check-cast p2, Lflyme/support/v7/view/menu/FMenuItem;

    invoke-interface {p0, p2}, Lflyme/support/v7/app/AppCompatCallback;->onBottomItemSelected(Lflyme/support/v7/view/menu/FMenuItem;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1506
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 1507
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object p1

    .line 1508
    iget-boolean v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_14

    .line 1509
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1517
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    .line 1522
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v2

    if-nez p1, :cond_45

    .line 1523
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-eqz p1, :cond_45

    .line 1524
    invoke-interface {p1}, Lflyme/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 1525
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 1526
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    invoke-interface {p1}, Lflyme/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 1527
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_65

    invoke-direct {p0, v2, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 1528
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    invoke-interface {p1}, Lflyme/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    move-result p1

    goto :goto_6c

    .line 1531
    :cond_3e
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    invoke-interface {p1}, Lflyme/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result p1

    goto :goto_6c

    .line 1534
    :cond_45
    iget-boolean p1, v2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-nez p1, :cond_67

    iget-boolean p1, v2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    if-eqz p1, :cond_4e

    goto :goto_67

    .line 1540
    :cond_4e
    iget-boolean p1, v2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    if-eqz p1, :cond_65

    .line 1542
    iget-boolean p1, v2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    if-eqz p1, :cond_5d

    .line 1545
    iput-boolean v1, v2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 1546
    invoke-direct {p0, v2, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_5e

    :cond_5d
    move p1, v0

    :goto_5e
    if-eqz p1, :cond_65

    .line 1551
    invoke-direct {p0, v2, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->openPanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    move p1, v0

    goto :goto_6c

    :cond_65
    move p1, v1

    goto :goto_6c

    .line 1537
    :cond_67
    :goto_67
    iget-boolean p1, v2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    .line 1539
    invoke-direct {p0, v2, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->closePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    :goto_6c
    if-eqz p1, :cond_85

    .line 1558
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_7e

    .line 1561
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_85

    :cond_7e
    const-string p0, "AppCompatDelegate"

    const-string p2, "Couldn\'t get audio manager"

    .line 1563
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    :goto_85
    return p1
.end method

.method private openPanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 16

    .line 1123
    iget-boolean v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_103

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_103

    .line 1129
    :cond_c
    iget v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_38

    .line 1130
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 1131
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1132
    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_25

    move v3, v2

    goto :goto_26

    :cond_25
    move v3, v1

    .line 1134
    :goto_26
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_32

    move v0, v2

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    if-eqz v3, :cond_38

    if-eqz v0, :cond_38

    return-void

    .line 1142
    :cond_38
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1143
    iget v3, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    iget-object v4, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1145
    invoke-direct {p0, p1, v2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->closePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    return-void

    .line 1149
    :cond_4c
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_59

    return-void

    .line 1155
    :cond_59
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_60

    return-void

    .line 1160
    :cond_60
    iget-object p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_7b

    iget-boolean p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    if-eqz p2, :cond_6b

    goto :goto_7b

    .line 1196
    :cond_6b
    iget-object p0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz p0, :cond_e1

    .line 1199
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_e1

    .line 1200
    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p0, v3, :cond_e1

    move v6, v3

    goto :goto_e2

    .line 1161
    :cond_7b
    :goto_7b
    iget-object p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez p2, :cond_8a

    .line 1163
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->initializePanelDecor(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result p2

    if-eqz p2, :cond_89

    iget-object p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez p2, :cond_99

    :cond_89
    return-void

    .line 1165
    :cond_8a
    iget-boolean v3, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    if-eqz v3, :cond_99

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_99

    .line 1167
    iget-object p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1171
    :cond_99
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->initializePanelContent(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result p0

    if-eqz p0, :cond_103

    invoke-virtual {p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->hasPanelItems()Z

    move-result p0

    if-nez p0, :cond_a6

    goto :goto_103

    .line 1175
    :cond_a6
    iget-object p0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_b3

    .line 1177
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1180
    :cond_b3
    iget p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->background:I

    .line 1181
    iget-object v3, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1183
    iget-object p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_cd

    .line 1184
    instance-of v3, p2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_cd

    .line 1185
    check-cast p2, Landroid/view/ViewGroup;

    iget-object v3, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1187
    :cond_cd
    iget-object p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    iget-object v3, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {p2, v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    iget-object p0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-nez p0, :cond_e1

    .line 1194
    iget-object p0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_e1
    move v6, v4

    .line 1205
    :goto_e2
    iput-boolean v1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    .line 1207
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->x:I

    iget v9, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->y:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1214
    iget p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->gravity:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1215
    iget p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->windowAnimations:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1217
    iget-object p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, p2, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1218
    iput-boolean v2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    :cond_103
    :goto_103
    return-void
.end method

.method private performPanelShortcut(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 7

    .line 1628
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1636
    :cond_8
    iget-boolean v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    if-nez v0, :cond_12

    invoke-direct {p0, p1, p3}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    iget-object v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_1a

    .line 1638
    invoke-virtual {v0, p2, p3, p4}, Lflyme/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_1a
    if-eqz v1, :cond_28

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_28

    .line 1643
    iget-object p3, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-nez p3, :cond_28

    .line 1644
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->closePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    :cond_28
    return v1
.end method

.method private prepareBottomPanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)V
    .registers 6

    .line 2199
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->initializeBottomPanelMenu(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2202
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 2203
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    if-nez v0, :cond_17

    .line 2204
    new-instance v0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-direct {v0, p0, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/app/AppCompatDelegateImplV7$1;)V

    iput-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    .line 2206
    :cond_17
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    invoke-static {p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->access$1600(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    iget-object v3, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {v0, v2, v3}, Lflyme/support/v7/widget/DecorContentParent;->setBottomMenu(Landroid/view/Menu;Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 2211
    :cond_22
    invoke-static {p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->access$1600(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 2212
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

    invoke-static {p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->access$1600(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    invoke-interface {v0, v2}, Lflyme/support/v7/app/AppCompatCallback;->onCreateBottomMenu(Lflyme/support/v7/view/menu/FMenu;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 2214
    invoke-virtual {p1, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->setBottomMenu(Lflyme/support/v7/view/menu/MenuBuilder;)V

    .line 2216
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-eqz p1, :cond_41

    .line 2218
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {p1, v1, p0}, Lflyme/support/v7/widget/DecorContentParent;->setBottomMenu(Landroid/view/Menu;Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V

    :cond_41
    return-void

    .line 2223
    :cond_42
    invoke-static {p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->access$1600(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-void
.end method

.method private preparePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 11

    .line 1344
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1349
    :cond_8
    iget-boolean v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    return v2

    .line 1353
    :cond_e
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v0, :cond_17

    if-eq v0, p1, :cond_17

    .line 1355
    invoke-direct {p0, v0, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->closePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1358
    :cond_17
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1361
    iget v3, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 1364
    :cond_25
    iget v3, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_30

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_2e

    goto :goto_30

    :cond_2e
    move v3, v1

    goto :goto_31

    :cond_30
    :goto_30
    move v3, v2

    :goto_31
    if-eqz v3, :cond_3a

    .line 1367
    iget-object v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_3a

    .line 1370
    invoke-interface {v4}, Lflyme/support/v7/widget/DecorContentParent;->setMenuPrepared()V

    .line 1373
    :cond_3a
    iget-object v4, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v4, :cond_ef

    if-eqz v3, :cond_43

    .line 1374
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->peekSupportActionBar()Lflyme/support/v7/app/ActionBar;

    .line 1377
    :cond_43
    iget-object v4, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v5, 0x0

    if-eqz v4, :cond_4c

    iget-boolean v4, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_95

    .line 1378
    :cond_4c
    iget-object v4, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-nez v4, :cond_5b

    .line 1379
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->initializePanelMenu(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_5a

    iget-object v4, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-nez v4, :cond_5b

    :cond_5a
    return v1

    :cond_5b
    if-eqz v3, :cond_75

    .line 1384
    iget-object v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_75

    .line 1385
    iget-object v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    if-nez v4, :cond_6c

    .line 1386
    new-instance v4, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-direct {v4, p0, v5}, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/app/AppCompatDelegateImplV7$1;)V

    iput-object v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    .line 1388
    :cond_6c
    iget-object v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    iget-object v6, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    iget-object v7, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {v4, v6, v7}, Lflyme/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1393
    :cond_75
    iget-object v4, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lflyme/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1394
    iget v4, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_93

    .line 1396
    invoke-virtual {p1, v5}, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->setMenu(Lflyme/support/v7/view/menu/MenuBuilder;)V

    if-eqz v3, :cond_92

    .line 1398
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-eqz p1, :cond_92

    .line 1400
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {p1, v5, p0}, Lflyme/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V

    :cond_92
    return v1

    .line 1406
    :cond_93
    iput-boolean v1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    .line 1409
    :cond_95
    iget-object v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

    if-eqz v4, :cond_9e

    .line 1410
    iget-object v6, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-interface {v4, v6}, Lflyme/support/v7/app/AppCompatCallback;->onOptionsMenuCreated(Lflyme/support/v7/view/menu/FMenu;)V

    .line 1415
    :cond_9e
    iget-object v4, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lflyme/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1419
    iget-object v4, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v4, :cond_ae

    .line 1420
    iget-object v6, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6, v4}, Lflyme/support/v7/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1421
    iput-object v5, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1425
    :cond_ae
    iget-object v4, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_c9

    if-eqz v3, :cond_c3

    .line 1426
    iget-object p2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-eqz p2, :cond_c3

    .line 1429
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMenuPresenterCallback:Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;

    invoke-interface {p2, v5, p0}, Lflyme/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1431
    :cond_c3
    iget-object p0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v1

    :cond_c9
    if-eqz p2, :cond_d0

    .line 1437
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_d1

    :cond_d0
    const/4 p2, -0x1

    .line 1436
    :goto_d1
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 1438
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_dd

    move p2, v2

    goto :goto_de

    :cond_dd
    move p2, v1

    :goto_de
    iput-boolean p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->qwertyMode:Z

    .line 1439
    iget-object p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    iget-boolean v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {p2, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1440
    iget-object p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p2}, Lflyme/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1442
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->prepareBottomPanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)V

    .line 1446
    :cond_ef
    iput-boolean v2, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    .line 1447
    iput-boolean v1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    .line 1448
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    return v2
.end method

.method private reopenMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V
    .registers 7

    .line 1229
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_86

    invoke-interface {p1}, Lflyme/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_86

    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 1230
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    .line 1231
    invoke-interface {p1}, Lflyme/support/v7/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 1233
    :cond_20
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object p1

    .line 1235
    iget-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Lflyme/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_46

    if-nez p2, :cond_31

    goto :goto_46

    .line 1255
    :cond_31
    iget-object p2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    invoke-interface {p2}, Lflyme/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1256
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_85

    .line 1257
    invoke-direct {p0, v1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object p0

    .line 1258
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-interface {p1, v3, p0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_85

    :cond_46
    :goto_46
    if-eqz p1, :cond_85

    .line 1236
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_85

    .line 1238
    iget-boolean p2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z

    if-eqz p2, :cond_67

    iget p2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_67

    .line 1240
    iget-object p2, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1241
    iget-object p2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1244
    :cond_67
    invoke-direct {p0, v1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object p2

    .line 1248
    iget-object v0, p2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_85

    iget-boolean v2, p2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_85

    iget-object v2, p2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 1249
    invoke-interface {p1, v1, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1250
    iget-object p2, p2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-interface {p1, v3, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1251
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    invoke-interface {p0}, Lflyme/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    :cond_85
    :goto_85
    return-void

    .line 1264
    :cond_86
    invoke-direct {p0, v1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object p1

    .line 1266
    iput-boolean v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    .line 1267
    invoke-direct {p0, p1, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->closePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    const/4 p2, 0x0

    .line 1269
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->openPanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    return-void
.end method

.method private sanitizeWindowFeatureId(I)I
    .registers 3

    const-string p0, "AppCompatDelegate"

    const/16 v0, 0x8

    if-ne p1, v0, :cond_e

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1772
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x6c

    return p0

    :cond_e
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1a

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 1776
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x6d

    return p0

    :cond_1a
    return p1
.end method

.method private setTransStatusBar(Landroid/view/WindowManager$LayoutParams;Z)Z
    .registers 5

    .line 2238
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "meizuFlags"

    .line 2239
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 2240
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2241
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    if-eqz p2, :cond_17

    or-int/lit8 p2, v1, 0x40

    goto :goto_19

    :cond_17
    and-int/lit8 p2, v1, -0x41

    .line 2247
    :goto_19
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return v0

    :catch_1d
    move-exception p0

    .line 2250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t set the status bar to be transparent, Caused by:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppCompatDelegate"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .registers 2

    .line 1764
    iget-boolean p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    if-nez p0, :cond_5

    return-void

    .line 1765
    :cond_5
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Window feature must be requested before adding content"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateStatusGuard(I)I
    .registers 9

    .line 1696
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_a8

    .line 1697
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_a8

    .line 1698
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    .line 1699
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1702
    iget-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_95

    .line 1703
    iget-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mTempRect1:Landroid/graphics/Rect;

    if-nez v2, :cond_30

    .line 1704
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mTempRect1:Landroid/graphics/Rect;

    .line 1705
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mTempRect2:Landroid/graphics/Rect;

    .line 1707
    :cond_30
    iget-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mTempRect1:Landroid/graphics/Rect;

    .line 1708
    iget-object v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mTempRect2:Landroid/graphics/Rect;

    .line 1709
    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1711
    iget-object v5, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, Lflyme/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 1712
    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_42

    move v2, p1

    goto :goto_43

    :cond_42
    move v2, v1

    .line 1713
    :goto_43
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_86

    .line 1715
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1717
    iget-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    if-nez v2, :cond_75

    .line 1718
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    .line 1719
    iget-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    iget-object v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lflyme/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 1720
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1719
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1721
    iget-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_84

    .line 1725
    :cond_75
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1726
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_84

    .line 1727
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1728
    iget-object v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_84
    :goto_84
    move v2, v3

    goto :goto_87

    :cond_86
    move v2, v1

    .line 1735
    :goto_87
    iget-object v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    if-eqz v4, :cond_8c

    goto :goto_8d

    :cond_8c
    move v3, v1

    .line 1741
    :goto_8d
    iget-boolean v4, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOverlayActionMode:Z

    if-nez v4, :cond_a0

    if-eqz v3, :cond_a0

    move p1, v1

    goto :goto_a0

    .line 1746
    :cond_95
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_9e

    .line 1748
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v2, v3

    move v3, v1

    goto :goto_a0

    :cond_9e
    move v2, v1

    move v3, v2

    :cond_a0
    :goto_a0
    if-eqz v2, :cond_a9

    .line 1752
    iget-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a9

    :cond_a8
    move v3, v1

    .line 1756
    :cond_a9
    :goto_a9
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mStatusGuard:Landroid/view/View;

    if-eqz p0, :cond_b5

    if-eqz v3, :cond_b0

    goto :goto_b2

    :cond_b0
    const/16 v1, 0x8

    .line 1757
    :goto_b2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b5
    return p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 332
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 333
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 334
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 968
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_12

    .line 970
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 975
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 976
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-eqz v1, :cond_25

    .line 979
    invoke-virtual {p0, v0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_29

    :cond_25
    invoke-virtual {p0, v0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    :goto_29
    return p0
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 266
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 267
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public initWindowDecorActionBar()V
    .registers 4

    .line 209
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 211
    iget-boolean v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mHasActionBar:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Lflyme/support/v7/app/ActionBar;

    if-eqz v0, :cond_c

    goto :goto_34

    .line 215
    :cond_c
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1e

    .line 216
    new-instance v1, Lflyme/support/v7/app/WindowDecorActionBar;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOverlayActionBar:Z

    invoke-direct {v1, v0, v2}, Lflyme/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Lflyme/support/v7/app/ActionBar;

    goto :goto_2b

    .line 218
    :cond_1e
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2b

    .line 219
    new-instance v1, Lflyme/support/v7/app/WindowDecorActionBar;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lflyme/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Lflyme/support/v7/app/ActionBar;

    .line 221
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Lflyme/support/v7/app/ActionBar;

    if-eqz v0, :cond_34

    .line 222
    iget-boolean p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, p0}, Lflyme/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    :cond_34
    :goto_34
    return-void
.end method

.method public installViewFactory()V
    .registers 1

    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .line 764
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 765
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 767
    invoke-direct {p0, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->invalidatePanelMenu(I)V

    return-void
.end method

.method onBackPressed()Z
    .registers 4

    .line 909
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 914
    invoke-virtual {v0}, Lflyme/support/v7/view/ActionMode;->getBackPressListener()Lflyme/support/v7/view/ActionMode$BackPressedListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 915
    invoke-interface {v0}, Lflyme/support/v7/view/ActionMode$BackPressedListener;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 916
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lflyme/support/v7/view/ActionMode;->finish()V

    return v1

    :cond_18
    return v2

    .line 925
    :cond_19
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 926
    invoke-virtual {p0}, Lflyme/support/v7/app/ActionBar;->collapseActionView()Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 274
    iget-boolean v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mHasActionBar:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecorInstalled:Z

    if-eqz v0, :cond_11

    .line 277
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 279
    invoke-virtual {v0, p1}, Lflyme/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 284
    :cond_11
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->applyDayNight()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 176
    invoke-static {}, Lflyme/support/v7/widget/ViewUtils;->init()V

    .line 178
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 179
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 181
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->peekSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_1b

    .line 183
    iput-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mEnableDefaultActionBarUp:Z

    goto :goto_1e

    .line 185
    :cond_1b
    invoke-virtual {p1, v1}, Lflyme/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 191
    :cond_1e
    :goto_1e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_48

    const/16 v0, 0x13

    if-ge p1, v0, :cond_48

    .line 192
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->setTransStatusBar(Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 194
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 196
    :cond_46
    iput-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mTransStatusBarInFlyme3:Z

    :cond_48
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 340
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->onDestroy()V

    .line 342
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Lflyme/support/v7/app/ActionBar;

    if-eqz p0, :cond_a

    .line 343
    invoke-virtual {p0}, Lflyme/support/v7/app/ActionBar;->onDestroy()V

    :cond_a
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_e

    const/16 v0, 0x52

    if-eq p1, v0, :cond_a

    goto :goto_1a

    .line 1012
    :cond_a
    invoke-direct {p0, v2, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    return v1

    .line 1020
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    iput-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mLongPressBackDown:Z

    .line 1026
    :goto_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_23

    .line 1029
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    :cond_23
    return v2
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 934
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 935
    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v1

    .line 941
    :cond_e
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz p1, :cond_23

    .line 942
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->performPanelShortcut(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 945
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz p0, :cond_22

    .line 946
    iput-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isHandled:Z

    :cond_22
    return v1

    .line 956
    :cond_23
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mPreparedPanel:Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    const/4 v0, 0x0

    if-nez p1, :cond_3a

    .line 957
    invoke-direct {p0, v0, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object p1

    .line 958
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->preparePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 959
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, p1, v2, p2, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->performPanelShortcut(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p0

    .line 960
    iput-boolean v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isPrepared:Z

    return p0

    :cond_3a
    return v0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_e

    const/16 v0, 0x52

    if-eq p1, v0, :cond_a

    goto :goto_29

    .line 985
    :cond_a
    invoke-direct {p0, v2, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    return v1

    .line 988
    :cond_e
    iget-boolean p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mLongPressBackDown:Z

    .line 989
    iput-boolean v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mLongPressBackDown:Z

    .line 991
    invoke-direct {p0, v2, v2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 992
    iget-boolean v0, p2, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-eqz v0, :cond_22

    if-nez p1, :cond_21

    .line 997
    invoke-direct {p0, p2, v1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->closePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    :cond_21
    return v1

    .line 1001
    :cond_22
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_29

    return v1

    :cond_29
    :goto_29
    return v2
.end method

.method public onMenuItemSelected(Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    .line 705
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 706
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 707
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuBuilder;->getRootMenu()Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object p1

    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->findMenuPanel(Landroid/view/Menu;)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 709
    iget v1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 710
    instance-of v1, p2, Lflyme/support/v7/view/menu/FMenuItem;

    if-eqz v1, :cond_2c

    .line 711
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

    iget p1, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    check-cast p2, Lflyme/support/v7/view/menu/FMenuItem;

    invoke-interface {p0, p1, p2}, Lflyme/support/v7/app/AppCompatCallback;->onMenuItemSelected(ILflyme/support/v7/view/menu/FMenuItem;)Z

    move-result v0

    :cond_2c
    return v0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuModeChange(Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    const/4 v0, 0x1

    .line 721
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->reopenMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    const/16 p2, 0x6c

    if-ne p1, p2, :cond_f

    .line 694
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_e

    .line 696
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    :cond_e
    return p1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    const/4 p2, 0x0

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_f

    .line 677
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 679
    invoke-virtual {p0, p2}, Lflyme/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_1d

    :cond_f
    if-nez p1, :cond_1d

    const/4 v0, 0x1

    .line 684
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->getPanelState(IZ)Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object p1

    .line 685
    iget-boolean v0, p1, Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    if-eqz v0, :cond_1d

    .line 686
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->closePanel(Lflyme/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 204
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    return-void
.end method

.method public onPostResume()V
    .registers 2

    .line 297
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_a
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 289
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_a
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method onTitleChanged(Ljava/lang/CharSequence;)V
    .registers 3

    .line 665
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mDecorContentParent:Lflyme/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_8

    .line 666
    invoke-interface {v0, p1}, Lflyme/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 667
    :cond_8
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->peekSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 668
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->peekSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 669
    :cond_16
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_1d

    .line 670
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public requestWindowFeature(I)Z
    .registers 6

    .line 603
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->sanitizeWindowFeatureId(I)I

    move-result p1

    .line 605
    iget-boolean v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindowNoTitle:Z

    const/4 v1, 0x0

    const/16 v2, 0x6c

    if-eqz v0, :cond_e

    if-ne p1, v2, :cond_e

    return v1

    .line 608
    :cond_e
    iget-boolean v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mHasActionBar:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_17

    if-ne p1, v3, :cond_17

    .line 610
    iput-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mHasActionBar:Z

    :cond_17
    if-eq p1, v3, :cond_4e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_48

    const/4 v0, 0x5

    if-eq p1, v0, :cond_42

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3c

    if-eq p1, v2, :cond_36

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_30

    .line 640
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p0

    return p0

    .line 619
    :cond_30
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->throwFeatureRequestIfSubDecorInstalled()V

    .line 620
    iput-boolean v3, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOverlayActionBar:Z

    return v3

    .line 615
    :cond_36
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->throwFeatureRequestIfSubDecorInstalled()V

    .line 616
    iput-boolean v3, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mHasActionBar:Z

    return v3

    .line 623
    :cond_3c
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->throwFeatureRequestIfSubDecorInstalled()V

    .line 624
    iput-boolean v3, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOverlayActionMode:Z

    return v3

    .line 631
    :cond_42
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->throwFeatureRequestIfSubDecorInstalled()V

    .line 632
    iput-boolean v3, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mFeatureIndeterminateProgress:Z

    return v3

    .line 627
    :cond_48
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->throwFeatureRequestIfSubDecorInstalled()V

    .line 628
    iput-boolean v3, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mFeatureProgress:Z

    return v3

    .line 635
    :cond_4e
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->throwFeatureRequestIfSubDecorInstalled()V

    .line 636
    iput-boolean v3, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindowNoTitle:Z

    return v3
.end method

.method public setContentView(I)V
    .registers 4

    .line 314
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 315
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 316
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 317
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 318
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    .line 305
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 306
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 307
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 308
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 309
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 323
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->ensureSubDecor()V

    .line 324
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 325
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 326
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public startMultiChoiceActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;
    .registers 3

    if-eqz p1, :cond_1d

    .line 2185
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    if-eqz v0, :cond_9

    .line 2186
    invoke-virtual {v0}, Lflyme/support/v7/view/ActionMode;->finish()V

    .line 2189
    :cond_9
    new-instance v0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    invoke-direct {v0, p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/view/ActionMode$Callback;)V

    .line 2190
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 2192
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/ActionBar;->startMultiChoiceActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    .line 2195
    :cond_1a
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    return-object p0

    .line 2183
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActionMode callback can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startSupportActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;
    .registers 4

    if-eqz p1, :cond_32

    .line 740
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    if-eqz v0, :cond_9

    .line 741
    invoke-virtual {v0}, Lflyme/support/v7/view/ActionMode;->finish()V

    .line 744
    :cond_9
    new-instance v0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    invoke-direct {v0, p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/view/ActionMode$Callback;)V

    .line 746
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 748
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/ActionBar;->startActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    .line 749
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    if-eqz p1, :cond_25

    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

    if-eqz v1, :cond_25

    .line 750
    invoke-interface {v1, p1}, Lflyme/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Lflyme/support/v7/view/ActionMode;)V

    .line 754
    :cond_25
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    if-nez p1, :cond_2f

    .line 756
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->startSupportActionModeFromWindow(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    .line 759
    :cond_2f
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    return-object p0

    .line 737
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActionMode callback can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method startSupportActionModeFromWindow(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;
    .registers 10

    .line 772
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->endOnGoingFadeAnimation()V

    .line 773
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    if-eqz v0, :cond_a

    .line 774
    invoke-virtual {v0}, Lflyme/support/v7/view/ActionMode;->finish()V

    .line 777
    :cond_a
    new-instance v0, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    invoke-direct {v0, p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;Lflyme/support/v7/view/ActionMode$Callback;)V

    .line 779
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_21

    .line 781
    :try_start_1a
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

    invoke-interface {v1, v0}, Lflyme/support/v7/app/AppCompatCallback;->onWindowStartingSupportActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/AbstractMethodError; {:try_start_1a .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    :cond_21
    move-object v1, v2

    :goto_22
    if-eqz v1, :cond_28

    .line 788
    iput-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    goto/16 :goto_13f

    .line 790
    :cond_28
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_de

    .line 791
    iget-boolean v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mIsFloating:Z

    if-eqz v1, :cond_bf

    .line 793
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 794
    iget-object v5, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 795
    sget v6, Lflyme/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v5, v6, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 798
    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_67

    .line 799
    iget-object v6, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 800
    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 801
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v5, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 803
    new-instance v5, Landroidx/appcompat/view/ContextThemeWrapper;

    iget-object v7, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 804
    invoke-virtual {v5}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_69

    .line 806
    :cond_67
    iget-object v5, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 809
    :goto_69
    new-instance v6, Lflyme/support/v7/widget/ActionBarContextView;

    invoke-direct {v6, v5}, Lflyme/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    .line 810
    new-instance v6, Landroid/widget/PopupWindow;

    sget v7, Lflyme/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v6, v5, v2, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 812
    iget-object v6, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 814
    iget-object v6, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 815
    iget-object v6, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 817
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 818
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->hasFullDisplay()Z

    move-result v7

    if-eqz v7, :cond_99

    sget v7, Lflyme/support/v7/appcompat/R$attr;->mzActionBarSizeFullScreen:I

    goto :goto_9b

    :cond_99
    sget v7, Lflyme/support/v7/appcompat/R$attr;->actionBarSize:I

    .line 817
    :goto_9b
    invoke-virtual {v6, v7, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 820
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 821
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 820
    invoke-static {v1, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 822
    iget-object v5, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v1}, Lflyme/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 823
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 824
    new-instance v1, Lflyme/support/v7/app/AppCompatDelegateImplV7$6;

    invoke-direct {v1, p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7$6;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mShowActionModePopup:Ljava/lang/Runnable;

    goto :goto_de

    .line 848
    :cond_bf
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mSubDecor:Landroid/view/ViewGroup;

    sget v5, Lflyme/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    .line 849
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v1, :cond_de

    .line 852
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 853
    invoke-virtual {v1}, Landroidx/appcompat/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/ActionBarContextView;

    iput-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    .line 858
    :cond_de
    :goto_de
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    if-eqz v1, :cond_13f

    .line 859
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7;->endOnGoingFadeAnimation()V

    .line 860
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/ActionBarContextView;->killMode()V

    .line 861
    new-instance v1, Lflyme/support/v7/view/StandaloneActionMode;

    iget-object v5, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    iget-object v7, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v7, :cond_f9

    move v3, v4

    :cond_f9
    invoke-direct {v1, v5, v6, v0, v3}, Lflyme/support/v7/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lflyme/support/v7/widget/ActionBarContextView;Lflyme/support/v7/view/ActionMode$Callback;Z)V

    .line 863
    invoke-virtual {v1}, Lflyme/support/v7/view/StandaloneActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lflyme/support/v7/view/ActionMode$Callback;->onCreateActionMode(Lflyme/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_13d

    .line 864
    invoke-virtual {v1}, Lflyme/support/v7/view/StandaloneActionMode;->invalidate()V

    .line 865
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Lflyme/support/v7/widget/ActionBarContextView;->initForMode(Lflyme/support/v7/view/ActionMode;)V

    .line 866
    iput-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    .line 867
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 868
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 869
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    new-instance v0, Lflyme/support/v7/app/AppCompatDelegateImplV7$7;

    invoke-direct {v0, p0}, Lflyme/support/v7/app/AppCompatDelegateImplV7$7;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 887
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_13f

    .line 888
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_13f

    .line 891
    :cond_13d
    iput-object v2, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    .line 895
    :cond_13f
    :goto_13f
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    if-eqz p1, :cond_14a

    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

    if-eqz v0, :cond_14a

    .line 896
    invoke-interface {v0, p1}, Lflyme/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Lflyme/support/v7/view/ActionMode;)V

    .line 898
    :cond_14a
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplV7;->mActionMode:Lflyme/support/v7/view/ActionMode;

    return-object p0
.end method
