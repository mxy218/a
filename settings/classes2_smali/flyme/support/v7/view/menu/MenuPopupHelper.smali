.class public Lflyme/support/v7/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lflyme/support/v7/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I


# instance fields
.field private final mAdapter:Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOverflowOnly:Z

.field private mPopup:Lflyme/support/v7/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    sget v0, Lflyme/support/v7/appcompat/R$layout;->mz_popup_menu_item_layout:I

    sput v0, Lflyme/support/v7/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/View;)V
    .registers 10

    .line 75
    sget v5, Lflyme/support/v7/appcompat/R$attr;->popupMenuStyle:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lflyme/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 80
    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .registers 9

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 337
    new-instance v0, Lflyme/support/v7/view/menu/MenuPopupHelper$1;

    invoke-direct {v0, p0}, Lflyme/support/v7/view/menu/MenuPopupHelper$1;-><init>(Lflyme/support/v7/view/menu/MenuPopupHelper;)V

    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 85
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    iput-object p2, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    .line 88
    new-instance v0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-direct {v0, p0, v1}, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lflyme/support/v7/view/menu/MenuPopupHelper;Lflyme/support/v7/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mAdapter:Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    .line 89
    iput-boolean p4, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 90
    iput p5, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 91
    iput p6, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 94
    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p5, p5, 0x2

    sget p6, Lflyme/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 95
    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 94
    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 97
    iput-object p3, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 100
    invoke-virtual {p2, p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lflyme/support/v7/view/menu/MenuPopupHelper;)Lflyme/support/v7/widget/ListPopupWindow;
    .registers 1

    .line 36
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    return-object p0
.end method

.method static synthetic access$200(Lflyme/support/v7/view/menu/MenuPopupHelper;)Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return p0
.end method

.method static synthetic access$300(Lflyme/support/v7/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .registers 1

    .line 36
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$400(Lflyme/support/v7/view/menu/MenuPopupHelper;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 36
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lflyme/support/v7/view/menu/MenuPopupHelper;)Lflyme/support/v7/view/menu/MenuBuilder;
    .registers 1

    .line 36
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method private measureContentWidth()I
    .registers 12

    .line 206
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mAdapter:Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    const/4 v1, 0x0

    .line 207
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 208
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 209
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v1

    move v7, v6

    move-object v8, v5

    :goto_13
    if-ge v1, v4, :cond_42

    .line 211
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v7, :cond_1d

    move-object v8, v5

    move v7, v9

    .line 217
    :cond_1d
    iget-object v9, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v9, :cond_2a

    .line 218
    new-instance v9, Landroid/widget/FrameLayout;

    iget-object v10, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 221
    :cond_2a
    iget-object v9, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, v8, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 222
    invoke-virtual {v8, v2, v3}, Landroid/view/View;->measure(II)V

    .line 224
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 225
    iget v10, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    if-lt v9, v10, :cond_3c

    return v10

    :cond_3c
    if-le v9, v6, :cond_3f

    move v6, v9

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_42
    return v6
.end method


# virtual methods
.method public collapseItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public dismiss()V
    .registers 2

    .line 167
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 168
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_b
    return-void
.end method

.method public expandItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public flagActionItems()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getPopup()Lflyme/support/v7/widget/ListPopupWindow;
    .registers 1

    .line 126
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    return-object p0
.end method

.method public initForMenu(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    return-void
.end method

.method public isShowing()Z
    .registers 1

    .line 183
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 302
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_5

    return-void

    .line 304
    :cond_5
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    .line 305
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_f

    .line 306
    invoke-interface {p0, p1, p2}, Lflyme/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V

    :cond_f
    return-void
.end method

.method public onDismiss()V
    .registers 3

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    .line 174
    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lflyme/support/v7/view/menu/MenuBuilder;->close()V

    .line 175
    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_21

    .line 176
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 177
    :cond_1a
    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 178
    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_21
    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    .line 237
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 238
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1d

    .line 241
    :cond_11
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 243
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_20

    .line 240
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    :cond_20
    :goto_20
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mAdapter:Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    .line 189
    invoke-static {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;)Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object p1

    invoke-virtual {p0, p3}, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 193
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_f

    const/16 p1, 0x52

    if-ne p2, p1, :cond_f

    .line 194
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    return p3

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public onSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 9

    .line 274
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 275
    new-instance v0, Lflyme/support/v7/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v0, v2, p1, v3}, Lflyme/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 276
    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v2}, Lflyme/support/v7/view/menu/MenuPopupHelper;->setCallback(Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 279
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    move v3, v1

    :goto_1a
    const/4 v4, 0x1

    if-ge v3, v2, :cond_32

    .line 281
    invoke-virtual {p1, v3}, Lflyme/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 282
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2f

    move v2, v4

    goto :goto_33

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_32
    move v2, v1

    .line 287
    :goto_33
    invoke-virtual {v0, v2}, Lflyme/support/v7/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 289
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 290
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_43

    .line 291
    invoke-interface {p0, p1}, Lflyme/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lflyme/support/v7/view/menu/MenuBuilder;)Z

    :cond_43
    return v4

    :cond_44
    return v1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setCallback(Lflyme/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Lflyme/support/v7/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    return-void
.end method

.method public setGravity(I)V
    .registers 2

    .line 112
    iput p1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    return-void
.end method

.method public show()V
    .registers 2

    .line 120
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->tryShow()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 121
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public tryShow()Z
    .registers 6

    .line 130
    new-instance v0, Lflyme/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v3, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lflyme/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    .line 131
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 132
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mAdapter:Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    .line 136
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_77

    .line 138
    iget-object v3, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_30

    move v3, v1

    goto :goto_31

    :cond_30
    move v3, v2

    .line 139
    :goto_31
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3e

    .line 140
    iget-object v3, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 141
    :cond_3e
    iget-object v3, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    iget v3, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 147
    iget-boolean v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    if-nez v0, :cond_56

    .line 148
    invoke-direct {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->measureContentWidth()I

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mContentWidth:I

    .line 149
    iput-boolean v1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 152
    :cond_56
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    iget v3, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mContentWidth:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 153
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 155
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/ListPopupWindow;->setClippingEnabled(Z)V

    .line 157
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 158
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mPopup:Lflyme/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return v1

    :cond_77
    return v2
.end method

.method public updateMenuView(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 260
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    .line 262
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper;->mAdapter:Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz p0, :cond_a

    .line 263
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method
