.class public Lcom/flyme/systemui/qs/tiles/NightModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "NightModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;

.field private mController:Lcom/flyme/systemui/statusbar/policy/NightModeController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/NightModeController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 17
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_nightmode_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_nightmode_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_nightmode_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_nightmode_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_nightmode_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 22
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_nightmode_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_nightmode_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_nightmode_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_nightmode_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_nightmode_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 95
    new-instance p1, Lcom/flyme/systemui/qs/tiles/NightModeTile$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/tiles/NightModeTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/NightModeTile;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;

    .line 32
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile;->mController:Lcom/flyme/systemui/statusbar/policy/NightModeController;

    .line 33
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile;->mController:Lcom/flyme/systemui/statusbar/policy/NightModeController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.flyme.sdkstage.nightmode.intent.NIGHTMODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.meizu.flyme.sdkstage"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1d

    return-object v0

    .line 80
    :cond_1d
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.meizu.flymelab"

    const-string v1, "com.meizu.flymelab.component.nightmode.NightModeSettingsActivity"

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

    const-string p0, "NightModeShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleClick()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile;->mController:Lcom/flyme/systemui/statusbar/policy/NightModeController;

    if-nez v0, :cond_5

    return-void

    .line 56
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 p0, p0, 0x1

    .line 57
    invoke-interface {v0, p0}, Lcom/flyme/systemui/statusbar/policy/NightModeController;->setInNightMode(Z)V

    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 4

    .line 62
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile;->mController:Lcom/flyme/systemui/statusbar/policy/NightModeController;

    if-nez p2, :cond_5

    return-void

    .line 63
    :cond_5
    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/NightModeController;->isInNightMode()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 64
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_nightmode:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 65
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile;->mController:Lcom/flyme/systemui/statusbar/policy/NightModeController;

    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/NightModeController;->isNightModeSupport()Z

    move-result p2

    if-eqz p2, :cond_24

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_24

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_26

    :cond_24
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_26
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 16
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/NightModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 2

    .line 38
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v0, "com.meizu.flyme.sdkstage"

    invoke-static {p0, v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 39
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p0

    if-nez p0, :cond_18

    .line 40
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 50
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 16
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/NightModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
