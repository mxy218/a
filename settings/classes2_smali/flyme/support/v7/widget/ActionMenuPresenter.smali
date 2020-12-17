.class public Lflyme/support/v7/widget/ActionMenuPresenter;
.super Lflyme/support/v7/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/core/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;,
        Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Lflyme/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;,
        Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;,
        Lflyme/support/v7/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mIsSplit:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field private mMinCellSizeInSplit:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

.field private mOverflowDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverflowPopup:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Lflyme/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 110
    sget v0, Lflyme/support/v7/appcompat/R$layout;->mz_abc_action_menu_layout:I

    sget v1, Lflyme/support/v7/appcompat/R$layout;->mz_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lflyme/support/v7/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 95
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 105
    new-instance p1, Lflyme/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lflyme/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter;Lflyme/support/v7/widget/ActionMenuPresenter$1;)V

    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Lflyme/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    return-void
.end method

.method static synthetic access$1000(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .registers 1

    .line 65
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p0
.end method

.method static synthetic access$1002(Lflyme/support/v7/widget/ActionMenuPresenter;Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;)Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .registers 2

    .line 65
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$1100(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/view/menu/MenuBuilder;
    .registers 1

    .line 65
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$1200(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/view/menu/MenuView;
    .registers 1

    .line 65
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    return-object p0
.end method

.method static synthetic access$200(Lflyme/support/v7/widget/ActionMenuPresenter;)Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    return p0
.end method

.method static synthetic access$300(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    .registers 1

    .line 65
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    return-object p0
.end method

.method static synthetic access$302(Lflyme/support/v7/widget/ActionMenuPresenter;Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;)Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    .registers 2

    .line 65
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$400(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .registers 1

    .line 65
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p0
.end method

.method static synthetic access$402(Lflyme/support/v7/widget/ActionMenuPresenter;Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;)Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .registers 2

    .line 65
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$500(Lflyme/support/v7/widget/ActionMenuPresenter;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 65
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/view/menu/MenuBuilder;
    .registers 1

    .line 65
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$700(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/view/menu/MenuBuilder;
    .registers 1

    .line 65
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$800(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
    .registers 1

    .line 65
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    return-object p0
.end method

.method static synthetic access$900(Lflyme/support/v7/widget/ActionMenuPresenter;)Lflyme/support/v7/view/menu/MenuView;
    .registers 1

    .line 65
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    return-object p0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 7

    .line 365
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 368
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_24

    .line 370
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 371
    instance-of v4, v3, Lflyme/support/v7/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_21

    move-object v4, v3

    check-cast v4, Lflyme/support/v7/view/menu/MenuView$ItemView;

    .line 372
    invoke-interface {v4}, Lflyme/support/v7/view/menu/MenuView$ItemView;->getItemData()Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    if-ne v4, p1, :cond_21

    return-object v3

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_24
    return-object v0
.end method

.method private flagActionItemsInSplit()Z
    .registers 12

    .line 1009
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1010
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1011
    iget v2, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_11
    const/4 v8, 0x1

    if-ge v4, v1, :cond_30

    .line 1018
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 1019
    invoke-virtual {v9}, Lflyme/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v10

    if-eqz v10, :cond_23

    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 1021
    :cond_23
    invoke-virtual {v9}, Lflyme/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v9

    if-eqz v9, :cond_2c

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_2c
    move v5, v8

    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 1029
    :cond_30
    iget-boolean v4, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_38

    if-eqz v5, :cond_38

    move v4, v8

    goto :goto_39

    :cond_38
    move v4, v3

    .line 1033
    :goto_39
    iget-object v5, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 1034
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1038
    iget-boolean v9, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v9, :cond_47

    .line 1039
    iget p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mMinCellSizeInSplit:I

    div-int p0, v2, p0

    goto :goto_48

    :cond_47
    move p0, v3

    :goto_48
    add-int/2addr v6, v7

    if-le v6, p0, :cond_4d

    move v2, v8

    goto :goto_4e

    :cond_4d
    move v2, v3

    :goto_4e
    or-int/2addr v2, v4

    if-eqz v2, :cond_53

    add-int/lit8 p0, p0, -0x1

    :cond_53
    if-ge v6, p0, :cond_56

    move p0, v6

    :cond_56
    move v2, p0

    move p0, v3

    :goto_58
    if-ge p0, v1, :cond_84

    if-lez v2, :cond_84

    .line 1048
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 1049
    invoke-virtual {v4}, Lflyme/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v6

    if-nez v6, :cond_73

    invoke-virtual {v4}, Lflyme/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v6

    if-eqz v6, :cond_6f

    goto :goto_73

    .line 1057
    :cond_6f
    invoke-virtual {v4, v3}, Lflyme/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_81

    :cond_73
    :goto_73
    add-int/lit8 v2, v2, -0x1

    .line 1051
    invoke-virtual {v4, v8}, Lflyme/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 1052
    invoke-virtual {v4}, Lflyme/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-eqz v4, :cond_81

    .line 1054
    invoke-virtual {v5, v4, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_81
    :goto_81
    add-int/lit8 p0, p0, 0x1

    goto :goto_58

    :cond_84
    move v2, p0

    :goto_85
    if-ge v2, v1, :cond_93

    .line 1061
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 1062
    invoke-virtual {v4, v3}, Lflyme/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_93
    return v8
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .registers 3

    .line 1141
    invoke-super {p0, p1, p2}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 1142
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    instance-of p0, p0, Lflyme/support/v7/widget/ActionMenuView;

    if-eqz p0, :cond_1b

    instance-of p0, p1, Lflyme/support/v7/view/menu/ActionMenuItemView;

    if-eqz p0, :cond_1b

    .line 1143
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1144
    check-cast p1, Lflyme/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {p1}, Lflyme/support/v7/view/menu/ActionMenuItemView;->isOverflowActor()Z

    move-result p1

    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    :cond_1b
    return-void
.end method

.method public bindItemView(Lflyme/support/v7/view/menu/MenuItemImpl;Lflyme/support/v7/view/menu/MenuView$ItemView;)V
    .registers 5

    .line 242
    move-object v0, p2

    check-cast v0, Lflyme/support/v7/view/menu/ActionMenuItemView;

    iget-boolean v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    invoke-virtual {v0, v1}, Lflyme/support/v7/view/menu/ActionMenuItemView;->setIsInSplit(Z)V

    const/4 v1, 0x0

    .line 244
    invoke-interface {p2, p1, v1}, Lflyme/support/v7/view/menu/MenuView$ItemView;->initialize(Lflyme/support/v7/view/menu/MenuItemImpl;I)V

    .line 246
    iget-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    check-cast p1, Lflyme/support/v7/widget/ActionMenuView;

    .line 248
    invoke-virtual {v0, p1}, Lflyme/support/v7/view/menu/ActionMenuItemView;->setItemInvoker(Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;)V

    .line 250
    iget-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez p1, :cond_1f

    .line 251
    new-instance p1, Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter;Lflyme/support/v7/widget/ActionMenuPresenter$1;)V

    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 253
    :cond_1f
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v0, p0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->setPopupCallback(Lflyme/support/v7/view/menu/ActionMenuItemView$PopupCallback;)V

    return-void
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView$ItemView;
    .registers 5

    .line 1071
    invoke-super {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView$ItemView;

    move-result-object p1

    .line 1072
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_21

    .line 1073
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 1074
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_21

    .line 1075
    iget-object v1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    check-cast v1, Lflyme/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    .line 1076
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1077
    new-instance v1, Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;

    invoke-direct {v1, p0, v0}, Lflyme/support/v7/widget/ActionMenuPresenter$ActionMenuRippleDrawable;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter;Landroid/view/View;)V

    .line 1078
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_21
    return-object p1
.end method

.method public dismissPopupMenus()Z
    .registers 2

    .line 430
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 431
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .registers 5

    .line 335
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 336
    :cond_a
    invoke-super {p0, p1, p2}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result p0

    return p0
.end method

.method public flagActionItems()Z
    .registers 20

    move-object/from16 v0, p0

    .line 468
    iget-boolean v1, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    if-eqz v1, :cond_b

    .line 469
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->flagActionItemsInSplit()Z

    move-result v0

    return v0

    .line 472
    :cond_b
    iget-object v1, v0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lflyme/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 473
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 474
    iget v3, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 475
    iget v4, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    const/4 v5, 0x0

    .line 476
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 477
    iget-object v7, v0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    move v11, v3

    move v3, v5

    move v8, v3

    move v9, v8

    move v10, v9

    :goto_27
    if-ge v3, v2, :cond_50

    .line 484
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 485
    invoke-virtual {v13}, Lflyme/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_38

    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    .line 487
    :cond_38
    invoke-virtual {v13}, Lflyme/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_41

    add-int/lit8 v10, v10, 0x1

    goto :goto_42

    :cond_41
    const/4 v8, 0x1

    .line 492
    :goto_42
    iget-boolean v12, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v12, :cond_4d

    invoke-virtual {v13}, Lflyme/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v12

    if-eqz v12, :cond_4d

    move v11, v5

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 500
    :cond_50
    iget-boolean v3, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_5b

    if-nez v8, :cond_59

    add-int/2addr v10, v9

    if-le v10, v11, :cond_5b

    :cond_59
    add-int/lit8 v11, v11, -0x1

    :cond_5b
    sub-int/2addr v11, v9

    .line 506
    iget-object v3, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 507
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 511
    iget-boolean v8, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_6e

    .line 512
    iget v8, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v9, v4, v8

    .line 513
    rem-int v10, v4, v8

    .line 514
    div-int/2addr v10, v9

    add-int/2addr v8, v10

    goto :goto_70

    :cond_6e
    move v8, v5

    move v9, v8

    :goto_70
    move v10, v4

    move v4, v5

    move v13, v4

    :goto_73
    if-ge v4, v2, :cond_163

    .line 519
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 521
    invoke-virtual {v14}, Lflyme/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v15

    if-eqz v15, :cond_b6

    .line 522
    iget-object v15, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v14, v15, v7}, Lflyme/support/v7/widget/ActionMenuPresenter;->getItemView(Lflyme/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 523
    iget-object v12, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v12, :cond_8d

    .line 524
    iput-object v15, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 526
    :cond_8d
    iget-boolean v12, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v12, :cond_97

    .line 527
    invoke-static {v15, v8, v9, v6, v5}, Lflyme/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v12

    sub-int/2addr v9, v12

    goto :goto_9a

    .line 530
    :cond_97
    invoke-virtual {v15, v6, v6}, Landroid/view/View;->measure(II)V

    .line 532
    :goto_9a
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v10, v12

    if-nez v13, :cond_a2

    goto :goto_a3

    :cond_a2
    move v12, v13

    .line 537
    :goto_a3
    invoke-virtual {v14}, Lflyme/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v13

    const/4 v15, 0x1

    if-eqz v13, :cond_ad

    .line 539
    invoke-virtual {v3, v13, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 541
    :cond_ad
    invoke-virtual {v14, v15}, Lflyme/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    move/from16 v16, v2

    move v0, v5

    move v13, v12

    goto/16 :goto_15a

    .line 542
    :cond_b6
    invoke-virtual {v14}, Lflyme/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v12

    if-eqz v12, :cond_154

    .line 545
    invoke-virtual {v14}, Lflyme/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v12

    .line 546
    invoke-virtual {v3, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v11, :cond_c8

    if-eqz v15, :cond_d2

    :cond_c8
    if-lez v10, :cond_d2

    .line 547
    iget-boolean v5, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v5, :cond_d0

    if-lez v9, :cond_d2

    :cond_d0
    const/4 v5, 0x1

    goto :goto_d3

    :cond_d2
    const/4 v5, 0x0

    :goto_d3
    move/from16 v16, v2

    if-eqz v5, :cond_11a

    .line 551
    iget-object v2, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v14, v2, v7}, Lflyme/support/v7/widget/ActionMenuPresenter;->getItemView(Lflyme/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move/from16 v17, v5

    .line 552
    iget-object v5, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v5, :cond_e5

    .line 553
    iput-object v2, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 555
    :cond_e5
    iget-boolean v5, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v5, :cond_f9

    const/4 v5, 0x0

    .line 556
    invoke-static {v2, v8, v9, v6, v5}, Lflyme/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v18

    sub-int v9, v9, v18

    if-nez v18, :cond_f4

    const/4 v5, 0x0

    goto :goto_f6

    :cond_f4
    move/from16 v5, v17

    :goto_f6
    move/from16 v17, v5

    goto :goto_fc

    .line 563
    :cond_f9
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 565
    :goto_fc
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v10, v2

    if-nez v13, :cond_104

    move v13, v2

    .line 571
    :cond_104
    iget-boolean v2, v0, Lflyme/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_110

    if-ltz v10, :cond_10c

    :goto_10a
    const/4 v2, 0x1

    goto :goto_10d

    :cond_10c
    const/4 v2, 0x0

    :goto_10d
    and-int v5, v17, v2

    goto :goto_11c

    :cond_110
    if-nez v4, :cond_117

    add-int v2, v10, v13

    if-lez v2, :cond_10c

    goto :goto_10a

    :cond_117
    if-ltz v10, :cond_10c

    goto :goto_10a

    :cond_11a
    move/from16 v17, v5

    :goto_11c
    if-eqz v5, :cond_125

    if-eqz v12, :cond_125

    const/4 v2, 0x1

    .line 589
    invoke-virtual {v3, v12, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_14b

    :cond_125
    if-eqz v15, :cond_14b

    const/4 v2, 0x0

    .line 592
    invoke-virtual {v3, v12, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v2, 0x0

    :goto_12c
    if-ge v2, v4, :cond_14b

    .line 594
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 595
    invoke-virtual {v15}, Lflyme/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v0

    if-ne v0, v12, :cond_146

    .line 597
    invoke-virtual {v15}, Lflyme/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-eqz v0, :cond_142

    add-int/lit8 v11, v11, 0x1

    :cond_142
    const/4 v0, 0x0

    .line 598
    invoke-virtual {v15, v0}, Lflyme/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    :cond_146
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_12c

    :cond_14b
    :goto_14b
    if-eqz v5, :cond_14f

    add-int/lit8 v11, v11, -0x1

    .line 605
    :cond_14f
    invoke-virtual {v14, v5}, Lflyme/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    const/4 v0, 0x0

    goto :goto_15a

    :cond_154
    move/from16 v16, v2

    move v0, v5

    .line 608
    invoke-virtual {v14, v0}, Lflyme/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    :goto_15a
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    move/from16 v2, v16

    move-object/from16 v0, p0

    goto/16 :goto_73

    :cond_163
    const/4 v2, 0x1

    return v2
.end method

.method public getItemView(Lflyme/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 220
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 221
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 222
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->getItemView(Lflyme/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 224
    :cond_10
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p0

    if-eqz p0, :cond_19

    const/16 p0, 0x8

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    check-cast p3, Lflyme/support/v7/widget/ActionMenuView;

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 228
    invoke-virtual {p3, p0}, Lflyme/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 229
    invoke-virtual {p3, p0}, Lflyme/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_44

    .line 232
    :cond_31
    instance-of p1, p0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz p1, :cond_44

    instance-of p1, v0, Lflyme/support/v7/view/menu/ActionMenuItemView;

    if-eqz p1, :cond_44

    .line 233
    check-cast p0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    move-object p1, v0

    check-cast p1, Lflyme/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {p1}, Lflyme/support/v7/view/menu/ActionMenuItemView;->isOverflowActor()Z

    move-result p1

    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    :cond_44
    :goto_44
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView;
    .registers 3

    .line 213
    invoke-super {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lflyme/support/v7/view/menu/MenuView;

    move-result-object p1

    .line 214
    move-object v0, p1

    check-cast v0, Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/ActionMenuView;->setPresenter(Lflyme/support/v7/widget/ActionMenuPresenter;)V

    return-object p1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 203
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_9

    .line 204
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 205
    :cond_9
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_10

    .line 206
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public hideOverflowMenu()Z
    .registers 4

    .line 411
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v2, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    if-eqz v2, :cond_12

    .line 412
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return v1

    .line 417
    :cond_12
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz p0, :cond_1a

    .line 419
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    return v1

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public hideSubMenus()Z
    .registers 1

    .line 441
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz p0, :cond_9

    .line 442
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public initForMenu(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 7

    .line 116
    invoke-super {p0, p1, p2}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;)V

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 120
    invoke-static {p1}, Lflyme/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Lflyme/support/v7/view/ActionBarPolicy;

    move-result-object p1

    .line 121
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v0, :cond_15

    .line 122
    invoke-virtual {p1}, Lflyme/support/v7/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v0

    iput-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 125
    :cond_15
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v0, :cond_1f

    .line 126
    invoke-virtual {p1}, Lflyme/support/v7/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 130
    :cond_1f
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_29

    .line 131
    invoke-virtual {p1}, Lflyme/support/v7/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 134
    :cond_29
    iget p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 135
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 136
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v0, :cond_56

    .line 137
    new-instance v0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v2, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 138
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4d

    .line 139
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iput-object v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 141
    iput-boolean v2, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 143
    :cond_4d
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 144
    iget-object v2, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v2, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 146
    :cond_56
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_60

    .line 148
    :cond_5e
    iput-object v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 151
    :goto_60
    iput p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    const/high16 p1, 0x42600000  # 56.0f

    .line 153
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 156
    iput-object v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    const/high16 p1, 0x42700000  # 60.0f

    .line 159
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mMinCellSizeInSplit:I

    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .line 456
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isOverflowMenuShowing()Z
    .registers 1

    .line 452
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isSplit()Z
    .registers 1

    .line 1001
    iget-boolean p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    return p0
.end method

.method public onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    .line 616
    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 617
    invoke-super {p0, p1, p2}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 6

    .line 340
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move-object v0, p1

    .line 343
    :goto_9
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_18

    .line 344
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/view/menu/SubMenuBuilder;

    goto :goto_9

    .line 346
    :cond_18
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_27

    .line 348
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v0, :cond_27

    return v1

    .line 352
    :cond_27
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 353
    new-instance v1, Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v2, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Lflyme/support/v7/view/menu/SubMenuBuilder;)V

    iput-object v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 356
    iget-object v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    const v2, 0x800005

    invoke-virtual {v1, v2}, Lflyme/support/v7/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 358
    iget-object v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v1, v0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->setAnchorView(Landroid/view/View;)V

    .line 359
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Lflyme/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->show()V

    .line 360
    invoke-super {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .registers 2

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    .line 647
    invoke-super {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;)Z

    goto :goto_d

    .line 649
    :cond_7
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->close(Z)V

    :goto_d
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 2

    .line 190
    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    return-void
.end method

.method public setIsSplit(Z)V
    .registers 4

    .line 984
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    if-eqz v0, :cond_30

    .line 986
    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    .line 987
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mIsSplit:Z

    if-eqz v0, :cond_13

    sget v0, Lflyme/support/v7/appcompat/R$layout;->mz_action_menu_item_split_layout:I

    goto :goto_15

    :cond_13
    sget v0, Lflyme/support/v7/appcompat/R$layout;->mz_action_menu_item_layout:I

    :goto_15
    invoke-virtual {p0, v0}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->setItemLayoutRes(I)V

    .line 988
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    if-eqz v0, :cond_21

    .line 989
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_21
    if-nez p1, :cond_30

    .line 992
    iput-boolean v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 993
    iput-boolean v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 994
    iput-boolean v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 995
    iget-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;)V

    :cond_30
    return-void
.end method

.method public setItemLimit(I)V
    .registers 2

    .line 185
    iput p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    return-void
.end method

.method public setMenuView(Lflyme/support/v7/widget/ActionMenuView;)V
    .registers 2

    .line 654
    iput-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    .line 655
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/ActionMenuView;->initialize(Lflyme/support/v7/view/menu/MenuBuilder;)V

    return-void
.end method

.method public setOverflowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1131
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1132
    iget-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz p1, :cond_b

    .line 1133
    iget-object p0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 194
    iget-object v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_8

    .line 195
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    :cond_8
    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 198
    iput-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    :goto_d
    return-void
.end method

.method public setReserveOverflow(Z)V
    .registers 2

    .line 180
    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    return-void
.end method

.method public setWidthLimit(IZ)V
    .registers 3

    .line 174
    iput p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 175
    iput-boolean p2, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    const/4 p1, 0x1

    .line 176
    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    return-void
.end method

.method public shouldIncludeItem(ILflyme/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 258
    invoke-virtual {p2}, Lflyme/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result p0

    return p0
.end method

.method public showOverflowMenu()Z
    .registers 8

    .line 384
    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lflyme/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_44

    iget-object v1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_44

    .line 385
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 387
    new-instance v0, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    iget-object v5, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 392
    new-instance v1, Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter;Lflyme/support/v7/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 394
    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Lflyme/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 398
    invoke-super {p0, v0}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;)Z

    const/4 p0, 0x1

    return p0

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method public updateMenuView(Z)V
    .registers 9

    .line 263
    invoke-super {p0, p1}, Lflyme/support/v7/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 265
    iget-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 267
    iget-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    .line 268
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_18
    if-ge v2, v1, :cond_2c

    .line 271
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lflyme/support/v7/view/menu/MenuItemImpl;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 273
    invoke-virtual {v3, p0}, Landroidx/core/view/ActionProvider;->setSubUiVisibilityListener(Landroidx/core/view/ActionProvider$SubUiVisibilityListener;)V

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 278
    :cond_2c
    iget-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_36

    .line 279
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_37

    :cond_36
    move-object p1, v1

    .line 282
    :goto_37
    iget-boolean v2, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_54

    if-eqz p1, :cond_54

    .line 283
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_50

    .line 285
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lflyme/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v2

    xor-int/2addr v2, v3

    goto :goto_55

    :cond_50
    if-lez v2, :cond_54

    move v2, v3

    goto :goto_55

    :cond_54
    move v2, v0

    :goto_55
    if-eqz v2, :cond_a5

    .line 292
    iget-object v4, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v4, :cond_64

    .line 293
    new-instance v4, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Lflyme/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 295
    :cond_64
    iget-object v4, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 296
    iget-object v5, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    if-eq v4, v5, :cond_84

    if-eqz v4, :cond_77

    .line 298
    iget-object v5, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 300
    :cond_77
    iget-object v4, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    check-cast v4, Lflyme/support/v7/widget/ActionMenuView;

    .line 301
    iget-object v5, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4}, Lflyme/support/v7/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Lflyme/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    :cond_84
    iget-object v4, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4, v0}, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setSpotVisible(Z)V

    .line 304
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 305
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuItemImpl;->isLittleSpotVisible()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 306
    iget-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1, v3}, Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setSpotVisible(Z)V

    goto :goto_b8

    .line 310
    :cond_a5
    iget-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz p1, :cond_b8

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    if-ne p1, v0, :cond_b8

    .line 311
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Lflyme/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b8
    :goto_b8
    if-nez v2, :cond_df

    .line 316
    iget-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-eqz p1, :cond_c2

    .line 317
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    :cond_c2
    if-eqz v1, :cond_df

    .line 318
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_df

    .line 319
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ce
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 320
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuItemImpl;->isOverflowActor()Z

    move-result v2

    goto :goto_ce

    .line 326
    :cond_df
    iget-object p1, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    check-cast p1, Lflyme/support/v7/widget/ActionMenuView;

    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 329
    iget-object p0, p0, Lflyme/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Lflyme/support/v7/view/menu/MenuView;

    check-cast p0, Lflyme/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/ActionMenuView;->setHasOverflow(Z)V

    return-void
.end method
