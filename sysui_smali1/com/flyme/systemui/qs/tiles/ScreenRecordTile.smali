.class public Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ScreenRecordTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 18
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_screenrecord_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_screenrecord_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_screenrecord_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_screenrecord_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_screenrecord_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 23
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_screenrecord_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_screenrecord_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_screenrecord_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_screenrecord_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_screenrecord_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 95
    new-instance p1, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

    .line 34
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    .line 35
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

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

    const-string p0, "ScreenRecordShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_screenrecord:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    if-nez v0, :cond_5

    return-void

    .line 57
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 p0, p0, 0x1

    .line 58
    invoke-interface {v0, p0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->takeScreenRecord(Z)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .registers 2

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 3

    .line 68
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    if-nez p2, :cond_5

    return-void

    .line 69
    :cond_5
    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->isReadying()Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->isScreenRecording()Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_16

    :cond_14
    const/4 p2, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p2, 0x1

    :goto_17
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 70
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 71
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;

    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;->isScreenRecordSupported()Z

    move-result p2

    if-eqz p2, :cond_2e

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_2e

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_30

    :cond_2e
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_30
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "state ="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenRecordController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 16
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 1

    .line 41
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 51
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 16
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/ScreenRecordTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
