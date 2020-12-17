.class Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;
.super Landroid/service/autofill/IFillCallback$Stub;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;-><init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

.field final synthetic val$request:Landroid/service/autofill/FillRequest;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillRequest;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 208
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->val$request:Landroid/service/autofill/FillRequest;

    invoke-direct {p0}, Landroid/service/autofill/IFillCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .registers 7
    .param p1, "cancellation"  # Landroid/os/ICancellationSignal;

    .line 211
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$000(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 213
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_31

    .line 214
    :try_start_e
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v2, p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$202(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;

    .line 215
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v2}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$300(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Z

    move-result v2

    .line 216
    .local v2, "cancelled":Z
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_2e

    .line 217
    if-eqz v2, :cond_2c

    .line 219
    :try_start_1c
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20
    .catchall {:try_start_1c .. :try_end_1f} :catchall_31

    .line 222
    goto :goto_2c

    .line 220
    :catch_20
    move-exception v1

    .line 221
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_21
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v3}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$400(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error requesting a cancellation"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v1  # "e":Landroid/os/RemoteException;
    .end local v2  # "cancelled":Z
    :cond_2c
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_31

    .line 225
    return-void

    .line 216
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    .end local p0  # "this":Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;
    .end local p1  # "cancellation":Landroid/os/ICancellationSignal;
    :try_start_30
    throw v2

    .line 224
    .restart local p0  # "this":Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;
    .restart local p1  # "cancellation":Landroid/os/ICancellationSignal;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public onFailure(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "requestId"  # I
    .param p2, "message"  # Ljava/lang/CharSequence;

    .line 240
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$800(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 242
    :cond_9
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$900(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    .line 243
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_18

    .line 244
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v0, v1, p2}, Lcom/android/server/autofill/RemoteFillService;->access$1000(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    .line 247
    :cond_18
    return-void
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .registers 5
    .param p1, "response"  # Landroid/service/autofill/FillResponse;

    .line 229
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$500(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 231
    :cond_9
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$600(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    .line 232
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_1e

    .line 233
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->val$request:Landroid/service/autofill/FillRequest;

    .line 234
    invoke-virtual {v2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v2

    .line 233
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/autofill/RemoteFillService;->access$700(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    .line 236
    :cond_1e
    return-void
.end method
