.class public interface abstract Lcom/meizu/settings/search/SearchFeatureProvider;
.super Ljava/lang/Object;
.source "SearchFeatureProvider.java"


# virtual methods
.method public cancelPendingSearchQuery(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public abstract getAccessibilityServiceResultLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/search/AccessibilityServiceResultLoader;
.end method

.method public abstract getDatabaseSearchLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseResultLoader;
.end method

.method public abstract getIndexingManager(Landroid/content/Context;)Lcom/meizu/settings/search/DatabaseIndexingManager;
.end method

.method public abstract getInputDeviceResultLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/search/InputDeviceResultLoader;
.end method

.method public abstract getInstalledAppSearchLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/search/InstalledAppResultLoader;
.end method

.method public abstract getSavedQueryLoader(Landroid/content/Context;)Lcom/meizu/settings/search/SavedQueryLoader;
.end method

.method public hideFeedbackButton()V
    .registers 1

    return-void
.end method

.method public initFeedbackButton()V
    .registers 1

    return-void
.end method

.method public abstract isIndexingComplete(Landroid/content/Context;)Z
.end method

.method public isSmartSearchRankingEnabled(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public querySearchResults(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/settings/search/ranking/SearchResultsRankerCallback;)V
    .registers 4

    return-void
.end method

.method public searchRankingWarmup(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public searchResultClicked(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/settings/search/SearchResult;)V
    .registers 4

    return-void
.end method

.method public showFeedbackButton(Lcom/meizu/settings/search/SearchFragment;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public smartSearchRankingTimeoutMs(Landroid/content/Context;)J
    .registers 2

    const-wide/16 p0, 0x12c

    return-wide p0
.end method

.method public abstract updateIndexAsync(Landroid/content/Context;Lcom/meizu/settings/search/IndexingCallback;)V
.end method
