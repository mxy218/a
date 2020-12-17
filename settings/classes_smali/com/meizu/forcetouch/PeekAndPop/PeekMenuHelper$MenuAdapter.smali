.class Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "PeekMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;


# direct methods
.method public constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 3

    .line 274
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->this$0:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    .line 272
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->mExpandedIndex:I

    .line 275
    iput-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 276
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->findExpandedIndex()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method


# virtual methods
.method findExpandedIndex()V
    .registers 6

    .line 339
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->this$0:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->access$200(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getExpandedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 341
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->this$0:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    invoke-static {v1}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->access$200(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2b

    .line 344
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-ne v4, v0, :cond_28

    .line 346
    iput v3, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->mExpandedIndex:I

    return-void

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2b
    const/4 v0, -0x1

    .line 351
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->mExpandedIndex:I

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 281
    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->mExpandedIndex:I

    if-gez p0, :cond_f

    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    .line 284
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 289
    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz p0, :cond_e

    if-lt p1, p0, :cond_e

    add-int/lit8 p1, p1, 0x1

    .line 292
    :cond_e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 270
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 298
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_12

    .line 305
    iget-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->this$0:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    invoke-static {p2}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->access$100(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->ITEM_LAYOUT:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move p3, v0

    goto :goto_13

    :cond_12
    move p3, v1

    .line 307
    :goto_13
    sget v2, Lcom/meizu/forcetouch/R$id;->textView:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 308
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p0

    .line 310
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 v3, -0x1000000

    if-eqz p1, :cond_37

    .line 312
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_37

    .line 313
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 315
    :cond_37
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_7d

    const/4 p1, 0x2

    new-array p3, p1, [[I

    new-array p1, p1, [I

    new-array v4, v0, [I

    const v5, 0x101009e

    aput v5, v4, v1

    aput-object v4, p3, v1

    aput v3, p1, v1

    new-array v4, v0, [I

    const v5, -0x101009e

    aput v5, v4, v1

    aput-object v4, p3, v0

    .line 323
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a  # 0.3f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v4, v5, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, p1, v0

    .line 325
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, p3, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 326
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 329
    :cond_7d
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_87

    .line 330
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_8a

    .line 332
    :cond_87
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_8a
    return-object p2
.end method

.method public isEnabled(I)Z
    .registers 3

    .line 362
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    if-nez v0, :cond_b

    .line 363
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p0

    :goto_f
    return p0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .line 356
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$MenuAdapter;->findExpandedIndex()V

    .line 357
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
