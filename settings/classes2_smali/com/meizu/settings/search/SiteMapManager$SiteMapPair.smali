.class Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;
.super Ljava/lang/Object;
.source "SiteMapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/SiteMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SiteMapPair"
.end annotation


# instance fields
.field public final childClass:Ljava/lang/String;

.field public final childTitle:Ljava/lang/String;

.field public final parentClass:Ljava/lang/String;

.field public final parentTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;->parentClass:Ljava/lang/String;

    .line 205
    iput-object p2, p0, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;->parentTitle:Ljava/lang/String;

    .line 206
    iput-object p3, p0, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;->childClass:Ljava/lang/String;

    .line 207
    iput-object p4, p0, Lcom/meizu/settings/search/SiteMapManager$SiteMapPair;->childTitle:Ljava/lang/String;

    return-void
.end method
