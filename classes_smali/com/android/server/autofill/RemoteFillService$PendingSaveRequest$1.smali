.class Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;
.super Landroid/service/autofill/ISaveCallback$Stub;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;-><init>(Landroid/service/autofill/SaveRequest;Lcom/android/server/autofill/RemoteFillService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    .line 315
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-direct {p0}, Landroid/service/autofill/ISaveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "message"  # Ljava/lang/CharSequence;

    .line 329
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->access$1700(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 331
    :cond_9
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->access$1800(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    .line 332
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_18

    .line 333
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-static {v0, v1, p1}, Lcom/android/server/autofill/RemoteFillService;->access$1900(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Ljava/lang/CharSequence;)V

    .line 336
    :cond_18
    return-void
.end method

.method public onSuccess(Landroid/content/IntentSender;)V
    .registers 4
    .param p1, "intentSender"  # Landroid/content/IntentSender;

    .line 318
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->access$1400(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 320
    :cond_9
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;->access$1500(Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;)Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    .line 321
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_18

    .line 322
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-static {v0, v1, p1}, Lcom/android/server/autofill/RemoteFillService;->access$1600(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;Landroid/content/IntentSender;)V

    .line 325
    :cond_18
    return-void
.end method
