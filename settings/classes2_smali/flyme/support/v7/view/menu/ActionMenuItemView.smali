.class public Lflyme/support/v7/view/menu/ActionMenuItemView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lflyme/support/v7/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lflyme/support/v7/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/view/menu/ActionMenuItemView$PopupCallback;,
        Lflyme/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# static fields
.field private static final PRESSED_STATE_SET:[I


# instance fields
.field private mAllowTextWithIcon:Z

.field private mDisabledAlpha:F

.field private mExpandedFormat:Z

.field private mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconNormalAlpha:I

.field private mIsInSplit:Z

.field private mIsInitialize:Z

.field private mIsOverflowActor:Z

.field private mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

.field private mItemInvoker:Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field private mPopupCallback:Lflyme/support/v7/view/menu/ActionMenuItemView$PopupCallback;

.field private mPressedAlpha:F

.field private mSavedPaddingLeft:I

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    .line 79
    sput-object v0, Lflyme/support/v7/view/menu/ActionMenuItemView;->PRESSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xff

    .line 71
    iput v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIconNormalAlpha:I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    sget v1, Lflyme/support/v7/appcompat/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 96
    sget-object v1, Lflyme/support/v7/appcompat/R$styleable;->ActionMenuItemView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 98
    sget v3, Lflyme/support/v7/appcompat/R$styleable;->ActionMenuItemView_android_minWidth:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 100
    sget v3, Lflyme/support/v7/appcompat/R$styleable;->ActionMenuItemView_mzItemIconPressedAlpha:I

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mPressedAlpha:F

    .line 101
    sget v3, Lflyme/support/v7/appcompat/R$styleable;->ActionMenuItemView_mzItemBackgroundSplit:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000  # 24.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 105
    iput v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 107
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 115
    sget-object v0, Lflyme/support/v7/appcompat/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 117
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->MenuView_android_itemIconDisabledAlpha:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mDisabledAlpha:F

    .line 118
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/view/menu/ActionMenuItemView;)Lflyme/support/v7/view/menu/ActionMenuItemView$PopupCallback;
    .registers 1

    .line 46
    iget-object p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mPopupCallback:Lflyme/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    return-object p0
.end method

.method static synthetic access$100(Lflyme/support/v7/view/menu/ActionMenuItemView;)Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;
    .registers 1

    .line 46
    iget-object p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;

    return-object p0
.end method

.method static synthetic access$200(Lflyme/support/v7/view/menu/ActionMenuItemView;)Lflyme/support/v7/view/menu/MenuItemImpl;
    .registers 1

    .line 46
    iget-object p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

    return-object p0
.end method

