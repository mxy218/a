.class final Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;
.super Ljava/lang/Object;
.source "NetworkRequestDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FilterWifiTracker"
.end annotation


# instance fields
.field private final mAccessPointKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

.field final synthetic this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .registers 5

    .line 482
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    new-instance p1, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker$1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;)V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    .line 483
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    const/4 v0, 0x1

    invoke-static {p2, p1, p3, v0, v0}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 485
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mAccessPointKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAccessPoints()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 508
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x5

    if-eqz v4, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/AccessPoint;

    .line 513
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 514
    iget-object v7, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mAccessPointKeys:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 515
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    .line 519
    iget-object v4, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$000(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-lt v3, v5, :cond_11

    .line 526
    :cond_39
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$000(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_48

    if-lt v3, v5, :cond_48

    .line 527
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$100(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    :cond_48
    if-lez v3, :cond_4f

    .line 530
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$200(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    :cond_4f
    if-gez v3, :cond_57

    .line 535
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {p0, v2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$300(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Z)V

    goto :goto_65

    .line 536
    :cond_57
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$400(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 537
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$300(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Z)V

    :cond_65
    :goto_65
    return-object v1
.end method

.method public onDestroy()V
    .registers 1

    .line 562
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz p0, :cond_7

    .line 563
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onDestroy()V

    :cond_7
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 574
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz p0, :cond_7

    .line 575
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    :cond_7
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 568
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz p0, :cond_7

    .line 569
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    :cond_7
    return-void
.end method

.method public updateKeys(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 493
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 494
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mAccessPointKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 496
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mAccessPointKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_22
    return-void
.end method
