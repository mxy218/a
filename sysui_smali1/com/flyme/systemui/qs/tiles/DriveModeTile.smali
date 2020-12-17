.class public Lcom/flyme/systemui/qs/tiles/DriveModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DriveModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/DriveModeController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/DriveModeController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 20
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_drivemode_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_drivemode_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_drivemode_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_drivemode_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_drivemode_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 25
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_drivemode_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_drivemode_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_drivemode_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_drivemode_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_drivemode_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 101
    new-instance p1, Lcom/flyme/systemui/qs/tiles/DriveModeTile$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/tiles/DriveModeTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/DriveModeTile;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;

    .line 35
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->mController:Lcom/flyme/systemui/statusbar/policy/DriveModeController;

    .line 36
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->mController:Lcom/flyme/systemui/statusbar/policy/DriveModeController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "DriveModeShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 98
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_drivemode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->mController:Lcom/flyme/systemui/statusbar/policy/DriveModeController;

    if-nez v0, :cond_5

    return-void

    .line 59
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 p0, p0, 0x1

    .line 60
    invoke-interface {v0, p0}, Lcom/flyme/systemui/statusbar/policy/DriveModeController;->setDriveModeEnabled(Z)V

    return-void
.end method

.method protected handleLongClick()V
    .registers 1

    .line 88
    invoke-static {}, Lcom/flyme/systemui/drivemode/DriveMode;->onTileLongClick()V

    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 3

    .line 69
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->mController:Lcom/flyme/systemui/statusbar/policy/DriveModeController;

    if-nez p2, :cond_5

    return-void

    .line 70
    :cond_5
    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/DriveModeController;->isDriveModeEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 71
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 72
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->mController:Lcom/flyme/systemui/statusbar/policy/DriveModeController;

    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/DriveModeController;->isDriveModeSupported()Z

    move-result p2

    if-eqz p2, :cond_20

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_20

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_22

    :cond_20
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_22
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 19
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v0, "com.meizu.voiceassistant"

    invoke-static {p0, v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 42
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result p0

    if-nez p0, :cond_18

    .line 43
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

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

    .line 53
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 19
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
