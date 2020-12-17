.class public Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;
.super Ljava/lang/Object;
.source "GameDriverGlobalSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V
    .registers 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    .line 57
    new-instance v0, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    new-instance v1, Landroid/os/Handler;

    .line 58
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;-><init>(Landroid/os/Handler;Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    .line 59
    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    .line 60
    iget-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    .line 61
    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 60
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "game_driver_all_apps"

    .line 63
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_35

    const/4 v0, 0x1

    .line 62
    :cond_35
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    return-void
.end method


# virtual methods
.method public onGameDriverContentChanged()V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "game_driver_all_apps"

    .line 105
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_f

    const/4 v1, 0x1

    .line 104
    :cond_f
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .registers 7

    .line 83
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "game_driver_all_apps"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz p1, :cond_14

    if-eqz v0, :cond_13

    if-eq v0, v3, :cond_13

    const/4 v4, 0x2

    if-ne v0, v4, :cond_14

    :cond_13
    return v3

    :cond_14
    const/4 v4, 0x3

    if-nez p1, :cond_1a

    if-ne v0, v4, :cond_1a

    return v3

    .line 96
    :cond_1a
    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v4

    :goto_20
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3
.end method
