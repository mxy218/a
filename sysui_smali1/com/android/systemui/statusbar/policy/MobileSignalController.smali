.class public Lcom/android/systemui/statusbar/policy/MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController<",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final Q_UPGRADE_TAG:Ljava/lang/String;

.field private mCallState:I

.field private mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mDataNetType:I

.field private mDataState:I

.field private mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private final mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private final mDisplayGraceHandler:Landroid/os/Handler;

.field mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mFiveGStateListener:Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

.field private final mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

.field mInflateSignalStrengths:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mIsShowingIconGracefully:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private final mNetworkNameDefault:Ljava/lang/String;

.field private final mNetworkNameSeparator:Ljava/lang/String;

.field final mNetworkToIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field private mNetworkTypeIdWhenShowVoiceType:I

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRadioObserver:Landroid/database/ContentObserver;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mSwitchController:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

.field private mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field private mVoiceTypeId:I

.field private final mVolteSwitchObserver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V
    .registers 19

    move-object v6, p0

    move v7, p3

    move-object/from16 v8, p9

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileSignalController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    const/4 v0, 0x0

    .line 101
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 102
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 103
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 109
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    .line 111
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsShowingIconGracefully:Z

    .line 116
    iput v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallState:I

    .line 1410
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 1435
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$6;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    .line 1459
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$7;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

    .line 1831
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1835
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 139
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string v1, "MobileSignalController: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    move-object v0, p2

    .line 141
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-object v0, p4

    .line 142
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p8

    .line 143
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    move-object/from16 v0, p7

    .line 144
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 145
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGStateListener:Lcom/android/systemui/statusbar/policy/MobileSignalController$FiveGStateListener;

    .line 146
    new-instance v1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;-><init>()V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    .line 147
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;

    invoke-direct {v1, p0, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Looper;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 148
    sget v1, Lcom/android/systemui/R$string;->status_bar_network_name_separator:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->getStringIfExists(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 149
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    const v1, 0x104037c

    .line 150
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SignalController;->getStringIfExists(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 151
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    .line 155
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_ad

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_af

    .line 156
    :cond_ad
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 157
    :goto_af
    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v0, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 158
    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v0, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 159
    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobileSignalController: networkName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v7, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 161
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 165
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 166
    new-instance v1, Lcom/android/ims/ImsManager$Connector;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsManager$Connector;-><init>(Landroid/content/Context;ILcom/android/ims/ImsManager$Connector$Listener;)V

    iput-object v1, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    .line 183
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    .line 190
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;

    invoke-direct {v0, p0, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Looper;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisplayGraceHandler:Landroid/os/Handler;

    .line 201
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController$4;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRadioObserver:Landroid/database/ContentObserver;

    .line 208
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSwitchController:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/MobileSignalController;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setListeners()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceType()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .registers 2

    .line 79
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierSpecificDataIcon()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)V
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mzOnCallStateChanged(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->removeListeners()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .registers 1

    .line 79
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .registers 2

    .line 79
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method private checkDefaultData()V
    .registers 4

    .line 1046
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-eq v1, v2, :cond_11

    .line 1047
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    return-void

    .line 1051
    :cond_11
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isDataControllerDisabled()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    return-void
.end method

.method private getAlternateLteLevel(Landroid/telephony/SignalStrength;)I
    .registers 5

    .line 1182
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_28

    .line 1184
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    .line 1185
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 1186
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlternateLteLevel lteRsrp:INVALID  signalStrengthLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return p1

    :cond_28
    const/16 p1, -0x2c

    const/4 v1, 0x0

    if-le v0, p1, :cond_2e

    goto :goto_48

    :cond_2e
    const/16 p1, -0x61

    if-lt v0, p1, :cond_34

    const/4 v1, 0x4

    goto :goto_48

    :cond_34
    const/16 p1, -0x69

    if-lt v0, p1, :cond_3a

    const/4 v1, 0x3

    goto :goto_48

    :cond_3a
    const/16 p1, -0x71

    if-lt v0, p1, :cond_40

    const/4 v1, 0x2

    goto :goto_48

    :cond_40
    const/16 p1, -0x78

    if-lt v0, p1, :cond_46

    const/4 v1, 0x1

    goto :goto_48

    :cond_46
    const/16 p1, -0x8c

    .line 1199
    :goto_48
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz p1, :cond_6a

    .line 1200
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlternateLteLevel lteRsrp:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rsrpLevel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    return v1
.end method

.method private getDataNetworkType()I
    .registers 1

    .line 1177
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_9

    .line 1178
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private final getNWTypeByPriority(II)I
    .registers 4

    .line 1738
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result p0

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    if-le p0, v0, :cond_b

    return p1

    :cond_b
    return p2
.end method

.method private getNr5GIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .registers 8

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_119

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_119

    .line 1062
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    .line 1063
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNr5GIconGroup: nrState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_71

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    if-ne v0, v3, :cond_54

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1068
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    .line 1074
    :cond_54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1075
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    :cond_71
    if-ne v0, v4, :cond_d7

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNr5GIconGroup: NR_STATE_NOT_RESTRICTED="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    .line 1079
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1078
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityDormant:Z

    if-eqz v0, :cond_ba

    .line 1081
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1082
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    .line 1085
    :cond_ba
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1086
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    :cond_d7
    if-ne v0, v2, :cond_119

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNr5GIconGroup: NR_NOT_RESTRICTED="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    const/4 v4, 0x5

    .line 1091
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1093
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    :cond_119
    :goto_119
    return-object v1
.end method

.method private getNumLevels()I
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string v1, "getNumLevels: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz p0, :cond_d

    const/4 p0, 0x6

    return p0

    :cond_d
    const/4 p0, 0x5

    return p0
.end method

.method private getVoiceNetworkType()I
    .registers 1

    .line 1172
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_9

    .line 1173
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private getVolteResId()I
    .registers 6

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 470
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    .line 471
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v2, :cond_6a

    .line 472
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolteResId: voice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",video="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",register="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",enableId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/systemui/R$drawable;->mz_stat_sys_amr_wb:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",disableId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/systemui/R$drawable;->mz_stat_sys_amr_wb_disable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 472
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_6a
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCTA()Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    if-nez v3, :cond_7f

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    if-eqz v2, :cond_87

    :cond_7f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    if-nez v2, :cond_88

    :cond_87
    return v1

    .line 485
    :cond_88
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    if-nez v3, :cond_97

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    if-eqz v2, :cond_a2

    :cond_97
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    if-eqz v2, :cond_a2

    .line 488
    sget v1, Lcom/android/systemui/R$drawable;->mz_stat_sys_amr_wb:I

    goto :goto_b0

    .line 490
    :cond_a2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_ac

    const/16 v3, 0x13

    if-ne v2, v3, :cond_b0

    :cond_ac
    if-nez v0, :cond_b0

    .line 495
    sget v1, Lcom/android/systemui/R$drawable;->mz_stat_sys_amr_wb_disable:I

    .line 498
    :cond_b0
    :goto_b0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVolteSwitchOn: resId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isCallIdle()Z
    .registers 1

    .line 1168
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCallState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isCarrierNetworkChangeActive()Z
    .registers 1

    .line 709
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    return p0
.end method

.method private isCarrierSpecificDataIcon()Z
    .registers 8

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->patternOfCarrierSpecificDataIcon:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 760
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_44

    .line 764
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->patternOfCarrierSpecificDataIcon:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 765
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLongRaw()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 766
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorAlphaShortRaw()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 767
    array-length p0, v2

    move v4, v1

    :goto_2c
    if-ge v4, p0, :cond_44

    aget-object v5, v2, v4

    .line 768
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 769
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 770
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_41

    return v3

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_44
    :goto_44
    return v1
.end method

.method private isCdma()Z
    .registers 7

    .line 675
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 676
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 675
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 677
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPhoneType phoneType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isCdma="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_29

    move v5, v2

    goto :goto_2a

    :cond_29
    move v5, v3

    :goto_2a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v4, :cond_37

    goto :goto_38

    :cond_37
    move v2, v3

    :goto_38
    return v2
.end method

.method private isDataNetworkTypeAvailable()Z
    .registers 5

    .line 1146
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_33

    .line 1149
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v0

    .line 1150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_21

    const/16 v3, 0xc

    if-eq v0, v3, :cond_21

    const/16 v3, 0xe

    if-eq v0, v3, :cond_21

    const/16 v3, 0xd

    if-eq v0, v3, :cond_21

    const/16 v3, 0x13

    if-ne v0, v3, :cond_32

    :cond_21
    const/16 v0, 0x10

    if-eq v2, v0, :cond_2b

    const/4 v0, 0x7

    if-eq v2, v0, :cond_2b

    const/4 v0, 0x4

    if-ne v2, v0, :cond_32

    .line 1159
    :cond_2b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallIdle()Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x1

    :goto_33
    return v1
.end method

.method private isRegisterUnder5GNetwork()Z
    .registers 3

    .line 1817
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 1819
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_10

    const/4 v1, 0x2

    if-ne p0, v1, :cond_11

    :cond_10
    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isRegisterUnderLteNetwork(Landroid/telephony/ServiceState;)Z
    .registers 5

    .line 1752
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegisterUnderLteNetwork with serviceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2a

    .line 1754
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_28

    .line 1755
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_2a

    :cond_28
    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    .line 1758
    :goto_2b
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLteNetwork = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private isRoaming()Z
    .registers 4

    .line 689
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->ROAMING_DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 695
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    return v2

    .line 698
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_2b

    .line 699
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    .line 700
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result p0

    if-eq p0, v1, :cond_29

    if-eqz v0, :cond_2a

    if-ne v0, v1, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :cond_2a
    :goto_2a
    return v1

    .line 704
    :cond_2b
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    if-eqz p0, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    return v1
.end method

.method private isShowVoice()Z
    .registers 4

    .line 1746
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;->isShowVoice()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 1747
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->getNetworkType(Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->isShow3Gor4G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    if-eqz v0, :cond_2a

    .line 1748
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    return v1
.end method

.method private isVolteSwitchOn()Z
    .registers 1

    .line 460
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private mapIconSets()V
    .registers 7

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string v1, "mapIconSets: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_73

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_93

    .line 330
    :cond_73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 341
    :goto_93
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 343
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gFor3g:Z

    if-eqz v2, :cond_9e

    .line 344
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_a7

    .line 346
    :cond_9e
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    if-eqz v1, :cond_a7

    .line 347
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 348
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_a8

    :cond_a7
    :goto_a7
    move-object v1, v0

    .line 351
    :goto_a8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    const/16 v1, 0xd

    const/16 v2, 0x13

    if-eqz v0, :cond_eb

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    if-eqz v0, :cond_e3

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_11b

    .line 362
    :cond_e3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_11b

    .line 377
    :cond_eb
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCtSim(I)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_106

    .line 381
    :cond_ff
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    :goto_106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    if-eqz v0, :cond_114

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_11b

    .line 402
    :cond_114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    :goto_11b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v1, 0x15

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v0, 0x12

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private mzOnCallStateChanged(I)V
    .registers 5

    .line 1779
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inPhoneCall:Z

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v2, 0x2

    if-eq p1, v2, :cond_10

    goto :goto_1c

    .line 1783
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inPhoneCall:Z

    goto :goto_1c

    .line 1786
    :cond_17
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inPhoneCall:Z

    .line 1791
    :goto_1c
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inPhoneCall:Z

    if-eq v1, p1, :cond_2d

    .line 1792
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkType()V

    .line 1793
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceType()V

    .line 1794
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    :cond_2d
    return-void
.end method

.method private queryImsState()V
    .registers 5

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string v1, "queryImsState: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    .line 525
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoTelephonyAvailable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    .line 526
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    .line 527
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_87

    .line 528
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryImsState tm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " phone="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " voiceCapable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " videoCapable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " imsResitered="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method private removeListeners()V
    .registers 5

    const-string v0, " from "

    .line 537
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string v2, "removeListeners: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v1, :cond_15

    .line 539
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v0, "removeListeners mImsManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 544
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->removeCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 545
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->removeRegistrationListener(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V

    .line 546
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCapabilitiesCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeRegistrationCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Lcom/android/ims/ImsException; {:try_start_15 .. :try_end_61} :catch_62

    goto :goto_6a

    .line 551
    :catch_62
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "unable to remove callback."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    return-void
.end method

.method private setListeners()V
    .registers 5

    const-string v0, " into "

    .line 503
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string v2, "setListeners: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v1, :cond_15

    .line 505
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string v0, "setListeners mImsManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 510
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->addCapabilitiesCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 511
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V

    .line 512
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCapabilitiesCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRegistrationCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Lcom/android/ims/ImsException; {:try_start_15 .. :try_end_61} :catch_62

    goto :goto_6a

    .line 516
    :catch_62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "unable to addCapabilitiesCallback callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_6a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->queryImsState()V

    return-void
.end method

.method private updateDataSim()V
    .registers 4

    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDataSim: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getActiveDataSubId()I

    move-result v0

    .line 744
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    .line 745
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne v0, p0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    goto :goto_2c

    .line 754
    :cond_26
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    :goto_2c
    return-void
.end method

.method private updateInflateSignalStrength()V
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateInflateSignalStrength: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 415
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 414
    invoke-static {v0, v1}, Lcom/android/settingslib/net/SignalStrengthUtil;->shouldInflateSignalStrength(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    return-void
.end method

.method private updateNetworkType()V
    .registers 5

    .line 1592
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_45

    .line 1593
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 1594
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-nez v1, :cond_3a

    .line 1596
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkType: DataState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getDataNetworkType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 1597
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1596
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 1601
    :cond_3a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNWTypeByPriority(II)I

    move-result v0

    goto :goto_47

    .line 1604
    :cond_45
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 1607
    :goto_47
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkType: DataNetType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 1614
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;->isShowVoice()Z

    move-result v1

    if-nez v1, :cond_8a

    .line 1615
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inPhoneCall:Z

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_8a

    .line 1616
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    :cond_8a
    packed-switch v0, :pswitch_data_120

    .line 1665
    :pswitch_8d  #0x1, 0xb, 0x10, 0x12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v0, :cond_eb

    .line 1666
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_ef

    .line 1662
    :pswitch_98  #0x14
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_5G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_ef

    .line 1659
    :pswitch_9d  #0x13
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_ef

    .line 1652
    :pswitch_a2  #0xd
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRegisterUnder5GNetwork()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1653
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_5G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_ef

    .line 1655
    :cond_ad
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCtSim(I)Z

    move-result v0

    if-eqz v0, :cond_bc

    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_be

    :cond_bc
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    :goto_be
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_ef

    .line 1639
    :pswitch_c1  #0x8, 0x9, 0xa, 0xf, 0x11
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_ef

    .line 1649
    :pswitch_c6  #0x5, 0x6, 0xc, 0xe
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_ef

    .line 1643
    :pswitch_cb  #0x4, 0x7
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_ef

    .line 1622
    :pswitch_d0  #0x0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v0, :cond_db

    .line 1623
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_ef

    .line 1627
    :cond_db
    :pswitch_db  #0x2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v0, :cond_e6

    .line 1628
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_ef

    .line 1632
    :cond_e6
    :pswitch_e6  #0x3
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_ef

    .line 1668
    :cond_eb
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 1672
    :goto_ef
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_fa

    const/4 v0, 0x0

    .line 1673
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 1675
    :cond_fa
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkType: mNetworkType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",isRegisterUnder5GNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRegisterUnder5GNetwork()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1675
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_d0  #00000000
        :pswitch_8d  #00000001
        :pswitch_db  #00000002
        :pswitch_e6  #00000003
        :pswitch_cb  #00000004
        :pswitch_c6  #00000005
        :pswitch_c6  #00000006
        :pswitch_cb  #00000007
        :pswitch_c1  #00000008
        :pswitch_c1  #00000009
        :pswitch_c1  #0000000a
        :pswitch_8d  #0000000b
        :pswitch_c6  #0000000c
        :pswitch_a2  #0000000d
        :pswitch_c6  #0000000e
        :pswitch_c1  #0000000f
        :pswitch_8d  #00000010
        :pswitch_c1  #00000011
        :pswitch_8d  #00000012
        :pswitch_9d  #00000013
        :pswitch_98  #00000014
    .end packed-switch
.end method

.method private final updateTelephony()V
    .registers 8

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateTelephony: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_33

    .line 832
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 833
    invoke-static {v2}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 832
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->checkDefaultData()V

    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_4a

    move v1, v2

    goto :goto_4b

    :cond_4a
    move v1, v3

    :goto_4b
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 837
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v0, :cond_15f

    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    if-eqz v0, :cond_71

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    goto/16 :goto_108

    .line 841
    :cond_71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 842
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showRsrpSignalLevelforLTE:Z

    if-eqz v0, :cond_108

    .line 843
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_d4

    .line 844
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTelephony CS:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 846
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v5

    .line 845
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", PS:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 847
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 849
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v4

    .line 848
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 844
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_d4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_fc

    const/16 v4, 0x13

    if-ne v0, v4, :cond_e3

    goto :goto_fc

    :cond_e3
    if-nez v0, :cond_108

    .line 859
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    if-eq v0, v1, :cond_ef

    if-ne v0, v4, :cond_108

    .line 862
    :cond_ef
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAlternateLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    goto :goto_108

    .line 856
    :cond_fc
    :goto_fc
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 868
    :cond_108
    :goto_108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    .line 869
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_15f

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRegisterUnderLteNetwork(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inPhoneCall:Z

    if-eqz v0, :cond_141

    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;->isShowVoice()Z

    move-result v0

    if-nez v0, :cond_141

    move v0, v2

    goto :goto_142

    :cond_141
    move v0, v3

    :goto_142
    if-eqz v0, :cond_14e

    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result v0

    if-eqz v0, :cond_14e

    move v0, v2

    goto :goto_14f

    :cond_14e
    move v0, v3

    .line 873
    :goto_14f
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v0, :cond_15b

    iget v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    goto :goto_15d

    :cond_15b
    iget v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    :goto_15d
    iput v0, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 881
    :cond_15f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNr5GIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 889
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_18d

    .line 890
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTelephony: nr5GIconGroupNull="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_178

    move v5, v2

    goto :goto_179

    :cond_178
    move v5, v3

    :goto_179
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mDataNetType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18d
    if-eqz v0, :cond_196

    .line 895
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_1b9

    .line 896
    :cond_196
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1b1

    .line 897
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v4, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_1b9

    .line 899
    :cond_1b1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v4, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 934
    :goto_1b9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    const/4 v5, 0x2

    if-eqz v1, :cond_1d1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    if-eq v1, v5, :cond_1cf

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v1, v6, :cond_1d1

    :cond_1cf
    move v1, v2

    goto :goto_1d2

    :cond_1d1
    move v1, v3

    :goto_1d2
    iput-boolean v1, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 939
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eq v1, v4, :cond_1e7

    .line 940
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyNetworkConnectionCallbacks()V

    .line 944
    :cond_1e7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 961
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eq v1, v6, :cond_20b

    .line 962
    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iput-boolean v1, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 963
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 978
    :cond_20b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateTelephony: networkNameData="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",def="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",serviceNull="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v6, :cond_236

    move v6, v2

    goto :goto_237

    :cond_236
    move v6, v3

    :goto_237
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",dataSim="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29c

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_29c

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-eqz v4, :cond_29c

    .line 984
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29c

    .line 985
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 986
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateTelephony: getDataOperatorAlphaShort="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_29c
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    if-eqz v1, :cond_2e1

    if-eqz v0, :cond_2ab

    .line 994
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_2e1

    .line 997
    :cond_2ab
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v0, :cond_2c1

    .line 998
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataNetworkTypeAvailable()Z

    move-result v0

    if-eqz v0, :cond_2bc

    .line 999
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_2c2

    .line 1001
    :cond_2bc
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    goto :goto_2c2

    :cond_2c1
    move v0, v3

    .line 1004
    :goto_2c2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2d9

    .line 1005
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_2e1

    .line 1007
    :cond_2d9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1014
    :cond_2e1
    :goto_2e1
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCTA()Z

    move-result v0

    if-eqz v0, :cond_300

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-ne v0, v5, :cond_300

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-nez v1, :cond_300

    .line 1016
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1020
    :cond_300
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-eqz v1, :cond_35e

    .line 1021
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 1022
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;->getRoamingIconShowType()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;

    move-result-object v1

    .line 1023
    sget-object v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$8;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeStatusBarPlugin$RoamingIconShowType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_32f

    if-eq v3, v5, :cond_326

    goto :goto_339

    .line 1029
    :cond_326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_339

    .line 1025
    :cond_32f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->createRoamingIconGroup(I)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    iput-object v0, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1035
    :goto_339
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTelephony: iconGroup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",showType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_35e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method private updateVoiceType()V
    .registers 4

    .line 1680
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_54

    .line 1681
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_7a

    :pswitch_b  #0x1, 0xb, 0x10, 0x12
    goto :goto_45

    .line 1720
    :pswitch_c  #0x14
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_5G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_45

    .line 1717
    :pswitch_11  #0x13
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_54

    .line 1714
    :pswitch_16  #0xd
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_54

    .line 1701
    :pswitch_1b  #0x8, 0x9, 0xa, 0xf, 0x11
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_54

    .line 1711
    :pswitch_20  #0x5, 0x6, 0xc, 0xe
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_54

    .line 1705
    :pswitch_25  #0x4, 0x7
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_54

    .line 1684
    :pswitch_2a  #0x0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v0, :cond_35

    .line 1685
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_54

    .line 1689
    :cond_35
    :pswitch_35  #0x2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v0, :cond_40

    .line 1690
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_54

    .line 1694
    :cond_40
    :pswitch_40  #0x3
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_54

    .line 1722
    :goto_45
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v0, :cond_50

    .line 1723
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_54

    .line 1725
    :cond_50
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 1730
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_5f

    const/4 v0, 0x0

    .line 1731
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 1733
    :cond_5f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVoiceType: mVoiceType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_b  #00000001
        :pswitch_35  #00000002
        :pswitch_40  #00000003
        :pswitch_25  #00000004
        :pswitch_20  #00000005
        :pswitch_20  #00000006
        :pswitch_25  #00000007
        :pswitch_1b  #00000008
        :pswitch_1b  #00000009
        :pswitch_1b  #0000000a
        :pswitch_b  #0000000b
        :pswitch_20  #0000000c
        :pswitch_16  #0000000d
        :pswitch_20  #0000000e
        :pswitch_1b  #0000000f
        :pswitch_b  #00000010
        :pswitch_1b  #00000011
        :pswitch_b  #00000012
        :pswitch_11  #00000013
        :pswitch_c  #00000014
    .end packed-switch
.end method


# virtual methods
.method protected cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    .registers 1

    .line 669
    new-instance p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .registers 1

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 1259
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSignalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDataState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDataNetType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInflateSignalStrengths="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isDataDisabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsShowingIconGracefully="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsShowingIconGracefully:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFiveGState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mFiveGState:Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentIconId()I
    .registers 7

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string v1, "getCurrentIconId: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v1, v2, :cond_1b

    .line 430
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->getCarrierChangeState(I)I

    move-result p0

    return p0

    .line 431
    :cond_1b
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_74

    .line 432
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 433
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInflateSignalStrengths:Z

    if-eqz v1, :cond_2d

    add-int/lit8 v0, v0, 0x1

    .line 437
    :cond_2d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_51

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-eq v3, v5, :cond_4f

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v3, v5, :cond_51

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    if-eqz v1, :cond_51

    :cond_4f
    move v1, v4

    goto :goto_52

    :cond_51
    move v1, v2

    .line 441
    :goto_52
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    if-nez v3, :cond_5c

    move v3, v4

    goto :goto_5d

    :cond_5c
    move v3, v2

    :goto_5d
    if-nez v1, :cond_63

    if-eqz v3, :cond_62

    goto :goto_63

    :cond_62
    move v4, v2

    .line 443
    :cond_63
    :goto_63
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideNoInternetState:Z

    if-eqz v1, :cond_6a

    goto :goto_6b

    :cond_6a
    move v2, v4

    .line 446
    :goto_6b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {v0, p0, v2}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    .line 447
    :cond_74
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v0, :cond_83

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result p0

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->getEmptyState(I)I

    move-result p0

    return p0

    :cond_83
    return v2
.end method

.method public getCurrentIconId(Z)I
    .registers 5

    .line 1764
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_50

    .line 1765
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentIconId: isShowVoice()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isShowVoice()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentState.connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isVoice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentState.voiceLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentState.level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isShowVoice()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v0, :cond_7b

    .line 1772
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mSbIcons:[[I

    if-eqz p1, :cond_6a

    const/4 v1, 0x3

    goto :goto_6b

    :cond_6a
    const/4 v1, 0x2

    :goto_6b
    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz p1, :cond_76

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    goto :goto_78

    :cond_76
    iget p0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    :goto_78
    aget p0, v0, p0

    return p0

    .line 1774
    :cond_7b
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getCurrentIconId()I

    move-result p0

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 7

    .line 1808
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getNetWorkNamePlugin(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 1809
    invoke-static {v4}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->getNetworkType(Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;->updateShowNetWorkName(Ljava/lang/String;Ljava/lang/String;Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",networkName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1808
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getNetWorkNamePlugin(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 1813
    invoke-static {p0}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->getNetworkType(Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    move-result-object p0

    invoke-interface {v0, v1, v5, p0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;->updateShowNetWorkName(Ljava/lang/String;Ljava/lang/String;Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQsCurrentIconId()I
    .registers 1

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result p0

    return p0
.end method

.method public getSimSlotIndex()I
    .registers 4

    .line 1800
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_9

    .line 1801
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    .line 1803
    :goto_a
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_24

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimSlotIndex, slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .registers 10

    .line 713
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 714
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBroadcast: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    .line 715
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v0, 0x0

    const-string/jumbo v1, "showSpn"

    .line 716
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v1, "spn"

    .line 717
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "spnData"

    .line 718
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "showPlmn"

    .line 719
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "plmn"

    .line 720
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 716
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    goto :goto_9c

    :cond_4d
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 722
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 723
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 724
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    goto :goto_9c

    :cond_5c
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    .line 725
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const-string v0, "apnType"

    .line 726
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    .line 727
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mms"

    .line 728
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 729
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_93

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBroadcast MMS connection state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_93
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMMSDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 733
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    :cond_9c
    :goto_9c
    return-void
.end method

.method public inPhoneCall()Z
    .registers 1

    .line 1825
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inPhoneCall:Z

    return p0
.end method

.method isDataDisabled()Z
    .registers 1

    .line 1141
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEmergencyOnly()Z
    .registers 1

    .line 684
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .registers 27

    move-object/from16 v0, p0

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 558
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1c

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v2, v3, :cond_26

    :cond_1c
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    move v2, v6

    .line 562
    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SignalController;->getStringIfExists(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 563
    iget v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/SignalController;->getStringIfExists(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 569
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 568
    invoke-static {v4, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v4

    .line 569
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 570
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    if-nez v7, :cond_55

    .line 571
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_55
    move-object v15, v4

    .line 575
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-nez v4, :cond_63

    if-eqz v2, :cond_61

    goto :goto_63

    :cond_61
    move v4, v6

    goto :goto_64

    :cond_63
    :goto_63
    const/4 v4, 0x1

    .line 576
    :goto_64
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v7, :cond_94

    .line 577
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyListeners: dataConnected="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",dataDisabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",showDataIcon="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_94
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v8

    invoke-static {v7, v8}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isRadioPowerOn(Landroid/content/Context;I)Z

    move-result v19

    .line 587
    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v9, v7

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v9, :cond_b3

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-nez v7, :cond_b3

    if-eqz v19, :cond_b3

    const/4 v7, 0x1

    goto :goto_b4

    :cond_b3
    move v7, v6

    .line 590
    :goto_b4
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId(Z)I

    move-result v9

    invoke-direct {v8, v7, v9, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 597
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    const/4 v9, 0x0

    if-eqz v7, :cond_fe

    if-nez v4, :cond_cf

    .line 598
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-eqz v7, :cond_cd

    goto :goto_cf

    :cond_cd
    move v7, v6

    goto :goto_d1

    :cond_cf
    :goto_cf
    iget v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    .line 599
    :goto_d1
    new-instance v10, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v12, v11

    check-cast v12, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v12, :cond_e4

    check-cast v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v11, v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-nez v11, :cond_e4

    const/4 v11, 0x1

    goto :goto_e5

    :cond_e4
    move v11, v6

    .line 600
    :goto_e5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getQsCurrentIconId()I

    move-result v12

    invoke-direct {v10, v11, v12, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 601
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v11, v3

    check-cast v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v11, v11, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v11, :cond_f6

    goto :goto_fa

    :cond_f6
    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v9, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    :goto_fa
    move v11, v7

    move-object v3, v9

    move-object v9, v10

    goto :goto_100

    :cond_fe
    move v11, v6

    move-object v3, v9

    .line 603
    :goto_100
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v10, v7

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v10, :cond_118

    move-object v10, v7

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-nez v10, :cond_118

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v7, :cond_118

    const/4 v12, 0x1

    goto :goto_119

    :cond_118
    move v12, v6

    .line 606
    :goto_119
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v10, v7

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v10, :cond_131

    move-object v10, v7

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-nez v10, :cond_131

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v7, :cond_131

    const/4 v13, 0x1

    goto :goto_132

    :cond_131
    move v13, v6

    .line 609
    :goto_132
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez v7, :cond_13f

    if-eqz v2, :cond_13d

    goto :goto_13f

    :cond_13d
    move v2, v6

    goto :goto_140

    :cond_13f
    :goto_13f
    const/4 v2, 0x1

    :goto_140
    and-int/2addr v2, v4

    .line 610
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v4, :cond_193

    .line 611
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyListeners: showDataIcon="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",isDefault="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",alwaysShowDataRatIcon="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",alwaysShowNetworkTypeIcon="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",icons.mDataType="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",icons="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_193
    if-nez v2, :cond_1a2

    .line 618
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v7, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    if-nez v7, :cond_1a2

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    if-eqz v4, :cond_1a0

    goto :goto_1a2

    :cond_1a0
    move v10, v6

    goto :goto_1a5

    .line 619
    :cond_1a2
    :goto_1a2
    iget v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    move v10, v4

    .line 624
    :goto_1a5
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVolteIcon:Z

    if-eqz v4, :cond_1b5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVolteSwitchOn()Z

    move-result v4

    if-eqz v4, :cond_1b5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVolteResId()I

    move-result v6

    :cond_1b5
    move v14, v6

    .line 625
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v4, :cond_244

    .line 626
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyListeners mConfig.alwaysShowNetworkTypeIcon="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  mDataNetType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 628
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " voiceNetType="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " showDataIcon="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mConfig.alwaysShowDataRatIcon="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " icons.mDataType="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mConfig.showVolteIcon="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVolteIcon:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isVolteSwitchOn="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVolteSwitchOn()Z

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " volteIcon="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 626
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_244
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getActivityIconPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;

    move-result-object v2

    iget v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    invoke-interface {v2, v4, v5, v12, v13}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;->getActivityIcon(IZZZ)I

    move-result v21

    .line 643
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getNetworkTypeIconPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 644
    invoke-static {v4}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->getNetworkType(Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 645
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCtSim(I)Z

    move-result v6

    .line 643
    invoke-interface {v2, v4, v5, v10, v6}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;->getNetworkTypeIcon(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;ZIZ)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkTypeIdWhenShowVoiceType:I

    .line 647
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getNetworkTypeIconPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 648
    invoke-static {v4}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->getNetworkType(Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v5

    .line 649
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isShowVoice()Z

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCtSim(I)Z

    move-result v7

    .line 647
    invoke-interface {v2, v4, v5, v6, v7}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;->getVoiceTypeIcon(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;ZZZ)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceTypeId:I

    .line 652
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;

    .line 653
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isShowVoice()Z

    move-result v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSwitchController:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    const-string v5, "hd"

    .line 655
    invoke-virtual {v4, v5}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->isSlotVisible(Ljava/lang/String;)Z

    move-result v20

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoiceTypeId:I

    const/4 v5, 0x1

    .line 658
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId(Z)I

    move-result v23

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkTypeIdWhenShowVoiceType:I

    move-object/from16 v17, v2

    move/from16 v22, v4

    move/from16 v24, v5

    invoke-direct/range {v17 .. v24}, Lcom/android/systemui/statusbar/policy/NetworkController$FlymeState;-><init>(ZZZIIII)V

    .line 661
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 663
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    move-object/from16 v7, p1

    move-object/from16 v17, v3

    move/from16 v18, v1

    move/from16 v20, v0

    move-object/from16 v21, v2

    .line 661
    invoke-interface/range {v7 .. v21}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZLcom/android/systemui/statusbar/policy/NetworkController$FlymeState;)V

    return-void
.end method

.method onMobileDataChanged()V
    .registers 1

    .line 1055
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->checkDefaultData()V

    .line 1056
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public registerFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .registers 2

    return-void
.end method

.method public registerListener()V
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string v1, "registerListener: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v2, 0x4101e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 270
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "org.codeaurora.intent.action.ACTION_ENHANCE_4G_SWITCH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager$Connector;->connect()V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isQCOM(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "msim_mode_setting"

    if-eqz v0, :cond_75

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRadioObserver:Landroid/database/ContentObserver;

    .line 278
    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_84

    .line 281
    :cond_75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 282
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRadioObserver:Landroid/database/ContentObserver;

    .line 281
    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_84
    return-void
.end method

.method setActivity(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_e

    if-ne p1, v3, :cond_c

    goto :goto_e

    :cond_c
    move v4, v2

    goto :goto_f

    :cond_e
    :goto_e
    move v4, v3

    :goto_f
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    .line 1209
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v1, :cond_1d

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1b

    goto :goto_1d

    :cond_1b
    move v1, v2

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v1, v3

    :goto_1e
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    .line 1211
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v1, 0x4

    if-ne p1, v1, :cond_28

    move v2, v3

    :cond_28
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityDormant:Z

    .line 1213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public setAirplaneMode(Z)V
    .registers 5

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAirplaneMode: airplaneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public setCarrierNetworkChangeMode(Z)V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateInflateSignalStrength()V

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method public setUserSetupComplete(Z)V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public unregisterFiveGStateListener(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .registers 2

    return-void
.end method

.method public unregisterListener()V
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterListener: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVolteSwitchObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mImsManagerConnector:Lcom/android/ims/ImsManager$Connector;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager$Connector;->disconnect()V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRadioObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateConnectivity: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mTransportType:I

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 242
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-nez p2, :cond_2a

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez p1, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p1, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p1, 0x1

    :goto_2b
    iput p1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8

    .line 783
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->CHATTY:Z

    if-eqz v0, :cond_3b

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNetworkName showSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " showPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " plmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierLabel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_4f

    if-eqz p5, :cond_4f

    .line 791
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    if-eqz p1, :cond_61

    if-eqz p2, :cond_61

    .line 795
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    if-eqz p4, :cond_5e

    .line 796
    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_5e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_72

    .line 801
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_7a

    .line 803
    :cond_72
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object p4, p2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    :goto_7a
    if-eqz p1, :cond_8c

    if-eqz p3, :cond_8c

    .line 806
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_89

    .line 807
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :cond_89
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    :cond_8c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_9d

    .line 812
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_a5

    .line 814
    :cond_9d
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 818
    :goto_a5
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->Q_UPGRADE_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateNetworkName: networkName="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p3, p3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",networkNameData="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object p3, p3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    return-void
.end method
