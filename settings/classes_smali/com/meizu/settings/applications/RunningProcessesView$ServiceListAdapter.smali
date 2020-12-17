.class Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field private mFirstLoad:Z

.field final mInflater:Landroid/view/LayoutInflater;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewIdle:Z

.field mOrigItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/meizu/settings/applications/RunningState;

.field final synthetic this$0:Lcom/meizu/settings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/RunningProcessesView;Lcom/meizu/settings/applications/RunningState;)V
    .registers 4

    .line 242
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/meizu/settings/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 243
    iput-object p2, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    .line 244
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 246
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    const/4 p2, 0x1

    .line 248
    iput-boolean p2, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mListViewIdle:Z

    .line 249
    iput-boolean p2, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mFirstLoad:Z

    .line 250
    iget-object p1, p1, Lcom/meizu/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;)Z
    .registers 1

    .line 231
    iget-boolean p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mListViewIdle:Z

    return p0
.end method

.method private startGetIcons()V
    .registers 8

    .line 418
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/meizu/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    .line 420
    iget-object v5, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-le v1, v5, :cond_29

    move v1, v5

    :cond_29
    if-ge v2, v5, :cond_2c

    move v2, v5

    :cond_2c
    if-eqz v3, :cond_41

    .line 427
    iget-object v3, v3, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

    if-eqz v3, :cond_41

    iget-object v3, v3, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v3, :cond_41

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_3b

    goto :goto_41

    .line 434
    :cond_3b
    iget-object v5, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v5, v3, v4}, Lcom/meizu/settings/applications/RunningState;->startGetPackageIcon(Ljava/lang/String;Z)V

    goto :goto_11

    :cond_41
    :goto_41
    const-string v3, "RunningProcessesView:scrollState:startGetIcons continue"

    .line 430
    invoke-static {v3}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    goto :goto_11

    :cond_47
    add-int/lit8 v0, v1, -0x7

    const/4 v3, 0x0

    .line 436
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v5, v2, 0x7

    .line 438
    iget-object v6, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 439
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .line 438
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 440
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RunningProcessesView:startGetIcons topActiveIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bottomActiveIndex= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " topNoActiveIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bottomNoActiveIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 441
    invoke-static {v5}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    if-lez v0, :cond_c6

    if-gtz v2, :cond_8c

    goto :goto_c6

    :cond_8c
    :goto_8c
    if-gt v0, v1, :cond_a9

    .line 447
    iget-object v5, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/applications/RunningState$BaseItem;

    if-eqz v5, :cond_a6

    .line 448
    iget-object v5, v5, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v5, :cond_a6

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v5, :cond_a1

    goto :goto_a6

    .line 452
    :cond_a1
    iget-object v6, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v6, v5, v3}, Lcom/meizu/settings/applications/RunningState;->startGetPackageIcon(Ljava/lang/String;Z)V

    :cond_a6
    :goto_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    :cond_a9
    :goto_a9
    if-gt v2, v4, :cond_c6

    .line 455
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/RunningState$BaseItem;

    if-eqz v0, :cond_c3

    .line 456
    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v0, :cond_c3

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_be

    goto :goto_c3

    .line 460
    :cond_be
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v1, v0, v3}, Lcom/meizu/settings/applications/RunningState;->startGetPackageIcon(Ljava/lang/String;Z)V

    :cond_c3
    :goto_c3
    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    :cond_c6
    :goto_c6
    return-void
.end method

