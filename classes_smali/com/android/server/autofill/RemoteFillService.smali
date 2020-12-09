.class final Lcom/android/server/autofill/RemoteFillService;
.super Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;,
        Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;,
        Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService<",
        "Lcom/android/server/autofill/RemoteFillService;",
        "Landroid/service/autofill/IAutoFillService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIMEOUT_IDLE_BIND_MILLIS:J = 0x1388L

.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x1388L


# instance fields
.field private final mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V
    .registers 15

    .line 68
    nop

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 70
    if-eqz p5, :cond_a

    const/high16 p5, 0x400000

    goto :goto_b

    :cond_a
    const/4 p5, 0x0

    :goto_b
    const/high16 v0, 0x100000

    or-int v7, p5, v0

    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 68
    const-string v2, "android.service.autofill.AutofillService"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V

    .line 71
    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 72
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestTimeout(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/IInterface;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mService:Landroid/os/IInterface;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Landroid/content/IntentSender;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Landroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Ljava/lang/CharSequence;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/IInterface;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mService:Landroid/os/IInterface;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    return-void
.end method

.method private dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$uMtdVaR6ZSsnb2B7-3JV-KnL1_w;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$uMtdVaR6ZSsnb2B7-3JV-KnL1_w;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method

.method private dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .registers 6

    .line 145
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$nNsNqySgqQYv3OSs9eiVuCXLs9E;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$nNsNqySgqQYv3OSs9eiVuCXLs9E;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method private dispatchOnFillRequestTimeout(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17ODPUArCJOdtrnekJFErsoLsNA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17ODPUArCJOdtrnekJFErsoLsNA;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method

.method private dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$cFdxAsb2okq_1ntxSWIoefN2D0Y;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$cFdxAsb2okq_1ntxSWIoefN2D0Y;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method private dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Ljava/lang/CharSequence;)V
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1eWrRA9nIGIKrCDRbK04sVnr0uo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1eWrRA9nIGIKrCDRbK04sVnr0uo;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method

.method private dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Landroid/content/IntentSender;)V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$nNE3l9bMJ5YfGBwv5fnJX_ib1VQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$nNE3l9bMJ5YfGBwv5fnJX_ib1VQ;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method private handleResponseCallbackCommon(Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$PendingRequest<",
            "Lcom/android/server/autofill/RemoteFillService;",
            "Landroid/service/autofill/IAutoFillService;",
            ">;)Z"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 137
    :cond_8
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    if-ne v0, p1, :cond_f

    .line 138
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    .line 140
    :cond_f
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public cancelCurrentRequest()Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_BUUnv78CuBw5KA9LSgPsdJ9MjM;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_BUUnv78CuBw5KA9LSgPsdJ9MjM;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/autofill/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v2}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected getRemoteRequestMillis()J
    .registers 3

    .line 99
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutoFillService;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutoFillService;
    .registers 2

    .line 89
    invoke-static {p1}, Landroid/service/autofill/IAutoFillService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutoFillService;

    move-result-object p1

    return-object p1
.end method

.method protected getTimeoutIdleBindMillis()J
    .registers 3

    .line 94
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method protected handleOnConnectedStateChanged(Z)V
    .registers 6

    .line 76
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_d

    .line 77
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "onConnectedStateChanged(): null service"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 81
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mService:Landroid/os/IInterface;

    check-cast v0, Landroid/service/autofill/IAutoFillService;

    invoke-interface {v0, p1}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_15

    .line 84
    goto :goto_34

    .line 82
    :catch_15
    move-exception v0

    .line 83
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling onConnectedStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_34
    return-void
.end method

.method public synthetic lambda$cancelCurrentRequest$0$RemoteFillService()Ljava/lang/Integer;
    .registers 4

    .line 113
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->isDestroyed()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_d

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 117
    :cond_d
    nop

    .line 118
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->handleCancelPendingRequest()Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    move-result-object v0

    .line 119
    instance-of v2, v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    if-eqz v2, :cond_21

    .line 120
    check-cast v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$2100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    goto :goto_22

    .line 121
    :cond_21
    nop

    .line 119
    :goto_22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$dispatchOnFillRequestFailure$2$RemoteFillService(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .registers 4

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 157
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$2100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/CharSequence;)V

    .line 159
    :cond_13
    return-void
.end method

.method public synthetic lambda$dispatchOnFillRequestSuccess$1$RemoteFillService(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .registers 6

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 147
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$2100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 148
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V

    .line 150
    :cond_19
    return-void
.end method

.method public synthetic lambda$dispatchOnFillRequestTimeout$3$RemoteFillService(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .registers 3

    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 165
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$2100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestTimeout(I)V

    .line 167
    :cond_13
    return-void
.end method

.method public synthetic lambda$dispatchOnFillTimeout$4$RemoteFillService(Landroid/os/ICancellationSignal;)V
    .registers 5

    .line 173
    :try_start_0
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 176
    goto :goto_1b

    .line 174
    :catch_4
    move-exception p1

    .line 175
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling cancellation signal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_1b
    return-void
.end method

.method public synthetic lambda$dispatchOnSaveRequestFailure$6$RemoteFillService(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Ljava/lang/CharSequence;)V
    .registers 4

    .line 192
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 193
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 195
    :cond_11
    return-void
.end method

.method public synthetic lambda$dispatchOnSaveRequestSuccess$5$RemoteFillService(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Landroid/content/IntentSender;)V
    .registers 4

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 184
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 186
    :cond_11
    return-void
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;)V
    .registers 3

    .line 126
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;-><init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 127
    return-void
.end method

.method public onSaveRequest(Landroid/service/autofill/SaveRequest;)V
    .registers 3

    .line 130
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;-><init>(Landroid/service/autofill/SaveRequest;Lcom/android/server/autofill/RemoteFillService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 131
    return-void
.end method
