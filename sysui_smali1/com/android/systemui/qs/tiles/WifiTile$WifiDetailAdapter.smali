.class public Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WifiDetailAdapter"
.end annotation


# instance fields
.field private mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .registers 2

    .line 400
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V
    .registers 1

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    return-void
.end method

.method private filterUnreachableAPs()V
    .registers 8

    .line 471
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_6
    if-ge v3, v1, :cond_15

    aget-object v5, v0, v3

    .line 472
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v5

    if-eqz v5, :cond_12

    add-int/lit8 v4, v4, 0x1

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 474
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

    array-length v1, v0

    if-eq v4, v1, :cond_34

    .line 476
    new-array v1, v4, [Lcom/android/settingslib/wifi/AccessPoint;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

    .line 478
    array-length v1, v0

    move v3, v2

    :goto_20
    if-ge v2, v1, :cond_34

    aget-object v4, v0, v2

    .line 479
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

    add-int/lit8 v6, v3, 0x1

    aput-object v4, v5, v3

    move v3, v6

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_34
    return-void
.end method

.method private updateItems()V
    .registers 10

    .line 526
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_5

    return-void

    .line 550
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_e4

    .line 551
    array-length v0, v0

    new-array v0, v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    const/4 v2, 0x0

    .line 552
    :goto_e
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

    array-length v4, v3

    if-ge v2, v4, :cond_e5

    .line 553
    aget-object v3, v3, v2

    .line 554
    new-instance v4, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 555
    iput-object v3, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 556
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->getIcon(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v5

    iput v5, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 557
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 566
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5, v3}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1300(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v5

    iput v5, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->rightIcon:I

    .line 567
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    const-string v6, "WifiTile"

    const/4 v7, 0x1

    if-eqz v5, :cond_66

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v8, :cond_66

    .line 568
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[foree] updateItems: connected "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iput-boolean v7, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    goto :goto_b3

    .line 570
    :cond_66
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isViceAp()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[foree] updateItems: isViceAp "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iput-boolean v7, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    goto :goto_b3

    .line 573
    :cond_87
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_b3

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_b3

    .line 574
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_b3

    .line 575
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1400(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->quick_settings_connecting_label:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 577
    :cond_b3
    :goto_b3
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isFreeWifi()Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 578
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1500(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_ic_wifi_identify:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    goto :goto_de

    .line 580
    :cond_c8
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_db

    .line 581
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1600(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_ic_wifi_lock:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_dc

    :cond_db
    move-object v3, v1

    .line 582
    :goto_dc
    iput-object v3, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 586
    :goto_de
    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    :cond_e4
    move-object v0, v1

    .line 589
    :cond_e5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method


# virtual methods
.method public closeDetailView()V
    .registers 2

    .line 595
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v0, :cond_d

    .line 596
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$800(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeDualWifiChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;)V

    :cond_d
    return-void
.end method

.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDetailView convertView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eqz p2, :cond_f

    move v2, v1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiTile"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

    .line 439
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 440
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string p2, "Wifi"

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 441
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 442
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->scanForAccessPoints()V

    .line 444
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz p2, :cond_47

    .line 445
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$800(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addDualWifiChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;)V

    .line 447
    :cond_47
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireScanStateChanged(Z)V

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    .line 450
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 451
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x98

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .registers 1

    .line 412
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$400()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 408
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$300(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_wifi_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .registers 1

    .line 417
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$500(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onAccessPointsChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .line 456
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/settingslib/wifi/AccessPoint;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settingslib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/settingslib/wifi/AccessPoint;

    .line 457
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->filterUnreachableAPs()V

    .line 459
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    .line 462
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_20

    .line 463
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireScanStateChanged(Z)V

    :cond_20
    return-void
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 5

    if-eqz p1, :cond_70

    .line 491
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez p1, :cond_7

    goto :goto_70

    .line 492
    :cond_7
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 494
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->supportDualWifi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isDualWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 495
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isViceAp()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 496
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 497
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 498
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100()Landroid/content/Intent;

    move-result-object p1

    .line 497
    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    .line 501
    :cond_3d
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 502
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_50

    return-void

    .line 507
    :cond_50
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 508
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->connect(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 509
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 512
    :cond_6b
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    :cond_70
    :goto_70
    return-void
.end method

.method public onSettingsActivityTriggered(Landroid/content/Intent;)V
    .registers 3

    .line 486
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$900(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public setItemsVisible(Z)V
    .registers 2

    .line 521
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez p0, :cond_5

    return-void

    .line 522
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    return-void
.end method

.method public setToggleState(Z)V
    .registers 4

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setToggleState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$600(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x99

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    .line 426
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void
.end method
