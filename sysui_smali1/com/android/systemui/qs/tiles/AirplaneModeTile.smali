.class public Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mDeviceStateManager:Lmeizu/os/DeviceStateManager;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mListening:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/plugins/ActivityStarter;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 169
    new-instance p1, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_airplanemode_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_airplanemode_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_airplanemode_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_airplanemode_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_flight_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 216
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_airplanemode_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_airplanemode_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_airplanemode_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_airplanemode_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_flight_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 64
    new-instance p1, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v1, "airplane_mode_on"

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 72
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string p2, "device_states"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmeizu/os/DeviceStateManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDeviceStateManager:Lmeizu/os/DeviceStateManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private isLossMode()Z
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDeviceStateManager:Lmeizu/os/DeviceStateManager;

    if-eqz v0, :cond_27

    .line 199
    sget-object v1, Lmeizu/os/DeviceStateManager$RemoteHandle;->Lock:Lmeizu/os/DeviceStateManager$RemoteHandle;

    invoke-virtual {v1}, Lmeizu/os/DeviceStateManager$RemoteHandle;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lmeizu/os/DeviceStateManager;->doCheckState(I)I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDeviceStateManager:Lmeizu/os/DeviceStateManager;

    sget-object v2, Lmeizu/os/DeviceStateManager$RemoteHandle;->Lock_Report_Loss:Lmeizu/os/DeviceStateManager$RemoteHandle;

    .line 201
    invoke-virtual {v2}, Lmeizu/os/DeviceStateManager$RemoteHandle;->ordinal()I

    move-result v2

    .line 200
    invoke-virtual {v1, v2}, Lmeizu/os/DeviceStateManager;->doCheckState(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1f

    if-ne v1, v2, :cond_27

    .line 203
    :cond_1f
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "isLossMode"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method private isTelephoneOffhook()Z
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_14

    .line 186
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 187
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "isTelephoneOffhook"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private setEnabled(Z)V
    .registers 3

    .line 102
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 104
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_11

    .line 150
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_airplane_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_airplane_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .line 111
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.meizu.connectivitysettings"

    const-string v1, "com.meizu.connectivitysettings.Settings$WirelessSettingsActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x70

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 119
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->airplane_mode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleClick()V
    .registers 5

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isTelephoneOffhook()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isLossMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3f

    .line 90
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 91
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getMetricsCategory()I

    move-result v2

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-nez v0, :cond_3a

    const-string v1, "ril.cdma.inecmmode"

    .line 93
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 94
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_3a
    xor-int/lit8 v0, v0, 0x1

    .line 98
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public handleSetListening(Z)V
    .registers 5

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 158
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    if-eqz p1, :cond_1b

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_22

    .line 164
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    :goto_22
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 6

    const-string v0, "no_airplane_mode"

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 125
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_16

    :cond_10
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {p2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result p2

    :goto_16
    const/4 v0, 0x1

    if-eqz p2, :cond_1b

    move p2, v0

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    .line 127
    :goto_1c
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 128
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->airplane_mode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz p2, :cond_2d

    .line 131
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_2f

    :cond_2d
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_2f
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 133
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez p0, :cond_3c

    .line 134
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 136
    :cond_3c
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    xor-int/lit8 v1, p2, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    if-eqz p2, :cond_45

    const/4 v0, 0x2

    .line 137
    :cond_45
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 138
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 139
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 51
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 79
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
