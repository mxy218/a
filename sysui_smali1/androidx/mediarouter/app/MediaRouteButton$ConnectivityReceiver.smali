.class final Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field private mButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/app/MediaRouteButton;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsConnected:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 775
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 772
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mIsConnected:Z

    .line 776
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mContext:Landroid/content/Context;

    .line 777
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .registers 1

    .line 798
    iget-boolean p0, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mIsConnected:Z

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 803
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 804
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, 0x0

    const-string v0, "noConnectivity"

    .line 805
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 807
    iget-boolean p2, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mIsConnected:Z

    if-eq p2, p1, :cond_31

    .line 808
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mIsConnected:Z

    .line 809
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/app/MediaRouteButton;

    .line 810
    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteButton;->refreshVisibility()V

    goto :goto_21

    :cond_31
    return-void
.end method

.method public registerReceiver(Landroidx/mediarouter/app/MediaRouteButton;)V
    .registers 4

    .line 781
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 782
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 783
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 784
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 786
    :cond_17
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterReceiver(Landroidx/mediarouter/app/MediaRouteButton;)V
    .registers 3

    .line 790
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 792
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_12

    .line 793
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_12
    return-void
.end method
