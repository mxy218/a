.class public final Lflyme/support/v7/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroidx/core/internal/view/SupportMenuItem;
.implements Lflyme/support/v7/view/menu/FMenuItem;


# static fields
.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroidx/core/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mIsOverflowActor:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mLetMenuSlideOut:Z

.field mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mNeedToApplyIconTint:Z

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mShowAsAction:I

.field private mSpotVisible:Z

.field private mSubMenu:Lflyme/support/v7/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:Landroid/content/res/ColorStateList;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lflyme/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .registers 10

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 64
    iput v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 66
    iput v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 90
    iput-object v1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 91
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mHasIconTint:Z

    .line 92
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 93
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    const/16 v1, 0x10

    .line 95
    iput v1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 104
    iput v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 109
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    const/4 v0, 0x1

    .line 894
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mLetMenuSlideOut:Z

    .line 153
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    .line 154
    iput p3, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mId:I

    .line 155
    iput p2, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mGroup:I

    .line 156
    iput p4, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 157
    iput p5, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mOrdering:I

    .line 158
    iput-object p6, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 159
    iput p7, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    return-void
.end method

.method private applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-eqz p1, :cond_2b

    .line 546
    iget-boolean v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mHasIconTint:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_2b

    .line 547
    :cond_e
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 548
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 550
    iget-boolean v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mHasIconTint:Z

    if-eqz v0, :cond_1f

    .line 551
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 554
    :cond_1f
    iget-boolean v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_28

    .line 555
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_28
    const/4 v0, 0x0

    .line 558
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    :cond_2b
    return-object p1
.end method


