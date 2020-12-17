.class public Lcom/meizu/settings/SettingsListFragment;
.super Landroid/app/ListFragment;
.source "SettingsListFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 15
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance p2, Lcom/meizu/settings/SettingsListFragment$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/SettingsListFragment$1;-><init>(Lcom/meizu/settings/SettingsListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method
