.class Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NewNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NewNetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkTimeUpdateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NewNetworkTimeUpdateService;


# direct methods
.method private constructor <init>(Lcom/android/server/NewNetworkTimeUpdateService;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NewNetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NewNetworkTimeUpdateService;Lcom/android/server/NewNetworkTimeUpdateService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/NewNetworkTimeUpdateService;
    .param p2, "x1"  # Lcom/android/server/NewNetworkTimeUpdateService$1;

    .line 373
    invoke-direct {p0, p1}, Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"  # Landroid/net/Network;

    .line 376
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "New default network %s; checking time."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NewNetworkTimeUpdateService;

    invoke-static {v0, p1}, Lcom/android/server/NewNetworkTimeUpdateService;->access$402(Lcom/android/server/NewNetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;

    .line 379
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NewNetworkTimeUpdateService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/NewNetworkTimeUpdateService;->access$300(Lcom/android/server/NewNetworkTimeUpdateService;I)V

    .line 380
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"  # Landroid/net/Network;

    .line 384
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NewNetworkTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/NewNetworkTimeUpdateService;->access$400(Lcom/android/server/NewNetworkTimeUpdateService;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NewNetworkTimeUpdateService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/NewNetworkTimeUpdateService;->access$402(Lcom/android/server/NewNetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;

    .line 385
    :cond_12
    return-void
.end method
