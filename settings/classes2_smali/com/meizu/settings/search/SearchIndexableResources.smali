.class public final Lcom/meizu/settings/search/SearchIndexableResources;
.super Ljava/lang/Object;
.source "SearchIndexableResources.java"


# static fields
.field private static sNotGuestResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation
.end field

.field static final sResMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/settings/search/SearchIndexableResources;->sNotGuestResMap:Ljava/util/HashMap;

    .line 74
    sget-object v0, Lcom/meizu/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/meizu/settings/search/FlymeSearchIndexableResources;->addSearchIndex(Ljava/util/HashMap;)V

    .line 75
    sget-object v0, Lcom/meizu/settings/search/SearchIndexableResources;->sNotGuestResMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/meizu/settings/search/FlymeSearchIndexableResources;->addNotGuestResMap(Ljava/util/HashMap;)V

    return-void
.end method

.method static addIndex(Ljava/lang/Class;II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-static {p0, p1, p2, v0}, Lcom/meizu/settings/search/SearchIndexableResources;->addIndex(Ljava/lang/Class;IILjava/lang/String;)V

    return-void
.end method

.method static addIndex(Ljava/lang/Class;IILjava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 56
    new-instance v0, Landroid/provider/SearchIndexableResource;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 59
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 60
    iput-object p3, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    const-string p1, "subsetting_target_package"

    .line 61
    iput-object p1, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 64
    :cond_16
    sget-object p1, Lcom/meizu/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;
    .registers 2

    .line 176
    sget-object v0, Lcom/meizu/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/provider/SearchIndexableResource;

    return-object p0
.end method

.method public static values(Z)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 186
    sget-object p0, Lcom/meizu/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 188
    :cond_9
    sget-object p0, Lcom/meizu/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    .line 189
    sget-object v0, Lcom/meizu/settings/search/SearchIndexableResources;->sNotGuestResMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 190
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
