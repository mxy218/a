.class public Lcom/flyme/systemui/qs/tiles/VpnTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "VpnTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

.field private mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/VpnController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 17
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_vpn_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_vpn_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_vpn_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_vpn_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_vpn_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 22
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_vpn_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_vpn_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_vpn_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_vpn_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_vpn_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 100
    new-instance p1, Lcom/flyme/systemui/qs/tiles/VpnTile$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/tiles/VpnTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/VpnTile;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

    .line 33
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    .line 34
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .line 87
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.meizu.connectivitysettings"

    const-string v1, "com.meizu.connectivitysettings.Settings$VpnSettingsActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "VpnShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_vpn:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    if-nez v0, :cond_5

    return-void

    .line 55
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 p0, p0, 0x1

    .line 56
    invoke-interface {v0, p0}, Lcom/flyme/systemui/statusbar/policy/VpnController;->setVpnEnabled(Z)V

    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    if-nez v0, :cond_5

    return-void

    .line 62
    :cond_5
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_17

    .line 63
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 64
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-ne p2, v0, :cond_14

    return-void

    .line 67
    :cond_14
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_1d

    .line 69
    :cond_17
    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/VpnController;->isVpnEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 71
    :goto_1d
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/VpnController;->isVpnConnecting()Z

    move-result p2

    .line 72
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/VpnController;->isVpnInitializing()Z

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    invoke-interface {v1}, Lcom/flyme/systemui/statusbar/policy/VpnController;->isVpnWaitForReconnect()Z

    move-result v1

    .line 74
    iget-object v2, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    invoke-interface {v2}, Lcom/flyme/systemui/statusbar/policy/VpnController;->isVpnSupported()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v2, :cond_41

    if-nez p2, :cond_41

    if-nez v0, :cond_41

    if-eqz v1, :cond_43

    :cond_41
    const/4 p2, 0x1

    goto :goto_44

    :cond_43
    const/4 p2, 0x0

    :goto_44
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 75
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/VpnTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 76
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mController:Lcom/flyme/systemui/statusbar/policy/VpnController;

    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/VpnController;->isVpnSupported()Z

    move-result p2

    if-eqz p2, :cond_5b

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_5b

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_5d

    :cond_5b
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_5d
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 15
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/VpnTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 1

    .line 39
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 49
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/VpnTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
