.class public Lcom/android/systemui/qs/tiles/WorkModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WorkModeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;"
    }
.end annotation


# instance fields
.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/phone/ManagedProfileController;)V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 36
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_managed_profile_status:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    .line 44
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_11

    .line 126
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_work_mode_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 128
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_work_mode_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 2

    .line 58
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGED_PROFILE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x101

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_work_mode_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleClick()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->setWorkModeEnabled(Z)V

    return-void
.end method

.method public handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 5

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->onManagedProfileRemoved()V

    .line 93
    :cond_9
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v0, :cond_14

    .line 94
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 97
    :cond_14
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 98
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_29

    .line 100
    :cond_21
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->isWorkModeEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 103
    :goto_29
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 104
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_42

    .line 105
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 106
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->accessibility_quick_settings_work_mode_on:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_50

    .line 109
    :cond_42
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iput-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 110
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->accessibility_quick_settings_work_mode_off:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 113
    :goto_50
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->quick_settings_work_mode_label:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 114
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 115
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_67

    const/4 v0, 0x2

    :cond_67
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 34
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WorkModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasActiveProfile()Z

    move-result p0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 49
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onManagedProfileChanged()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->isWorkModeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public onManagedProfileRemoved()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->removeTile(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileSpec()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSHost;->unmarkTileAsAutoAdded(Ljava/lang/String;)V

    return-void
.end method
