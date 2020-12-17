.class public Lcom/meizu/settings/search/SearchFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SearchFeatureProviderImpl.java"

# interfaces
.implements Lcom/meizu/settings/search/SearchFeatureProvider;


# instance fields
.field private mDatabaseIndexingManager:Lcom/meizu/settings/search/DatabaseIndexingManager;

.field private mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->hasSpecialCharacter(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_12

    .line 122
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasSpecialCharacter(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    move v0, p0

    .line 130
    :goto_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 131
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 132
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_20
    return p0
.end method


# virtual methods
.method public getAccessibilityServiceResultLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/search/AccessibilityServiceResultLoader;
    .registers 4

    .line 58
    new-instance v0, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;

    invoke-direct {p0, p2}, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->cleanQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-virtual {p0}, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->getSiteMapManager()Lcom/meizu/settings/search/SiteMapManager;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lcom/meizu/settings/search/AccessibilityServiceResultLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/settings/search/SiteMapManager;)V

    return-object v0
.end method

.method public getDatabaseSearchLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseResultLoader;
    .registers 4

    .line 45
    new-instance v0, Lcom/meizu/settings/search/DatabaseResultLoader;

    invoke-direct {p0, p2}, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->cleanQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->getSiteMapManager()Lcom/meizu/settings/search/SiteMapManager;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lcom/meizu/settings/search/DatabaseResultLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/settings/search/SiteMapManager;)V

    return-object v0
.end method

.method public getIndexingManager(Landroid/content/Context;)Lcom/meizu/settings/search/DatabaseIndexingManager;
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->mDatabaseIndexingManager:Lcom/meizu/settings/search/DatabaseIndexingManager;

    if-nez v0, :cond_13

    .line 78
    new-instance v0, Lcom/meizu/settings/search/DatabaseIndexingManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/meizu/settings/search/DatabaseIndexingManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->mDatabaseIndexingManager:Lcom/meizu/settings/search/DatabaseIndexingManager;

    .line 81
    :cond_13
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->mDatabaseIndexingManager:Lcom/meizu/settings/search/DatabaseIndexingManager;

    return-object p0
.end method

.method public getInputDeviceResultLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/search/InputDeviceResultLoader;
    .registers 4

    .line 64
    new-instance v0, Lcom/meizu/settings/search/InputDeviceResultLoader;

    invoke-direct {p0, p2}, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->cleanQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->getSiteMapManager()Lcom/meizu/settings/search/SiteMapManager;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lcom/meizu/settings/search/InputDeviceResultLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/settings/search/SiteMapManager;)V

    return-object v0
.end method

.method public getInstalledAppSearchLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/settings/search/InstalledAppResultLoader;
    .registers 5

    .line 50
    new-instance v0, Lcom/meizu/settings/search/InstalledAppResultLoader;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 52
    invoke-direct {p0, p2}, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->cleanQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->getSiteMapManager()Lcom/meizu/settings/search/SiteMapManager;

    move-result-object p0

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/meizu/settings/search/InstalledAppResultLoader;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/meizu/settings/search/SiteMapManager;)V

    return-object v0
.end method

.method public getSavedQueryLoader(Landroid/content/Context;)Lcom/meizu/settings/search/SavedQueryLoader;
    .registers 3

    .line 71
    new-instance v0, Lcom/meizu/settings/search/SavedQueryLoader;

    invoke-virtual {p0}, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->getSiteMapManager()Lcom/meizu/settings/search/SiteMapManager;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/meizu/settings/search/SavedQueryLoader;-><init>(Landroid/content/Context;Lcom/meizu/settings/search/SiteMapManager;)V

    return-object v0
.end method

.method public getSiteMapManager()Lcom/meizu/settings/search/SiteMapManager;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    if-nez v0, :cond_b

    .line 91
    new-instance v0, Lcom/meizu/settings/search/SiteMapManager;

    invoke-direct {v0}, Lcom/meizu/settings/search/SiteMapManager;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    .line 93
    :cond_b
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    return-object p0
.end method

.method public isIndexingComplete(Landroid/content/Context;)Z
    .registers 2

    .line 86
    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->getIndexingManager(Landroid/content/Context;)Lcom/meizu/settings/search/DatabaseIndexingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/search/DatabaseIndexingManager;->isIndexingComplete()Z

    move-result p0

    return p0
.end method

.method public updateIndexAsync(Landroid/content/Context;Lcom/meizu/settings/search/IndexingCallback;)V
    .registers 3

    .line 101
    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/SearchFeatureProviderImpl;->getIndexingManager(Landroid/content/Context;)Lcom/meizu/settings/search/DatabaseIndexingManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager;->indexDatabase(Lcom/meizu/settings/search/IndexingCallback;)V

    return-void
.end method
