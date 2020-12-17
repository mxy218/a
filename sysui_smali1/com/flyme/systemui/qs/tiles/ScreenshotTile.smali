.class public Lcom/flyme/systemui/qs/tiles/ScreenshotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ScreenshotTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/ScreenshotController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 15
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_screenshot_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_screenshot_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_screenshot_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_screenshot_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_screenshot_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 20
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_screenshot_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_screenshot_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_screenshot_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_screenshot_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_screenshot_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 81
    new-instance p1, Lcom/flyme/systemui/qs/tiles/ScreenshotTile$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/tiles/ScreenshotTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/ScreenshotTile;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

    .line 30
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    .line 31
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/qs/tiles/ScreenshotTile;Ljava/lang/Object;)V
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

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

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_screenshot:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    if-nez p0, :cond_5

    return-void

    .line 42
    :cond_5
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->takeScreenShot()V

    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 5

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mController:Lcom/flyme/systemui/statusbar/policy/ScreenshotController;

    if-nez v0, :cond_5

    return-void

    .line 48
    :cond_5
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_17

    .line 49
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 50
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-ne p2, v0, :cond_14

    return-void

    .line 53
    :cond_14
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_1d

    .line 55
    :cond_17
    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/ScreenshotController;->isCapturing()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 57
    :goto_1d
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 58
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_2a

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_2c

    :cond_2a
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_2c
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 13
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 36
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 13
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
