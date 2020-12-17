.class final Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;
.super Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingSaveRequest"
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
.field private final mCallback:Landroid/service/autofill/ISaveCallback;

.field private final mRequest:Landroid/service/autofill/SaveRequest;


# direct methods
.method public constructor <init>(Landroid/service/autofill/SaveRequest;Lcom/android/server/autofill/RemoteFillService;)V
    .registers 4
    .param p1, "request"  # Landroid/service/autofill/SaveRequest;
    .param p2, "service"  # Lcom/android/server/autofill/RemoteFillService;

    .line 312
    invoke-direct {p0, p2}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    .line 313
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mRequest:Landroid/service/autofill/SaveRequest;

    .line 315
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;-><init>(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mCallback:Landroid/service/autofill/ISaveCallback;

    .line 338
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    .line 305
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->finish()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)Lcom/android/internal/infra/AbstractRemoteService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    .line 305
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    .line 305
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->finish()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)Lcom/android/internal/infra/AbstractRemoteService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    .line 305
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isFinal()Z
    .registers 2

    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic onTimeout(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 2

    .line 305
    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->onTimeout(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method

.method protected onTimeout(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 3
    .param p1, "remoteService"  # Lcom/android/server/autofill/RemoteFillService;

    .line 342
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/server/autofill/RemoteFillService;->access$1900(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method public run()V
    .registers 5

    .line 347
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    .line 348
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_2d

    .line 349
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mTag:Ljava/lang/String;

    const-string v2, "calling onSaveRequest()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_13
    :try_start_13
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$2000(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/IAutoFillService;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mRequest:Landroid/service/autofill/SaveRequest;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mCallback:Landroid/service/autofill/ISaveCallback;

    invoke-interface {v1, v2, v3}, Landroid/service/autofill/IAutoFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_20} :catch_21

    .line 356
    goto :goto_2d

    .line 352
    :catch_21
    move-exception v1

    .line 353
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->mTag:Ljava/lang/String;

    const-string v3, "Error calling on save request"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/android/server/autofill/RemoteFillService;->access$1900(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Ljava/lang/CharSequence;)V

    .line 358
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    return-void
.end method
