.class Lcom/android/settings/accessibility/MagnificationPreferenceFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "MagnificationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f160004

    .line 170
    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 171
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isApplicable(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method
