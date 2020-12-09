.class abstract Lcom/android/server/accounts/AccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Session"
.end annotation


# instance fields
.field final mAccountName:Ljava/lang/String;

.field final mAccountType:Ljava/lang/String;

.field protected final mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field final mAuthDetailsRequired:Z

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field final mCreationTime:J

.field final mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mStripAuthTokenFromResult:Z

.field final mUpdateLastAuthenticatedTime:Z

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .registers 19

    .line 4719
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 4721
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .registers 12

    .line 4725
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 4726
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 4707
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 4708
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 4709
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 4711
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4728
    if-eqz p4, :cond_4c

    .line 4729
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 4730
    iput-boolean p6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 4731
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4732
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 4733
    iput-boolean p5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 4734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    .line 4735
    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 4736
    iput-boolean p8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 4737
    iput-boolean p9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    .line 4739
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->access$2800(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p2

    monitor-enter p2

    .line 4740
    :try_start_2c
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->access$2800(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4741
    monitor-exit p2
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_49

    .line 4742
    if-eqz p3, :cond_48

    .line 4744
    :try_start_3a
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_42

    .line 4748
    goto :goto_48

    .line 4745
    :catch_42
    move-exception p1

    .line 4746
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4747
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->binderDied()V

    .line 4750
    :cond_48
    :goto_48
    return-void

    .line 4741
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1

    .line 4728
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .registers 10

    .line 5040
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$3300(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v0

    .line 5041
    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    .line 5040
    invoke-interface {v0, v1, v2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    .line 5042
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    if-nez v0, :cond_3b

    .line 5043
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 5044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "there is no authenticator for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bailing out"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5047
    :cond_3a
    return v1

    .line 5050
    :cond_3b
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-static {p1, v4}, Lcom/android/server/accounts/AccountManagerService;->access$3400(Lcom/android/server/accounts/AccountManagerService;I)Z

    move-result p1

    if-nez p1, :cond_6b

    iget-object p1, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    iget-boolean p1, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    if-nez p1, :cond_6b

    .line 5052
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blocking binding to authenticator "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which isn\'t encryption aware"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5054
    return v1

    .line 5057
    :cond_6b
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 5058
    const-string v4, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5059
    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5060
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 5061
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performing bindService to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5063
    :cond_97
    nop

    .line 5064
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService;->access$3300(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getBindInstantServiceAllowed(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_af

    .line 5065
    const v4, 0x400001

    goto :goto_b0

    .line 5064
    :cond_af
    move v4, v5

    .line 5067
    :goto_b0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v6, v6, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, p1, p0, v4, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_e6

    .line 5068
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 5069
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5071
    :cond_e5
    return v1

    .line 5074
    :cond_e6
    return v5
.end method

.method private close()V
    .registers 4

    .line 4810
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$2800(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-enter v0

    .line 4811
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->access$2800(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    .line 4813
    monitor-exit v0

    return-void

    .line 4815
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_30

    .line 4816
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_29

    .line 4818
    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4821
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4823
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->cancelTimeout()V

    .line 4824
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->unbind()V

    .line 4825
    return-void

    .line 4815
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private isExportedSystemActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 4

    .line 4803
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4804
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const-class p1, Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 4805
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    const-class p1, Landroid/accounts/CantAddAccountActivity;

    .line 4806
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    :cond_24
    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 4804
    :goto_27
    return p1
.end method

.method private unbind()V
    .registers 2

    .line 4856
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_e

    .line 4857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4858
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4860
    :cond_e
    return-void
.end method


# virtual methods
.method bind()V
    .registers 4

    .line 4846
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiating bind to authenticator type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4849
    :cond_1f
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 4850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind attempt failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4851
    const/4 v0, 0x1

    const-string v1, "bind failure"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 4853
    :cond_45
    return-void
.end method

.method public binderDied()V
    .registers 2

    .line 4829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4830
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 4831
    return-void
.end method

.method public cancelTimeout()V
    .registers 3

    .line 4863
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4864
    return-void
.end method

.method protected checkKeyIntent(ILandroid/content/Intent;)Z
    .registers 10

    .line 4771
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0xc4

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4777
    :try_start_d
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4778
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p2
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_69

    .line 4779
    if-nez p2, :cond_27

    .line 4780
    nop

    .line 4798
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4780
    return v4

    .line 4782
    :cond_27
    :try_start_27
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4783
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4784
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 4785
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->isExportedSystemActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_64

    const/16 v5, 0x10

    .line 4786
    invoke-virtual {v3, v2, p1, v5}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result p1

    if-nez p1, :cond_64

    .line 4789
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4790
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4791
    const-string v2, "KEY_INTENT resolved to an Activity (%s) in a package (%s) that does not share a signature with the supplying authenticator (%s)."

    .line 4793
    const-string v3, "AccountManagerService"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v4

    aput-object p1, v5, v6

    const/4 p1, 0x2

    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    aput-object p2, v5, p1

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_27 .. :try_end_5f} :catchall_69

    .line 4794
    nop

    .line 4798
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4794
    return v4

    .line 4796
    :cond_64
    nop

    .line 4798
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4796
    return v6

    .line 4798
    :catchall_69
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .registers 2

    .line 4753
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-nez v0, :cond_6

    .line 4755
    const/4 v0, 0x0

    return-object v0

    .line 4757
    :cond_6
    nop

    .line 4758
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 4759
    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .registers 8

    .line 5013
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 5014
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 5015
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    if-eqz v0, :cond_45

    .line 5016
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 5017
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " calling onError() on response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    :cond_34
    :try_start_34
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38

    .line 5026
    :cond_37
    :goto_37
    goto :goto_50

    .line 5022
    :catch_38
    move-exception p1

    .line 5023
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 5024
    const-string p2, "Session.onError: caught RemoteException while responding"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 5028
    :cond_45
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 5029
    const-string p1, "Session.onError: already closed"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5032
    :cond_50
    :goto_50
    return-void
.end method

.method public onRequestContinued()V
    .registers 2

    .line 5008
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 5009
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 11

    .line 4913
    const-string v0, "errorCode"

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 4914
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 4915
    nop

    .line 4916
    const-string v2, "accountType"

    const-string v3, "authAccount"

    if-eqz p1, :cond_73

    .line 4917
    const/4 v4, 0x0

    const-string v5, "booleanResult"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 4919
    nop

    .line 4920
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 4921
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    move v6, v1

    goto :goto_29

    :cond_28
    move v6, v4

    .line 4925
    :goto_29
    iget-boolean v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    if-eqz v7, :cond_32

    if-nez v5, :cond_31

    if-eqz v6, :cond_32

    :cond_31
    goto :goto_33

    :cond_32
    move v1, v4

    .line 4927
    :goto_33
    if-nez v1, :cond_39

    iget-boolean v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v4, :cond_73

    .line 4928
    :cond_39
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->access$2900(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 4929
    if-eqz v1, :cond_55

    if-eqz v4, :cond_55

    .line 4930
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    new-instance v5, Landroid/accounts/Account;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/android/server/accounts/AccountManagerService;->access$3000(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z

    .line 4932
    :cond_55
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v1, :cond_73

    .line 4933
    const-wide/16 v5, -0x1

    .line 4934
    if-eqz v4, :cond_6e

    .line 4935
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    new-instance v4, Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4936
    invoke-virtual {v1, v4}, Lcom/android/server/accounts/AccountsDb;->findAccountLastAuthenticatedTime(Landroid/accounts/Account;)J

    move-result-wide v5

    .line 4939
    :cond_6e
    const-string v1, "lastAuthenticatedTime"

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4944
    :cond_73
    const/4 v1, 0x5

    const-string v4, "intent"

    if-eqz p1, :cond_91

    .line 4945
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    if-eqz v5, :cond_92

    .line 4946
    nop

    .line 4947
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4946
    invoke-virtual {p0, v6, v5}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_92

    .line 4949
    const-string p1, "invalid intent in bundle returned"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 4951
    return-void

    .line 4944
    :cond_91
    const/4 v5, 0x0

    .line 4954
    :cond_92
    const-string v6, "authtoken"

    if-eqz p1, :cond_cf

    .line 4955
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_cf

    .line 4956
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4957
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4958
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_cf

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_cf

    .line 4959
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v3, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4960
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v2, v3, v7}, Lcom/android/server/accounts/AccountManagerService;->access$3100(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v3

    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 4961
    invoke-static {v8}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 4960
    invoke-static {v2, v3, v7}, Lcom/android/server/accounts/AccountManagerService;->access$3200(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 4965
    :cond_cf
    iget-boolean v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    if-eqz v2, :cond_de

    if-eqz p1, :cond_de

    .line 4966
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 4967
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    goto :goto_e2

    .line 4969
    :cond_de
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v2

    .line 4971
    :goto_e2
    if-eqz v2, :cond_168

    .line 4973
    const/4 v3, 0x2

    const-string v4, "AccountManagerService"

    if-nez p1, :cond_115

    .line 4974
    :try_start_e9
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_10e

    .line 4975
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " calling onError() on response "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4978
    :cond_10e
    const-string/jumbo p1, "null bundle returned"

    invoke-interface {v2, v1, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_15b

    .line 4981
    :cond_115
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    if-eqz v1, :cond_11c

    .line 4982
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4984
    :cond_11c
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 4985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " calling onResult() on response "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4988
    :cond_141
    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_158

    if-nez v5, :cond_158

    .line 4991
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "errorMessage"

    .line 4992
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4991
    invoke-interface {v2, v0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_15b

    .line 4994
    :cond_158
    invoke-interface {v2, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_15b
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_15b} :catch_15c

    .line 5002
    :goto_15b
    goto :goto_168

    .line 4997
    :catch_15c
    move-exception p1

    .line 4999
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 5000
    const-string v0, "failure while notifying response"

    invoke-static {v4, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5004
    :cond_168
    :goto_168
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 4868
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4870
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->run()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 4874
    goto :goto_12

    .line 4871
    :catch_a
    move-exception p1

    .line 4872
    const/4 p1, 0x1

    const-string/jumbo p2, "remote exception"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 4875
    :goto_12
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 4879
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4880
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object p1

    .line 4881
    if-eqz p1, :cond_1f

    .line 4883
    const/4 v0, 0x1

    :try_start_a
    const-string v1, "disconnected"

    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 4890
    goto :goto_1f

    .line 4885
    :catch_10
    move-exception p1

    .line 4886
    const/4 v0, 0x2

    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4887
    const-string v0, "Session.onServiceDisconnected: caught RemoteException while responding"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4892
    :cond_1f
    :goto_1f
    return-void
.end method

.method public onTimedOut()V
    .registers 4

    .line 4897
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 4898
    if-eqz v0, :cond_1d

    .line 4900
    const/4 v1, 0x1

    :try_start_7
    const-string/jumbo v2, "timeout"

    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    .line 4907
    goto :goto_1d

    .line 4902
    :catch_e
    move-exception v0

    .line 4903
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4904
    const-string v1, "Session.onTimedOut: caught RemoteException while responding"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4909
    :cond_1d
    :goto_1d
    return-void
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected toDebugString()Ljava/lang/String;
    .registers 3

    .line 4834
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 6

    .line 4838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    sub-long/2addr p1, v1

    long-to-double p1, p1

    const-wide v1, 0x408f400000000000L  # 1000.0

    div-double/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
