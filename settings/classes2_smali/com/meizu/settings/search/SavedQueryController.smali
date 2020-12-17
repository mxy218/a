.class public Lcom/meizu/settings/search/SavedQueryController;
.super Ljava/lang/Object;
.source "SavedQueryController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/search/SavedQueryController$OnLoadFinishedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoaderManager:Landroid/app/LoaderManager;

.field private mOnLoadFinishedListener:Lcom/meizu/settings/search/SavedQueryController$OnLoadFinishedListener;

.field private final mResultAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;

.field private final mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/LoaderManager;Lcom/meizu/settings/search/SearchResultsAdapter;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/meizu/settings/search/SavedQueryController;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/meizu/settings/search/SavedQueryController;->mLoaderManager:Landroid/app/LoaderManager;

    .line 55
    iput-object p3, p0, Lcom/meizu/settings/search/SavedQueryController;->mResultAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;

    .line 56
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFlymeSearchFeatureProvider()Lcom/meizu/settings/search/SearchFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/search/SavedQueryController;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    return-void
.end method


# virtual methods
.method public loadSavedQueries()V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/meizu/settings/search/SavedQueryController;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1c

    const/4 p2, 0x6

    if-eq p1, p2, :cond_14

    const/4 p2, 0x7

    if-eq p1, p2, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_b
    iget-object p1, p0, Lcom/meizu/settings/search/SavedQueryController;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    iget-object p0, p0, Lcom/meizu/settings/search/SavedQueryController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/meizu/settings/search/SearchFeatureProvider;->getSavedQueryLoader(Landroid/content/Context;)Lcom/meizu/settings/search/SavedQueryLoader;

    move-result-object p0

    return-object p0

    .line 66
    :cond_14
    new-instance p1, Lcom/meizu/settings/search/SavedQueryRemover;

    iget-object p0, p0, Lcom/meizu/settings/search/SavedQueryController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/meizu/settings/search/SavedQueryRemover;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 64
    :cond_1c
    new-instance p1, Lcom/meizu/settings/search/SavedQueryRecorder;

    iget-object p0, p0, Lcom/meizu/settings/search/SavedQueryController;->mContext:Landroid/content/Context;

    const-string v0, "remove_query"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/meizu/settings/search/SavedQueryRecorder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 5

    .line 75
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x7

    if-eq p1, v0, :cond_1a

    if-eq p1, v1, :cond_b

    goto :goto_20

    .line 84
    :cond_b
    iget-object p1, p0, Lcom/meizu/settings/search/SavedQueryController;->mResultAdapter:Lcom/meizu/settings/search/SearchResultsAdapter;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/meizu/settings/search/SearchResultsAdapter;->displaySavedQuery(Ljava/util/List;)I

    .line 87
    iget-object p0, p0, Lcom/meizu/settings/search/SavedQueryController;->mOnLoadFinishedListener:Lcom/meizu/settings/search/SavedQueryController$OnLoadFinishedListener;

    if-eqz p0, :cond_20

    .line 88
    invoke-interface {p0, p2}, Lcom/meizu/settings/search/SavedQueryController$OnLoadFinishedListener;->onLoadFinished(Ljava/util/List;)V

    goto :goto_20

    .line 77
    :cond_1a
    iget-object p1, p0, Lcom/meizu/settings/search/SavedQueryController;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_20
    :goto_20
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 105
    :cond_a
    invoke-virtual {p0}, Lcom/meizu/settings/search/SavedQueryController;->removeQueries()V

    const/4 p0, 0x1

    return p0
.end method

.method public removeQueries()V
    .registers 4

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/meizu/settings/search/SavedQueryController;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public saveQuery(Ljava/lang/String;)V
    .registers 4

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "remove_query"

    .line 117
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/meizu/settings/search/SavedQueryController;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public setOnLoadFinishedListener(Lcom/meizu/settings/search/SavedQueryController$OnLoadFinishedListener;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/meizu/settings/search/SavedQueryController;->mOnLoadFinishedListener:Lcom/meizu/settings/search/SavedQueryController$OnLoadFinishedListener;

    return-void
.end method
