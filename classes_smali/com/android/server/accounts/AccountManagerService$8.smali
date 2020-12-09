.class Lcom/android/server/accounts/AccountManagerService$8;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callerPkg:Ljava/lang/String;

.field final synthetic val$callerPkgSigDigest:[B

.field final synthetic val$callerUid:I

.field final synthetic val$customTokens:Z

.field final synthetic val$loginOptions:Landroid/os/Bundle;

.field final synthetic val$notifyOnAuthFailure:Z

.field final synthetic val$permissionGranted:Z


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 22

    .line 2931
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    move v2, p12

    iput-boolean v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    move/from16 v2, p13

    iput-boolean v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$permissionGranted:Z

    move/from16 v2, p14

    iput v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerUid:I

    move/from16 v2, p15

    iput-boolean v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkgSigDigest:[B

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$8;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 13

    .line 2955
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2956
    if-eqz p1, :cond_c7

    .line 2957
    const-string v0, "authTokenLabelKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "intent"

    if-eqz v0, :cond_2f

    .line 2958
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerUid:I

    new-instance v6, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v6, p0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->access$1800(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 2965
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2966
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2967
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService$8;->onResult(Landroid/os/Bundle;)V

    .line 2968
    return-void

    .line 2970
    :cond_2f
    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2971
    const/4 v0, 0x5

    if-eqz v8, :cond_8e

    .line 2972
    const-string v2, "authAccount"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2973
    const-string v3, "accountType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2974
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_87

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_51

    goto :goto_87

    .line 2979
    :cond_51
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    iget-boolean v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    if-nez v2, :cond_63

    .line 2981
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v8}, Lcom/android/server/accounts/AccountManagerService;->access$1900(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2987
    :cond_63
    const-wide/16 v2, 0x0

    const-string v4, "android.accounts.expiry"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 2989
    iget-boolean v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    if-eqz v2, :cond_8e

    .line 2990
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v9, v2

    if-lez v2, :cond_8e

    .line 2991
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$callerPkgSigDigest:[B

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    invoke-static/range {v2 .. v10}, Lcom/android/server/accounts/AccountManagerService;->access$2000(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_8e

    .line 2975
    :cond_87
    :goto_87
    const-string/jumbo p1, "the type and name should not be empty"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$8;->onError(ILjava/lang/String;)V

    .line 2977
    return-void

    .line 3002
    :cond_8e
    :goto_8e
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Intent;

    .line 3003
    if-eqz v6, :cond_c7

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    if-eqz v1, :cond_c7

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$customTokens:Z

    if-nez v1, :cond_c7

    .line 3010
    nop

    .line 3011
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3010
    invoke-virtual {p0, v1, v6}, Lcom/android/server/accounts/AccountManagerService$8;->checkKeyIntent(ILandroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 3013
    const-string p1, "invalid intent in bundle returned"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$8;->onError(ILjava/lang/String;)V

    .line 3015
    return-void

    .line 3017
    :cond_b0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 3020
    const-string v0, "authFailedMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 3021
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    .line 3017
    const-string v7, "android"

    invoke-static/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->access$2100(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3024
    :cond_c7
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 3025
    return-void
.end method

.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2946
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$permissionGranted:Z

    if-nez v0, :cond_c

    .line 2947
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    goto :goto_17

    .line 2949
    :cond_c
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2951
    :goto_17
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 4

    .line 2934
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 2935
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getAuthToken, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$account:Landroid/accounts/Account;

    .line 2936
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", authTokenType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", loginOptions "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notifyOnAuthFailure "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/accounts/AccountManagerService$8;->val$notifyOnAuthFailure:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2935
    return-object p1
.end method