.method private startGetIconsWhenFirstLoad()V
    .registers 7

    .line 396
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x7

    .line 400
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 399
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0xe

    .line 401
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 402
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 401
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v0

    :goto_1f
    if-gt v2, v1, :cond_3d

    .line 404
    iget-object v3, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/RunningState$BaseItem;

    if-eqz v3, :cond_3a

    .line 405
    iget-object v3, v3, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v3, :cond_3a

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_34

    goto :goto_3a

    .line 409
    :cond_34
    iget-object v4, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/meizu/settings/applications/RunningState;->startGetPackageIcon(Ljava/lang/String;Z)V

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 411
    :cond_3d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RunningProcessesView:startGetIconsWhenFirstLoad startIndex = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " endIndex = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 412
    invoke-static {p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bindView(Landroid/view/View;I)V
    .registers 10

    .line 341
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_5
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_f

    .line 346
    monitor-exit v0

    return-void

    .line 348
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    .line 349
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 350
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    iget-object v3, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/meizu/settings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/meizu/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, p2, v3}, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/meizu/settings/applications/RunningState;Lcom/meizu/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v2

    .line 352
    iget-object v1, v1, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->nextIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object v1, p2, Lcom/meizu/settings/applications/RunningState$MergedItem;->mUser:Lcom/meizu/settings/applications/RunningState$UserState;

    if-eqz v1, :cond_45

    .line 354
    iget-object v1, v2, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, v1, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/meizu/settings/applications/RunningProcessesView;

    invoke-static {v4}, Lcom/meizu/settings/applications/RunningProcessesView;->access$000(Lcom/meizu/settings/applications/RunningProcessesView;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {p2, v4, v5}, Lcom/meizu/settings/applications/RunningState$MergedItem;->loadIcon(Landroid/content/Context;Lcom/meizu/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8e

    .line 355
    :cond_45
    iget-object v1, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v1, :cond_8e

    .line 356
    iget-object p2, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object p2, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/meizu/settings/applications/RunningProcessesView;

    .line 358
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v1

    .line 359
    invoke-virtual {v1, p2}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RunningProcessesView:bind pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " d = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    .line 362
    iget-object v5, v2, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v5, v5, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-boolean v5, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mListViewIdle:Z

    if-eqz v5, :cond_8e

    invoke-virtual {v1, v4}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->isDefaultIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 364
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    const/4 v4, 0x1

    invoke-virtual {v1, p2, v4}, Lcom/meizu/settings/applications/RunningState;->startGetPackageIcon(Ljava/lang/String;Z)V

    .line 367
    :cond_8e
    :goto_8e
    iget-boolean p2, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mFirstLoad:Z

    if-eqz p2, :cond_97

    .line 368
    invoke-direct {p0}, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->startGetIconsWhenFirstLoad()V

    .line 369
    iput-boolean v3, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mFirstLoad:Z

    .line 372
    :cond_97
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/meizu/settings/applications/RunningProcessesView;

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    monitor-exit v0

    return-void

    :catchall_a0
    move-exception p0

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_5 .. :try_end_a2} :catchall_a0

    throw p0
.end method

.method public getCount()I
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 302
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 309
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    if-nez p2, :cond_6

    .line 326
    invoke-virtual {p0, p3}, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 330
    :cond_6
    invoke-virtual {p0, p2, p1}, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    return-object p2
.end method

.method public hasStableIds()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isEnabled(I)Z
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 320
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/RunningState$MergedItem;

    iget-boolean p0, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mIsProcess:Z

    if-nez p0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 335
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d02db

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 336
    new-instance p1, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {p1, p0}, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RunningProcessesView:scrollState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_26

    if-eq p2, p1, :cond_1d

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1d

    goto :goto_30

    :cond_1d
    const/4 p1, 0x0

    .line 382
    iput-boolean p1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mListViewIdle:Z

    .line 383
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningState;->emptyPackageIconRequest()V

    goto :goto_30

    .line 386
    :cond_26
    iput-boolean p1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mListViewIdle:Z

    .line 387
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/meizu/settings/applications/RunningProcessesView;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/RunningProcessesView;->updateTimes()V

    .line 388
    invoke-direct {p0}, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->startGetIcons()V

    :goto_30
    return-void
.end method

.method refreshItems()V
    .registers 3

    .line 269
    iget-boolean v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_11

    .line 270
    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    :goto_11
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_36

    .line 272
    iput-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-nez v0, :cond_1f

    .line 274
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_36

    .line 276
    :cond_1f
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 277
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-boolean v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v0, :cond_36

    .line 279
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_36
    :goto_36
    return-void
.end method

.method setShowBackground(Z)V
    .registers 3

    .line 255
    iget-boolean v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_14

    .line 256
    iput-boolean p1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    .line 257
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 259
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/meizu/settings/applications/RunningProcessesView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/RunningProcessesView;->refreshUi(Z)V

    :cond_14
    return-void
.end method
