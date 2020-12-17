.class public Lcom/meizu/settings/search/AccessibilityServiceResultLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "AccessibilityServiceResultLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Ljava/util/Set<",
        "+",
        "Lcom/meizu/settings/search/SearchResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBreadcrumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field final mQuery:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/settings/search/SiteMapManager;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p3, p0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p3, "accessibility"

    .line 59
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 60
    iput-object p2, p0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->mQuery:Ljava/lang/String;

    return-void
.end method

.method private getBreadCrumb()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->mBreadcrumb:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 109
    :cond_a
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    .line 111
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200bc

    .line 112
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {v1, v0, v2, v3}, Lcom/meizu/settings/search/SiteMapManager;->buildBreadCrumb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->mBreadcrumb:Ljava/util/List;

    .line 114
    :cond_23
    iget-object p0, p0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->mBreadcrumb:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 1

    .line 41
    invoke-virtual {p0}, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->loadInBackground()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 66
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 68
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    const v3, 0x7f1200bc

    .line 69
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-nez v4, :cond_29

    goto :goto_1a

    .line 74
    :cond_29
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 75
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_34

    goto :goto_1a

    .line 78
    :cond_34
    iget-object v4, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 79
    iget-object v6, p0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 80
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->mQuery:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/meizu/settings/search/InstalledAppResultLoader;->getWordDifference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4a

    goto :goto_1a

    .line 85
    :cond_4a
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v8

    if-nez v8, :cond_58

    const v5, 0x7f080469

    .line 86
    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_5e

    .line 88
    :cond_58
    iget-object v8, p0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 90
    :goto_5e
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 92
    const-class v8, Lcom/android/settings/accessibility/AccessibilitySettings;

    .line 93
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 92
    invoke-static {v1, v8, v4, v3}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->buildSubsettingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 95
    new-instance v9, Lcom/meizu/settings/search/SearchResult$Builder;

    invoke-direct {v9}, Lcom/meizu/settings/search/SearchResult$Builder;-><init>()V

    .line 96
    invoke-virtual {v9, v6}, Lcom/meizu/settings/search/SearchResult$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 97
    invoke-direct {p0}, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->getBreadCrumb()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/meizu/settings/search/SearchResult$Builder;->addBreadcrumbs(Ljava/util/List;)Lcom/meizu/settings/search/SearchResult$Builder;

    new-instance v6, Lcom/meizu/settings/search/ResultPayload;

    invoke-direct {v6, v8}, Lcom/meizu/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {v9, v6}, Lcom/meizu/settings/search/SearchResult$Builder;->setPayload(Lcom/meizu/settings/search/ResultPayload;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 99
    invoke-virtual {v9, v7}, Lcom/meizu/settings/search/SearchResult$Builder;->setRank(I)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 100
    invoke-virtual {v9, v5}, Lcom/meizu/settings/search/SearchResult$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/meizu/settings/search/SearchResult$Builder;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .line 101
    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/meizu/settings/search/SearchResult$Builder;->setStableId(I)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 102
    invoke-virtual {v9}, Lcom/meizu/settings/search/SearchResult$Builder;->build()Lcom/meizu/settings/search/SearchResult;

    move-result-object v4

    .line 95
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_ab
    return-object v0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .registers 2

    .line 41
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;->onDiscardResult(Ljava/util/Set;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
