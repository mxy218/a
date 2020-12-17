.class public Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;
.super Ljava/lang/Object;
.source "VisibilityLoggerMixin.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private final mMetricsCategory:I

.field private mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSourceMetricsCategory:I

.field private mVisibleTimestamp:J


# virtual methods
.method public onPause()V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mVisibleTimestamp:J

    .line 60
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_12

    iget p0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    if-nez p0, :cond_d

    goto :goto_12

    :cond_d
    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->hidden(Landroid/content/Context;I)V

    throw v1

    :cond_12
    :goto_12
    return-void
.end method

.method public onResume()V
    .registers 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mVisibleTimestamp:J

    .line 52
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz v0, :cond_16

    iget v1, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mMetricsCategory:I

    if-nez v1, :cond_f

    goto :goto_16

    .line 53
    :cond_f
    iget p0, p0, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->mSourceMetricsCategory:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;II)V

    throw v2

    :cond_16
    :goto_16
    return-void
.end method
