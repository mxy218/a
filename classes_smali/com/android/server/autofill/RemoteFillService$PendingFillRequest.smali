.class final Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
.super Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingFillRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractRemoteService$PendingRequest<",
        "Lcom/android/server/autofill/RemoteFillService;",
        "Landroid/service/autofill/IAutoFillService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/service/autofill/IFillCallback;

.field private mCancellation:Landroid/os/ICancellationSignal;

.field private final mRequest:Landroid/service/autofill/FillRequest;


# direct methods
.method public constructor <init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V
    .registers 4
    .param p1, "request"  # Landroid/service/autofill/FillRequest;
    .param p2, "service"  # Lcom/android/server/autofill/RemoteFillService;

    .line 205
    invoke-direct {p0, p2}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    .line 206
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    .line 208
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;-><init>(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillRequest;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCallback:Landroid/service/autofill/IFillCallback;

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 198
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 198
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p1, "x1"  # Landroid/os/ICancellationSignal;

    .line 198
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 198
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 198
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->isCancelledLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 198
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 198
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->finish()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Lcom/android/internal/infra/AbstractRemoteService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 198
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 198
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->finish()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Lcom/android/internal/infra/AbstractRemoteService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 198
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()Z
    .registers 5

    .line 288
    invoke-super {p0}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->cancel()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 291
    :cond_8
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_b
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    .line 293
    .local v1, "cancellation":Landroid/os/ICancellationSignal;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1e

    .line 294
    if-eqz v1, :cond_1c

    .line 296
    :try_start_10
    invoke-interface {v1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 299
    goto :goto_1c

    .line 297
    :catch_14
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mTag:Ljava/lang/String;

    const-string v3, "Error cancelling a fill request"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    return v0

    .line 293
    .end local v1  # "cancellation":Landroid/os/ICancellationSignal;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method protected bridge synthetic onTimeout(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 2

    .line 198
    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->onTimeout(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method

.method protected onTimeout(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 4
    .param p1, "remoteService"  # Lcom/android/server/autofill/RemoteFillService;

    .line 256
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    .line 258
    .local v1, "cancellation":Landroid/os/ICancellationSignal;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 259
    if-eqz v1, :cond_b

    .line 260
    invoke-static {p1, v1}, Lcom/android/server/autofill/RemoteFillService;->access$1100(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V

    .line 262
    :cond_b
    invoke-static {p1, p0}, Lcom/android/server/autofill/RemoteFillService;->access$1200(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V

    .line 263
    return-void

    .line 258
    .end local v1  # "cancellation":Landroid/os/ICancellationSignal;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public run()V
    .registers 5

    .line 267
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->isCancelledLocked()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 269
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run() called after canceled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_26
    monitor-exit v0

    return-void

    .line 272
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_6c

    .line 273
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    .line 274
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_6b

    .line 275
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling onFillRequest() for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v3}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_51
    :try_start_51
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$1300(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/IAutoFillService;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v1, v2, v3}, Landroid/service/autofill/IAutoFillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5e} :catch_5f

    .line 282
    goto :goto_6b

    .line 278
    :catch_5f
    move-exception v1

    .line 279
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mTag:Ljava/lang/String;

    const-string v3, "Error calling on fill request"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/android/server/autofill/RemoteFillService;->access$1000(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    .line 284
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_6b
    :goto_6b
    return-void

    .line 272
    .end local v0  # "remoteService":Lcom/android/server/autofill/RemoteFillService;
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method
