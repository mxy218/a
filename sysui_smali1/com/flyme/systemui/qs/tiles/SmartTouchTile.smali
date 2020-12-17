.class public Lcom/flyme/systemui/qs/tiles/SmartTouchTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "SmartTouchTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

.field private mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/SmartTouchController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 14
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_smarttouch_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_smarttouch_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_smarttouch_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_smarttouch_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_smarttouch_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 19
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_smarttouch_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_smarttouch_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_smarttouch_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_smarttouch_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_smarttouch_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 89
    new-instance p1, Lcom/flyme/systemui/qs/tiles/SmartTouchTile$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/SmartTouchTile;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    .line 29
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    .line 30
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/qs/tiles/SmartTouchTile;Ljava/lang/Object;)V
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .line 70
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v1, "com.meizu.settings.MzSettingsActivity$MeizuSmartTouchActivity"

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

    const-string p0, "FloatTouchShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 86
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_smarttouch:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    if-nez v0, :cond_5

    return-void

    .line 46
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 p0, p0, 0x1

    .line 47
    invoke-interface {v0, p0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchController;->setSmartTouchOn(Z)V

    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mController:Lcom/flyme/systemui/statusbar/policy/SmartTouchController;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    .line 78
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    goto :goto_12

    .line 80
    :cond_d
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_12
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 4

    .line 52
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 53
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    .line 54
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 55
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-ne p2, v0, :cond_15

    return-void

    .line 58
    :cond_15
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 60
    :cond_17
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_1e

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_20

    :cond_1e
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_20
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 13
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 40
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 13
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
