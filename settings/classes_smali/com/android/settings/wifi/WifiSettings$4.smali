.class Lcom/android/settings/wifi/WifiSettings$4;
.super Lcom/meizu/settings/search/BaseSearchIndexProvider;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1194
    invoke-direct {p0}, Lcom/meizu/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .registers 5
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

    .line 1198
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f05004d

    .line 1202
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1203
    new-instance v0, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const p1, 0x7f121992  # 1.9420006E38f

    .line 1204
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1205
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const p1, 0x7f120aad

    .line 1206
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const-string p1, "main_toggle_wifi"

    .line 1207
    iput-object p1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 1208
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    return-object p0
.end method
