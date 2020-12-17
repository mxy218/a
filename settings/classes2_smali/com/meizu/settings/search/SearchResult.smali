.class public Lcom/meizu/settings/search/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/search/SearchResult$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/meizu/settings/search/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final breadcrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final payload:Lcom/meizu/settings/search/ResultPayload;

.field public final rank:I

.field public final rowId:Ljava/lang/String;

.field public final stableId:I

.field public final summary:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;

.field public final viewType:I


# direct methods
.method protected constructor <init>(Lcom/meizu/settings/search/SearchResult$Builder;)V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget v0, p1, Lcom/meizu/settings/search/SearchResult$Builder;->mStableId:I

    iput v0, p0, Lcom/meizu/settings/search/SearchResult;->stableId:I

    .line 98
    iget-object v0, p1, Lcom/meizu/settings/search/SearchResult$Builder;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchResult;->title:Ljava/lang/CharSequence;

    .line 99
    iget-object v0, p1, Lcom/meizu/settings/search/SearchResult$Builder;->mSummary:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchResult;->summary:Ljava/lang/CharSequence;

    .line 100
    iget-object v0, p1, Lcom/meizu/settings/search/SearchResult$Builder;->mBreadcrumbs:Ljava/util/List;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchResult;->breadcrumbs:Ljava/util/List;

    .line 101
    iget v0, p1, Lcom/meizu/settings/search/SearchResult$Builder;->mRank:I

    iput v0, p0, Lcom/meizu/settings/search/SearchResult;->rank:I

    .line 102
    iget-object v0, p1, Lcom/meizu/settings/search/SearchResult$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchResult;->icon:Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object v0, p1, Lcom/meizu/settings/search/SearchResult$Builder;->mResultPayload:Lcom/meizu/settings/search/ResultPayload;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchResult;->payload:Lcom/meizu/settings/search/ResultPayload;

    .line 104
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResult;->payload:Lcom/meizu/settings/search/ResultPayload;

    invoke-virtual {v0}, Lcom/meizu/settings/search/ResultPayload;->getType()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/search/SearchResult;->viewType:I

    .line 106
    iget-object p1, p1, Lcom/meizu/settings/search/SearchResult$Builder;->mRowId:Ljava/lang/String;

    iput-object p1, p0, Lcom/meizu/settings/search/SearchResult;->rowId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/meizu/settings/search/SearchResult;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 115
    :cond_4
    iget p0, p0, Lcom/meizu/settings/search/SearchResult;->rank:I

    iget p1, p1, Lcom/meizu/settings/search/SearchResult;->rank:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lcom/meizu/settings/search/SearchResult;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/SearchResult;->compareTo(Lcom/meizu/settings/search/SearchResult;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 123
    :cond_4
    instance-of v1, p1, Lcom/meizu/settings/search/SearchResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 126
    :cond_a
    iget p0, p0, Lcom/meizu/settings/search/SearchResult;->stableId:I

    check-cast p1, Lcom/meizu/settings/search/SearchResult;

    iget p1, p1, Lcom/meizu/settings/search/SearchResult;->stableId:I

    if-ne p0, p1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 131
    iget p0, p0, Lcom/meizu/settings/search/SearchResult;->stableId:I

    return p0
.end method
