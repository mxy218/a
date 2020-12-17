.class public Lcom/android/keyguard/CarrierTextController;
.super Ljava/lang/Object;
.source "CarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierTextController$CarrierStateListener;,
        Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;,
        Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;,
        Lcom/android/keyguard/CarrierTextController$StatusMode;
    }
.end annotation


# instance fields
.field private mActiveMobileDataSubscription:I

.field protected final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mCarrierStateListener:Lcom/android/keyguard/CarrierTextController$CarrierStateListener;

.field private mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

.field private mContext:Landroid/content/Context;

.field protected mDisplayOpportunisticSubscriptionCarrierText:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

.field private final mIsEmergencyCallCapable:Z

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSeparator:Ljava/lang/CharSequence;

.field private mShowAirplaneMode:Z

.field private mShowMissingSim:Z

.field private mSimErrorState:[Z

.field private final mSimSlotsNumber:I

.field private mTelephonyCapable:Z

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .registers 7

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/keyguard/CarrierTextController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$1;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 98
    new-instance v0, Lcom/android/keyguard/CarrierTextController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$2;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, -0x1

    .line 137
    iput v0, p0, Lcom/android/keyguard/CarrierTextController;->mActiveMobileDataSubscription:I

    .line 138
    new-instance v0, Lcom/android/keyguard/CarrierTextController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$3;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 884
    new-instance v0, Lcom/android/keyguard/CarrierTextController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierTextController$4;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierStateListener:Lcom/android/keyguard/CarrierTextController$CarrierStateListener;

    .line 172
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mIsEmergencyCallCapable:Z

    .line 176
    iput-boolean p3, p0, Lcom/android/keyguard/CarrierTextController;->mShowAirplaneMode:Z

    .line 177
    iput-boolean p4, p0, Lcom/android/keyguard/CarrierTextController;->mShowMissingSim:Z

    const-string/jumbo p3, "wifi"

    .line 179
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 180
    iput-object p2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    .line 181
    const-class p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p2, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    const-string p2, "phone"

    .line 182
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 183
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    .line 184
    iget p1, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    const-string p1, "persist.radio.display_opportunistic_carrier"

    const/4 p2, 0x0

    .line 185
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierTextController;->updateDisplayOpportunisticSubscriptionCarrierText(Z)V

    .line 190
    const-class p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierStateListener:Lcom/android/keyguard/CarrierTextController$CarrierStateListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->setCarrierStateListener(Lcom/android/keyguard/CarrierTextController$CarrierStateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CarrierTextController;)Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/CarrierTextController;)Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/CarrierTextController;Z)Z
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/CarrierTextController;)I
    .registers 1

    .line 65
    iget p0, p0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/CarrierTextController;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierTextController$StatusMode;
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/CarrierTextController;)[Z
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/keyguard/CarrierTextController;I)I
    .registers 2

    .line 65
    iput p1, p0, Lcom/android/keyguard/CarrierTextController;->mActiveMobileDataSubscription:I

    return p1
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5

    .line 613
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 614
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    if-eqz v0, :cond_26

    return-object p0

    :cond_26
    if-eqz v1, :cond_29

    return-object p1

    :cond_29
    const-string p0, ""

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

    .line 272
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5a

    const/4 v0, 0x0

    .line 273
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x1

    .line 274
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 275
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

    .line 277
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_36

    return-void

    .line 281
    :cond_36
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    .line 282
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 285
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_49

    goto :goto_4a

    :cond_49
    move-object v0, v1

    :goto_4a
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 287
    :cond_4e
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget p0, p0, Lcom/android/keyguard/CarrierTextController;->mActiveMobileDataSubscription:I

    if-ne v2, p0, :cond_57

    move-object v0, v1

    :cond_57
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5a
    :goto_5a
    return-void
.end method

.method private get5GNetworkClass(Landroid/telephony/SubscriptionInfo;I)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x14

    if-ne p2, v0, :cond_11

    .line 812
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->data_connection_5g:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 815
    :cond_11
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p2

    .line 816
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 818
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    if-nez v0, :cond_2c

    .line 819
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 820
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 822
    :cond_2c
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mFiveGServiceClient:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 823
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p2

    .line 824
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->isNrIconTypeValid()Z

    move-result p2

    if-eqz p2, :cond_4b

    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->isDataRegisteredOnLte(I)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 825
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->data_connection_5g:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4b
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAirplaneModeMessage()Ljava/lang/String;
    .registers 2

    .line 473
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mShowAirplaneMode:Z

    if-eqz v0, :cond_f

    .line 474
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->airplane_mode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_f
    const-string p0, ""

    :goto_11
    return-object p0
