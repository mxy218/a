.class public Lcom/flyme/systemui/qs/tiles/MeizuShareTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "MeizuShareTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;

.field private mController:Lcom/flyme/systemui/statusbar/policy/MeizuShareController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/MeizuShareController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 17
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_mzshare_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_mzshare_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_mzshare_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_mzshare_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_mzshare_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 22
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_mzshare_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_mzshare_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_mzshare_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_mzshare_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_mzshare_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 30
    new-instance p1, Lcom/flyme/systemui/qs/tiles/MeizuShareTile$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/tiles/MeizuShareTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/MeizuShareTile;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;

    .line 41
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mController:Lcom/flyme/systemui/statusbar/policy/MeizuShareController;

    .line 42
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mController:Lcom/flyme/systemui/statusbar/policy/MeizuShareController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lcom/flyme/systemui/qs/tiles/MeizuShareTile;Z)Z
    .registers 2

    .line 16
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/qs/tiles/MeizuShareTile;Ljava/lang/Object;)V
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private static isSupportMeizuShare(Landroid/content/Context;)Z
    .registers 3

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "flyme.intent.action.meizu_share"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 102
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .registers 2

    .line 79
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "flyme.intent.action.meizu_share"

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_meizu_share:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mController:Lcom/flyme/systemui/statusbar/policy/MeizuShareController;

    if-nez v0, :cond_5

    return-void

    .line 53
    :cond_5
    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/MeizuShareController;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mEnabled:Z

    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mController:Lcom/flyme/systemui/statusbar/policy/MeizuShareController;

    iget-boolean v1, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mEnabled:Z

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/MeizuShareController;->setEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mController:Lcom/flyme/systemui/statusbar/policy/MeizuShareController;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p2, :cond_1d

    .line 62
    iget-boolean p2, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mEnabled:Z

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 63
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 64
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_18

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1a

    :cond_18
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_1a
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void

    .line 67
    :cond_1d
    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/MeizuShareController;->isEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 68
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 69
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_30

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_32

    :cond_30
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_32
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 16
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->isSupportMeizuShare(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 47
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 16
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
