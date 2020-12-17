.class Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;
.super Ljava/lang/Object;
.source "DatabaseIndexingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/DatabaseIndexingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateData"
.end annotation


# instance fields
.field public dataToDisable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public dataToUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public nonIndexableKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 1059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->dataToDisable:Ljava/util/List;

    .line 1060
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;)V
    .registers 4

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 1065
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->dataToDisable:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->dataToDisable:Ljava/util/List;

    .line 1066
    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1074
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1075
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->dataToDisable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1076
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public copy()Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;
    .registers 2

    .line 1070
    new-instance v0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;

    invoke-direct {v0, p0}, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;-><init>(Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;)V

    return-object v0
.end method
