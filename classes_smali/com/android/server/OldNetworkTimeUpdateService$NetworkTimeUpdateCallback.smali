.class Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "OldNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OldNetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkTimeUpdateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OldNetworkTimeUpdateService;


# direct methods
.method private constructor <init>(Lcom/android/server/OldNetworkTimeUpdateService;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OldNetworkTimeUpdateService;Lcom/android/server/OldNetworkTimeUpdateService$1;)V
    .registers 3

    .line 277
    invoke-direct {p0, p1}, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/OldNetworkTimeUpdateService;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    .line 280
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "New default network %s; checking time."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-static {v0, p1}, Lcom/android/server/OldNetworkTimeUpdateService;->access$402(Lcom/android/server/OldNetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;

    .line 283
    iget-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/server/OldNetworkTimeUpdateService;->access$300(Lcom/android/server/OldNetworkTimeUpdateService;I)V

    .line 284
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/OldNetworkTimeUpdateService;->access$400(Lcom/android/server/OldNetworkTimeUpdateService;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/OldNetworkTimeUpdateService;->access$402(Lcom/android/server/OldNetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;

    .line 289
    :cond_12
    return-void
.end method
