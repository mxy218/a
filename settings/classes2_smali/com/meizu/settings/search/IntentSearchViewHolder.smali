.class public Lcom/meizu/settings/search/IntentSearchViewHolder;
.super Lcom/meizu/settings/search/SearchViewHolder;
.source "IntentSearchViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBind$0$IntentSearchViewHolder(Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchResult;Landroid/view/View;)V
    .registers 5

    const/4 p3, 0x0

    new-array v0, p3, [Landroid/util/Pair;

    .line 52
    invoke-virtual {p1, p0, p2, v0}, Lcom/meizu/settings/search/SearchFragment;->onSearchResultClicked(Lcom/meizu/settings/search/SearchViewHolder;Lcom/meizu/settings/search/SearchResult;[Landroid/util/Pair;)V

    .line 53
    iget-object p0, p2, Lcom/meizu/settings/search/SearchResult;->payload:Lcom/meizu/settings/search/ResultPayload;

    invoke-virtual {p0}, Lcom/meizu/settings/search/ResultPayload;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 55
    instance-of v0, p2, Lcom/meizu/settings/search/AppSearchResult;

    if-eqz v0, :cond_1e

    .line 56
    check-cast p2, Lcom/meizu/settings/search/AppSearchResult;

    .line 57
    invoke-virtual {p2}, Lcom/meizu/settings/search/AppSearchResult;->getAppUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 58
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_56

    .line 60
    :cond_1e
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p0, p3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_36

    .line 62
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_36

    .line 63
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_56

    .line 65
    :cond_36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot launch search result, title: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/meizu/settings/search/SearchResult;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IntentSearchViewHolder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return-void
.end method

.method public onBind(Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchResult;)V
    .registers 5

    .line 49
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/search/SearchViewHolder;->onBind(Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchResult;)V

    .line 51
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/meizu/settings/search/-$$Lambda$IntentSearchViewHolder$yvQFbq_E83yvfNuGLrLaL7uBJz8;

    invoke-direct {v1, p0, p1, p2}, Lcom/meizu/settings/search/-$$Lambda$IntentSearchViewHolder$yvQFbq_E83yvfNuGLrLaL7uBJz8;-><init>(Lcom/meizu/settings/search/IntentSearchViewHolder;Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchResult;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
