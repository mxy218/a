.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController;
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;
.implements Lcom/android/systemui/ConfigurationChangedReceiver;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field static final CHATTY:Z

.field static final DEBUG:Z


# instance fields
.field private final mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

.field private mActiveMobileDataSubscription:I

.field private mAirplaneMode:Z

.field private final mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field private mCarrierStateListener:Lcom/android/keyguard/CarrierTextController$CarrierStateListener;

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mConnected:Z

.field private final mConnectedTransports:Ljava/util/BitSet;

.field private mConnectionCallBackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

.field private mDemoInetCondition:Z

.field private mDemoMode:Z

.field private mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

.field private mDualWifiChangeCallBackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mDualWifiConnectionState:Landroid/net/NetworkInfo$State;

.field private mDualWifiEnabled:Z

.field private mDualWifiRssi:I

.field private final mDualWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

.field private mEmergencySource:I

.field private mEthernetConnected:Z

.field final mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHasMobileDataFeature:Z

.field private mHasNoSubs:Z

.field private mInetCondition:Z

.field private mIsEmergency:Z

.field mLastServiceState:Landroid/telephony/ServiceState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mListening:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field final mMobileSignalControllers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiverHandler:Landroid/os/Handler;

.field private final mRegisterListeners:Ljava/lang/Runnable;

.field private mSimDetected:Z

.field private final mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionsChangeCallBackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSetup:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mValidatedTransports:Ljava/util/BitSet;

.field private mViceWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

