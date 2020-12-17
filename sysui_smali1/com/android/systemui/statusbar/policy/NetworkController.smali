.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;,
        Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;,
        Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;,
        Lcom/android/systemui/statusbar/policy/NetworkController$IconState;,
        Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;",
        ">;",
        "Lcom/android/systemui/DemoMode;"
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
.end method

.method public abstract addDualWifiChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;)V
.end method

.method public abstract addNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V
.end method

.method public abstract addSubscriptionsChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;)V
.end method

.method public abstract getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.end method

.method public abstract getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;
.end method

.method public abstract getMobileDataController()Lcom/android/settingslib/net/DataUsageController;
.end method

.method public abstract getMobileDataNetworkName()Ljava/lang/String;
.end method

.method public abstract getMobileSignalControllers()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumberSubscriptions()I
.end method

.method public abstract hasEmergencyCryptKeeperText()Z
.end method

.method public abstract hasMobileDataFeature()Z
.end method

.method public abstract hasVoiceCallingFeature()Z
.end method

.method public abstract isAirPlaneMode()Z
.end method

.method public abstract isDualWifiEnabled()Z
.end method

.method public abstract isRadioOn()Z
.end method

.method public abstract removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
.end method

.method public abstract removeDualWifiChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;)V
.end method

.method public abstract removeNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V
.end method

.method public abstract removeSubscriptionsChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;)V
.end method

.method public abstract setCarrierStateListener(Lcom/android/keyguard/CarrierTextController$CarrierStateListener;)V
.end method

.method public abstract setWifiEnabled(Z)V
.end method

.method public abstract supportDualWifi()Z
.end method
