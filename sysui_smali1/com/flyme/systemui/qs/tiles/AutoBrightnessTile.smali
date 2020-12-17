.class public Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "AutoBrightnessTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 15
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_brightness_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_brightness_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_brightness_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_brightness_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_brightness_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 20
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_brightness_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_brightness_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_brightness_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_brightness_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_brightness_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 94
    new-instance p1, Lcom/flyme/systemui/qs/tiles/-$$Lambda$AutoBrightnessTile$w_FIujeK424wwtKCyNB6QVAYvRU;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/tiles/-$$Lambda$AutoBrightnessTile$w_FIujeK424wwtKCyNB6QVAYvRU;-><init>(Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;

    .line 31
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->mController:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

    .line 32
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->mController:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

    invoke-interface {p1}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;->initAutoBrightness()V

    .line 33
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->mController:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .line 80
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DisplaySettingsActivity"

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

    const-string p0, "BrightnessShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_autobrightness:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->mController:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

    if-nez v0, :cond_5

    return-void

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v1, v1, 0x1

    .line 50
    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;->setAutoBrightnessOn(Z)V

    .line 51
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->mController:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

    if-nez v0, :cond_5

    return-void

    .line 57
    :cond_5
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_17

    .line 58
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 59
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-ne p2, v0, :cond_14

    return-void

    .line 62
    :cond_14
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_1d

    .line 64
    :cond_17
    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;->isAutoBrightnessOn()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 67
    :goto_1d
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 68
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->mController:Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;

    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;->isAutoBrightnessSupport()Z

    move-result p2

    if-eqz p2, :cond_32

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_32

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_34

    :cond_32
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 69
    :goto_34
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 13
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$new$0$AutoBrightnessTile(Z)V
    .registers 2

    .line 95
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 43
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 13
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/AutoBrightnessTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