# virtual methods
.method public actionFormatChanged()V
    .registers 2

    .line 667
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Lflyme/support/v7/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public collapseActionView()Z
    .registers 3

    .line 812
    iget v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 815
    :cond_8
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 820
    :cond_e
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_1a

    .line 821
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    return v1

    .line 822
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Lflyme/support/v7/view/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public expandActionView()Z
    .registers 3

    .line 798
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 802
    :cond_8
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_14

    .line 803
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    return v1

    .line 804
    :cond_14
    :goto_14
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->expandItemActionView(Lflyme/support/v7/view/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .line 762
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .line 744
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_5

    return-object v0

    .line 746
    :cond_5
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz v0, :cond_12

    .line 747
    invoke-virtual {v0, p0}, Landroidx/core/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 748
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAlphabeticModifiers()I
    .registers 1

    .line 285
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    return p0
.end method

.method public getAlphabeticShortcut()C
    .registers 1

    .line 254
    iget-char p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 1

    .line 878
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getGroupId()I
    .registers 1

    .line 214
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mGroup:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 480
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 481
    invoke-direct {p0, v0}, Lflyme/support/v7/view/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 484
    :cond_9
    iget v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_27

    .line 485
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v0

    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lflyme/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 486
    iput v1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 487
    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 488
    invoke-direct {p0, v0}, Lflyme/support/v7/view/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 1

    .line 528
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 542
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 1

    .line 234
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getItemId()I
    .registers 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 220
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mId:I

    return p0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 1

    .line 663
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object p0
.end method

.method public getNumericModifiers()I
    .registers 1

    .line 294
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    return p0
.end method

.method public getNumericShortcut()C
    .registers 1

    .line 290
    iget-char p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return p0
.end method

.method public getOrder()I
    .registers 1

    .line 225
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mCategoryOrder:I

    return p0
.end method

.method public getOrdering()I
    .registers 1

    .line 229
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mOrdering:I

    return p0
.end method

.method getShortcut()C
    .registers 2

    .line 349
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-char p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    goto :goto_d

    :cond_b
    iget-char p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    :goto_d
    return p0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .registers 3

    .line 359
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result p0

    if-nez p0, :cond_9

    const-string p0, ""

    return-object p0

    .line 364
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lflyme/support/v7/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    if-eq p0, v1, :cond_2c

    const/16 v1, 0xa

    if-eq p0, v1, :cond_26

    const/16 v1, 0x20

    if-eq p0, v1, :cond_20

    .line 380
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 376
    :cond_20
    sget-object p0, Lflyme/support/v7/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 368
    :cond_26
    sget-object p0, Lflyme/support/v7/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 372
    :cond_2c
    sget-object p0, Lflyme/support/v7/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 1

    .line 399
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mSubMenu:Lflyme/support/v7/view/menu/SubMenuBuilder;

    return-object p0
.end method

.method public getSupportActionProvider()Landroidx/core/view/ActionProvider;
    .registers 1

    .line 768
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 416
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleColor()Landroid/content/res/ColorStateList;
    .registers 1

    .line 900
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mTitleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 3

    .line 451
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 453
    :goto_7
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge p0, v1, :cond_18

    if-eqz v0, :cond_18

    instance-of p0, v0, Ljava/lang/String;

    if-nez p0, :cond_18

    .line 457
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    return-object v0
.end method

.method getTitleForItemView(Lflyme/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .registers 2

    if-eqz p1, :cond_d

    .line 426
    invoke-interface {p1}, Lflyme/support/v7/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 427
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_11

    .line 428
    :cond_d
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .registers 1

    .line 890
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public hasCollapsibleActionView()Z
    .registers 3

    .line 829
    iget v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 830
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_15

    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz v0, :cond_15

    .line 831
    invoke-virtual {v0, p0}, Landroidx/core/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 833
    :cond_15
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public hasSubMenu()Z
    .registers 1

    .line 404
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mSubMenu:Lflyme/support/v7/view/menu/SubMenuBuilder;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public invoke()Z
    .registers 5

    .line 168
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 172
    :cond_c
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v0, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 176
    :cond_15
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1d

    .line 177
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v1

    .line 181
    :cond_1d
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_35

    .line 183
    :try_start_21
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_2c} :catch_2d

    return v1

    :catch_2d
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    .line 186
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    :cond_35
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz p0, :cond_40

    invoke-virtual {p0}, Landroidx/core/view/ActionProvider;->onPerformDefaultAction()Z

    move-result p0

    if-eqz p0, :cond_40

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    return v1
.end method

.method public isActionButton()Z
    .registers 2

    .line 678
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isActionViewExpanded()Z
    .registers 1

    .line 845
    iget-boolean p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return p0
.end method

.method public isCheckable()Z
    .registers 2

    .line 566
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 590
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 196
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isExclusiveCheckable()Z
    .registers 1

    .line 585
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isLittleSpotVisible()Z
    .registers 1

    .line 970
    iget-boolean p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mSpotVisible:Z

    return p0
.end method

.method public isOverflowActor()Z
    .registers 1

    .line 922
    iget-boolean p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIsOverflowActor:Z

    return p0
.end method

.method public isSelected()Z
    .registers 1

    .line 953
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isVisible()Z
    .registers 4

    .line 616
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroidx/core/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 617
    iget v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1b

    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    invoke-virtual {p0}, Landroidx/core/view/ActionProvider;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1

    .line 619
    :cond_1d
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1
.end method

.method public requestsActionButton()Z
    .registers 2

    .line 682
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public requiresActionButton()Z
    .registers 2

    .line 686
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public requiresOverflow()Z
    .registers 2

    .line 690
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 2

    .line 756
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->setActionView(I)Landroidx/core/internal/view/SupportMenuItem;

    return-object p0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;

    return-object p0
.end method

.method public setActionView(I)Landroidx/core/internal/view/SupportMenuItem;
    .registers 5

    .line 736
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 737
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 738
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroidx/core/internal/view/SupportMenuItem;
    .registers 4

    .line 725
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    const/4 v0, 0x0

    .line 726
    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz p1, :cond_15

    .line 727
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_15

    .line 728
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 730
    :cond_15
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Lflyme/support/v7/view/menu/MenuItemImpl;)V

    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .registers 2

    .line 839
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 840
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 259
    iget-char v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_5

    return-object p0

    .line 263
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 265
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    .line 272
    iget-char v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    if-ne v0, p2, :cond_9

    return-object p0

    .line 277
    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 278
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 280
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    .line 571
    iget v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    .line 572
    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 573
    iget p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p1, :cond_11

    .line 574
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_11
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    .line 595
    iget v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 598
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    goto :goto_f

    .line 600
    :cond_c
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    :goto_f
    return-object p0
