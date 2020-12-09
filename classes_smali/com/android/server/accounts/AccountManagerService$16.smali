.class Lcom/android/server/accounts/AccountManagerService$16;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$statusToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V
    .registers 11

    .line 3837
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p9, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    iput-object p10, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$statusToken:Ljava/lang/String;

    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 7

    .line 3851
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3852
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$16;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 3853
    if-nez v0, :cond_b

    .line 3854
    return-void

    .line 3857
    :cond_b
    const/4 v1, 0x5

    if-nez p1, :cond_17

    .line 3858
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string/jumbo v2, "null bundle"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->access$2300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3862
    return-void

    .line 3865
    :cond_17
    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " calling onResult() on response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    :cond_3f
    const/4 v2, -0x1

    const-string v3, "errorCode"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_58

    .line 3872
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3873
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3874
    const-string v3, "errorMessage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3872
    invoke-static {v1, v0, v2, p1}, Lcom/android/server/accounts/AccountManagerService;->access$2300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3875
    return-void

    .line 3877
    :cond_58
    const-string v2, "booleanResult"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 3878
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string/jumbo v2, "no result in response"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->access$2300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3882
    return-void

    .line 3884
    :cond_69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3885
    const/4 v3, 0x0

    .line 3886
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 3885
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3887
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {p1, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->access$2400(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 3888
    return-void
.end method

.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3846
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$16;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$statusToken:Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 3847
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 4

    .line 3840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isCredentialsUpdateSuggested, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    .line 3841
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3840
    return-object p1
.end method
