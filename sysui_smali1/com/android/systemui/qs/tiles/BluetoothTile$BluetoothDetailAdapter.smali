.class public Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BluetoothDetailAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V
    .registers 1

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mzUpdateItems()V

    return-void
.end method

.method private initItem(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/systemui/qs/QSDetailItems$Item;
    .registers 6

    .line 598
    new-instance v0, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 599
    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_on:I

    iput v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 600
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 601
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_38

    .line 603
    sget v1, Lcom/android/systemui/R$drawable;->ic_bluetooth_connected:I

    iput v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 605
    iput-boolean v2, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 607
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothDeviceActive(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 608
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$1800(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->bluetooth_device_using:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    goto :goto_4c

    :cond_38
    if-ne v1, v2, :cond_4c

    .line 611
    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_bluetooth_connecting:I

    iput v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 612
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$1900(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->quick_settings_connecting_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 615
    :cond_4c
    :goto_4c
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateIcon(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 616
    iput-object p1, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method private mzUpdateItems()V
    .registers 8

    .line 556
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_5

    return-void

    .line 557
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getDevices()Ljava/util/Collection;

    move-result-object v1

    .line 562
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 563
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_98

    .line 566
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 567
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBondState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_52

    const/16 v6, 0xc

    if-eq v5, v6, :cond_4e

    .line 575
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$1500(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BONDING and BOND_SUCCESS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 572
    :cond_4e
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 569
    :cond_52
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 580
    :cond_56
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$1600(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 582
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 583
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->initItem(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 587
    :cond_77
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$1700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 589
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 590
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->initItem(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 593
    :cond_98
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method

.method private updateIcon(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 4

    if-eqz p1, :cond_20

    .line 622
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/BluetoothIcon;->getDeviceIcon(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 624
    iput v0, p2, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 626
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$2000(Lcom/android/systemui/qs/tiles/BluetoothTile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 627
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMeizuDeviceInfo()Lcom/android/settingslib/bluetooth/MeizuDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/MeizuDeviceInfo;->getMeizuWhiteIconFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/drawable/BitmapDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p2, Lcom/android/systemui/qs/QSDetailItems$Item;->iconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_20
    return-void
.end method


# virtual methods
.method public closeDetailView()V
    .registers 3

    .line 551
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$200(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 552
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->stopScanning()V

    return-void
.end method

.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 443
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 444
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string p2, "Bluetooth"

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 448
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->startScanning()V

    .line 449
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireScanStateChanged(Z)V

    .line 450
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$200(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 451
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$200(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$100(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->setItemsVisible(Z)V

    .line 454
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x96

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .registers 1

    .line 427
    invoke-static {}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$800()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 411
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$500(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_bluetooth_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleEnabled()Z
    .registers 3

    .line 421
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1f

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    .line 422
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result p0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .registers 1

    .line 416
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$600(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 5

    if-eqz p1, :cond_77

    .line 514
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez p1, :cond_7

    goto :goto_77

    .line 515
    :cond_7
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_37

    .line 523
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_37

    .line 525
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->startPairing(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 526
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$1300(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetailItemClick bond_none device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_37
    if-eqz p1, :cond_62

    .line 527
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v0

    if-nez v0, :cond_62

    .line 529
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->connect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$1400(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetailItemClick state_disconnected device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->needSwitchBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 533
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()Z

    .line 535
    :cond_71
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    :cond_77
    :goto_77
    return-void
.end method

.method public setItemsVisible(Z)V
    .registers 2

    .line 458
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez p0, :cond_5

    return-void

    .line 459
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    return-void
.end method

.method public setToggleState(Z)V
    .registers 4

    .line 432
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$900(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x9a

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 433
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$700(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    return-void
.end method