.end method

.method setCheckedInt(Z)V
    .registers 5

    .line 607
    iget v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    goto :goto_a

    :cond_9
    move p1, v2

    :goto_a
    or-int/2addr p1, v1

    .line 608
    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 609
    iget p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p1, :cond_16

    .line 610
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0, v2}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_16
    return-void
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;
    .registers 3

    .line 870
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 872
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    if-eqz p1, :cond_9

    .line 202
    iget p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_f

    .line 204
    :cond_9
    iget p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 207
    :goto_f
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .registers 3

    .line 581
    iget v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    or-int/2addr p1, v0

    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 506
    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 507
    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    const/4 p1, 0x1

    .line 508
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 511
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 496
    iput v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 497
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 498
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 499
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 3
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 518
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 519
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mHasIconTint:Z

    .line 520
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 522
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 3

    .line 532
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 533
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 534
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 536
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .line 239
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setIsActionButton(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 695
    iget p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_f

    .line 697
    :cond_9
    iget p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    :goto_f
    return-void
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .line 658
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 299
    iget-char v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_5

    return-object p0

    .line 303
    :cond_5
    iput-char p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 305
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 4

    .line 311
    iget-char v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    if-ne v0, p2, :cond_9

    return-object p0

    .line 315
    :cond_9
    iput-char p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 316
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 318
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    .line 865
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .line 648
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    .line 325
    iput-char p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 326
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 328
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .registers 5

    .line 335
    iput-char p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 336
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 337
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 338
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 340
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 4

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 716
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 719
    :cond_13
    :goto_13
    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 720
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Lflyme/support/v7/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->setShowAsActionFlags(I)Landroidx/core/internal/view/SupportMenuItem;

    return-object p0
.end method

.method public setShowAsActionFlags(I)Landroidx/core/internal/view/SupportMenuItem;
    .registers 2

    .line 792
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->setShowAsAction(I)V

    return-object p0
.end method

.method public setSubMenu(Lflyme/support/v7/view/menu/SubMenuBuilder;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mSubMenu:Lflyme/support/v7/view/menu/SubMenuBuilder;

    .line 410
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lflyme/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;
    .registers 3

    .line 773
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz v0, :cond_7

    .line 774
    invoke-virtual {v0}, Landroidx/core/view/ActionProvider;->reset()V

    :cond_7
    const/4 v0, 0x0

    .line 776
    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 777
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    .line 778
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 779
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    if-eqz p1, :cond_1e

    .line 780
    new-instance v0, Lflyme/support/v7/view/menu/MenuItemImpl$1;

    invoke-direct {v0, p0}, Lflyme/support/v7/view/menu/MenuItemImpl$1;-><init>(Lflyme/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/ActionProvider;->setVisibilityListener(Landroidx/core/view/ActionProvider$VisibilityListener;)V

    :cond_1e
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .line 446
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    .line 433
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 435
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 437
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mSubMenu:Lflyme/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_f

    .line 438
    invoke-virtual {v0, p1}, Lflyme/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_f
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 466
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 473
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;
    .registers 3

    .line 882
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    .line 884
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2

    .line 641
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemVisibleChanged(Lflyme/support/v7/view/menu/MenuItemImpl;)V

    :cond_b
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .registers 5

    .line 631
    iget v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    move p1, v2

    goto :goto_b

    :cond_9
    const/16 p1, 0x8

    :goto_b
    or-int/2addr p1, v1

    .line 632
    iput p1, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 633
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, p0, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2
.end method

.method public shouldShowIcon()Z
    .registers 1

    .line 674
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result p0

    return p0
.end method

.method shouldShowShortcut()Z
    .registers 2

    .line 394
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public showsTextAsAction()Z
    .registers 2

    .line 702
    iget p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 654
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method
