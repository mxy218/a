.class Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "RemoteAugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

.field final synthetic val$remoteService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V
    .registers 3

    .line 244
    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;->val$remoteService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    nop

    .line 249
    const-string p1, "android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 250
    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;->val$remoteService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->access$1500(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Landroid/os/IInterface;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$800(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)I

    move-result v1

    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$900(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)I

    move-result v3

    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 251
    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$1000(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Landroid/content/ComponentName;

    move-result-object v4

    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$1100(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Landroid/view/autofill/AutofillId;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$1200(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$1300(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)J

    move-result-wide v7

    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->access$1400(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Landroid/service/autofill/augmented/IFillCallback;

    move-result-object v9

    .line 250
    invoke-interface/range {v0 .. v9}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/service/autofill/augmented/IFillCallback;)V

    .line 252
    return-void
.end method
