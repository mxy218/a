.class public Lcom/meizu/settings/search/AppSearchResult;
.super Lcom/meizu/settings/search/SearchResult;
.source "AppSearchResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/search/AppSearchResult$Builder;
    }
.end annotation


# instance fields
.field public final info:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/search/AppSearchResult$Builder;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchResult;-><init>(Lcom/meizu/settings/search/SearchResult$Builder;)V

    .line 31
    iget-object p1, p1, Lcom/meizu/settings/search/AppSearchResult$Builder;->mInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/meizu/settings/search/AppSearchResult;->info:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public getAppUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 35
    new-instance v0, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/meizu/settings/search/AppSearchResult;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method
