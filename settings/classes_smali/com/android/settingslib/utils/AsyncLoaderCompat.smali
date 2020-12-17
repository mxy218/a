.class public abstract Lcom/android/settingslib/utils/AsyncLoaderCompat;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "AsyncLoaderCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/AsyncTaskLoader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onDiscardResult(Ljava/lang/Object;)V

    :cond_b
    return-void

    .line 66
    :cond_c
    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 70
    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_19
    if-eqz v0, :cond_22

    .line 73
    iget-object p1, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    if-eq v0, p1, :cond_22

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onDiscardResult(Ljava/lang/Object;)V

    :cond_22
    return-void
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onDiscardResult(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method protected abstract onDiscardResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected onReset()V
    .registers 2

    .line 80
    invoke-super {p0}, Landroidx/loader/content/Loader;->onReset()V

    .line 82
    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onStopLoading()V

    .line 84
    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onDiscardResult(Ljava/lang/Object;)V

    :cond_d
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->deliverResult(Ljava/lang/Object;)V

    .line 47
    :cond_7
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_14

    .line 48
    :cond_11
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    :cond_14
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .line 54
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method
