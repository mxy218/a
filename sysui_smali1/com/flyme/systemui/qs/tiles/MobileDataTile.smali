.class public Lcom/flyme/systemui/qs/tiles/MobileDataTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;,
        Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;,
        Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;
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
.field private static final MOBILE_DATA_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

.field private mDefaultDataSubInfo:Landroid/telephony/SubscriptionInfo;

.field private final mDetailAdapter:Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.connectivitysettings"

    const-string v3, "com.meizu.connectivitysettings.Settings$MobileNetworkSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->MOBILE_DATA_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/flyme/systemui/statusbar/policy/MobileDataController;)V
    .registers 11
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 41
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_data_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_data_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_data_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_data_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_data_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 46
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_data_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_data_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_data_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_data_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_data_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 230
    new-instance p1, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;-><init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Lcom/flyme/systemui/qs/tiles/MobileDataTile$1;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    .line 60
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 61
    iput-object p3, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    .line 62
    new-instance p1, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    invoke-direct {p1, p0, v0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;-><init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Lcom/flyme/systemui/qs/tiles/MobileDataTile$1;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDetailAdapter:Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    .line 63
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p3, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    invoke-interface {p1, p2, p3}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1000(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/flyme/systemui/statusbar/policy/MobileDataController;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    return-object p0
.end method

.method static synthetic access$1400()Landroid/content/Intent;
    .registers 1

    .line 35
    sget-object v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->MOBILE_DATA_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDetailAdapter:Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$902(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDefaultDataSubInfo:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method private supportsDualTargets()Z
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->canConfigSubId()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    .line 191
    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->isDualEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    invoke-static {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->access$100(Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;)Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    if-nez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDetailAdapter:Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 4

    .line 173
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.meizu.connectivitysettings"

    const-string v2, "com.meizu.connectivitysettings.Settings$MobileNetworkSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "MobileDataShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 186
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_mobile:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 7

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_b

    return-void

    .line 87
    :cond_b
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mEnabled:Z

    if-eqz v0, :cond_1e

    .line 88
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->setMobileDataEnabled(Z)V

    goto :goto_6a

    .line 90
    :cond_1e
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 91
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_32

    return-void

    .line 96
    :cond_32
    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/utils/SIMHelper;->isRadioOn(J)Z

    move-result v2

    if-nez v2, :cond_64

    .line 97
    iget-object v2, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    invoke-interface {v2}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 99
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_44
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 100
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_44

    .line 101
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-interface {v4, v3}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->setDefaultDataSubId(I)V

    goto :goto_44

    :cond_63
    return-void

    .line 108
    :cond_64
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->setMobileDataEnabled(Z)V

    :goto_6a
    return-void
.end method

.method protected handleSecondaryClick()V
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->canConfigSubId()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->access$100(Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;)Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v0, :cond_13

    goto :goto_17

    :cond_13
    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    :cond_17
    :goto_17
    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .registers 9

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[foree] handleUpdateState arg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileDataTile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    check-cast p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    if-nez p2, :cond_20

    .line 128
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mCallback:Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;

    invoke-static {p2}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->access$100(Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;)Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    move-result-object p2

    .line 131
    :cond_20
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->isMobileDataSupported()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    iget-boolean v0, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->noSim:Z

    if-nez v0, :cond_34

    iget-boolean v0, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    if-nez v0, :cond_34

    move v0, v1

    goto :goto_35

    :cond_34
    move v0, v2

    .line 133
    :goto_35
    iput-boolean v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mEnabled:Z

    .line 134
    iget-object v3, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    invoke-interface {v3}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->isMobileDataEnabled()Z

    move-result v3

    if-eqz v0, :cond_43

    if-eqz v3, :cond_43

    move v3, v1

    goto :goto_44

    :cond_43
    move v3, v2

    .line 136
    :goto_44
    iget-object v4, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/flyme/systemui/statusbar/policy/MobileDataController;

    invoke-interface {v4}, Lcom/flyme/systemui/statusbar/policy/MobileDataController;->isSimSwitching()Z

    move-result v4

    .line 138
    invoke-direct {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->supportsDualTargets()Z

    move-result v5

    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 139
    iget-boolean v5, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_5a

    iget-boolean v5, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->activityIn:Z

    if-eqz v5, :cond_5a

    move v5, v1

    goto :goto_5b

    :cond_5a
    move v5, v2

    :goto_5b
    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 140
    iget-boolean v5, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_67

    iget-boolean v5, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->activityOut:Z

    if-eqz v5, :cond_67

    move v5, v1

    goto :goto_68

    :cond_67
    move v5, v2

    :goto_68
    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 141
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 142
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->status_bar_settings_mobile:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-nez v0, :cond_7d

    .line 145
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_8e

    .line 146
    :cond_7d
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_8a

    .line 147
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 148
    iget-object v0, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->defaultDataSimDesc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_8e

    .line 150
    :cond_8a
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_8e
    if-eqz v4, :cond_a0

    .line 154
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->quick_settings_switching_label:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 156
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 159
    :cond_a0
    iget-boolean p0, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->noSim:Z

    if-nez p0, :cond_b3

    iget-boolean p0, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    if-nez p0, :cond_b3

    if-eqz v4, :cond_ab

    goto :goto_b3

    .line 162
    :cond_ab
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_b0

    const/4 v1, 0x2

    :cond_b0
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_b5

    .line 160
    :cond_b3
    :goto_b3
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_b5
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 35
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .registers 1

    .line 79
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object p0

    return-object p0
.end method
