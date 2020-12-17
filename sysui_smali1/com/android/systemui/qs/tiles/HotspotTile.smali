.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TETHER_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mEnabled:Z

.field private mHasClicked:Z

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private mListening:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;)V
    .registers 11
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 59
    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    .line 305
    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 317
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_hotspot_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_hotspot_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_hotspot_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_hotspot_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_hot_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 322
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_hotspot_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_hotspot_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_hotspot_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_hotspot_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_hot_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 68
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 69
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHasClicked:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private registerAirplaneModeContentObserver()V
    .registers 5

    const-string v0, "airplane_mode_on"

    .line 297
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private unregisterAirplaneModeContentObserver()V
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_11

    .line 243
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_hotspot_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 245
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_hotspot_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .line 107
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.meizu.connectivitysettings"

    const-string v1, "com.meizu.connectivitysettings.Settings$TetherSettingsActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x78

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 138
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_hotspot_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_11

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 126
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHasClicked:Z

    .line 130
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabled:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabled:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabled:Z

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    return-void
.end method

.method protected handleDestroy()V
    .registers 1

    .line 81
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    return-void
.end method

.method public handleSetListening(Z)V
    .registers 4

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 87
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-eqz p1, :cond_1f

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHasClicked:Z

    .line 91
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabled:Z

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->registerAirplaneModeContentObserver()V

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_1f
    if-nez p1, :cond_24

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->unregisterAirplaneModeContentObserver()V

    :cond_24
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 8

    .line 143
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 144
    :goto_9
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v3, :cond_14

    .line 145
    new-instance v3, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v3}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    :cond_14
    if-nez v0, :cond_21

    .line 149
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotTransient()Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_21

    :cond_1f
    move v3, v2

    goto :goto_22

    :cond_21
    :goto_21
    move v3, v1

    :goto_22
    const-string v4, "no_config_tethering"

    .line 152
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 154
    instance-of v4, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-eqz v4, :cond_3e

    .line 155
    check-cast p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-nez v0, :cond_36

    .line 156
    iget-boolean v0, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    if-eqz v0, :cond_34

    goto :goto_36

    :cond_34
    move v0, v2

    goto :goto_37

    :cond_36
    :goto_36
    move v0, v1

    :goto_37
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 157
    iget v0, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    .line 158
    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    goto :goto_59

    :cond_3e
    if-nez v0, :cond_4b

    .line 160
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result p2

    if-eqz p2, :cond_49

    goto :goto_4b

    :cond_49
    move p2, v2

    goto :goto_4c

    :cond_4b
    :goto_4b
    move p2, v1

    :goto_4c
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 161
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/HotspotController;->getNumConnectedDevices()I

    .line 162
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result p2

    .line 166
    :goto_59
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHasClicked:Z

    if-eqz v0, :cond_60

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabled:Z

    goto :goto_62

    :cond_60
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    :goto_62
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 167
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_6d

    :cond_6b
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_6d
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->status_bar_settings_hotspot:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 171
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 172
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v3, :cond_87

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-nez v3, :cond_87

    move v3, v1

    goto :goto_88

    :cond_87
    move v3, v2

    :goto_88
    iput-boolean v3, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 188
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 189
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 192
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_a1

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz v0, :cond_9f

    goto :goto_a1

    :cond_9f
    move v0, v2

    goto :goto_a2

    :cond_a1
    :goto_a1
    move v0, v1

    :goto_a2
    const/4 v3, 0x2

    if-eqz p2, :cond_a8

    .line 195
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_af

    :cond_a8
    if-eqz v0, :cond_ac

    move p2, v3

    goto :goto_ad

    :cond_ac
    move p2, v1

    .line 197
    :goto_ad
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 205
    :goto_af
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v4, "airplane_mode_on"

    invoke-static {p2, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_c8

    .line 207
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 208
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 209
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 210
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHasClicked:Z

    goto :goto_cd

    :cond_c8
    if-eqz v0, :cond_cb

    move v1, v3

    .line 212
    :cond_cb
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_cd
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 45
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result p0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 113
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
