.class Lcom/meizu/settings/applications/ManageApplications$4;
.super Lcom/meizu/settings/search/BaseSearchIndexProvider;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2173
    invoke-direct {p0}, Lcom/meizu/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 2176
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2178
    new-instance p2, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1201b6

    .line 2179
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2180
    iget-object p1, p2, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object p1, p2, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string p1, "applications_settings"

    .line 2181
    iput-object p1, p2, Lcom/meizu/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 2182
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
