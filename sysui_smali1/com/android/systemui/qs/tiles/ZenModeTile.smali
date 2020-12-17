.class public Lcom/android/systemui/qs/tiles/ZenModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ZenModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 27
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_disturb_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_disturb_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_disturb_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_disturb_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_disturb_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 32
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_disturb_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_disturb_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_disturb_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_disturb_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_disturb_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 114
    new-instance p1, Lcom/android/systemui/qs/tiles/ZenModeTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/ZenModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/ZenModeTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 44
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance p1, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/ZenModeTile;Lcom/android/systemui/qs/tiles/ZenModeTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/ZenModeTile;Ljava/lang/Object;)V
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/ZenModeTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/ZenModeTile;)Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/ZenModeTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/ZenModeTile;)Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/ZenModeTile;)Landroid/content/Context;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .line 100
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v1, "com.meizu.settings.MzSettingsActivity$DoNotDisturbActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x76

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "DndShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_dndmode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-nez v0, :cond_5

    return-void

    .line 66
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    const/4 v1, 0x0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-interface {v0, v2, v1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

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
    .registers 5

    .line 82
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-nez p2, :cond_5

    return-void

    .line 83
    :cond_5
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_e

    move p2, v0

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 85
    sget p2, Lcom/android/systemui/R$string;->status_bar_settings_dndmode:I

    .line 86
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 87
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_22

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_24

    :cond_22
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ZenModeTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 88
    :goto_24
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 89
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ZenModeTile;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 26
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ZenModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 1

    .line 50
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 60
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ZenModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
