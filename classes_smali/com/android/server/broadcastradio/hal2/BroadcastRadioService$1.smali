.class Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRegistration("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BcRadio2Srv"

    invoke-static {p3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$000(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 64
    :try_start_33
    iget-object p3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {p3}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$100(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 65
    nop

    .line 66
    const/4 v0, 0x0

    if-nez p3, :cond_52

    .line 67
    const/4 p3, 0x1

    .line 68
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$200(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v6, v1

    move v1, p3

    move-object p3, v6

    goto :goto_53

    .line 66
    :cond_52
    move v1, v0

    .line 71
    :goto_53
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->tryLoadingModule(ILjava/lang/String;)Lcom/android/server/broadcastradio/hal2/RadioModule;

    move-result-object v2

    .line 72
    if-nez v2, :cond_5f

    .line 73
    monitor-exit p1

    return-void

    .line 75
    :cond_5f
    const-string v3, "BcRadio2Srv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loaded broadcast radio module "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (HAL 2.0)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v3}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$300(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 78
    if-eqz v3, :cond_97

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->closeSessions(Ljava/lang/Integer;)V

    .line 82
    :cond_97
    if-eqz v1, :cond_a7

    .line 83
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$100(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {p2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$208(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)I
    :try_end_a7
    .catchall {:try_start_33 .. :try_end_a7} :catchall_c6

    .line 88
    :cond_a7
    :try_start_a7
    invoke-virtual {v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->getService()Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$400(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Landroid/os/IHwBinder$DeathRecipient;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p2, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_b9} :catch_ba
    .catchall {:try_start_a7 .. :try_end_b9} :catchall_c6

    .line 92
    goto :goto_c4

    .line 89
    :catch_ba
    move-exception p2

    .line 91
    :try_start_bb
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {p2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->access$300(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_c4
    monitor-exit p1

    .line 94
    return-void

    .line 93
    :catchall_c6
    move-exception p2

    monitor-exit p1
    :try_end_c8
    .catchall {:try_start_bb .. :try_end_c8} :catchall_c6

    throw p2
.end method
