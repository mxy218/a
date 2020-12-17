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
    .param p2, "accounts"  # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"  # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"  # Ljava/lang/String;
    .param p5, "expectActivityLaunch"  # Z
    .param p6, "stripAuthTokenFromResult"  # Z
    .param p7, "accountName"  # Ljava/lang/String;
    .param p8, "authDetailsRequired"  # Z

    .line 4703
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

    .line 4705
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .registers 14
    .param p2, "accounts"  # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"  # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"  # Ljava/lang/String;
    .param p5, "expectActivityLaunch"  # Z
    .param p6, "stripAuthTokenFromResult"  # Z
    .param p7, "accountName"  # Ljava/lang/String;
    .param p8, "authDetailsRequired"  # Z
    .param p9, "updateLastAuthenticatedTime"  # Z

    .line 4709
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 4710
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 4691
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 4692
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 4693
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 4695
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4712
    if-eqz p4, :cond_4c

    .line 4713
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 4714
    iput-boolean p6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 4715
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4716
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 4717
    iput-boolean p5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 4718
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    .line 4719
    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 4720
    iput-boolean p8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 4721
    iput-boolean p9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    .line 4723
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->access$2800(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v2

    monitor-enter v2

    .line 4724
    :try_start_2c
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->access$2800(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4725
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_49

    .line 4726
    if-eqz p3, :cond_48

    .line 4728
    :try_start_3a
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_42

    .line 4732
    goto :goto_48

    .line 4729
    :catch_42
    move-exception p1

    .line 4730
    .local p1, "e":Landroid/os/RemoteException;
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4731
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->binderDied()V

    .line 4734
    .end local p1  # "e":Landroid/os/RemoteException;
    :cond_48
    :goto_48
    return-void

    .line 4725
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1

    .line 4712
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "accountType is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .registers 10
    .param p1, "authenticatorType"  # Ljava/lang/String;

    .line 5024
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$3300(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v0

    .line 5025
    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    .line 5024
    invoke-interface {v0, v1, v2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    .line 5026
    .local v0, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    if-nez v0, :cond_3b

    .line 5027
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 5028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "there is no authenticator for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", bailing out"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5031
    :cond_3a
    return v1

    .line 5034
    :cond_3b
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->access$3400(Lcom/android/server/accounts/AccountManagerService;I)Z

    move-result v4

    if-nez v4, :cond_6b

    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    iget-boolean v4, v4, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    if-nez v4, :cond_6b

    .line 5036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking binding to authenticator "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " which isn\'t encryption aware"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5038
    return v1

    .line 5041
    :cond_6b
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 5042
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "android.accounts.AccountAuthenticator"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5043
    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5044
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 5045
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "performing bindService to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5047
    :cond_97
    const/4 v5, 0x1

    .line 5048
    .local v5, "flags":I
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService;->access$3300(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getBindInstantServiceAllowed(I)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 5049
    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    .line 5051
    :cond_ad
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v6, v6, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v4, p0, v5, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_e3

    .line 5052
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 5053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindService to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5055
    :cond_e2
    return v1

    .line 5058
    :cond_e3
    const/4 v1, 0x1

    return v1
.end method

.method private close()V
    .registers 4

    .line 4794
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$2800(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-enter v0

    .line 4795
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->access$2800(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    .line 4797
    monitor-exit v0

    return-void

    .line 4799
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_30

    .line 4800
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_29

    .line 4802
    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4807
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->cancelTimeout()V

    .line 4808
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->unbind()V

    .line 4809
    return-void

    .line 4799
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private isExportedSystemActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 5
    .param p1, "activityInfo"  # Landroid/content/pm/ActivityInfo;

    .line 4787
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4788
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-class v1, Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 4789
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-class v1, Landroid/accounts/CantAddAccountActivity;

    .line 4790
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_24
    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 4788
    :goto_27
    return v1
.end method

.method private unbind()V
    .registers 2

    .line 4840
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_e

    .line 4841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4842
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4844
    :cond_e
    return-void
.end method


# virtual methods
.method bind()V
    .registers 4

    .line 4830
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initiating bind to authenticator type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    :cond_20
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 4834
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

    .line 4835
    const/4 v0, 0x1

    const-string v1, "bind failure"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 4837
    :cond_46
    return-void
.end method

.method public binderDied()V
    .registers 2

    .line 4813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4814
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 4815
    return-void
.end method

.method public cancelTimeout()V
    .registers 3

    .line 4847
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4848
    return-void
.end method

.method protected checkKeyIntent(ILandroid/content/Intent;)Z
    .registers 20
    .param p1, "authUid"  # I
    .param p2, "intent"  # Landroid/content/Intent;

    .line 4755
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0xc4

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4759
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4761
    .local v3, "bid":J
    :try_start_11
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4762
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, v1, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_77

    .line 4763
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_2b

    .line 4764
    nop

    .line 4782
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4764
    return v6

    .line 4766
    :cond_2b
    :try_start_2b
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4767
    .local v7, "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4768
    .local v8, "targetUid":I
    const-class v9, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    .line 4769
    .local v9, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-direct {v1, v7}, Lcom/android/server/accounts/AccountManagerService$Session;->isExportedSystemActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v10
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_77

    if-nez v10, :cond_6f

    const/16 v10, 0x10

    .line 4770
    move/from16 v12, p1

    :try_start_43
    invoke-virtual {v9, v8, v12, v10}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result v10

    if-nez v10, :cond_71

    .line 4773
    iget-object v10, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4774
    .local v10, "pkgName":Ljava/lang/String;
    iget-object v13, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4775
    .local v13, "activityName":Ljava/lang/String;
    const-string v14, "KEY_INTENT resolved to an Activity (%s) in a package (%s) that does not share a signature with the supplying authenticator (%s)."

    .line 4777
    .local v14, "tmpl":Ljava/lang/String;
    const-string v15, "AccountManagerService"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v13, v11, v6

    const/16 v16, 0x1

    aput-object v10, v11, v16

    const/16 v16, 0x2

    iget-object v6, v1, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    aput-object v6, v11, v16

    invoke-static {v14, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_43 .. :try_end_67} :catchall_6d

    .line 4778
    nop

    .line 4782
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4778
    const/4 v6, 0x0

    return v6

    .line 4782
    .end local v0  # "pm":Landroid/content/pm/PackageManager;
    .end local v5  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7  # "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v8  # "targetUid":I
    .end local v9  # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v10  # "pkgName":Ljava/lang/String;
    .end local v13  # "activityName":Ljava/lang/String;
    .end local v14  # "tmpl":Ljava/lang/String;
    :catchall_6d
    move-exception v0

    goto :goto_7a

    .line 4769
    .restart local v0  # "pm":Landroid/content/pm/PackageManager;
    .restart local v5  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7  # "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8  # "targetUid":I
    .restart local v9  # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_6f
    move/from16 v12, p1

    .line 4780
    :cond_71
    nop

    .line 4782
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4780
    const/4 v6, 0x1

    return v6

    .line 4782
    .end local v0  # "pm":Landroid/content/pm/PackageManager;
    .end local v5  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7  # "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v8  # "targetUid":I
    .end local v9  # "pmi":Landroid/content/pm/PackageManagerInternal;
    :catchall_77
    move-exception v0

    move/from16 v12, p1

    :goto_7a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .registers 2

    .line 4737
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-nez v0, :cond_6

    .line 4739
    const/4 v0, 0x0

    return-object v0

    .line 4741
    :cond_6
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4742
    .local v0, "response":Landroid/accounts/IAccountManagerResponse;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 4743
    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .registers 8
    .param p1, "errorCode"  # I
    .param p2, "errorMessage"  # Ljava/lang/String;

    .line 4997
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 4998
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 4999
    .local v0, "response":Landroid/accounts/IAccountManagerResponse;
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    if-eqz v0, :cond_45

    .line 5000
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 5001
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

    .line 5005
    :cond_34
    :try_start_34
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38

    .line 5010
    :cond_37
    :goto_37
    goto :goto_50

    .line 5006
    :catch_38
    move-exception v3

    .line 5007
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 5008
    const-string v1, "Session.onError: caught RemoteException while responding"

    invoke-static {v2, v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 5012
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_45
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 5013
    const-string v1, "Session.onError: already closed"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5016
    :cond_50
    :goto_50
    return-void
.end method

.method public onRequestContinued()V
    .registers 2

    .line 4992
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 4993
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "result"  # Landroid/os/Bundle;

    .line 4897
    const-string v0, "errorCode"

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 4898
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 4899
    const/4 v2, 0x0

    .line 4900
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "accountType"

    const-string v4, "authAccount"

    if-eqz p1, :cond_74

    .line 4901
    const/4 v5, 0x0

    const-string v6, "booleanResult"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 4903
    .local v6, "isSuccessfulConfirmCreds":Z
    nop

    .line 4904
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 4905
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    move v7, v1

    goto :goto_29

    :cond_28
    move v7, v5

    .line 4909
    .local v7, "isSuccessfulUpdateCredsOrAddAccount":Z
    :goto_29
    iget-boolean v8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    if-eqz v8, :cond_32

    if-nez v6, :cond_31

    if-eqz v7, :cond_32

    :cond_31
    goto :goto_33

    :cond_32
    move v1, v5

    .line 4911
    .local v1, "needUpdate":Z
    :goto_33
    if-nez v1, :cond_39

    iget-boolean v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v5, :cond_74

    .line 4912
    :cond_39
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-static {v5, v8, v9}, Lcom/android/server/accounts/AccountManagerService;->access$2900(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 4913
    .local v5, "accountPresent":Z
    if-eqz v1, :cond_55

    if-eqz v5, :cond_55

    .line 4914
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    new-instance v9, Landroid/accounts/Account;

    iget-object v10, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->access$3000(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z

    .line 4916
    :cond_55
    iget-boolean v8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v8, :cond_74

    .line 4917
    const-wide/16 v8, -0x1

    .line 4918
    .local v8, "lastAuthenticatedTime":J
    if-eqz v5, :cond_6e

    .line 4919
    iget-object v10, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v10, v10, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    new-instance v11, Landroid/accounts/Account;

    iget-object v12, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4920
    invoke-virtual {v10, v11}, Lcom/android/server/accounts/AccountsDb;->findAccountLastAuthenticatedTime(Landroid/accounts/Account;)J

    move-result-wide v8

    .line 4923
    :cond_6e
    const-string/jumbo v10, "lastAuthenticatedTime"

    invoke-virtual {p1, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4928
    .end local v1  # "needUpdate":Z
    .end local v5  # "accountPresent":Z
    .end local v6  # "isSuccessfulConfirmCreds":Z
    .end local v7  # "isSuccessfulUpdateCredsOrAddAccount":Z
    .end local v8  # "lastAuthenticatedTime":J
    :cond_74
    const/4 v1, 0x5

    const-string/jumbo v5, "intent"

    if-eqz p1, :cond_95

    .line 4929
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    move-object v2, v6

    if-eqz v6, :cond_95

    .line 4930
    nop

    .line 4931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4930
    invoke-virtual {p0, v6, v2}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_95

    .line 4933
    const-string/jumbo v0, "invalid intent in bundle returned"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 4935
    return-void

    .line 4938
    :cond_95
    const-string v6, "authtoken"

    if-eqz p1, :cond_d2

    .line 4939
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d2

    .line 4940
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4941
    .local v4, "accountName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4942
    .local v3, "accountType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d2

    .line 4943
    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v4, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4944
    .local v7, "account":Landroid/accounts/Account;
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v8, v9, v7}, Lcom/android/server/accounts/AccountManagerService;->access$3100(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    iget-object v11, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 4945
    invoke-static {v11}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 4944
    invoke-static {v8, v9, v10}, Lcom/android/server/accounts/AccountManagerService;->access$3200(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 4949
    .end local v3  # "accountType":Ljava/lang/String;
    .end local v4  # "accountName":Ljava/lang/String;
    .end local v7  # "account":Landroid/accounts/Account;
    :cond_d2
    iget-boolean v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    if-eqz v3, :cond_e1

    if-eqz p1, :cond_e1

    .line 4950
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 4951
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .local v3, "response":Landroid/accounts/IAccountManagerResponse;
    goto :goto_e5

    .line 4953
    .end local v3  # "response":Landroid/accounts/IAccountManagerResponse;
    :cond_e1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v3

    .line 4955
    .restart local v3  # "response":Landroid/accounts/IAccountManagerResponse;
    :goto_e5
    if-eqz v3, :cond_16b

    .line 4957
    const/4 v4, 0x2

    const-string v5, "AccountManagerService"

    if-nez p1, :cond_118

    .line 4958
    :try_start_ec
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 4959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " calling onError() on response "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4962
    :cond_111
    const-string/jumbo v0, "null bundle returned"

    invoke-interface {v3, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_15e

    .line 4965
    :cond_118
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    if-eqz v1, :cond_11f

    .line 4966
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4968
    :cond_11f
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_144

    .line 4969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " calling onResult() on response "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4972
    :cond_144
    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_15b

    if-nez v2, :cond_15b

    .line 4975
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "errorMessage"

    .line 4976
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4975
    invoke-interface {v3, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_15e

    .line 4978
    :cond_15b
    invoke-interface {v3, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_15e} :catch_15f

    .line 4986
    :goto_15e
    goto :goto_16b

    .line 4981
    :catch_15f
    move-exception v0

    .line 4983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 4984
    const-string v1, "failure while notifying response"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4988
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_16b
    :goto_16b
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "service"  # Landroid/os/IBinder;

    .line 4852
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4854
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->run()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 4858
    goto :goto_12

    .line 4855
    :catch_a
    move-exception v0

    .line 4856
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    const-string/jumbo v2, "remote exception"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 4859
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 4863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4864
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 4865
    .local v0, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v0, :cond_1f

    .line 4867
    const/4 v1, 0x1

    :try_start_a
    const-string v2, "disconnected"

    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 4874
    goto :goto_1f

    .line 4869
    :catch_10
    move-exception v1

    .line 4870
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4871
    const-string v2, "Session.onServiceDisconnected: caught RemoteException while responding"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4876
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    return-void
.end method

.method public onTimedOut()V
    .registers 5

    .line 4881
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v0

    .line 4882
    .local v0, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v0, :cond_1d

    .line 4884
    const/4 v1, 0x1

    :try_start_7
    const-string/jumbo v2, "timeout"

    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    .line 4891
    goto :goto_1d

    .line 4886
    :catch_e
    move-exception v1

    .line 4887
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4888
    const-string v2, "Session.onTimedOut: caught RemoteException while responding"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4893
    .end local v1  # "e":Landroid/os/RemoteException;
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

    .line 4818
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 8
    .param p1, "now"  # J

    .line 4822
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

    sub-long v1, p1, v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L  # 1000.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
