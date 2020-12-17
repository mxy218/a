.class public Lcom/flyme/systemui/qs/tiles/MuteTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "MuteTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

.field private mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/RingerModeController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 19
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_mute_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_mute_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_mute_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_mute_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_mute_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 24
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_mute_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_mute_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_mute_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_mute_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_mute_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 113
    new-instance p1, Lcom/flyme/systemui/qs/tiles/MuteTile$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/tiles/MuteTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/MuteTile;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    .line 35
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/qs/tiles/MuteTile;Ljava/lang/Object;)V
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .line 95
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SoundSettingsActivity"

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

    const-string p0, "MuteShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_mute:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    if-nez v0, :cond_5

    return-void

    .line 56
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v1, v1, 0x1

    .line 57
    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/RingerModeController;->setMuteOn(Z)V

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 102
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    goto :goto_11

    .line 104
    :cond_a
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_11
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 6

    .line 63
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    if-nez v0, :cond_5

    return-void

    .line 64
    :cond_5
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/MuteTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 65
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 66
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 67
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-ne v0, v1, :cond_1b

    return-void

    .line 70
    :cond_1b
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_26

    .line 72
    :cond_1e
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mController:Lcom/flyme/systemui/statusbar/policy/RingerModeController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeController;->isMuteOn()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 75
    :goto_26
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const-string v2, "MuteTile"

    if-ne v0, v1, :cond_38

    const-string p0, "handleUpdateState no change"

    .line 76
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    if-eqz v0, :cond_3d

    .line 81
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3f

    :cond_3d
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 82
    :goto_3f
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleUpdateState: arg = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", state = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 15
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/MuteTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 1

    .line 40
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

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

    .line 15
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/MuteTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
