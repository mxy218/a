.class Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestFeaturesSession"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mFeatures:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .registers 15

    .line 1929
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 1930
    iget-object v4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 1933
    iput-object p5, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    .line 1934
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAccount:Landroid/accounts/Account;

    .line 1935
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 8

    .line 1948
    const-string v0, "booleanResult"

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1949
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 1950
    if-eqz v1, :cond_5c

    .line 1952
    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    if-nez p1, :cond_1b

    .line 1953
    const/4 p1, 0x5

    :try_start_12
    const-string/jumbo v0, "null bundle"

    invoke-interface {v1, p1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 1954
    return-void

    .line 1964
    :catch_19
    move-exception p1

    goto :goto_51

    .line 1956
    :cond_1b
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1957
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

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    :cond_40
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1961
    const/4 v5, 0x0

    .line 1962
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1961
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1963
    invoke-interface {v1, v4}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_50} :catch_19

    .line 1969
    goto :goto_5c

    .line 1966
    :goto_51
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1967
    const-string v0, "failure while notifying response"

    invoke-static {v3, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1971
    :cond_5c
    :goto_5c
    return-void
.end method

.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1940
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1943
    goto :goto_12

    .line 1941
    :catch_a
    move-exception v0

    .line 1942
    const/4 v0, 0x1

    const-string/jumbo v1, "remote exception"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->onError(ILjava/lang/String;)V

    .line 1944
    :goto_12
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 4

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", hasFeatures, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    if-eqz p1, :cond_26

    const-string p2, ","

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1975
    return-object p1
.end method