.field private mViceWifiNetworkInfo:Landroid/net/NetworkInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field final mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    const-string v1, "NetworkController"

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    const-string v1, "NetworkControllerChat"

    .line 104
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .registers 25
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p7

    move-object/from16 v10, p12

    .line 205
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 125
    iput v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 146
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    .line 147
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    const/4 v1, 0x0

    .line 152
    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    .line 1219
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    .line 1622
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectionCallBackList:Ljava/util/List;

    .line 1624
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionsChangeCallBackList:Ljava/util/List;

    .line 1627
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiChangeCallBackList:Ljava/util/List;

    .line 1628
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiConnectionState:Landroid/net/NetworkInfo$State;

    .line 1630
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 1631
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    .line 1632
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiEnabled:Z

    const/16 v1, -0xc8

    .line 1633
    iput v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiRssi:I

    .line 206
    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v1, p6

    .line 207
    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 208
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    move-object/from16 v1, p8

    .line 209
    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .line 210
    new-instance v1, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-object/from16 v1, p5

    .line 212
    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v1, p11

    .line 213
    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    move-object v1, p2

    .line 214
    iput-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 215
    iget-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 216
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object v0, p3

    .line 219
    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p4

    .line 222
    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 224
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p9

    .line 225
    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    move-object/from16 v0, p10

    .line 226
    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 227
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/net/DataUsageController;->setNetworkController(Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;)V

    .line 229
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->setCallback(Lcom/android/settingslib/net/DataUsageController$Callback;)V

    .line 236
    new-instance v11, Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-boolean v2, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v3, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v5, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x1

    move-object v0, v11

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/WifiSignalController;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/wifi/WifiManager;I)V

    iput-object v11, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    .line 243
    new-instance v0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    const/4 v0, 0x1

    .line 246
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 247
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;

    iget-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/content/Context;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 253
    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 254
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;

    invoke-direct {v0, p0, v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    invoke-interface {v10, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 261
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 262
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 292
    iget-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 294
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;

    invoke-direct {v0, p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/os/Looper;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 303
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-boolean v2, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v3, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v4, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v5, 0xa

    move-object p1, v0

    move-object p2, v1

    move p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, p0

    move-object/from16 p6, v4

    move/from16 p7, v5

    invoke-direct/range {p1 .. p7}, Lcom/android/systemui/statusbar/policy/WifiSignalController;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/wifi/WifiManager;I)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .registers 18
    .param p2  # Landroid/os/Looper;
        .annotation runtime Ljavax/inject/Named;
            value = "background_looper"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v13, p0

    move-object v1, p1

    const-string v0, "connectivity"

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    const-string v0, "phone"

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "wifi"

    .line 187
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 188
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v6

    new-instance v8, Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/policy/CallbackHandler;-><init>()V

    new-instance v9, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {v9, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v10, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-direct {v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;-><init>()V

    move-object v0, p0

    move-object/from16 v7, p2

    move-object/from16 v12, p3

    .line 185
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    .line 194
    iget-object v0, v13, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iget-object v1, v13, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .registers 1

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyControllersMobileDataChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onUserSwitched(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setUserSetupComplete(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .registers 1

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .registers 2

    .line 97
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .registers 1

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .registers 1

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerListeners()V

    return-void
.end method

.method private addSignalController(II)Landroid/telephony/SubscriptionInfo;
    .registers 32

    move-object/from16 v10, p0

    move/from16 v12, p1

    move/from16 v14, p2

    .line 1189
    new-instance v28, Landroid/telephony/SubscriptionInfo;

    move-object/from16 v11, v28

    const-string v13, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, ""

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, ""

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v11 .. v27}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V

    .line 1191
    new-instance v11, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v3, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 1193
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget-object v5, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v8, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 1194
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v0, v11

    move-object/from16 v6, p0

    move-object/from16 v7, v28

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V

    .line 1195
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1196
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    return-object v28
.end method

.method private static final emergencyToString(I)Ljava/lang/String;
    .registers 5

    const/16 v0, 0xc8

    const/16 v1, 0x12c

    const-string v2, ")"

    if-le p0, v1, :cond_1e

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASSUMED_VOICE_CONTROLLER("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    if-le p0, v1, :cond_36

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NO_SUB("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    if-le p0, v0, :cond_4e

    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VOICE_CONTROLLER("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4e
    const/16 v0, 0x64

    if-le p0, v0, :cond_68

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FIRST_CONTROLLER("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_68
    if-nez p0, :cond_6d

    const-string p0, "NO_CONTROLLERS"

    return-object p0

    :cond_6d
    const-string p0, "UNKNOWN_SOURCE"

    return-object p0
.end method

.method private filterMobileSubscriptionInSameGroup(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 659
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5a

    const/4 v0, 0x0

    .line 660
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x1

    .line 661
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 662
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    if-eqz v2, :cond_5a

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 664
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_36

    return-void

    .line 668
    :cond_36
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    .line 669
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 672
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_49

    goto :goto_4a

    :cond_49
    move-object v0, v1

    :goto_4a
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 674
    :cond_4e
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mActiveMobileDataSubscription:I

    if-ne v2, p0, :cond_57

    move-object v0, v1

    :cond_57
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5a
    :goto_5a
    return-void
.end method

.method private getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .registers 5

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getActiveDataSubId()I

    move-result v0

    .line 402
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const-string v2, "NetworkController"

    if-nez v1, :cond_1a

    .line 403
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "No data sim selected"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_17
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object p0

    .line 406
    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2b

    .line 407
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object p0

    .line 409
    :cond_2b
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find controller for data sub: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_43
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object p0
.end method

.method private getDualWifiConnectionState()Landroid/net/NetworkInfo$State;
    .registers 1

    .line 1532
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_f

    .line 1533
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getNetworkInfoForViceWifi()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1535
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    return-object p0

    .line 1538
    :cond_f
    sget-object p0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    return-object p0
.end method

.method private getDualWifiGenerationVersion()I
    .registers 1

    .line 1554
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getViceWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1557
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getWifiGeneration()I

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private getDualWifiSSID()Ljava/lang/String;
    .registers 1

    .line 1546
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mViceWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_9

    .line 1547
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleSetUserSetupComplete(Z)V
    .registers 4

    .line 801
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    const/4 p1, 0x0

    .line 802
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1b

    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 804
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setUserSetupComplete(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_1b
    return-void
.end method

.method private handleStatusBarWifiState()V
    .registers 13

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    .line 1495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isDualWifiEnabled()Z

    move-result v1

    .line 1496
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isDualWifiConnected()Z

    move-result v2

    .line 1497
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isDualWifiReady()Z

    move-result v3

    .line 1498
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiRssi:I

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    .line 1499
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDualWifiGenerationVersion()I

    move-result v5

    .line 1500
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDualWifiSSID()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_31

    .line 1502
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31

    move v9, v7

    goto :goto_32

    :cond_31
    move v9, v8

    .line 1506
    :goto_32
    iget v10, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiRssi:I

    if-ne v10, v11, :cond_46

    iget v10, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-ne v10, v4, :cond_46

    iget v10, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    if-ne v10, v5, :cond_46

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    if-eq v10, v3, :cond_45

    goto :goto_46

    :cond_45
    move v7, v8

    :cond_46
    :goto_46
    or-int/2addr v7, v9

    .line 1511
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 1512
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 1513
    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 1514
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiRssi:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    .line 1515
    iput v4, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    const/4 v1, 0x0

    .line 1516
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 1517
    iput v5, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    .line 1518
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    if-eqz v7, :cond_61

    .line 1520
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    .line 1522
    :cond_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStatusBarWifiState: enable="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",connected="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",ssid="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",rssi="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",version="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isReady="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasAnySim()Z
    .registers 6

    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_19

    .line 724
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_16

    if-eqz v3, :cond_16

    return v4

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    return v1
.end method

.method private isDualWifiConnected()Z
    .registers 1

    .line 1542
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mViceWifiNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private isDualWifiReady()Z
    .registers 3

    .line 1564
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getViceWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 1567
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isVhtMax8SpatialStreamsSupported()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isHe8ssCapableAp()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    move v0, p0

    :cond_17
    return v0
.end method

.method private isMobileDataConnected()Z
    .registers 6

    .line 1577
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object p0

    .line 1578
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_43

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMobileDataConnected: btms,controllerNull="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    move v3, v2

    :goto_19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NetworkController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_43

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMobileDataConnected: btms,dataCon="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    if-eqz p0, :cond_50

    .line 1584
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz p0, :cond_50

    goto :goto_51

    :cond_50
    move v1, v2

    :goto_51
    return v1
.end method

.method private notifyAllListeners()V
    .registers 3

    .line 852
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    const/4 v0, 0x0

    .line 853
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 854
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 855
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 857
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    .line 858
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    .line 861
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    return-void
.end method

.method private notifyControllersMobileDataChanged()V
    .registers 3

    const/4 v0, 0x0

    .line 434
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 435
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 436
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->onMobileDataChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private notifyDualWifiConnectionStateChangeCallBack(Landroid/net/NetworkInfo$State;)V
    .registers 3

    .line 1486
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiChangeCallBackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;

    .line 1487
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;->setDualWifiConnectionState(Landroid/net/NetworkInfo$State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyDualWifiEnabledChangeCallBack(Z)V
    .registers 3

    .line 1480
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiChangeCallBackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;

    .line 1481
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;->setDualWifiEnabled(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyListeners()V
    .registers 7

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    sget v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    sget v4, Lcom/android/systemui/R$string;->accessibility_airplane_mode:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(ZZ)V

    return-void
.end method

.method private notifySubscriptionsChangeCallBack(I)V
    .registers 3

    .line 1474
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionsChangeCallBackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;

    .line 1475
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;->onSubscriptionsChange(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private onUserSwitched(I)V
    .registers 3

    .line 523
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->onUserSwitched(I)V

    .line 525
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    return-void
.end method

.method private pushConnectivityToSignals()V
    .registers 5

    const/4 v0, 0x0

    .line 912
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 913
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 914
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 916
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 917
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 919
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyNetworkConnectionCallbacks()V

    .line 920
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    if-eqz v0, :cond_3b

    .line 921
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    :cond_3b
    return-void
.end method

.method private refreshLocale()V
    .registers 3

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 836
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 837
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->refreshLocale()V

    .line 839
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    .line 842
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->refreshLocale()V

    :cond_23
    return-void
.end method

.method private registerListeners()V
    .registers 5

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListeners: MobileSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 314
    :goto_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 316
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V

    .line 317
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 319
    :cond_38
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_44

    .line 320
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 322
    :cond_44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 v3, 0x400000

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 326
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    .line 327
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 328
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 329
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 330
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 331
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    .line 332
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SERVICE_STATE"

    .line 333
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    .line 334
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 335
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    .line 336
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    .line 337
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 338
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    .line 339
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.vicewifi.RSSI_CHANGED"

    .line 341
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.vicewifi.STATE_CHANGE"

    .line 342
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.vicewifi.WIFI_STATE_CHANGED"

    .line 343
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "flyme.intent.action.ICON_SWITCH_STATE_CHANGED"

    .line 344
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->registerListeners()V

    .line 348
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method

.method private setUserSetupComplete(Z)V
    .registers 4

    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$ip_KPuTyKF5u8IR4L3OPJ6WObYU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$ip_KPuTyKF5u8IR4L3OPJ6WObYU;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterListeners()V
    .registers 4

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    .line 356
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 357
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 358
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterListener()V

    .line 359
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 361
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->unregisterListeners()V

    return-void
.end method

.method private updateAirplaneMode(Z)V
    .registers 5

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    move v2, v1

    .line 824
    :goto_12
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-ne v2, v0, :cond_18

    if-eqz p1, :cond_35

    .line 825
    :cond_18
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 826
    :goto_1a
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_32

    .line 827
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 828
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setAirplaneMode(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 830
    :cond_32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    :cond_35
    return-void
.end method

.method private updateConnectivity()V
    .registers 11

    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 881
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 883
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_3b

    aget-object v4, v0, v3

    .line 884
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1f
    if-ge v7, v6, :cond_38

    aget v8, v5, v7

    .line 885
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    const/16 v9, 0x10

    .line 886
    invoke-virtual {v4, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 887
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    :cond_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 892
    :cond_3b
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    const-string v1, "NetworkController"

    if-eqz v0, :cond_6f

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnectivity: mConnectedTransports="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnectivity: mValidatedTransports="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_6f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnectivity:mConnected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    .line 904
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    return-void
.end method

.method private updateMobileControllers()V
    .registers 2

    .line 652
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-nez v0, :cond_5

    return-void

    .line 655
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->doUpdateMobileControllers()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .registers 7

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSubs(Ljava/util/List;)V

    .line 490
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    sget v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    sget v3, Lcom/android/systemui/R$string;->accessibility_airplane_mode:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    .line 492
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNoSims(ZZ)V

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    const/4 v0, 0x0

    .line 495
    :goto_27
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 496
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 497
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 499
    :cond_3d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V

    .line 502
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 96
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public addDualWifiChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;)V
    .registers 3

    .line 1442
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_a

    .line 1443
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getViceWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mViceWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    .line 1445
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_14

    .line 1446
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getNetworkInfoForViceWifi()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mViceWifiNetworkInfo:Landroid/net/NetworkInfo;

    .line 1448
    :cond_14
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiChangeCallBackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V
    .registers 3

    .line 1398
    monitor-enter p0

    .line 1399
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectionCallBackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;->onWifiConnection(Z)V

    .line 1401
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public addSubscriptionsChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;)V
    .registers 3

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionsChangeCallBackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyNetworkConnectionCallbacks()V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 995
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    const-string v4, "NetworkController"

    const/4 v5, 0x1

    if-nez v3, :cond_39

    const-string v3, "enter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 996
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "Entering demo mode"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->unregisterListeners()V

    .line 998
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 999
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    .line 1000
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    .line 1001
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const-string v1, "DemoMode"

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    goto/16 :goto_445

    .line 1002
    :cond_39
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_7b

    const-string v3, "exit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 1003
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_4f

    const-string v1, "Exiting demo mode"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_4f
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 1007
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    .line 1008
    :goto_54
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_6a

    .line 1009
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1010
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->resetLastState()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 1012
    :cond_6a
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->resetLastState()V

    .line 1013
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1014
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    goto/16 :goto_445

    .line 1015
    :cond_7b
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v3, :cond_445

    const-string v3, "network"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_445

    const-string v1, "airplane"

    .line 1016
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "show"

    if-eqz v1, :cond_a6

    .line 1018
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1019
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    sget v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    sget v9, Lcom/android/systemui/R$string;->accessibility_airplane_mode:I

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1, v8, v9, v10}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    :cond_a6
    const-string v1, "fully"

    .line 1023
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e9

    .line 1025
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    .line 1026
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 1028
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    if-eqz v4, :cond_c4

    .line 1029
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 1031
    :cond_c4
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v4, v1, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    move v4, v6

    .line 1032
    :goto_ca
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_e9

    .line 1033
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1034
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    if-eqz v8, :cond_e3

    .line 1035
    iget v8, v7, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 1037
    :cond_e3
    invoke-virtual {v7, v1, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_ca

    :cond_e9
    const-string/jumbo v1, "wifi"

    .line 1040
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "out"

    const-string v7, "in"

    const v8, 0x5fb5409

    const v9, 0x1af4e

    const/16 v10, 0xd25

    const-string v11, "null"

    const-string v12, "activity"

    const-string v13, "level"

    if-eqz v1, :cond_19a

    .line 1042
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1043
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_131

    .line 1045
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_118

    const/4 v14, -0x1

    goto :goto_124

    .line 1046
    :cond_118
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    sget v16, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v15, v16, -0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    :goto_124
    iput v14, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1047
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v14, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-ltz v14, :cond_12e

    move v14, v5

    goto :goto_12f

    :cond_12e
    const/4 v14, 0x0

    :goto_12f
    iput-boolean v14, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 1049
    :cond_131
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17e

    .line 1051
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v14

    if-eq v14, v10, :cond_154

    if-eq v14, v9, :cond_14c

    if-eq v14, v8, :cond_142

    goto :goto_15c

    :cond_142
    const-string v14, "inout"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c

    const/4 v6, 0x0

    goto :goto_15d

    :cond_14c
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c

    const/4 v6, 0x2

    goto :goto_15d

    :cond_154
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c

    move v6, v5

    goto :goto_15d

    :cond_15c
    :goto_15c
    const/4 v6, -0x1

    :goto_15d
    if-eqz v6, :cond_177

    if-eq v6, v5, :cond_171

    const/4 v14, 0x2

    if-eq v6, v14, :cond_16b

    .line 1062
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_184

    .line 1059
    :cond_16b
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v6, v14}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_184

    .line 1056
    :cond_171
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_184

    .line 1053
    :cond_177
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    const/4 v14, 0x3

    invoke-virtual {v6, v14}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto :goto_184

    .line 1066
    :cond_17e
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    :goto_184
    const-string/jumbo v6, "ssid"

    .line 1068
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_191

    .line 1070
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object v6, v14, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 1072
    :cond_191
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-boolean v1, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 1073
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    :cond_19a
    const-string/jumbo v1, "sims"

    .line 1075
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x8

    if-eqz v1, :cond_1f6

    .line 1077
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v5, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 1078
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1079
    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-eq v1, v15, :cond_1f6

    .line 1080
    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 1081
    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v15}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v15

    move v8, v15

    :goto_1c6
    add-int v9, v15, v1

    if-ge v8, v9, :cond_1d4

    .line 1083
    invoke-direct {v0, v8, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalController(II)Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1c6

    .line 1085
    :cond_1d4
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v1, v14}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 1086
    :goto_1da
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v1, v8, :cond_1f6

    .line 1087
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1088
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1089
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1da

    :cond_1f6
    const-string v1, "nosim"

    .line 1093
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20d

    .line 1095
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    .line 1096
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-virtual {v1, v8, v9}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(ZZ)V

    :cond_20d
    const-string v1, "mobile"

    .line 1098
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_422

    .line 1100
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "datatype"

    .line 1101
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "slot"

    .line 1102
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1103
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_22e

    const/4 v9, 0x0

    goto :goto_232

    :cond_22e
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :goto_232
    const/4 v14, 0x0

    .line 1104
    invoke-static {v9, v14, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    .line 1106
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    :goto_23c
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-gt v14, v6, :cond_252

    .line 1108
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 1109
    invoke-direct {v0, v14, v14}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalController(II)Landroid/telephony/SubscriptionInfo;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23c

    .line 1111
    :cond_252
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_25d

    .line 1112
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v14, v9}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    .line 1115
    :cond_25d
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1116
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v8, :cond_26f

    move v14, v5

    goto :goto_270

    :cond_26f
    const/4 v14, 0x0

    :goto_270
    iput-boolean v14, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 1117
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v8, :cond_27c

    move v14, v5

    goto :goto_27d

    :cond_27c
    const/4 v14, 0x0

    :goto_27d
    iput-boolean v14, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 1118
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v8, :cond_289

    move v14, v5

    goto :goto_28a

    :cond_289
    const/4 v14, 0x0

    :goto_28a
    iput-boolean v14, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v8, :cond_343

    .line 1120
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string v14, "1x"

    .line 1121
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2a0

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_341

    :cond_2a0
    const-string v14, "3g"

    .line 1122
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2ac

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_341

    :cond_2ac
    const-string v14, "4g"

    .line 1123
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2b8

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_341

    :cond_2b8
    const-string v14, "4g+"

    .line 1124
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c4

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_341

    :cond_2c4
    const-string v14, "5g"

    .line 1125
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2d0

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_341

    :cond_2d0
    const-string v14, "5ge"

    .line 1126
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2dc

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_341

    :cond_2dc
    const-string v14, "5g+"

    .line 1127
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e7

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_341

    :cond_2e7
    const-string v14, "e"

    .line 1128
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2f2

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_341

    :cond_2f2
    const-string v14, "g"

    .line 1129
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2fd

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_341

    :cond_2fd
    const-string v14, "h"

    .line 1130
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_308

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_341

    :cond_308
    const-string v14, "h+"

    .line 1131
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_313

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_341

    :cond_313
    const-string v14, "lte"

    .line 1132
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_31e

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_341

    :cond_31e
    const-string v14, "lte+"

    .line 1133
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_329

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_341

    :cond_329
    const-string v14, "dis"

    .line 1134
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_334

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_341

    :cond_334
    const-string v14, "not"

    .line 1135
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33f

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_341

    .line 1136
    :cond_33f
    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_341
    iput-object v8, v9, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :cond_343
    const-string v8, "roam"

    .line 1138
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35d

    .line 1139
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string v9, "roam"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 1141
    :cond_35d
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_391

    .line 1143
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_371

    const/4 v14, -0x1

    goto :goto_37a

    .line 1144
    :cond_371
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x5

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    :goto_37a
    iput v14, v9, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 1146
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v9, v9, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-ltz v9, :cond_38e

    move v9, v5

    goto :goto_38f

    :cond_38e
    const/4 v9, 0x0

    :goto_38f
    iput-boolean v9, v8, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    :cond_391
    const-string v8, "inflate"

    .line 1148
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3bc

    const/4 v8, 0x0

    .line 1149
    :goto_39a
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_3bc

    .line 1150
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const-string v11, "inflate"

    .line 1151
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "true"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_39a

    .line 1154
    :cond_3bc
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_412

    .line 1156
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v5, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1157
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    if-eq v9, v10, :cond_3ed

    const v10, 0x1af4e

    if-eq v9, v10, :cond_3e5

    const v7, 0x5fb5409

    if-eq v9, v7, :cond_3db

    goto :goto_3f5

    :cond_3db
    const-string v4, "inout"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f5

    const/4 v4, 0x0

    goto :goto_3f6

    :cond_3e5
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f5

    const/4 v4, 0x2

    goto :goto_3f6

    :cond_3ed
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f5

    move v4, v5

    goto :goto_3f6

    :cond_3f5
    :goto_3f5
    const/4 v4, -0x1

    :goto_3f6
    if-eqz v4, :cond_40c

    if-eq v4, v5, :cond_407

    const/4 v7, 0x2

    if-eq v4, v7, :cond_402

    const/4 v15, 0x0

    .line 1168
    invoke-virtual {v6, v15}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_416

    :cond_402
    const/4 v15, 0x0

    .line 1165
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_416

    :cond_407
    const/4 v15, 0x0

    .line 1162
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_416

    :cond_40c
    const/4 v15, 0x0

    const/4 v4, 0x3

    .line 1159
    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto :goto_416

    :cond_412
    const/4 v15, 0x0

    .line 1172
    invoke-virtual {v6, v15}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    .line 1174
    :goto_416
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v1, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 1175
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    goto :goto_423

    :cond_422
    const/4 v15, 0x0

    :goto_423
    const-string v1, "carriernetworkchange"

    .line 1177
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_445

    .line 1179
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1180
    :goto_42f
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v15, v2, :cond_445

    .line 1181
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1182
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setCarrierNetworkChangeMode(Z)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_42f

    :cond_445
    :goto_445
    return-void
.end method

.method doUpdateMobileControllers()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    .line 684
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d

    .line 686
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 689
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->filterMobileSubscriptionInSameGroup(Ljava/util/List;)V

    .line 692
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasCorrectMobileControllers(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    return-void

    .line 699
    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    :try_start_1d
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCurrentSubscriptionsLocked(Ljava/util/List;)V

    .line 701
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_49

    .line 702
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    .line 703
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateMobileControllers: subSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySubscriptionsChangeCallBack(I)V

    return-void

    :catchall_49
    move-exception p0

    .line 701
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, "NetworkController state:"

    .line 927
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  - telephony ------"

    .line 929
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  hasVoiceCallingFeature()="

    .line 930
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  - connectivity ------"

    .line 933
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mConnectedTransports="

    .line 934
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mValidatedTransports="

    .line 936
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mInetCondition="

    .line 938
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 939
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mAirplaneMode="

    .line 940
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mLocale="

    .line 942
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 943
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mLastServiceState="

    .line 944
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 945
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mIsEmergency="

    .line 946
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mEmergencySource="

    .line 948
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 949
    iget p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->emergencyToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  - config ------"

    .line 951
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  patternOfCarrierSpecificDataIcon="

    .line 952
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->patternOfCarrierSpecificDataIcon:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  nr5GIconMap="

    .line 954
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 955
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  nrIconDisplayGracePeriodMs="

    .line 956
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 957
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-wide v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nrIconDisplayGracePeriodMs:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const/4 p1, 0x0

    .line 958
    :goto_9d
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_b3

    .line 959
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 960
    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_9d

    .line 962
    :cond_b3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 964
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 966
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->dump(Ljava/io/PrintWriter;)V

    .line 969
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    return-object p0
.end method

.method public getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;
    .registers 1

    .line 309
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    return-object p0
.end method

.method public getMobileDataController()Lcom/android/settingslib/net/DataUsageController;
    .registers 1

    .line 380
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-object p0
.end method

.method public getMobileDataNetworkName()Ljava/lang/String;
    .registers 1

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 416
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_11

    :cond_f
    const-string p0, ""

    :goto_11
    return-object p0
.end method

.method public getMobileSignalControllers()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;"
        }
    .end annotation

    .line 1589
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getNumberSubscriptions()I
    .registers 1

    .line 421
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method handleConfigurationChanged()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 643
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    const/4 v0, 0x0

    .line 644
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 645
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 646
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 648
    :cond_1c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    return-void
.end method

.method hasCorrectMobileControllers(Ljava/util/List;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 810
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    return v2

    .line 813
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 814
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_12

    return v2

    :cond_2b
    const/4 p0, 0x1

    return p0
.end method

.method public hasEmergencyCryptKeeperText()Z
    .registers 1

    .line 1201
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    return p0
.end method

.method public hasMobileDataFeature()Z
    .registers 1

    .line 393
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return p0
.end method

.method public hasVoiceCallingFeature()Z
    .registers 1

    .line 397
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isAirPlaneMode()Z
    .registers 1

    .line 1612
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    return p0
.end method

.method isDataControllerDisabled()Z
    .registers 1

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 430
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result p0

    return p0
.end method

.method public isDualWifiEnabled()Z
    .registers 3

    .line 1467
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 1470
    :cond_6
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDualWifiEnabledState()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_e

    move v0, v1

    :cond_e
    return v0
.end method

.method public isEmergencyOnly()Z
    .registers 8

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_19

    .line 444
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 445
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1

    .line 447
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultVoiceSubId()I

    move-result v0

    .line 448
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    const-string v4, "NetworkController"

    if-nez v3, :cond_6a

    move v3, v2

    .line 449
    :goto_28
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_6a

    .line 450
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 451
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-nez v6, :cond_67

    .line 452
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 453
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 454
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz p0, :cond_66

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found emergency "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    return v2

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 459
    :cond_6a
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_9f

    add-int/lit16 v1, v0, 0xc8

    .line 460
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 461
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_8e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting emergency from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_8e
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    return p0

    .line 466
    :cond_9f
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v1, :cond_e0

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 468
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x190

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    .line 469
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting assumed emergency from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 470
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_cf
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    return p0

    .line 473
    :cond_e0
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_f8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find controller for voice sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f8
    add-int/lit16 v0, v0, 0x12c

    .line 474
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    return v1
.end method

.method public isRadioOn()Z
    .registers 1

    .line 1205
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$setUserSetupComplete$0$NetworkControllerImpl(Z)V
    .registers 2

    .line 797
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleSetUserSetupComplete(Z)V

    return-void
.end method

.method public notifyMobileSignalControllers()V
    .registers 3

    const/4 v0, 0x0

    .line 1604
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1605
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 1606
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListeners()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method notifyNetworkConnectionCallbacks()V
    .registers 5

    .line 1412
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_44

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNetworkConnectionCallbacks-1: mConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mEthernetConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",wifiCon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    .line 1415
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isMobileDataConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMobileDataConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkController"

    .line 1413
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_44
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    .line 1419
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-nez v0, :cond_5c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMobileDataConnected()Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_5c
    move v0, v1

    goto :goto_5f

    :cond_5e
    move v0, v2

    :goto_5f
    if-nez v0, :cond_6b

    .line 1420
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    if-eqz v0, :cond_6a

    goto :goto_6b

    :cond_6a
    move v1, v2

    .line 1421
    :cond_6b
    :goto_6b
    monitor-enter p0

    .line 1422
    :try_start_6c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectionCallBackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;

    .line 1423
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;->onDataConnection(Z)V

    .line 1424
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;->onWifiConnection(Z)V

    goto :goto_72

    .line 1426
    :cond_8f
    monitor-exit p0

    return-void

    :catchall_91
    move-exception v0

    monitor-exit p0
    :try_end_93
    .catchall {:try_start_6c .. :try_end_93} :catchall_91

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 632
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 633
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 530
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    if-eqz p1, :cond_1a

    .line 531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: intent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "android.net.vicewifi.RSSI_CHANGED"

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_1a4

    goto/16 :goto_a7

    :sswitch_2b
    const-string v0, "android.net.vicewifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/16 p1, 0x9

    goto/16 :goto_a8

    :sswitch_37
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/16 p1, 0x8

    goto/16 :goto_a8

    :sswitch_41
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 p1, 0x1

    goto :goto_a8

    :sswitch_4b
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 p1, 0x4

    goto :goto_a8

    :sswitch_55
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 p1, 0x5

    goto :goto_a8

    :sswitch_5f
    const-string v0, "android.net.vicewifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/16 p1, 0xa

    goto :goto_a8

    :sswitch_6a
    const-string v0, "flyme.intent.action.ICON_SWITCH_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/16 p1, 0xb

    goto :goto_a8

    :sswitch_75
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 p1, 0x2

    goto :goto_a8

    :sswitch_7f
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 p1, 0x7

    goto :goto_a8

    :sswitch_89
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    move p1, v3

    goto :goto_a8

    :sswitch_93
    const-string v0, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 p1, 0x3

    goto :goto_a8

    :sswitch_9d
    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 p1, 0x6

    goto :goto_a8

    :cond_a7
    :goto_a7
    move p1, v2

    :goto_a8
    packed-switch p1, :pswitch_data_1d6

    const-string/jumbo p1, "subscription"

    .line 614
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 616
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_19a

    .line 618
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1a3

    :pswitch_cd  #0xb
    const-string/jumbo p1, "slot"

    .line 607
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "hd"

    .line 608
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a3

    .line 609
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyMobileSignalControllers()V

    goto/16 :goto_1a3

    .line 581
    :pswitch_e1  #0x8, 0x9, 0xa
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_eb

    .line 582
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getViceWifiConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mViceWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    .line 584
    :cond_eb
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_f5

    .line 585
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getNetworkInfoForViceWifi()Landroid/net/NetworkInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mViceWifiNetworkInfo:Landroid/net/NetworkInfo;

    .line 588
    :cond_f5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_109

    const/16 p1, -0xc8

    const-string v0, "newRssi"

    .line 589
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiRssi:I

    .line 592
    :cond_109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleStatusBarWifiState()V

    .line 594
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isDualWifiEnabled()Z

    move-result p1

    .line 595
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiEnabled:Z

    if-eq p2, p1, :cond_11b

    .line 596
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiEnabled:Z

    .line 597
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiEnabled:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyDualWifiEnabledChangeCallBack(Z)V

    .line 600
    :cond_11b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDualWifiConnectionState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 601
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiConnectionState:Landroid/net/NetworkInfo$State;

    if-eq p2, p1, :cond_1a3

    .line 602
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiConnectionState:Landroid/net/NetworkInfo$State;

    .line 603
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiConnectionState:Landroid/net/NetworkInfo$State;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyDualWifiConnectionStateChangeCallBack(Landroid/net/NetworkInfo$State;)V

    goto/16 :goto_1a3

    .line 574
    :pswitch_12c  #0x7
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 575
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a3

    .line 566
    :pswitch_13f  #0x6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    .line 567
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1a3

    .line 570
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto :goto_1a3

    :pswitch_155  #0x5
    const-string p1, "rebroadcastOnUnlock"

    .line 559
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_15e

    goto :goto_1a3

    .line 563
    :cond_15e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    goto :goto_1a3

    .line 550
    :goto_162
    :pswitch_162  #0x4
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_178

    .line 551
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 552
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_162

    .line 554
    :cond_178
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 555
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ybM43k5QVX_SxWbQACu1XwL3Knk;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a3

    .line 545
    :pswitch_18b  #0x3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto :goto_1a3

    .line 540
    :pswitch_18f  #0x2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 541
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    goto :goto_1a3

    .line 537
    :pswitch_196  #0x0, 0x1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    goto :goto_1a3

    .line 621
    :cond_19a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    goto :goto_1a3

    .line 625
    :cond_19e
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleBroadcast(Landroid/content/Intent;)V

    :cond_1a3
    :goto_1a3
    return-void

    :sswitch_data_1a4
    .sparse-switch
        -0x7d6de25e -> :sswitch_9d
        -0x5753691f -> :sswitch_93
        -0x45e5283a -> :sswitch_89
        -0x43dd7a3f -> :sswitch_7f
        -0x402b4235 -> :sswitch_75
        -0x26efbb48 -> :sswitch_6a
        -0x155ecdb0 -> :sswitch_5f
        -0xdb21ee7 -> :sswitch_55
        -0x18365bb -> :sswitch_4b
        0x2524f753 -> :sswitch_41
        0x6a17aee0 -> :sswitch_37
        0x6c995f72 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_196  #00000000
        :pswitch_196  #00000001
        :pswitch_18f  #00000002
        :pswitch_18b  #00000003
        :pswitch_162  #00000004
        :pswitch_155  #00000005
        :pswitch_13f  #00000006
        :pswitch_12c  #00000007
        :pswitch_e1  #00000008
        :pswitch_e1  #00000009
        :pswitch_e1  #0000000a
        :pswitch_cd  #0000000b
    .end packed-switch
.end method

.method recalculateEmergency()V
    .registers 2

    .line 484
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEmergencyCallsOnly(Z)V

    return-void
.end method

.method public refreshCarrierLabel()V
    .registers 1

    .line 1598
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierStateListener:Lcom/android/keyguard/CarrierTextController$CarrierStateListener;

    if-eqz p0, :cond_7

    .line 1599
    invoke-interface {p0}, Lcom/android/keyguard/CarrierTextController$CarrierStateListener;->onRefreshFinished()V

    :cond_7
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .registers 3

    .line 508
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 96
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public removeDualWifiChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;)V
    .registers 3

    const/4 v0, 0x0

    .line 1453
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mViceWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    .line 1454
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDualWifiChangeCallBackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeNetworkConnectionCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;)V
    .registers 3

    .line 1406
    monitor-enter p0

    .line 1407
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectionCallBackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1408
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public removeSubscriptionsChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;)V
    .registers 2

    .line 1437
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionsChangeCallBackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCarrierStateListener(Lcom/android/keyguard/CarrierTextController$CarrierStateListener;)V
    .registers 2

    .line 1594
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierStateListener:Lcom/android/keyguard/CarrierTextController$CarrierStateListener;

    return-void
.end method

.method public setCurrentSubscriptionsLocked(Ljava/util/List;)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentSubscriptionsLocked: subscriptionSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$8;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$8;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 745
    iput-object v11, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    .line 747
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    .line 749
    :goto_2e
    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 750
    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 751
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 750
    invoke-virtual {v12, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 753
    :cond_4a
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 754
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_54
    if-ge v15, v14, :cond_cf

    .line 756
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 758
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_77

    .line 759
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 760
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->remove(I)V

    move/from16 v17, v14

    goto :goto_ca

    .line 762
    :cond_77
    new-instance v8, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v3, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 763
    invoke-virtual {v0, v9}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget-object v5, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    .line 764
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    iget-object v6, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 765
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v17, v6

    move-object/from16 v6, p0

    move-object v13, v8

    move-object/from16 v8, v17

    move/from16 v17, v14

    move v14, v9

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V

    .line 766
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setUserSetupComplete(Z)V

    .line 767
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 768
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-nez v0, :cond_be

    .line 769
    iput-object v13, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 771
    :cond_be
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v0, :cond_ca

    .line 772
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V

    .line 773
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    :cond_ca
    :goto_ca
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v17

    goto :goto_54

    .line 777
    :cond_cf
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v0, :cond_100

    const/4 v0, 0x0

    .line 778
    :goto_d4
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_100

    .line 779
    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 780
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    if-ne v2, v3, :cond_e9

    const/4 v2, 0x0

    .line 781
    iput-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 783
    :cond_e9
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterListener()V

    .line 784
    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d4

    .line 787
    :cond_100
    iget-object v0, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    .line 788
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    .line 792
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    const/4 v0, 0x1

    .line 793
    invoke-direct {v10, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    return-void
.end method

.method public setWifiEnabled(Z)V
    .registers 3

    .line 513
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 519
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public supportDualWifi()Z
    .registers 1

    .line 1459
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1462
    :cond_6
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->supportDualWifi()Z

    move-result p0

    return p0
.end method

.method protected updateNoSims()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 712
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 713
    :goto_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasAnySim()Z

    move-result v1

    .line 714
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    if-ne v0, v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    if-eq v1, v2, :cond_28

    .line 715
    :cond_1b
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    .line 716
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSubs:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimDetected:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(ZZ)V

    :cond_28
    return-void
.end method
