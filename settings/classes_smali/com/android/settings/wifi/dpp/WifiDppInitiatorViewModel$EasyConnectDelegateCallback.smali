.class Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;
.super Landroid/net/wifi/EasyConnectStatusCallback;
.source "WifiDppInitiatorViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyConnectDelegateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-direct {p0}, Landroid/net/wifi/EasyConnectStatusCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$1;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    return-void
.end method


# virtual methods
.method public onConfiguratorSuccess(I)V
    .registers 3

    .line 81
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$102(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Z)Z

    .line 82
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$300(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onEnrolleeSuccess(I)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$102(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Z)Z

    .line 76
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$200(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(I)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$102(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Z)Z

    .line 88
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;->this$0:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->access$300(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onProgress(I)V
    .registers 2

    return-void
.end method
