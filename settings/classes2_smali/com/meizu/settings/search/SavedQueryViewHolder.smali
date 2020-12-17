.class public Lcom/meizu/settings/search/SavedQueryViewHolder;
.super Lcom/meizu/settings/search/SearchViewHolder;
.source "SavedQueryViewHolder.java"


# instance fields
.field public final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020016

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/search/SavedQueryViewHolder;->titleView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic lambda$onBind$0(Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchResult;Landroid/view/View;)V
    .registers 3

    .line 41
    iget-object p1, p1, Lcom/meizu/settings/search/SearchResult;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/SearchFragment;->onSavedQueryClicked(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchResult;)V
    .registers 5

    .line 41
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/meizu/settings/search/-$$Lambda$SavedQueryViewHolder$aGkq3kyIYi7uZVRUiC8d7bR9GYk;

    invoke-direct {v1, p1, p2}, Lcom/meizu/settings/search/-$$Lambda$SavedQueryViewHolder$aGkq3kyIYi7uZVRUiC8d7bR9GYk;-><init>(Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchResult;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p0, p0, Lcom/meizu/settings/search/SavedQueryViewHolder;->titleView:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/meizu/settings/search/SearchResult;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
