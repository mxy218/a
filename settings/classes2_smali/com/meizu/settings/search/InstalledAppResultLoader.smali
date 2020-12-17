.class public Lcom/meizu/settings/search/InstalledAppResultLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "InstalledAppResultLoader.java"


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


# static fields
.field private static final LAUNCHER_PROBE:Landroid/content/Intent;


# instance fields
.field private mBreadcrumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHomeActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
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

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/InstalledAppResultLoader;->LAUNCHER_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/meizu/settings/search/SiteMapManager;)V
    .registers 6

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mHomeActivities:Ljava/util/List;

    .line 64
    iput-object p4, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    const-string p4, "user"

    .line 65
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mUserManager:Landroid/os/UserManager;

    .line 66
    iput-object p2, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 67
    iput-object p3, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mQuery:Ljava/lang/String;

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

    .line 223
    iget-object v0, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mBreadcrumb:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 224
    :cond_a
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mSiteMapManager:Lcom/meizu/settings/search/SiteMapManager;

    const-class v2, Lcom/meizu/settings/applications/ManageApplications;

    .line 226
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1201b6

    .line 227
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {v1, v0, v2, v3}, Lcom/meizu/settings/search/SiteMapManager;->buildBreadCrumb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mBreadcrumb:Ljava/util/List;

    .line 229
    :cond_23
    iget-object p0, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mBreadcrumb:Ljava/util/List;

    return-object p0
.end method

.method private getRank(I)I
    .registers 2

    const/4 p0, 0x6

    if-ge p1, p0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x3

    return p0
.end method

.method static getWordDifference(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_64

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_64

    .line 170
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 172
    array-length v0, p0

    .line 173
    array-length v2, p1

    if-le v2, v0, :cond_23

    return v1

    :cond_23
    const/4 v2, 0x0

    move v3, v2

    :cond_25
    if-ge v3, v0, :cond_64

    move v4, v2

    :cond_28
    add-int v5, v3, v4

    if-ge v5, v0, :cond_3a

    .line 183
    aget-char v6, p1, v4

    aget-char v7, p0, v5

    if-ne v6, v7, :cond_3a

    add-int/lit8 v4, v4, 0x1

    .line 185
    array-length v5, p1

    if-lt v4, v5, :cond_28

    .line 188
    array-length p0, p1

    sub-int/2addr v0, p0

    return v0

    .line 195
    :cond_3a
    array-length v3, p1

    sub-int v4, v0, v5

    if-le v3, v4, :cond_40

    return v1

    :cond_40
    :goto_40
    if-ge v5, v0, :cond_4e

    add-int/lit8 v3, v5, 0x1

    .line 201
    aget-char v4, p0, v5

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_4f

    move v5, v3

    goto :goto_40

    :cond_4e
    move v3, v5

    :cond_4f
    :goto_4f
    if-ge v3, v0, :cond_25

    .line 204
    aget-char v4, p0, v3

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_25

    aget-char v4, p0, v3

    .line 205
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_25

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_64
    :goto_64
    return v1
.end method

.method private isPackageInList(Ljava/util/List;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 215
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private shouldIncludeAsCandidate(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/UserInfo;)Z
    .registers 7

    .line 114
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 120
    :cond_6
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    if-nez v1, :cond_3b

    and-int/2addr v0, v2

    if-nez v0, :cond_11

    goto :goto_3b

    .line 125
    :cond_11
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/meizu/settings/search/InstalledAppResultLoader;->LAUNCHER_PROBE:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0xc0200

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_32

    .line 133
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_32

    return v2

    .line 137
    :cond_32
    iget-object p2, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mHomeActivities:Ljava/util/List;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/meizu/settings/search/InstalledAppResultLoader;->isPackageInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3b
    :goto_3b
    return v2
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 1

    .line 47
    invoke-virtual {p0}, Lcom/meizu/settings/search/InstalledAppResultLoader;->loadInBackground()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mHomeActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 75
    iget-object v1, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mHomeActivities:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 77
    iget-object v1, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    .line 79
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 80
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 81
    invoke-direct {p0, v3, v1}, Lcom/meizu/settings/search/InstalledAppResultLoader;->shouldIncludeAsCandidate(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_28

    .line 84
    :cond_3b
    iget-object v5, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 85
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mQuery:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/meizu/settings/search/InstalledAppResultLoader;->getWordDifference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4f

    goto :goto_28

    .line 89
    :cond_4f
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "package"

    .line 91
    invoke-static {v9, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/16 v7, 0x22

    const-string v8, "SettingsActivity.EXTRA_SOURCE_METRICS_CATEGORY"

    .line 92
    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 95
    new-instance v7, Lcom/meizu/settings/search/AppSearchResult$Builder;

    invoke-direct {v7}, Lcom/meizu/settings/search/AppSearchResult$Builder;-><init>()V

    .line 96
    invoke-virtual {v7, v3}, Lcom/meizu/settings/search/AppSearchResult$Builder;->setAppInfo(Landroid/content/pm/ApplicationInfo;)Lcom/meizu/settings/search/SearchResult$Builder;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v9, v8, v4

    const/4 v9, 0x1

    iget v10, v1, Landroid/content/pm/UserInfo;->id:I

    .line 97
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/meizu/settings/search/SearchResult$Builder;->setStableId(I)Lcom/meizu/settings/search/SearchResult$Builder;

    iget-object v8, p0, Lcom/meizu/settings/search/InstalledAppResultLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 98
    invoke-virtual {v3, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/meizu/settings/search/SearchResult$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 99
    invoke-direct {p0, v5}, Lcom/meizu/settings/search/InstalledAppResultLoader;->getRank(I)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/meizu/settings/search/SearchResult$Builder;->setRank(I)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 100
    invoke-direct {p0}, Lcom/meizu/settings/search/InstalledAppResultLoader;->getBreadCrumb()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/meizu/settings/search/SearchResult$Builder;->addBreadcrumbs(Ljava/util/List;)Lcom/meizu/settings/search/SearchResult$Builder;

    new-instance v3, Lcom/meizu/settings/search/ResultPayload;

    invoke-direct {v3, v6}, Lcom/meizu/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {v7, v3}, Lcom/meizu/settings/search/SearchResult$Builder;->setPayload(Lcom/meizu/settings/search/ResultPayload;)Lcom/meizu/settings/search/SearchResult$Builder;

    .line 102
    invoke-virtual {v7}, Lcom/meizu/settings/search/AppSearchResult$Builder;->build()Lcom/meizu/settings/search/AppSearchResult;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_b6
    return-object v0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .registers 2

    .line 47
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/search/InstalledAppResultLoader;->onDiscardResult(Ljava/util/Set;)V

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
