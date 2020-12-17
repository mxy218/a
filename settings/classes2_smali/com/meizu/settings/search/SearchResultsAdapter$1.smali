.class Lcom/meizu/settings/search/SearchResultsAdapter$1;
.super Ljava/lang/Object;
.source "SearchResultsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/search/SearchResultsAdapter;->doAsyncRanking()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/search/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/search/SearchResultsAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/settings/search/SearchResultsAdapter;)V
    .registers 2

    .line 398
    iput-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter$1;->this$0:Lcom/meizu/settings/search/SearchResultsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/settings/search/SearchResult;Lcom/meizu/settings/search/SearchResult;)I
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResultsAdapter$1;->this$0:Lcom/meizu/settings/search/SearchResultsAdapter;

    iget p1, p1, Lcom/meizu/settings/search/SearchResult;->stableId:I

    invoke-virtual {v0, p1}, Lcom/meizu/settings/search/SearchResultsAdapter;->getRankingScoreByStableId(I)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 402
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter$1;->this$0:Lcom/meizu/settings/search/SearchResultsAdapter;

    iget p2, p2, Lcom/meizu/settings/search/SearchResult;->stableId:I

    invoke-virtual {p0, p2}, Lcom/meizu/settings/search/SearchResultsAdapter;->getRankingScoreByStableId(I)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1e

    const/4 p0, -0x1

    return p0

    :cond_1e
    if-nez p0, :cond_22

    const/4 p0, 0x0

    return p0

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 398
    check-cast p1, Lcom/meizu/settings/search/SearchResult;

    check-cast p2, Lcom/meizu/settings/search/SearchResult;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/search/SearchResultsAdapter$1;->compare(Lcom/meizu/settings/search/SearchResult;Lcom/meizu/settings/search/SearchResult;)I

    move-result p0

    return p0
.end method
