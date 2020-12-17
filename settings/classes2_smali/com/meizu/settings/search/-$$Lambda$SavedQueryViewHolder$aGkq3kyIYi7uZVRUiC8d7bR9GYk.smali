.class public final synthetic Lcom/meizu/settings/search/-$$Lambda$SavedQueryViewHolder$aGkq3kyIYi7uZVRUiC8d7bR9GYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/meizu/settings/search/SearchFragment;

.field private final synthetic f$1:Lcom/meizu/settings/search/SearchResult;


# direct methods
.method public synthetic constructor <init>(Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchResult;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/search/-$$Lambda$SavedQueryViewHolder$aGkq3kyIYi7uZVRUiC8d7bR9GYk;->f$0:Lcom/meizu/settings/search/SearchFragment;

    iput-object p2, p0, Lcom/meizu/settings/search/-$$Lambda$SavedQueryViewHolder$aGkq3kyIYi7uZVRUiC8d7bR9GYk;->f$1:Lcom/meizu/settings/search/SearchResult;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/meizu/settings/search/-$$Lambda$SavedQueryViewHolder$aGkq3kyIYi7uZVRUiC8d7bR9GYk;->f$0:Lcom/meizu/settings/search/SearchFragment;

    iget-object p0, p0, Lcom/meizu/settings/search/-$$Lambda$SavedQueryViewHolder$aGkq3kyIYi7uZVRUiC8d7bR9GYk;->f$1:Lcom/meizu/settings/search/SearchResult;

    invoke-static {v0, p0, p1}, Lcom/meizu/settings/search/SavedQueryViewHolder;->lambda$onBind$0(Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchResult;Landroid/view/View;)V

    return-void
.end method
