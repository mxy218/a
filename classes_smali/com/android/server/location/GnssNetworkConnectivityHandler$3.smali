.class Lcom/android/server/location/GnssNetworkConnectivityHandler$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssNetworkConnectivityHandler;->createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/location/GnssNetworkConnectivityHandler;

    .line 385
    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"  # Landroid/net/Network;

    .line 388
    invoke-static {}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-static {v0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$800(Lcom/android/server/location/GnssNetworkConnectivityHandler;Landroid/net/Network;)V

    .line 391
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"  # Landroid/net/Network;

    .line 395
    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection lost."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$900(Lcom/android/server/location/GnssNetworkConnectivityHandler;I)V

    .line 397
    return-void
.end method

.method public onUnavailable()V
    .registers 3

    .line 401
    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection request timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$900(Lcom/android/server/location/GnssNetworkConnectivityHandler;I)V

    .line 404
    return-void
.end method
