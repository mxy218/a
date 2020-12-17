.class public Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;
.super Ljava/lang/Object;
.source "MobileDataControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/MobileDataController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultDataSubscriptionId:J

.field private mInCall:Z

.field private mInsertSimCount:I

.field private mIsAllRadioOff:Z

.field private mIsDualCardOn:Z

.field private mIsSimStateReady:Z

.field private mIsSimSwitching:Z

.field private mIsSoftSimEnabled:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverHandler:Landroid/os/Handler;

.field private mSubIds:[I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSupportSimCount:I

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .param p2  # Landroid/os/Looper;
        .annotation runtime Ljavax/inject/Named;
            value = "background_looper"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSubIds:[I

    const/4 v1, 0x0

    .line 63
    iput v1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mInsertSimCount:I

    .line 311
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 319
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 69
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 72
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 73
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    .line 76
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.PHONE_STATE"

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SERVICE_STATE"

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.RADIO_TECHNOLOGY"

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_MAIN_SLOT_CHANGED"

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1, p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSupportSimCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->notifyChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)I
    .registers 1

    .line 35
    iget p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSupportSimCount:I

    return p0
.end method

.method static synthetic access$1000(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)Z
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->isSoftSimEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1102(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsSimStateReady:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)Z
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->isSimStateReady()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mInCall:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mInCall:Z

    return p1
.end method

.method static synthetic access$202(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;[I)[I
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSubIds:[I

    return-object p1
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)Landroid/telephony/SubscriptionManager;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic access$402(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;J)J
    .registers 3

    .line 35
    iput-wide p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mDefaultDataSubscriptionId:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->registerMobileDataObserverForSubRecordChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)I
    .registers 1

    .line 35
    iget p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mInsertSimCount:I

    return p0
.end method

.method static synthetic access$602(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;I)I
    .registers 2

    .line 35
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mInsertSimCount:I

    return p1
.end method

.method static synthetic access$702(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsSimSwitching:Z

    return p1
.end method

.method static synthetic access$800(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->checkDualCardOn()V

    return-void
.end method

.method static synthetic access$902(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsSoftSimEnabled:Z

    return p1
.end method

.method private checkDualCardOn()V
    .registers 4

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsAllRadioOff:Z

    .line 241
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsDualCardOn:Z

    .line 242
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_24

    .line 243
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->isRadioOn(I)Z

    move-result v0

    .line 244
    invoke-direct {p0, v2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->isRadioOn(I)Z

    move-result v1

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    .line 246
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsDualCardOn:Z

    goto :goto_2c

    :cond_1d
    if-nez v0, :cond_2c

    if-nez v1, :cond_2c

    .line 249
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsAllRadioOff:Z

    goto :goto_2c

    .line 253
    :cond_24
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->isRadioOn(I)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 255
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsAllRadioOff:Z

    :cond_2c
    :goto_2c
    return-void
.end method

.method private getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .registers 5

    .line 224
    invoke-static {p1, p2, p4}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 226
    :try_start_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    nop

    :catch_b
    :cond_b
    return p3
.end method

.method private getSubId0UsingSlotId(I)I
    .registers 2

    .line 289
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_e

    .line 290
    array-length p1, p0

    if-nez p1, :cond_a

    goto :goto_e

    :cond_a
    const/4 p1, 0x0

    .line 293
    aget p0, p0, p1

    return p0

    :cond_e
    :goto_e
    const/4 p0, -0x1

    return p0
.end method

.method private isRadioOn(I)Z
    .registers 7

    .line 267
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->getSubId0UsingSlotId(I)I

    move-result p1

    int-to-long v0, p1

    .line 269
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1, v2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->isValidSubId(JLandroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 270
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 272
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v3, -0x1

    const-string v4, "msim_mode_setting"

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    shl-int v0, v1, v0

    and-int/2addr p0, v0

    if-lez p0, :cond_26

    move v2, v1

    .line 282
    :cond_26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[foree] isRadioOn: subId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "isRadioOn = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileDataController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isSimStateReady()Z
    .registers 6

    .line 233
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v0, v2, :cond_d

    move v0, v3

    goto :goto_e

    :cond_d
    move v0, v1

    .line 234
    :goto_e
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    if-ne p0, v2, :cond_18

    move p0, v3

    goto :goto_19

    :cond_18
    move p0, v1

    .line 235
    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[foree] isSimStateReady: card1 state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", card2 state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MobileDataController"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3b

    if-eqz p0, :cond_3c

    :cond_3b
    move v1, v3

    :cond_3c
    return v1
.end method

.method private isSoftSim(I)Z
    .registers 5

    const-string/jumbo p0, "vendor.soft.sim.enabled"

    const-string v0, "0"

    .line 303
    invoke-static {p1, p0, v0}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 306
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isSoftSim:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isSoftSimEnable:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileDataController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSoftSimEnabled()Z
    .registers 4

    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->isSoftSim(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    invoke-direct {p0, v2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->isSoftSim(I)Z

    move-result p0

    if-eqz p0, :cond_f

    :cond_e
    move v0, v2

    :cond_f
    return v0
.end method

.method private isValidSubId(JLandroid/content/Context;)Z
    .registers 7

    .line 192
    iget-object p3, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSubIds:[I

    if-nez p3, :cond_c

    .line 193
    iget-object p3, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object p3

    iput-object p3, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSubIds:[I

    :cond_c
    const/4 p3, 0x0

    move v0, p3

    .line 195
    :goto_e
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSubIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 196
    aget v1, v1, v0

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1c

    const/4 p3, 0x1

    goto :goto_1f

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 201
    :cond_1f
    :goto_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isValidSubId subId ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", is valid = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileDataController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method

.method private notifyChanged()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;

    .line 172
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;)V
    .registers 2

    .line 177
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 180
    invoke-interface {p1, p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;->onDefaultDataSubInfoChanged(Landroid/telephony/SubscriptionInfo;)V

    :cond_b
    return-void
.end method

.method private registerMobileDataObserverForSubRecordChange()V
    .registers 7

    .line 206
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSupportSimCount:I

    const-string v1, "mobile_data"

    const-string v2, "MobileDataController"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_21

    const-string/jumbo v0, "single sim phone, registerContentObserver with MOBILE_DATA"

    .line 207
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    invoke-virtual {v1, v0, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_73

    :cond_21
    if-le v0, v3, :cond_73

    const-string v0, "dual sim phone, registerContentObserver MOBILE_DATA with phoneId"

    .line 213
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-wide v4, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mDefaultDataSubscriptionId:J

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v5, v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->isValidSubId(JLandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerContentObserver mDataUseObserverUsingSub with phoneSubId = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mDefaultDataSubscriptionId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 217
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mDefaultDataSubscriptionId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_73
    :goto_73
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;)V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSupportSimCount:I

    .line 161
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 34
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;)V

    return-void
.end method

.method public canConfigSubId()Z
    .registers 2

    .line 128
    iget p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSupportSimCount:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_c

    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isChinaMobile()Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isDualEnabled()Z
    .registers 3

    .line 150
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mInsertSimCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsDualCardOn:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mInCall:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsSoftSimEnabled:Z

    if-nez v0, :cond_16

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsSimSwitching:Z

    if-nez p0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public isMobileDataEnabled()Z
    .registers 9

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMobileDataEnabled, mDefaultDataSubscriptionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mDefaultDataSubscriptionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileDataController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-wide v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mDefaultDataSubscriptionId:J

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1, v2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->isValidSubId(JLandroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    .line 107
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSupportSimCount:I

    const/4 v2, -0x2

    const-string v3, "mobile_data"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_39

    .line 108
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v4, :cond_57

    :goto_37
    move v1, v4

    goto :goto_57

    .line 111
    :cond_39
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mDefaultDataSubscriptionId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v4, :cond_57

    goto :goto_37

    :cond_57
    :goto_57
    return v1
.end method

.method public isMobileDataSupported()Z
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsSimStateReady:Z

    if-eqz v0, :cond_12

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsAllRadioOff:Z

    if-nez p0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public isSimSwitching()Z
    .registers 1

    .line 155
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsSimSwitching:Z

    return p0
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;)V
    .registers 2

    .line 167
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 34
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;)V

    return-void
.end method

.method public setDefaultDataSubId(I)V
    .registers 4

    .line 138
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mInCall:Z

    if-eqz v0, :cond_20

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[foree] setDefaultDataSubId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", change sim not supported in calling state"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileDataController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mIsSimSwitching:Z

    .line 143
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->setMobileDataEnabled(Z)V

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .registers 4

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMobileDataEnabled: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileDataController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method
