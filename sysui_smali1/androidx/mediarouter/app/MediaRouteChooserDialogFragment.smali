.class public Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "MediaRouteChooserDialogFragment.java"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mUseDynamicGroup:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method

.method private ensureRouteSelector()V
    .registers 3

    .line 64
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_1e

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "selector"

    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 69
    :cond_16
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_1e

    .line 70
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    :cond_1e
    return-void
.end method


# virtual methods
.method public getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;
    .registers 1

    .line 59
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    .line 60
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 155
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez p1, :cond_8

    return-void

    .line 159
    :cond_8
    iget-boolean p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    if-eqz p0, :cond_12

    .line 160
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->updateLayout()V

    goto :goto_17

    .line 162
    :cond_12
    check-cast p1, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->updateLayout()V

    :goto_17
    return-void
.end method

.method public onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/mediarouter/app/MediaRouteChooserDialog;
    .registers 3

    .line 138
    new-instance p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-direct {p0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    .line 143
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    if-eqz v0, :cond_1a

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->onCreateDynamicChooserDialog(Landroid/content/Context;)Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 145
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    goto :goto_2f

    .line 147
    :cond_1a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/mediarouter/app/MediaRouteChooserDialog;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 148
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    check-cast p1, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 150
    :goto_2f
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public onCreateDynamicChooserDialog(Landroid/content/Context;)Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 127
    new-instance p0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-direct {p0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .registers 5

    if-eqz p1, :cond_3a

    .line 100
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    .line 101
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 102
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    :cond_1a
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->asBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "selector"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_39

    .line 112
    iget-boolean p0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    if-eqz p0, :cond_34

    .line 113
    check-cast v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    goto :goto_39

    .line 115
    :cond_34
    check-cast v0, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    :cond_39
    :goto_39
    return-void

    .line 97
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "selector must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setUseDynamicGroup(Z)V
    .registers 3

    .line 83
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_7

    .line 86
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    return-void

    .line 84
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This must be called before creating dialog"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
