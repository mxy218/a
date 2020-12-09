.class Lcom/android/server/NetworkManagementService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .line 368
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLinkPropertiesChanged$0$NetworkManagementService$1(Lcom/android/server/NetworkManagementService$RestrictIf;Ljava/lang/String;)V
    .registers 4

    .line 405
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$RestrictIf;Ljava/lang/String;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    .line 372
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 9

    .line 381
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 382
    if-nez v0, :cond_2e

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLinkPropertiesChanged: network was not in map: network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " linkProperties="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkManagement"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 387
    :cond_2e
    const/4 p1, 0x0

    .line 388
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)[Lcom/android/server/NetworkManagementService$RestrictIf;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v2, :cond_49

    aget-object v4, v1, v3

    .line 389
    iget v5, v4, Lcom/android/server/NetworkManagementService$RestrictIf;->transport:I

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 390
    nop

    .line 391
    move-object p1, v4

    goto :goto_49

    .line 388
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 394
    :cond_49
    :goto_49
    if-nez p1, :cond_4c

    .line 395
    return-void

    .line 397
    :cond_4c
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    .line 398
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 399
    return-void

    .line 402
    :cond_57
    nop

    .line 404
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$NetworkManagementService$1$cEe7AIGZabKkElb0YvNi_jszJbI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$1$cEe7AIGZabKkElb0YvNi_jszJbI;-><init>(Lcom/android/server/NetworkManagementService$1;Lcom/android/server/NetworkManagementService$RestrictIf;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 410
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    return-void
.end method
