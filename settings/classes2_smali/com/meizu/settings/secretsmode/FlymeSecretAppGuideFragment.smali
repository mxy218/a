.class public Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeSecretAppGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAddSecretAppButton:Landroid/widget/TextView;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment$1;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private repoortAppCloneData(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5c

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5c

    .line 108
    :cond_9
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    .line 109
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ":1"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x0

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "0"

    const-string v4, "source"

    .line 113
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "app_name"

    .line 114
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "status"

    if-eqz v1, :cond_4f

    .line 116
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_4f
    const-string v1, "1"

    .line 118
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_54
    const-string v1, "another_protected"

    const-string v3, "FlymeSecretAppGuideFragment"

    .line 120
    invoke-virtual {p0, v1, v3, v2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_15

    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 87
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->hideActionbar(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->handleCanclelTextClick(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    const/4 p1, -0x1

    if-ne p2, p1, :cond_20

    if-eqz p3, :cond_20

    const-string p1, "pick_result_extra"

    .line 98
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-virtual {p2, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->initSecretApps(Ljava/util/ArrayList;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;->repoortAppCloneData(Ljava/util/ArrayList;)V

    .line 101
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_20
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 81
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/meizu/settings/secretsmode/FlymeSecretAppsPicker;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, p1, v0}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->setHasWhiteNavigationbar(Z)V

    .line 55
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;->mSecretsControlHelper:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    .line 58
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 57
    invoke-static {p1, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->registerSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p2, 0x7f0d0101

    const/4 p3, 0x0

    .line 73
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0632

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;->mAddSecretAppButton:Landroid/widget/TextView;

    .line 75
    iget-object p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;->mAddSecretAppButton:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 64
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 66
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 65
    invoke-static {v0, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->unregisterSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method
