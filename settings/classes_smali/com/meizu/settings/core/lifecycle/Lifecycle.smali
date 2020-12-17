.class public Lcom/meizu/settings/core/lifecycle/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# instance fields
.field protected final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/core/lifecycle/LifecycleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/meizu/settings/core/lifecycle/LifecycleObserver;)Lcom/meizu/settings/core/lifecycle/LifecycleObserver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/meizu/settings/core/lifecycle/LifecycleObserver;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->ensureMainThread()V

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 61
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 62
    instance-of v1, v0, Lcom/meizu/settings/core/lifecycle/events/OnAttach;

    if-eqz v1, :cond_6

    .line 63
    check-cast v0, Lcom/meizu/settings/core/lifecycle/events/OnAttach;

    invoke-interface {v0, p1}, Lcom/meizu/settings/core/lifecycle/events/OnAttach;->onAttach(Landroid/content/Context;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 69
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 70
    instance-of v1, v0, Lcom/meizu/settings/core/lifecycle/events/OnCreate;

    if-eqz v1, :cond_6

    .line 71
    check-cast v0, Lcom/meizu/settings/core/lifecycle/events/OnCreate;

    invoke-interface {v0, p1}, Lcom/meizu/settings/core/lifecycle/events/OnCreate;->onCreate(Landroid/os/Bundle;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    .line 133
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 134
    instance-of v1, v0, Lcom/meizu/settings/core/lifecycle/events/OnCreateOptionsMenu;

    if-eqz v1, :cond_6

    .line 135
    check-cast v0, Lcom/meizu/settings/core/lifecycle/events/OnCreateOptionsMenu;

    invoke-interface {v0, p1, p2}, Lcom/meizu/settings/core/lifecycle/events/OnCreateOptionsMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 125
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 126
    instance-of v1, v0, Lcom/meizu/settings/core/lifecycle/events/OnDestroy;

    if-eqz v1, :cond_6

    .line 127
    check-cast v0, Lcom/meizu/settings/core/lifecycle/events/OnDestroy;

    invoke-interface {v0}, Lcom/meizu/settings/core/lifecycle/events/OnDestroy;->onDestroy()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 149
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 150
    instance-of v1, v0, Lcom/meizu/settings/core/lifecycle/events/OnOptionsItemSelected;

    if-eqz v1, :cond_6

    .line 151
    check-cast v0, Lcom/meizu/settings/core/lifecycle/events/OnOptionsItemSelected;

    invoke-interface {v0, p1}, Lcom/meizu/settings/core/lifecycle/events/OnOptionsItemSelected;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .registers 3

    .line 101
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 102
    instance-of v1, v0, Lcom/meizu/settings/core/lifecycle/events/OnPause;

    if-eqz v1, :cond_6

    .line 103
    check-cast v0, Lcom/meizu/settings/core/lifecycle/events/OnPause;

    invoke-interface {v0}, Lcom/meizu/settings/core/lifecycle/events/OnPause;->onPause()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4

    .line 141
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 142
    instance-of v1, v0, Lcom/meizu/settings/core/lifecycle/events/OnPrepareOptionsMenu;

    if-eqz v1, :cond_6

    .line 143
    check-cast v0, Lcom/meizu/settings/core/lifecycle/events/OnPrepareOptionsMenu;

    invoke-interface {v0, p1}, Lcom/meizu/settings/core/lifecycle/events/OnPrepareOptionsMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 93
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 94
    instance-of v1, v0, Lcom/meizu/settings/core/lifecycle/events/OnResume;

    if-eqz v1, :cond_6

    .line 95
    check-cast v0, Lcom/meizu/settings/core/lifecycle/events/OnResume;

    invoke-interface {v0}, Lcom/meizu/settings/core/lifecycle/events/OnResume;->onResume()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 109
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 110
    instance-of v1, v0, Lcom/meizu/settings/core/lifecycle/events/OnSaveInstanceState;

    if-eqz v1, :cond_6

    .line 111
    check-cast v0, Lcom/meizu/settings/core/lifecycle/events/OnSaveInstanceState;

    invoke-interface {v0, p1}, Lcom/meizu/settings/core/lifecycle/events/OnSaveInstanceState;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 77
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 78
    instance-of v1, v0, Lcom/meizu/settings/core/lifecycle/events/OnStart;

    if-eqz v1, :cond_6

    .line 79
    check-cast v0, Lcom/meizu/settings/core/lifecycle/events/OnStart;

    invoke-interface {v0}, Lcom/meizu/settings/core/lifecycle/events/OnStart;->onStart()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 117
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 118
    instance-of v1, v0, Lcom/meizu/settings/core/lifecycle/events/OnStop;

    if-eqz v1, :cond_6

    .line 119
    check-cast v0, Lcom/meizu/settings/core/lifecycle/events/OnStop;

    invoke-interface {v0}, Lcom/meizu/settings/core/lifecycle/events/OnStop;->onStop()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .registers 4

    .line 85
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/core/lifecycle/LifecycleObserver;

    .line 86
    instance-of v1, v0, Lcom/meizu/settings/core/lifecycle/events/SetPreferenceScreen;

    if-eqz v1, :cond_6

    .line 87
    check-cast v0, Lcom/meizu/settings/core/lifecycle/events/SetPreferenceScreen;

    invoke-interface {v0, p1}, Lcom/meizu/settings/core/lifecycle/events/SetPreferenceScreen;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_6

    :cond_1c
    return-void
.end method
