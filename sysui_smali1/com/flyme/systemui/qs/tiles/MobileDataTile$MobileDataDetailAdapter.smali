.class final Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MobileDataDetailAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Lcom/flyme/systemui/qs/tiles/MobileDataTile$1;)V
    .registers 3

    .line 309
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;-><init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)V

    return-void
.end method

.method private updateItems()V
    .registers 10

    const-string v0, "MobileDataTile"

    const-string/jumbo v1, "updateItems"

    .line 357
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v1, :cond_d

    return-void

    :cond_d
    const/4 v1, 0x0

    .line 362
    iget-object v2, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v2}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$1300(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    move-result-object v2

    invoke-interface {v2}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 364
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 365
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2f

    .line 366
    new-instance v3, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter$1;

    invoke-direct {v3, p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter$1;-><init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2f
    const/4 v3, 0x0

    .line 375
    :goto_30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_73

    .line 376
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 377
    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v6}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 378
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 379
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v8

    if-ne v7, v8, :cond_57

    .line 380
    iput-boolean v4, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 382
    :cond_57
    iput-object v5, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 383
    aput-object v6, v1, v3

    .line 384
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateItems: item = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 388
    :cond_73
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    const-string v0, "MobileDataTile"

    const-string v1, "createDetailView"

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 343
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 345
    invoke-direct {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->updateItems()V

    const/4 p1, 0x1

    .line 346
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->setItemsVisible(Z)V

    .line 347
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x75

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .registers 1

    .line 326
    invoke-static {}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$1400()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 314
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$1200(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$1300(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 320
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$1300(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    move-result-object p0

    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->isMobileDataEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return-object p0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 4

    if-eqz p1, :cond_40

    .line 393
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez p1, :cond_7

    goto :goto_40

    .line 394
    :cond_7
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .line 396
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-eq v0, v1, :cond_20

    .line 397
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$1300(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->setDefaultDataSubId(I)V

    .line 399
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailItemClick subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileDataTile"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    :cond_40
    :goto_40
    return-void
.end method

.method public setItemsVisible(Z)V
    .registers 2

    .line 352
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez p0, :cond_5

    return-void

    .line 353
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .registers 2

    .line 408
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public setToggleState(Z)V
    .registers 2

    .line 331
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$1300(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->setMobileDataEnabled(Z)V

    return-void
.end method
