.class public Lcom/android/systemui/qs/tiles/LocationTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "LocationTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/LocationTile$Callback;
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
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/plugins/ActivityStarter;)V
    .registers 12
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 46
    new-instance p1, Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Lcom/android/systemui/qs/tiles/LocationTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    .line 158
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_location_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_location_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_location_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_location_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_gps_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 163
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_location_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_location_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_location_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_location_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_gps_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 53
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 54
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 55
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_11

    .line 138
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_location_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_location_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .line 72
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.meizu.connectivitysettings"

    const-string v1, "com.meizu.connectivitysettings.Settings$MzLocationSettingsActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x7a

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_location_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$LocationTile$cnlxD4jGztrpcRYGbQTKRSm3Ng0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$LocationTile$cnlxD4jGztrpcRYGbQTKRSm3Ng0;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 88
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 89
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    return-void
.end method

.method public handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 6

    .line 99
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez p2, :cond_b

    .line 100
    new-instance p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {p2}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 102
    :cond_b
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result p2

    .line 107
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const-string v0, "no_share_location"

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 109
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-nez v0, :cond_21

    const-string v0, "no_config_location"

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    :cond_21
    if-eqz p2, :cond_26

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_28

    :cond_26
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_28
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 116
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    if-eqz p2, :cond_49

    .line 118
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_location_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 119
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->accessibility_quick_settings_location_on:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_5d

    .line 122
    :cond_49
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_location_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 123
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->accessibility_quick_settings_location_off:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 126
    :goto_5d
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_62

    const/4 v2, 0x2

    :cond_62
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 127
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 39
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/LocationTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$handleClick$0$LocationTile()V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 83
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->openPanels()V

    .line 84
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 61
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
