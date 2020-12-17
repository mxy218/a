.class Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lflyme/support/v7/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lflyme/support/v7/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lflyme/support/v7/view/menu/MenuPopupHelper;Lflyme/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    .line 355
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    .line 353
    iput p1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 356
    iput-object p2, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    .line 357
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;)Lflyme/support/v7/view/menu/MenuBuilder;
    .registers 1

    .line 351
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method


# virtual methods
.method findExpandedIndex()V
    .registers 6

    .line 414
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/MenuPopupHelper;

    invoke-static {v0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->access$500(Lflyme/support/v7/view/menu/MenuPopupHelper;)Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getExpandedItem()Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 416
    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/MenuPopupHelper;

    invoke-static {v1}, Lflyme/support/v7/view/menu/MenuPopupHelper;->access$500(Lflyme/support/v7/view/menu/MenuPopupHelper;)Lflyme/support/v7/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lflyme/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 417
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2b

    .line 419
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/view/menu/MenuItemImpl;

    if-ne v4, v0, :cond_28

    .line 421
    iput v3, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    return-void

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2b
    const/4 v0, -0x1

    .line 426
    iput v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 361
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/MenuPopupHelper;

    invoke-static {v0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->access$200(Lflyme/support/v7/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    .line 362
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 363
    :goto_15
    iget p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez p0, :cond_1e

    .line 364
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    .line 366
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getItem(I)Lflyme/support/v7/view/menu/MenuItemImpl;
    .registers 3

    .line 370
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/MenuPopupHelper;

    invoke-static {v0}, Lflyme/support/v7/view/menu/MenuPopupHelper;->access$200(Lflyme/support/v7/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    .line 371
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 372
    :goto_15
    iget p0, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz p0, :cond_1d

    if-lt p1, p0, :cond_1d

    add-int/lit8 p1, p1, 0x1

    .line 375
    :cond_1d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 351
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_18

    .line 386
    iget-object p2, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/MenuPopupHelper;

    invoke-static {p2}, Lflyme/support/v7/view/menu/MenuPopupHelper;->access$300(Lflyme/support/v7/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lflyme/support/v7/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 387
    iget-object p3, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/MenuPopupHelper;

    invoke-static {p3}, Lflyme/support/v7/view/menu/MenuPopupHelper;->access$400(Lflyme/support/v7/view/menu/MenuPopupHelper;)Landroid/view/View$OnClickListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    :cond_18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 392
    move-object p3, p2

    check-cast p3, Lflyme/support/v7/view/menu/MenuView$ItemView;

    .line 393
    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/MenuPopupHelper;

    iget-boolean v1, v1, Lflyme/support/v7/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    .line 394
    move-object v1, p2

    check-cast v1, Lflyme/support/v7/view/menu/ListMenuItemView;

    invoke-virtual {v1, v2}, Lflyme/support/v7/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 396
    :cond_2f
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Lflyme/support/v7/view/menu/MenuView$ItemView;->initialize(Lflyme/support/v7/view/menu/MenuItemImpl;I)V

    .line 398
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    move-result p0

    if-ne p0, v2, :cond_42

    .line 400
    sget p0, Lflyme/support/v7/appcompat/R$drawable;->mz_popup_item_selector_all:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_58

    :cond_42
    if-nez p1, :cond_4a

    .line 403
    sget p0, Lflyme/support/v7/appcompat/R$drawable;->mz_popup_item_selector_top:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_58

    :cond_4a
    sub-int/2addr p0, v2

    if-ne p1, p0, :cond_53

    .line 405
    sget p0, Lflyme/support/v7/appcompat/R$drawable;->mz_popup_item_selector_bottom:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_58

    .line 407
    :cond_53
    sget p0, Lflyme/support/v7/appcompat/R$drawable;->mz_popup_item_selector_center:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_58
    return-object p2
.end method

.method public isEnabled(I)Z
    .registers 3

    .line 438
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    if-nez v0, :cond_b

    .line 439
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p0

    :goto_f
    return p0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .line 431
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 432
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
