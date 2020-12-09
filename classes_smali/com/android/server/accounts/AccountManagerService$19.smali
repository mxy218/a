.class Lcom/android/server/accounts/AccountManagerService$19;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$response:Landroid/accounts/IAccountManagerResponse;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V
    .registers 4

    .line 4570
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$19;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$19;->val$response:Landroid/accounts/IAccountManagerResponse;

    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$19;->val$opPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4587
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4573
    const-string v0, "accounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 4575
    array-length v0, p1

    new-array v0, v0, [Landroid/accounts/Account;

    .line 4576
    const/4 v1, 0x0

    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 4577
    aget-object v2, p1, v1

    check-cast v2, Landroid/accounts/Account;

    aput-object v2, v0, v1

    .line 4576
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4579
    :cond_16
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$19;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$19;->val$response:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$19;->val$opPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->access$2700(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 4581
    return-void
.end method
