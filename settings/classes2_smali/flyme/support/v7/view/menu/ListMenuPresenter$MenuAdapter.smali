.class Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/view/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mExpandedIndex:I

.field final synthetic this$0:Lflyme/support/v7/view/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Lflyme/support/v7/view/menu/ListMenuPresenter;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/ListMenuPresenter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    .line 225
    iput p1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 228
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .registers 6

    .line 266
    iget-object v0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getExpandedItem()Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 268
    iget-object v1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lflyme/support/v7/view/menu/ListMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lflyme/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_27

    .line 271
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/view/menu/MenuItemImpl;

    if-ne v4, v0, :cond_24

    .line 273
    iput v3, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    return-void

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    const/4 v0, -0x1

    .line 278
    iput v0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    return-void
.end method

.method public getCount()I
    .registers 3

    .line 232
    iget-object v0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/ListMenuPresenter;

    invoke-static {v1}, Lflyme/support/v7/view/menu/ListMenuPresenter;->access$000(Lflyme/support/v7/view/menu/ListMenuPresenter;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 234
    iget p0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-gez p0, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getItem(I)Lflyme/support/v7/view/menu/MenuItemImpl;
    .registers 4

    .line 241
    iget-object v0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lflyme/support/v7/view/menu/ListMenuPresenter;->mMenu:Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lflyme/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/ListMenuPresenter;

    invoke-static {v1}, Lflyme/support/v7/view/menu/ListMenuPresenter;->access$000(Lflyme/support/v7/view/menu/ListMenuPresenter;)I

    move-result v1

    add-int/2addr p1, v1

    .line 243
    iget p0, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz p0, :cond_17

    if-lt p1, p0, :cond_17

    add-int/lit8 p1, p1, 0x1

    .line 246
    :cond_17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 224
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_d

    .line 257
    iget-object p2, p0, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lflyme/support/v7/view/menu/ListMenuPresenter;

    iget-object v1, p2, Lflyme/support/v7/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget p2, p2, Lflyme/support/v7/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    invoke-virtual {v1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 260
    :cond_d
    move-object p3, p2

    check-cast p3, Lflyme/support/v7/view/menu/MenuView$ItemView;

    .line 261
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object p0

    invoke-interface {p3, p0, v0}, Lflyme/support/v7/view/menu/MenuView$ItemView;->initialize(Lflyme/support/v7/view/menu/MenuItemImpl;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .line 283
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 284
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