.end method

.method private getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 486
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextController;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierTextController$StatusMode;

    move-result-object p1

    .line 487
    sget-object v0, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$keyguard$CarrierTextController$StatusMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_5e

    :pswitch_10  #0x4, 0x6, 0xa
    move-object p2, v0

    goto :goto_5d

    .line 530
    :pswitch_12  #0x9
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_error_message_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_5d

    .line 525
    :pswitch_21  #0x8
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_puk_locked_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_5d

    .line 519
    :pswitch_30  #0x7
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_locked_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 518
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_5d

    .line 508
    :pswitch_3f  #0x5
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_permanent_disabled_sim_message_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 507
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_5d

    .line 498
    :pswitch_4e  #0x3
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->keyguard_network_locked_message:I

    .line 499
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 498
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_5d

    :pswitch_5b  #0x2
    const-string p2, ""

    :goto_5d
    :pswitch_5d  #0x1
    return-object p2

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_5d  #00000001
        :pswitch_5b  #00000002
        :pswitch_4e  #00000003
        :pswitch_10  #00000004
        :pswitch_3f  #00000005
        :pswitch_10  #00000006
        :pswitch_30  #00000007
        :pswitch_21  #00000008
        :pswitch_12  #00000009
        :pswitch_10  #0000000a
    .end packed-switch
.end method

