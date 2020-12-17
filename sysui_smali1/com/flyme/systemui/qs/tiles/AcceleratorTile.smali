.class public Lcom/flyme/systemui/qs/tiles/AcceleratorTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "AcceleratorTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/AcceleratorController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 16
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_accelerator_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_accelerator_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_accelerator_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_accelerator_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_accelerator_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 21
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_accelerator_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_accelerator_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_accelerator_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_accelerator_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_accelerator_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 86
    new-instance p1, Lcom/flyme/systemui/qs/tiles/AcceleratorTile$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/tiles/AcceleratorTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/AcceleratorTile;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

    .line 31
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    .line 33
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

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

    const-string p0, "AcceleratorShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_accelerator:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorController;->isAcceleratorEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    .line 54
    :cond_b
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorController;->setAcceleratorEnabled()V

    :cond_10
    :goto_10
    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 3

    .line 59
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    if-nez p2, :cond_5

    return-void

    .line 60
    :cond_5
    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/AcceleratorController;->isAcceleratorEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 61
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 62
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mController:Lcom/flyme/systemui/statusbar/policy/AcceleratorController;

    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/AcceleratorController;->isAcceleratorSupported()Z

    move-result p2

    if-eqz p2, :cond_20

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_20

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_22

    :cond_20
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_22
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 15
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 1

    .line 38
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 48
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/AcceleratorTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
