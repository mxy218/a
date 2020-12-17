.class public Lcom/android/systemui/qs/tiles/WifiTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WifiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;,
        Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;,
        Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final VICE_WIFI_SETTINGS:Landroid/content/Intent;

.field private static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field protected final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mDualWifiChangeCallback:Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mExpectDisabled:Z

.field protected final mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

.field private final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

.field private final mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 650
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.connectivitysettings.VICE_WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->VICE_WIFI_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .registers 11
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 77
    new-instance p1, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    .line 620
    new-instance p1, Lcom/android/systemui/qs/tiles/WifiTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/WifiTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDualWifiChangeCallback:Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;

    .line 636
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_wifi_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_wifi_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_wifi_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_wifi_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_wifi_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 641
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_wifi_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_wifi_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_wifi_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_wifi_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_wifi_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 85
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 86
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 88
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 89
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/WifiTile;)Z
    .registers 1

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSHost;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/content/Intent;
    .registers 1

    .line 69
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->VICE_WIFI_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSHost;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/settingslib/wifi/AccessPoint;)I
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->getRightIconId(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/WifiTile;)Z
    .registers 1

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/WifiTile;)Z
    .registers 1

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400()Landroid/content/Intent;
    .registers 1

    .line 69
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDualWifiChangeCallback:Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method private getRightIconId(Lcom/android/settingslib/wifi/AccessPoint;)I
    .registers 3

    .line 609
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isFreeWifi()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 610
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_wifi_free:I

    return p0

    .line 611
    :cond_9
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiGeneration()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_13

    .line 612
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6:I

    return p0

    .line 613
    :cond_13
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSoftApType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_24

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSoftApType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_22

    goto :goto_24

    :cond_22
    const/4 p0, 0x0

    return p0

    .line 614
    :cond_24
    :goto_24
    sget p0, Lcom/android/systemui/R$drawable;->ic_qs_wifi_phone:I

    return p0
.end method

.method private getSecondaryLabel(ZLjava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    if-eqz p1, :cond_a

    .line 310
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_wifi_secondary_label_transient:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_a
    return-object p2
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 340
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    const/4 v2, 0x0

    .line 341
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1f

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1f

    .line 342
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1f
    return-object p0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_11

    .line 327
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_wifi_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 329
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_wifi_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 2

    .line 117
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .line 131
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.meizu.connectivitysettings"

    const-string v1, "com.meizu.connectivitysettings.wifi.WifiSettings"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x7e

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "WiFiShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_wifi_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 5

    .line 139
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->isShopDemo()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_f

    return-void

    .line 145
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    .line 163
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2d

    move v0, v2

    goto :goto_2e

    :cond_2d
    move v0, v3

    :goto_2e
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    if-eqz v0, :cond_42

    .line 166
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    :cond_42
    return-void
.end method

.method protected handleSecondaryClick()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->canConfigWifi()Z

    move-result v0

    if-nez v0, :cond_16

    .line 174
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_16
    const/4 v0, 0x1

    .line 179
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_2e

    .line 183
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    :cond_2e
    return-void
.end method

.method public handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .registers 11

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateState arg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_30

    .line 197
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 198
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_2b

    .line 199
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_2f

    .line 201
    :cond_2b
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_2f
    return-void

    .line 206
    :cond_30
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 207
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 208
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v1, :cond_3e

    return-void

    .line 211
    :cond_3e
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    .line 214
    :cond_40
    sget-object v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v3, 0x1

    if-ne p2, v1, :cond_47

    move p2, v3

    goto :goto_48

    :cond_47
    move p2, v2

    .line 215
    :goto_48
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v1, :cond_56

    iget v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v1, :cond_56

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_56

    move v1, v3

    goto :goto_57

    :cond_56
    move v1, v2

    .line 216
    :goto_57
    iget v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v4, :cond_61

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    if-nez v4, :cond_61

    move v4, v3

    goto :goto_62

    :cond_61
    move v4, v2

    .line 217
    :goto_62
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eq v5, v6, :cond_6a

    move v5, v3

    goto :goto_6b

    :cond_6a
    move v5, v2

    :goto_6b
    if-eqz v5, :cond_79

    .line 219
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 220
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 222
    :cond_79
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v5, :cond_8a

    .line 223
    new-instance v5, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v5}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 224
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    const/high16 v6, 0x40c00000  # 6.0f

    iput v6, v5, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->rotation:F

    .line 226
    :cond_8a
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iput-boolean v2, v5, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 227
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    .line 228
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->statusLabel:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/tiles/WifiTile;->getSecondaryLabel(ZLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    const/4 v6, 0x2

    .line 229
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 230
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    if-nez p2, :cond_a6

    .line 231
    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz p2, :cond_a4

    goto :goto_a6

    :cond_a4
    move p2, v2

    goto :goto_a7

    :cond_a6
    :goto_a6
    move p2, v3

    :goto_a7
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 232
    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz p2, :cond_b3

    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    if-eqz p2, :cond_b3

    move p2, v3

    goto :goto_b4

    :cond_b3
    move p2, v2

    :goto_b4
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 233
    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz p2, :cond_c0

    iget-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    if-eqz p2, :cond_c0

    move p2, v3

    goto :goto_c1

    :cond_c0
    move p2, v2

    :goto_c1
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 234
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 237
    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v7, :cond_d5

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_d7

    :cond_d5
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_d7
    iput-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v5, :cond_e4

    .line 247
    sget v4, Lcom/android/systemui/R$string;->quick_settings_connecting_label:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_11d

    .line 249
    :cond_e4
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v5, :cond_f7

    .line 250
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iput-boolean v3, v4, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 251
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 258
    sget v4, Lcom/android/systemui/R$string;->status_bar_settings_wlan:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_11d

    :cond_f7
    if-eqz v1, :cond_10a

    .line 267
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<unknown ssid>"

    .line 268
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11d

    .line 269
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_11d

    :cond_10a
    if-eqz v4, :cond_115

    .line 279
    sget v4, Lcom/android/systemui/R$string;->status_bar_settings_wlan:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_11d

    .line 288
    :cond_115
    sget v4, Lcom/android/systemui/R$string;->status_bar_settings_wlan:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 291
    :cond_11d
    :goto_11d
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->quick_settings_wifi_label:I

    .line 292
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ","

    .line 292
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v5, :cond_154

    if-eqz v1, :cond_154

    .line 295
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_154

    .line 298
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 302
    :cond_154
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 303
    sget p2, Lcom/android/systemui/R$string;->accessibility_quick_settings_open_settings:I

    new-array v0, v3, [Ljava/lang/Object;

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, v2

    .line 303
    invoke-virtual {v6, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 305
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 69
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 2

    .line 335
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.wifi"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .registers 1

    .line 94
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object p0

    return-object p0
.end method

.method public setDetailListening(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 104
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    goto :goto_11

    .line 106
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    :goto_11
    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-ne v0, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
