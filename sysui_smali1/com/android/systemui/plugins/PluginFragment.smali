.class public abstract Lcom/android/systemui/plugins/PluginFragment;
.super Landroid/app/Fragment;
.source "PluginFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# instance fields
.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/plugins/PluginFragment;->mPluginContext:Landroid/content/Context;

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .registers 3

    .line 28
    iput-object p2, p0, Lcom/android/systemui/plugins/PluginFragment;->mPluginContext:Landroid/content/Context;

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2

    .line 33
    invoke-super {p0, p1}, Landroid/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/plugins/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
