.class Lcom/meizu/settings/security/ScreenPinningSettings$2;
.super Lcom/meizu/settings/search/BaseSearchIndexProvider;
.source "ScreenPinningSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/security/ScreenPinningSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 250
    invoke-direct {p0}, Lcom/meizu/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .registers 6
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

    .line 253
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 258
    new-instance v0, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121240

    .line 259
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 260
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 261
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {p1}, Lcom/meizu/settings/security/ScreenPinningSettings;->access$100(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 265
    new-instance v0, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const p1, 0x7f121241

    .line 266
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 267
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 268
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 271
    :cond_3e
    new-instance v0, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const p1, 0x7f12123e

    .line 272
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 273
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 274
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_55
    return-object p0
.end method
