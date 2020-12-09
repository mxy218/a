.class Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccountsByTypeAndFeatureSession"
.end annotation


# instance fields
.field private volatile mAccountsOfType:[Landroid/accounts/Account;

.field private volatile mAccountsWithFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallingUid:I

.field private volatile mCurrentAccount:I

.field private final mFeatures:[Ljava/lang/String;

.field private final mIncludeManagedNotVisible:Z

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 19

    .line 4116
    move-object v9, p0

    move-object v1, p1

    iput-object v1, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 4117
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 4102
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 4103
    iput-object v0, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 4104
    const/4 v0, 0x0

    iput v0, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 4120
    move/from16 v0, p6

    iput v0, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCallingUid:I

    .line 4121
    move-object v0, p5

    iput-object v0, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    .line 4122
    move-object/from16 v0, p7

    iput-object v0, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mPackageName:Ljava/lang/String;

    .line 4123
    move/from16 v0, p8

    iput-boolean v0, v9, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mIncludeManagedNotVisible:Z

    .line 4124
    return-void
.end method


# virtual methods
.method public checkAccount()V
    .registers 4

    .line 4138
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_b

    .line 4139
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->sendResult()V

    .line 4140
    return-void

    .line 4143
    :cond_b
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4144
    if-nez v0, :cond_31

    .line 4149
    const/4 v0, 0x2

    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAccount: aborting session since we are no longer connected to the authenticator, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4151
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4150
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    :cond_30
    return-void

    .line 4156
    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_3d

    .line 4159
    goto :goto_45

    .line 4157
    :catch_3d
    move-exception v0

    .line 4158
    const/4 v0, 0x1

    const-string/jumbo v1, "remote exception"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    .line 4160
    :goto_45
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 5

    .line 4164
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 4165
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mNumResults:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mNumResults:I

    .line 4166
    if-nez p1, :cond_13

    .line 4167
    const/4 p1, 0x5

    const-string/jumbo v0, "null bundle"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    .line 4168
    return-void

    .line 4170
    :cond_13
    const/4 v1, 0x0

    const-string v2, "booleanResult"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 4171
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4173
    :cond_27
    iget p1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 4174
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    .line 4175
    return-void
.end method

.method public run()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4128
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountType:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCallingUid:I

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mPackageName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mIncludeManagedNotVisible:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 4131
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 4132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 4134
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    .line 4135
    return-void
.end method

.method public sendResult()V
    .registers 7

    .line 4178
    const-string v0, "AccountManagerService"

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 4179
    if-eqz v1, :cond_61

    .line 4181
    const/4 v2, 0x2

    :try_start_9
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/accounts/Account;

    .line 4182
    const/4 v4, 0x0

    :goto_12
    array-length v5, v3

    if-ge v4, v5, :cond_22

    .line 4183
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    aput-object v5, v3, v4

    .line 4182
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 4185
    :cond_22
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 4186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " calling onResult() on response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    :cond_47
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4190
    const-string v5, "accounts"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4191
    invoke-interface {v1, v4}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_54} :catch_55

    .line 4197
    goto :goto_61

    .line 4192
    :catch_55
    move-exception v1

    .line 4194
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 4195
    const-string v2, "failure while notifying response"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4199
    :cond_61
    :goto_61
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 4

    .line 4203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getAccountsByTypeAndFeatures, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4204
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    if-eqz p1, :cond_1c

    const-string p2, ","

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4203
    return-object p1
.end method
