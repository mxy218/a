.class public Lcom/meizu/settings/search/SearchResult$Builder;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mBreadcrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mRank:I

.field protected mResultPayload:Lcom/meizu/settings/search/ResultPayload;

.field protected mRowId:Ljava/lang/String;

.field protected mStableId:I

.field protected mSummary:Ljava/lang/CharSequence;

.field protected mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    .line 138
    iput v0, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mRank:I

    return-void
.end method


# virtual methods
.method public addBreadcrumbs(Ljava/util/List;)Lcom/meizu/settings/search/SearchResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/meizu/settings/search/SearchResult$Builder;"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mBreadcrumbs:Ljava/util/List;

    return-object p0
.end method

.method public addRowId(Ljava/lang/String;)Lcom/meizu/settings/search/SearchResult$Builder;
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mRowId:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/meizu/settings/search/SearchResult;
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 187
    iget v0, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mStableId:I

    if-eqz v0, :cond_1e

    .line 190
    iget-object v0, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mResultPayload:Lcom/meizu/settings/search/ResultPayload;

    if-eqz v0, :cond_16

    .line 193
    new-instance v0, Lcom/meizu/settings/search/SearchResult;

    invoke-direct {v0, p0}, Lcom/meizu/settings/search/SearchResult;-><init>(Lcom/meizu/settings/search/SearchResult$Builder;)V

    return-object v0

    .line 191
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SearchResult missing Payload argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No stable ID on SearchResult with title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SearchResult"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SearchResult missing stableId argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SearchResult missing title argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/meizu/settings/search/SearchResult$Builder;
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setPayload(Lcom/meizu/settings/search/ResultPayload;)Lcom/meizu/settings/search/SearchResult$Builder;
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mResultPayload:Lcom/meizu/settings/search/ResultPayload;

    return-object p0
.end method

.method public setRank(I)Lcom/meizu/settings/search/SearchResult$Builder;
    .registers 3

    if-ltz p1, :cond_8

    const/16 v0, 0x9

    if-gt p1, v0, :cond_8

    .line 163
    iput p1, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mRank:I

    :cond_8
    return-object p0
.end method

.method public setStableId(I)Lcom/meizu/settings/search/SearchResult$Builder;
    .registers 2

    .line 179
    iput p1, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mStableId:I

    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Lcom/meizu/settings/search/SearchResult$Builder;
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/meizu/settings/search/SearchResult$Builder;
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/meizu/settings/search/SearchResult$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
