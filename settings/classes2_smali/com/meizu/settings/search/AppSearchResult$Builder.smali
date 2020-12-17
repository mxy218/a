.class public Lcom/meizu/settings/search/AppSearchResult$Builder;
.super Lcom/meizu/settings/search/SearchResult$Builder;
.source "AppSearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/AppSearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/meizu/settings/search/SearchResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/meizu/settings/search/AppSearchResult;
    .registers 2

    .line 47
    new-instance v0, Lcom/meizu/settings/search/AppSearchResult;

    invoke-direct {v0, p0}, Lcom/meizu/settings/search/AppSearchResult;-><init>(Lcom/meizu/settings/search/AppSearchResult$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/meizu/settings/search/SearchResult;
    .registers 1

    .line 38
    invoke-virtual {p0}, Lcom/meizu/settings/search/AppSearchResult$Builder;->build()Lcom/meizu/settings/search/AppSearchResult;

    move-result-object p0

    return-object p0
.end method

.method public setAppInfo(Landroid/content/pm/ApplicationInfo;)Lcom/meizu/settings/search/SearchResult$Builder;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/meizu/settings/search/AppSearchResult$Builder;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method