.method private setCompoundDrawables(Z)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move-object v1, v0

    goto :goto_7

    .line 434
    :cond_5
    iget-object v1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_7
    if-eqz p1, :cond_c

    iget-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_d

    :cond_c
    move-object p1, v0

    :goto_d
    invoke-virtual {p0, v1, p1, v0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateTextAppearance(Z)V
    .registers 5

    .line 403
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    .line 405
    iget-boolean p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIsInSplit:Z

    if-eqz p1, :cond_1a

    new-array p1, v1, [I

    .line 406
    sget v0, Lflyme/support/v7/appcompat/R$attr;->mzActionMenuTextAppearanceWithIconSplit:I

    aput v0, p1, v2

    goto :goto_37

    :cond_1a
    new-array p1, v1, [I

    .line 410
    sget v0, Lflyme/support/v7/appcompat/R$attr;->mzActionMenuTextAppearanceWithIcon:I

    aput v0, p1, v2

    goto :goto_37

    .line 415
    :cond_21
    iget-boolean p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIsInSplit:Z

    if-eqz p1, :cond_31

    new-array p1, v1, [I

    .line 416
    sget v0, Lflyme/support/v7/appcompat/R$attr;->mzActionMenuTextAppearanceSplit:I

    aput v0, p1, v2

    .line 419
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_37

    :cond_31
    new-array p1, v1, [I

    .line 421
    sget v0, Lflyme/support/v7/appcompat/R$attr;->actionMenuTextAppearance:I

    aput v0, p1, v2

    .line 426
    :goto_37
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, -0x1

    .line 427
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-lez p1, :cond_51

    .line 429
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_51
    return-void
.end method

.method private updateTextButtonVisibility()V
    .registers 6

    .line 223
    iget-boolean v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIsInitialize:Z

    if-eqz v0, :cond_5

    return-void

    .line 225
    :cond_5
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 226
    iget-object v2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    iget-object v2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 227
    invoke-virtual {v2}, Lflyme/support/v7/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v2, :cond_24

    iget-boolean v2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v2, :cond_23

    goto :goto_24

    :cond_23
    move v1, v3

    :cond_24
    :goto_24
    and-int/2addr v0, v1

    if-eqz v0, :cond_2a

    .line 229
    iget-object v1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-direct {p0, v0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->updateTextAppearance(Z)V

    .line 232
    invoke-direct {p0, v0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->setCompoundDrawables(Z)V

    if-eqz v0, :cond_63

    .line 233
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIsInSplit:Z

    if-eqz v0, :cond_63

    .line 234
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lflyme/support/v7/appcompat/R$dimen;->mz_action_menu_item_padding_top_icon_with_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lflyme/support/v7/appcompat/R$dimen;->mz_action_menu_item_padding_bottom_icon_with_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lflyme/support/v7/view/menu/ActionMenuItemView;->setPadding(IIII)V

    const/16 v0, 0x31

    .line 235
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_73

    .line 237
    :cond_63
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, v3, v1, v3}, Lflyme/support/v7/view/menu/ActionMenuItemView;->setPadding(IIII)V

    const/16 v0, 0x11

    .line 238
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_73
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 5

    .line 451
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->drawableStateChanged()V

    .line 453
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4d

    .line 456
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_1f
    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    .line 457
    :goto_22
    iget-object v3, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 458
    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/DrawableContainer;

    if-nez v3, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    .line 459
    :goto_35
    iget-object v2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_41

    iget v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mDisabledAlpha:F

    :goto_3b
    iget p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIconNormalAlpha:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    :goto_3f
    float-to-int p0, v0

    goto :goto_4a

    :cond_41
    if-eqz v1, :cond_46

    iget v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mPressedAlpha:F

    goto :goto_3b

    :cond_46
    iget p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIconNormalAlpha:I

    int-to-float v0, p0

    goto :goto_3f

    :goto_4a
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4d
    return-void
.end method

.method public getItemData()Lflyme/support/v7/view/menu/MenuItemImpl;
    .registers 1

    .line 139
    iget-object p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public hasText()Z
    .registers 1

    .line 274
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public initialize(Lflyme/support/v7/view/menu/MenuItemImpl;I)V
    .registers 6

    .line 143
    iput-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

    const/4 p2, 0x1

    .line 146
    iput-boolean p2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIsInitialize:Z

    .line 148
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {p1, p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->getTitleForItemView(Lflyme/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setId(I)V

    .line 152
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    move v0, v1

    goto :goto_25

    :cond_23
    const/16 v0, 0x8

    :goto_25
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 155
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->isSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 157
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 158
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    if-nez v0, :cond_4c

    .line 159
    new-instance v0, Lflyme/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Lflyme/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lflyme/support/v7/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    .line 164
    :cond_4c
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->isOverflowActor()Z

    move-result v0

    invoke-virtual {p0, v0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->setIsOverflowActor(Z)V

    .line 165
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_83

    .line 166
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_6c

    goto :goto_6d

    :cond_6c
    move p2, v1

    .line 167
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 168
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_7e

    iget p2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mDisabledAlpha:F

    iget v2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIconNormalAlpha:I

    int-to-float v2, v2

    mul-float/2addr p2, v2

    float-to-int p2, p2

    goto :goto_80

    :cond_7e
    iget p2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIconNormalAlpha:I

    :goto_80
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 170
    :cond_83
    iput-boolean v1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIsInitialize:Z

    .line 171
    invoke-direct {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 172
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->getTitleColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_95

    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->getTitleColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_95
    return-void
.end method

.method public isOverflowActor()Z
    .registers 1

    .line 467
    iget-boolean p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIsOverflowActor:Z

    return p0
.end method

.method public needsDividerAfter()Z
    .registers 1

    .line 297
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result p0

    return p0
.end method

.method public needsDividerBefore()Z
    .registers 2

    .line 293
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 187
    iget-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;

    if-eqz p1, :cond_9

    .line 188
    iget-object p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

    invoke-interface {p1, p0}, Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lflyme/support/v7/view/menu/MenuItemImpl;)Z

    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_9

    .line 124
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lflyme/support/v7/appcompat/R$bool;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 129
    invoke-direct {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 482
    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_19

    .line 483
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->requestLayout()V

    return-void

    .line 486
    :cond_19
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 491
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatTextView;->onLayout(ZIIII)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 12

    .line 302
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 308
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 309
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 310
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 312
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 313
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    .line 314
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    .line 315
    aget v8, v2, v7

    div-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    .line 316
    aget v9, v2, v1

    div-int/2addr v5, v0

    add-int/2addr v9, v5

    .line 317
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_3e

    .line 318
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v9, p1, v9

    .line 321
    :cond_3e
    iget-object p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v4, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 322
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ge v8, p1, :cond_5b

    const p1, 0x800035

    .line 324
    aget v0, v2, v7

    add-int/2addr v0, v6

    iget v1, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v9, v0}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_60

    :cond_5b
    const/16 p1, 0x51

    .line 328
    invoke-virtual {p0, p1, v1, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 330
    :goto_60
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v7
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 336
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 337
    iget v1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v1, :cond_19

    .line 338
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    .line 339
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 338
    invoke-super {p0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 342
    :cond_19
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 344
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 345
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 346
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_33

    .line 347
    iget v3, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_35

    :cond_33
    iget p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I

    :goto_35
    const/high16 v3, 0x40000000  # 2.0f

    if-eq v1, v3, :cond_46

    .line 350
    iget v1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v1, :cond_46

    if-ge v2, p1, :cond_46

    .line 352
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    :cond_46
    if-nez v0, :cond_6c

    .line 356
    iget-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6c

    .line 359
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 360
    iget-object p2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p1, p2

    .line 361
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    invoke-super {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_6c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 178
    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    if-eqz v0, :cond_14

    .line 179
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x1

    return p0

    .line 182
    :cond_14
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public prefersCondensedTitle()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public setCheckable(Z)V
    .registers 2

    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    return-void
.end method

.method public setExpandedFormat(Z)V
    .registers 3

    .line 213
    iget-boolean v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_d

    .line 214
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 215
    iget-object p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

    if-eqz p0, :cond_d

    .line 216
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuItemImpl;->actionFormatChanged()V

    :cond_d
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 244
    iput-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3a

    .line 247
    new-instance v0, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemData:Lflyme/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->isLittleSpotVisible()Z

    move-result p1

    invoke-virtual {v0, p1}, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;->setSpotVisible(Z)V

    .line 251
    iput-object v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 252
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->getIntrinsicWidth()I

    move-result p1

    .line 253
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->getIntrinsicHeight()I

    move-result v1

    .line 254
    iget v2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le p1, v2, :cond_2b

    int-to-float v3, v2

    int-to-float p1, p1

    div-float/2addr v3, p1

    int-to-float p1, v1

    mul-float/2addr p1, v3

    float-to-int v1, p1

    move p1, v2

    .line 259
    :cond_2b
    iget v2, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v1, v2, :cond_36

    int-to-float v3, v2

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    float-to-int p1, p1

    move v1, v2

    :cond_36
    const/4 v2, 0x0

    .line 264
    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 270
    :cond_3a
    invoke-direct {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method public setIsInSplit(Z)V
    .registers 2

    .line 444
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIsInSplit:Z

    return-void
.end method

.method public setIsOverflowActor(Z)V
    .registers 2

    .line 475
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mIsOverflowActor:Z

    return-void
.end method

.method public setItemInvoker(Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    .line 134
    iput p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setPopupCallback(Lflyme/support/v7/view/menu/ActionMenuItemView$PopupCallback;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mPopupCallback:Lflyme/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 284
    iget-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    invoke-direct {p0}, Lflyme/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method
