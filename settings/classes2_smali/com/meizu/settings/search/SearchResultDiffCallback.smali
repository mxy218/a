.class public Lcom/meizu/settings/search/SearchResultDiffCallback;
.super Lflyme/support/v7/util/DiffUtil$Callback;
.source "SearchResultDiffCallback.java"


# instance fields
.field private mNewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mOldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lflyme/support/v7/util/DiffUtil$Callback;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/meizu/settings/search/SearchResultDiffCallback;->mOldList:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/meizu/settings/search/SearchResultDiffCallback;->mNewList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/search/SearchResult;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/search/SearchResult;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(II)Z
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/search/SearchResult;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/search/SearchResult;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getNewListSize()I
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultDiffCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOldListSize()I
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultDiffCallback;->mOldList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
