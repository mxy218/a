.class public Lcom/android/settingslib/widget/ActionBarShadowController;
.super Ljava/lang/Object;
.source "ActionBarShadowController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;
    }
.end annotation


# static fields
.field static final ELEVATION_HIGH:F = 8.0f
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ELEVATION_LOW:F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mIsScrollWatcherAttached:Z

.field mScrollChangeWatcher:Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mScrollView:Landroid/view/View;


# direct methods
.method private attachScrollWatcher()V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mIsScrollWatcherAttached:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mIsScrollWatcherAttached:Z

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;

    iget-object p0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;->updateDropShadow(Landroid/view/View;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private detachScrollWatcher()V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mIsScrollWatcherAttached:Z

    return-void
.end method
