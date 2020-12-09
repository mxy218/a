.class Lcom/android/server/NetworkScoreService$5;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkScoreService;->clearInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Landroid/net/INetworkScoreCache;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkScoreService;)V
    .registers 2

    .line 814
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$5;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/net/INetworkScoreCache;Ljava/lang/Object;)V
    .registers 4

    .line 818
    :try_start_0
    invoke-interface {p1}, Landroid/net/INetworkScoreCache;->clearScores()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 823
    goto :goto_13

    .line 819
    :catch_4
    move-exception p1

    .line 820
    const/4 p2, 0x2

    const-string v0, "NetworkScoreService"

    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 821
    const-string p2, "Unable to clear scores"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    :cond_13
    :goto_13
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 814
    check-cast p1, Landroid/net/INetworkScoreCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkScoreService$5;->accept(Landroid/net/INetworkScoreCache;Ljava/lang/Object;)V

    return-void
.end method
