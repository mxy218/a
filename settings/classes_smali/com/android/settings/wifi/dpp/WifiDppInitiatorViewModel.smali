.class public Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "WifiDppInitiatorViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;
    }
.end annotation


# instance fields
.field private mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGoingInitiator:Z

.field private mStatusCode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Z)Z
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsGoingInitiator:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public getEnrolleeSuccessNetworkId()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

    .line 40
    :cond_b
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mEnrolleeSuccessNetworkId:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getStatusCode()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    .line 48
    :cond_b
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public isGoingInitiator()Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsGoingInitiator:Z

    return p0
.end method

.method public startEasyConnectAsConfiguratorInitiator(Ljava/lang/String;I)V
    .registers 10

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsGoingInitiator:Z

    .line 57
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 60
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$1;)V

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    .line 59
    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/WifiManager;->startEasyConnectAsConfiguratorInitiator(Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V

    return-void
.end method

.method public startEasyConnectAsEnrolleeInitiator(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsGoingInitiator:Z

    .line 66
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 68
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$1;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/wifi/WifiManager;->startEasyConnectAsEnrolleeInitiator(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V

    return-void
.end method