.method private getContext()Landroid/content/Context;
    .registers 1

    .line 464
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getCustomizeCarrierName(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .registers 8

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 732
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/CarrierTextController;->getNetworkType(I)I

    move-result v1

    .line 733
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/CarrierTextController;->networkClassToString(I)Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-direct {p0, p2, v1}, Lcom/android/keyguard/CarrierTextController;->get5GNetworkClass(Landroid/telephony/SubscriptionInfo;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object p2, v2

    .line 740
    :goto_1d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 741
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 742
    :goto_33
    array-length v2, p1

    if-ge v1, v2, :cond_86

    .line 743
    aget-object v2, p1, v1

    sget v3, Lcom/android/systemui/R$array;->origin_carrier_names:I

    sget v4, Lcom/android/systemui/R$array;->locale_carrier_names:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/keyguard/CarrierTextController;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 746
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 747
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    :cond_68
    if-lez v1, :cond_77

    .line 751
    aget-object v2, p1, v1

    add-int/lit8 v3, v1, -0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    goto :goto_83

    :cond_77
    if-lez v1, :cond_7e

    .line 755
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 757
    :cond_7e
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_83
    :goto_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 761
    :cond_86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocalString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    .line 800
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 801
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    .line 802
    :goto_19
    array-length v0, p2

    if-ge p3, v0, :cond_2a

    .line 803
    aget-object v0, p2, p3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 804
    aget-object p0, p0, p3

    return-object p0

    :cond_27
    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    :cond_2a
    return-object p1
.end method

.method private getMissingSimMessage()Ljava/lang/String;
    .registers 2

    .line 468
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mShowMissingSim:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mTelephonyCapable:Z

    if-eqz v0, :cond_13

    .line 469
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    :cond_13
    const-string p0, ""

    :goto_15
    return-object p0
.end method

.method private getNetworkType(I)I
    .registers 2

    .line 766
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ServiceState;

    if-eqz p0, :cond_27

    .line 767
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-eqz p1, :cond_1c

    .line 768
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p1

    if-nez p1, :cond_27

    .line 769
    :cond_1c
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p1

    if-nez p1, :cond_28

    .line 771
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :cond_28
    :goto_28
    return p1
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierTextController$StatusMode;
    .registers 2

    if-nez p1, :cond_5

    .line 578
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 581
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    .line 582
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p0

    if-nez p0, :cond_1b

    sget-object p0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, p0, :cond_19

    sget-object p0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, p0, :cond_1b

    :cond_19
    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-eqz p0, :cond_20

    .line 587
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 588
    :cond_20
    sget-object p0, Lcom/android/keyguard/CarrierTextController$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_4a

    .line 608
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 606
    :pswitch_2e  #0x9
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 604
    :pswitch_31  #0x8
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 602
    :pswitch_34  #0x7
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 600
    :pswitch_37  #0x6
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 598
    :pswitch_3a  #0x5
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 596
    :pswitch_3d  #0x4
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 594
    :pswitch_40  #0x3
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 592
    :pswitch_43  #0x2
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    .line 590
    :pswitch_46  #0x1
    sget-object p0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_46  #00000001
        :pswitch_43  #00000002
        :pswitch_40  #00000003
        :pswitch_3d  #00000004
        :pswitch_3a  #00000005
        :pswitch_37  #00000006
        :pswitch_34  #00000007
        :pswitch_31  #00000008
        :pswitch_2e  #00000009
    .end packed-switch
.end method

.method private isDataRegisteredOnLte(I)Z
    .registers 3

    .line 832
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 833
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 834
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result p0

    const/16 p1, 0xd

    if-eq p0, p1, :cond_19

    const/16 p1, 0x13

    if-ne p0, p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method private static joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    .line 631
    array-length v0, p1

    if-nez v0, :cond_6

    const-string p0, ""

    return-object p0

    .line 633
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_27

    .line 635
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 636
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 637
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 639
    :cond_1f
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 642
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$postToCallback$0(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .registers 2

    .line 459
    invoke-interface {p0, p1}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 546
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_b

    .line 547
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p1
.end method

.method private makeCarrierStringOnLocked(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7

    .line 558
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 559
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v0, :cond_20

    if-eqz v2, :cond_20

    .line 561
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->keyguard_carrier_name_with_sim_locked_template:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    if-eqz v0, :cond_23

    return-object p1

    :cond_23
    if-eqz v2, :cond_26

    return-object p2

    :cond_26
    const-string p0, ""

    return-object p0
.end method

.method private networkClassToString(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 778
    sget v1, Lcom/android/systemui/R$string;->config_rat_unknown:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->config_rat_2g:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->config_rat_3g:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$string;->config_rat_4g:I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 784
    array-length v1, v0

    if-ge p1, v1, :cond_29

    .line 785
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    if-nez p0, :cond_2e

    const-string p0, ""

    :cond_2e
    return-object p0
.end method

.method private refreshCarrierLabel(Z)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_f

    .line 855
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->carrier_airplane_mode:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7a

    .line 857
    :cond_f
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->carrier_no_sim:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 858
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->status_bar_network_name_separator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 859
    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 860
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileSignalControllers()Landroid/util/SparseArray;

    move-result-object v1

    .line 862
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 v3, 0x0

    move v4, v3

    .line 865
    :goto_3b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_4e

    .line 866
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 869
    :cond_4e
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getNetWorkNamePlugin(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    move-result-object p0

    .line 870
    invoke-interface {p0, v2, v0, p1}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;->mergeNetWorkNames([Lcom/android/systemui/statusbar/policy/MobileSignalController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 871
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refreshCarrierLabel,size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",label="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarrierTextController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7a
    return-object p0
.end method

.method private updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IZ)Ljava/lang/CharSequence;
    .registers 10

    .line 206
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/CarrierTextController;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 209
    :goto_9
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mSimErrorState:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_42

    .line 210
    aget-boolean v2, v2, v1

    if-nez v2, :cond_13

    goto :goto_3f

    :cond_13
    if-eqz p4, :cond_27

    .line 217
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x104021c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    .line 216
    invoke-static {v0, p1, p0}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 220
    :cond_27
    aget v2, p3, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_39

    .line 221
    aget v2, p3, v1

    .line 223
    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_3f

    .line 228
    :cond_39
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_42
    return-object p1
.end method


# virtual methods
.method protected getSubscriptionInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 306
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextController;->mDisplayOpportunisticSubscriptionCarrierText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telephony_subscription_service"

    .line 308
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 310
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_35

    .line 314
    :cond_1c
    invoke-direct {p0, v0}, Lcom/android/keyguard/CarrierTextController;->filterMobileSubscriptionInSameGroup(Ljava/util/List;)V

    goto :goto_35

    .line 317
    :cond_20
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_29

    .line 318
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-nez v0, :cond_32

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_35

    .line 324
    :cond_32
    invoke-direct {p0, v0}, Lcom/android/keyguard/CarrierTextController;->filterMobileSubscriptionInSameGroup(Ljava/util/List;)V

    :goto_35
    return-object v0
.end method

.method protected postToCallback(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 456
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 457
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    if-eqz p0, :cond_14

    .line 459
    new-instance v1, Lcom/android/keyguard/-$$Lambda$CarrierTextController$Mi-Je6zX1bpo5TwEBp8HSL1qzz0;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/-$$Lambda$CarrierTextController$Mi-Je6zX1bpo5TwEBp8HSL1qzz0;-><init>(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .registers 6

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_47

    .line 245
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    .line 246
    iget-object v3, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 248
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 249
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 250
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 251
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 p1, 0x400000

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_5e

    .line 255
    :cond_3a
    iput-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 256
    new-instance p0, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    const-string v0, ""

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;-><init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[I)V

    invoke-interface {p1, p0}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    goto :goto_5e

    .line 259
    :cond_47
    iput-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    .line 260
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_59

    .line 261
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 262
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, v2}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 264
    :cond_59
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_5e
    return-void
.end method

.method protected updateCarrierText()V
    .registers 19

    move-object/from16 v0, p0

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$bool;->config_show_customize_carrier_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getSubscriptionInfo()Ljava/util/List;

    move-result-object v2

    .line 339
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 340
    new-array v8, v3, [I

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCarrierText(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "CarrierTextController"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget v4, v0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    new-array v4, v4, [I

    const/4 v9, 0x0

    .line 345
    :goto_36
    iget v10, v0, Lcom/android/keyguard/CarrierTextController;->mSimSlotsNumber:I

    if-ge v9, v10, :cond_40

    const/4 v10, -0x1

    .line 346
    aput v10, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_36

    .line 348
    :cond_40
    new-array v9, v3, [Ljava/lang/CharSequence;

    .line 349
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_57
    const-string v13, ""

    if-ge v10, v3, :cond_123

    .line 352
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    .line 353
    aput-object v13, v9, v10

    .line 354
    aput v14, v8, v10

    .line 355
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v13

    aput v10, v4, v13

    .line 356
    iget-object v13, v0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13, v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v13

    .line 357
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v15}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v1, :cond_93

    .line 359
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-direct {v0, v15, v5}, Lcom/android/keyguard/CarrierTextController;->getCustomizeCarrierName(Ljava/lang/CharSequence;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v15

    .line 361
    :cond_93
    invoke-direct {v0, v13, v15}, Lcom/android/keyguard/CarrierTextController;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 363
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v1

    const-string v1, "Handling (subId="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_c2

    .line 367
    aput-object v5, v9, v10

    const/4 v11, 0x0

    .line 369
    :cond_c2
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v13, v1, :cond_11d

    .line 370
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ServiceState;

    if-eqz v1, :cond_11d

    .line 371
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-nez v5, :cond_11d

    .line 374
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    const/16 v7, 0x12

    if-ne v5, v7, :cond_100

    iget-object v5, v0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 375
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_11d

    iget-object v5, v0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 376
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_11d

    iget-object v5, v0, Lcom/android/keyguard/CarrierTextController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 377
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11d

    .line 379
    :cond_100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM ready and in service: subId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", ss="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    :cond_11d
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v17

    goto/16 :goto_57

    :cond_123
    const/4 v1, 0x0

    if-eqz v11, :cond_13d

    if-nez v12, :cond_13d

    if-eqz v3, :cond_140

    .line 397
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 396
    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_13d
    const/4 v3, 0x0

    goto/16 :goto_1b2

    .line 404
    :cond_140
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104021c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1a9

    const-string/jumbo v2, "showSpn"

    const/4 v3, 0x0

    .line 410
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_16e

    const-string/jumbo v2, "spn"

    .line 411
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_16f

    :cond_16e
    move-object v2, v13

    :goto_16f
    const-string/jumbo v5, "showPlmn"

    .line 413
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_17e

    const-string v5, "plmn"

    .line 414
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 416
    :cond_17e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting plmn/spn sticky brdcst "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {v13, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a2

    move-object v2, v13

    goto :goto_1aa

    .line 420
    :cond_1a2
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v13, v2, v1}, Lcom/android/keyguard/CarrierTextController;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1aa

    :cond_1a9
    const/4 v3, 0x0

    .line 423
    :goto_1aa
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierTextController;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 427
    :goto_1b2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1be

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v1, v9}, Lcom/android/keyguard/CarrierTextController;->joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 429
    :cond_1be
    invoke-direct {v0, v1, v9, v4, v11}, Lcom/android/keyguard/CarrierTextController;->updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IZ)Ljava/lang/CharSequence;

    if-nez v12, :cond_1cf

    .line 435
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1cf

    .line 436
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextController;->getAirplaneModeMessage()Ljava/lang/String;

    const/4 v3, 0x1

    .line 441
    :cond_1cf
    invoke-direct {v0, v3}, Lcom/android/keyguard/CarrierTextController;->refreshCarrierLabel(Z)Ljava/lang/String;

    move-result-object v5

    .line 445
    new-instance v1, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    const/4 v2, 0x1

    xor-int/lit8 v7, v11, 0x1

    move-object v4, v1

    move-object v6, v9

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;-><init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[IZ)V

    .line 451
    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierTextController;->postToCallback(Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method

.method public updateDisplayOpportunisticSubscriptionCarrierText(Z)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 301
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextController;->mDisplayOpportunisticSubscriptionCarrierText:Z

    return-void
.end method
