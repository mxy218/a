.class public Lcom/android/systemui/statusbar/policy/WifiSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;,
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController<",
        "Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;",
        "Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCurrentSlot:Ljava/lang/String;

.field private final mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private mDualWifiChangeCallBack:Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;

.field private final mHasMobileData:Z

.field private final mSlotWifi:Ljava/lang/String;

.field private final mWifi4IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private final mWifi5IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private final mWifi6IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/wifi/WifiManager;I)V
    .registers 37

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    move/from16 v9, p6

    const-string v1, "WifiSignalController"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 381
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDualWifiChangeCallBack:Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;

    .line 61
    const-class v0, Landroid/net/NetworkScoreManager;

    .line 62
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/NetworkScoreManager;

    .line 63
    const-class v0, Landroid/net/ConnectivityManager;

    .line 64
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 65
    new-instance v7, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/statusbar/policy/-$$Lambda$WifiSignalController$AffzGdHvQakHA4bIzi_tW1MVLCY;

    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/policy/-$$Lambda$WifiSignalController$AffzGdHvQakHA4bIzi_tW1MVLCY;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    move-object v0, v7

    move-object/from16 v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V

    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    .line 67
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->setListening(Z)V

    move/from16 v0, p2

    .line 68
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileData:Z

    if-eqz v8, :cond_56

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;

    const/4 v2, 0x0

    invoke-direct {v0, v6, v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Lcom/android/systemui/statusbar/policy/WifiSignalController$1;)V

    invoke-virtual {v8, v0, v2}, Landroid/net/wifi/WifiManager;->registerTrafficStateCallback(Landroid/net/wifi/WifiManager$TrafficStateCallback;Landroid/os/Handler;)V

    .line 73
    :cond_56
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v12, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_4_SIGNAL_STRENGTH:[[I

    sget-object v13, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->QS_WIFI_4_SIGNAL_STRENGTH:[[I

    sget-object v14, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    const/4 v15, 0x0

    const v16, 0x108054d

    const/16 v17, 0x0

    const v18, 0x108054d

    sget v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v11, "Wi-Fi Icons"

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v22, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_4_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->QS_WIFI_4_SIGNAL_STRENGTH:[[I

    sget-object v24, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    const/16 v25, 0x0

    const v26, 0x108054d

    const/16 v27, 0x0

    const v28, 0x108054d

    sget v29, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v21, "Wi-Fi 4 Icons"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v29}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi4IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 109
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v12, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_4_SIGNAL_STRENGTH:[[I

    sget-object v13, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->QS_WIFI_4_SIGNAL_STRENGTH:[[I

    sget-object v14, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v11, "Wi-Fi 5 Icons"

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi5IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v22, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_6_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->QS_WIFI_6_SIGNAL_STRENGTH:[[I

    sget-object v24, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v29, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v21, "Wi-Fi 6 Icons"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v29}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi6IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 145
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSignalController"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v9, v1, :cond_d0

    const-string v2, "-wifi"

    goto :goto_d2

    :cond_d0
    const-string v2, "-dualWifi"

    :goto_d2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->TAG:Ljava/lang/String;

    .line 149
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    const v2, 0x10406cf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSlotWifi:Ljava/lang/String;

    if-ne v9, v1, :cond_eb

    .line 150
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mSlotWifi:Ljava/lang/String;

    goto :goto_ed

    :cond_eb
    const-string v0, "dual_wifi"

    :goto_ed
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentSlot:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/WifiSignalController;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleDualBroadcast()V

    return-void
.end method

.method private getActiveType()I
    .registers 3

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v1, :cond_11

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v0, :cond_11

    const/4 p0, 0x3

    goto :goto_25

    .line 344
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v0, :cond_1c

    const/4 p0, 0x1

    goto :goto_25

    .line 346
    :cond_1c
    check-cast p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz p0, :cond_24

    const/4 p0, 0x2

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private handleDualBroadcast()V
    .registers 1

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateIconGroup()V

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method private handleStatusUpdated()V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public static synthetic lambda$AffzGdHvQakHA4bIzi_tW1MVLCY(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleStatusUpdated()V

    return-void
.end method

.method private updateIconGroup()V
    .registers 4

    .line 197
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIconGroup: version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_40

    .line 203
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi4IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_6e

    .line 204
    :cond_40
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_59

    .line 205
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    if-eqz v0, :cond_54

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi6IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_56

    :cond_54
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi5IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :goto_56
    iput-object p0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_6e

    .line 206
    :cond_59
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_68

    .line 207
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi6IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_6e

    .line 209
    :cond_68
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :goto_6e
    return-void
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .registers 1

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-result-object p0

    return-object p0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
    .registers 1

    .line 156
    new-instance p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;-><init>()V

    return-object p0
.end method

.method public getCurrentIconId()I
    .registers 5

    .line 317
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getCurrentIconId()I

    move-result v0

    .line 319
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v1, :cond_72

    .line 320
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentIconId: iconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",inetCondition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",activityIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",activityOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_72
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v2, :cond_9e

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-nez v2, :cond_88

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v1, :cond_9e

    .line 330
    :cond_88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getActiveType()I

    move-result v1

    .line 332
    sget-object v2, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_4_SIGNAL_STRENGTH_INOUT:[[I

    const/4 v3, 0x0

    aget-object v3, v2, v3

    array-length v3, v3

    if-ge v1, v3, :cond_9e

    .line 333
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    aget-object p0, v2, p0

    aget v0, p0, v1

    :cond_9e
    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .registers 5

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    .line 217
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v2, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 218
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 219
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 220
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    .line 223
    check-cast p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    iput v1, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 224
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz p1, :cond_6a

    .line 225
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBroadcast: mWifiTracker.level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentState.level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",deliver3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    .line 227
    invoke-static {v2, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_6a
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 231
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->wifiGeneration:I

    iput v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    .line 232
    check-cast p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->vhtMax8SpatialStreamsSupport:Z

    if-eqz v0, :cond_88

    iget-boolean v0, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->he8ssCapableAp:Z

    if-eqz v0, :cond_88

    const/4 v0, 0x1

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    :goto_89
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateIconGroup()V

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .registers 18

    move-object/from16 v0, p0

    .line 166
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_21

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-nez v1, :cond_17

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileData:Z

    if-nez v1, :cond_21

    :cond_17
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-ltz v1, :cond_21

    move v1, v3

    goto :goto_22

    :cond_21
    move v1, v4

    :goto_22
    if-eqz v1, :cond_2b

    .line 172
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    move-object v11, v2

    if-eqz v1, :cond_39

    .line 173
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_39

    move v2, v3

    goto :goto_3a

    :cond_39
    move v2, v4

    .line 174
    :goto_3a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/SignalController;->getStringIfExists(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 175
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v6, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    if-nez v6, :cond_6a

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    :cond_6a
    new-instance v15, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCurrentIconId()I

    move-result v6

    invoke-direct {v15, v1, v6, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 179
    new-instance v8, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getQsCurrentIconId()I

    move-result v7

    invoke-direct {v8, v6, v7, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 181
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-eqz v2, :cond_93

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v5, :cond_93

    move v9, v3

    goto :goto_94

    :cond_93
    move v9, v4

    :goto_94
    if-eqz v2, :cond_a0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v2, :cond_a0

    move v10, v3

    goto :goto_a1

    :cond_a0
    move v10, v4

    :goto_a1
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v12, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v13, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentSlot:Ljava/lang/String;

    move-object/from16 v5, p1

    move-object v7, v15

    invoke-interface/range {v5 .. v14}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",wifiVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",ssid="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",in="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",out="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",statusIcon="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyListenersIfNecessary()V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eq v0, v1, :cond_13

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyNetworkConnectionCallbacks()V

    .line 357
    :cond_13
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method refreshLocale()V
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->refreshLocale()V

    return-void
.end method

.method public registerListeners()V
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDualWifiChangeCallBack:Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addDualWifiChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;)V

    return-void
.end method

.method setActivity(I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v2, :cond_e

    if-ne p1, v3, :cond_c

    goto :goto_e

    :cond_c
    move v4, v1

    goto :goto_f

    :cond_e
    :goto_e
    move v4, v3

    :goto_f
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    if-eq p1, v2, :cond_1a

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1b

    :cond_1a
    move v1, v3

    :cond_1b
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public unregisterListeners()V
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDualWifiChangeCallBack:Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->removeDualWifiChangeCallBack(Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;)V

    return-void
.end method
