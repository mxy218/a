.class Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$1;
.super Lcom/meizu/settings/search/BaseSearchIndexProvider;
.source "ScreenZoomAndFontSizeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 177
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

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 181
    new-instance p2, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const p1, 0x7f121253

    .line 182
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 183
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const p1, 0x7f12125e

    .line 184
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/meizu/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 186
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
