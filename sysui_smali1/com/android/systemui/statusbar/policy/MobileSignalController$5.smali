.class Lcom/android/systemui/statusbar/policy/MobileSignalController$5;
.super Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .registers 2

    .line 1410
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 5

    .line 1413
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v1, 0x1

    .line 1414
    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    .line 1415
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v2, 0x2

    .line 1416
    invoke-virtual {p1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    .line 1417
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesStatusChanged isVoiceCapable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isVideoCapable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getMobileSignalControllers()Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_92

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 1422
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getMobileSignalControllers()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-le p1, v1, :cond_92

    .line 1423
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 1424
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getMobileSignalControllers()Landroid/util/SparseArray;

    move-result-object v2

    .line 1423
    invoke-interface {p1, v0, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;->isAnotherCardCalling(ILandroid/util/SparseArray;)Z

    move-result p1

    .line 1425
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    if-eqz v2, :cond_92

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    if-nez v2, :cond_92

    if-eqz p1, :cond_92

    .line 1426
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    .line 1431
    :cond_92
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method
