.class public Lcom/flyme/systemui/qs/tiles/PowerSaveTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "PowerSaveTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/PowerSaveController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 22
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_powermode_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_powermode_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_powermode_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_powermode_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_powermode_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 27
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_powermode_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_powermode_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_powermode_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_powermode_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_powermode_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 119
    new-instance p1, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

    .line 37
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    .line 38
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;I)Z
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->getUserBoolean(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;Ljava/lang/Object;)V
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getUserBoolean(I)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 p0, 0x1

    :cond_b
    :goto_b
    return p0
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .registers 2

    .line 90
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.meizu.power.PowerLowNotification"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "PowerSaveShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_powersave:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    if-nez v0, :cond_5

    return-void

    .line 60
    :cond_5
    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 61
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    .line 63
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->setPowerSaveMode(I)V

    goto :goto_23

    .line 65
    :cond_1d
    iget-object v1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->setPowerSaveMode(I)V

    .line 67
    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .registers 2

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 4

    .line 77
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    if-nez p2, :cond_5

    return-void

    .line 78
    :cond_5
    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->isUserUnlocked()Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mController:Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->getIntentMode()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 79
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 80
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_26

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_28

    :cond_26
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_28
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 20
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 3

    .line 43
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v1, "com.meizu.battery"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_18

    .line 44
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

    .line 54
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 20
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
