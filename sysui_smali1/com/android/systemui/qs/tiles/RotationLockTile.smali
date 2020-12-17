.class public Lcom/android/systemui/qs/tiles/RotationLockTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "RotationLockTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAutoToLandscape:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mAutoToPortrait:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mLandscapeToAuto:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mPortraitToAuto:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/RotationLockController;)V
    .registers 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 130
    new-instance p1, Lcom/android/systemui/qs/tiles/RotationLockTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .line 138
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_disable:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_opaque_disable:I

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_rotating_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPortraitToAuto:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 143
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_opaque_enable:I

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_disable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_opaque_disable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_rotating_off:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToPortrait:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 147
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_disable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_opaque_disable:I

    aput v2, v1, v4

    new-array v2, v0, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_enable_anim:I

    aput v5, v2, v3

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_opaque_enable_anim:I

    aput v5, v2, v4

    new-array v5, v4, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_rotating_on:I

    aput v6, v5, v3

    invoke-direct {p1, p0, v1, v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 152
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_enable:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_opaque_enable:I

    aput v2, v1, v4

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_disable_anim:I

    aput v2, v0, v3

    sget v2, Lcom/android/systemui/R$drawable;->qs_shortcut_rotation_opaque_disable_anim:I

    aput v2, v0, v4

    new-array v2, v4, [I

    sget v4, Lcom/android/systemui/R$drawable;->qs_shortcut_rotating_off:I

    aput v4, v2, v3

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToLandscape:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 47
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/RotationLockTile;Ljava/lang/Object;)V
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getAccessibilityString(Z)Ljava/lang/String;
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->accessibility_quick_settings_rotation:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/Context;)Z
    .registers 5

    .line 101
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->getRotationLockOrientation()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p0, :cond_18

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq p0, v2, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    return v0

    :cond_18
    if-eq p0, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    return v0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getAccessibilityString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 2

    .line 60
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x7b

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 1

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected handleClick()V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 66
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 6

    .line 77
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p2

    xor-int/lit8 v0, p2, 0x1

    .line 79
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->status_bar_settings_rotation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_26

    move v0, v2

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    if-eqz p2, :cond_33

    if-eqz v0, :cond_2e

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToPortrait:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_30

    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mAutoToLandscape:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_30
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3c

    :cond_33
    if-eqz v0, :cond_38

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mPortraitToAuto:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3a

    :cond_38
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile;->mLandscapeToAuto:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_3a
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 94
    :goto_3c
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->getAccessibilityString(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 95
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 96
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_4f

    goto :goto_50

    :cond_4f
    move v1, v2

    :goto_50
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 37
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 1

    .line 52
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
