.class Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;
.super Landroid/service/autofill/augmented/IFillCallback$Stub;
.source "RemoteAugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 196
    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-direct {p0}, Landroid/service/autofill/augmented/IFillCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->cancel()Z

    .line 229
    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$700(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Z

    move-result v0

    return v0
.end method

.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .registers 7
    .param p1, "cancellation"  # Landroid/os/ICancellationSignal;

    .line 205
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$200(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 207
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {v1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$300(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_31

    .line 208
    :try_start_e
    iget-object v2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {v2, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$402(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;

    .line 209
    iget-object v2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {v2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$500(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Z

    move-result v2

    .line 210
    .local v2, "cancelled":Z
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_2e

    .line 211
    if-eqz v2, :cond_2c

    .line 213
    :try_start_1c
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20
    .catchall {:try_start_1c .. :try_end_1f} :catchall_31

    .line 216
    goto :goto_2c

    .line 214
    :catch_20
    move-exception v1

    .line 215
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_21
    iget-object v3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {v3}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$600(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error requesting a cancellation"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v1  # "e":Landroid/os/RemoteException;
    .end local v2  # "cancelled":Z
    :cond_2c
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_31

    .line 219
    return-void

    .line 210
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    .end local p0  # "this":Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;
    .end local p1  # "cancellation":Landroid/os/ICancellationSignal;
    :try_start_30
    throw v2

    .line 218
    .restart local p0  # "this":Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;
    .restart local p1  # "cancellation":Landroid/os/ICancellationSignal;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public onSuccess()V
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$100(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 201
    :cond_9
    return-void
.end method
