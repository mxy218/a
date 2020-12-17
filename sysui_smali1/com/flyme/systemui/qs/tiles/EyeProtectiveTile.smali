.class public Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "EyeProtectiveTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

.field private final mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 19
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_eyeprotective_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_eyeprotective_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_eyeprotective_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_eyeprotective_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_eyeprotective_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 24
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_eyeprotective_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_eyeprotective_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_eyeprotective_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_eyeprotective_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_eyeprotective_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 113
    new-instance p1, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile$1;-><init>(Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

    .line 34
    iput-object p2, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    .line 35
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mCallback:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .registers 4

    const-string v0, "com.android.settings"

    .line 87
    :try_start_2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "blue_light_reduction_title"

    const-string/jumbo v2, "string"

    .line 88
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_1b

    :catch_16
    move-exception p0

    .line 91
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, -0x1

    .line 96
    :goto_1b
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings.SubSettings"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:show_fragment"

    const-string v2, "com.meizu.settings.display.BluelightReductionFragment"

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_title_resid"

    .line 98
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, 0x0

    const-string v1, ":settings:show_fragment_as_shortcut"

    .line 99
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "EyeProtectiveShortCut"

    return-object p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->status_bar_settings_eyeprotective:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    if-nez v0, :cond_5

    return-void

    .line 57
    :cond_5
    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;->isEyeProtectiveSupported()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 58
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    .line 59
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    invoke-interface {p0, v0}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;->setEyeProtectiveEnabled(Z)V

    return-void
.end method

.method protected handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 5

    .line 64
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    if-nez p2, :cond_5

    return-void

    .line 65
    :cond_5
    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;->isEyeProtectiveEnabled()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;->isEyeProtectiveSupported()Z

    move-result p2

    if-eqz p2, :cond_17

    move p2, v0

    goto :goto_18

    :cond_17
    move p2, v1

    :goto_18
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 66
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 67
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mController:Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;

    invoke-interface {p2}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;->isEyeProtectiveSupported()Z

    move-result p2

    if-nez p2, :cond_2f

    .line 68
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 69
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_41

    .line 71
    :cond_2f
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_34

    const/4 v0, 0x2

    :cond_34
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 72
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_3d

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3f

    :cond_3d
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_3f
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_41
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 2

    .line 40
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "flyme.hardware.screen.bluelightreduction"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 41
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
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

    .line 18
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
