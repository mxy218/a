.class Lcom/android/server/accounts/AccountManagerService$11;
.super Lcom/android/server/accounts/AccountManagerService$StartAccountSession;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 14

    .line 3364
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$11;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p10, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$authTokenType:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$options:Landroid/os/Bundle;

    iput-object p13, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$accountType:Ljava/lang/String;

    invoke-direct/range {p0 .. p9}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3367
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$11;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$11;->mAccountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$authTokenType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$requiredFeatures:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$options:Landroid/os/Bundle;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator;->startAddAccountSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3369
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 5

    .line 3373
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$requiredFeatures:[Ljava/lang/String;

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", startAddAccountSession, accountType "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$accountType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requiredFeatures "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3376
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$11;->val$requiredFeatures:[Ljava/lang/String;

    if-eqz p1, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3374
    return-object p1
.end method
