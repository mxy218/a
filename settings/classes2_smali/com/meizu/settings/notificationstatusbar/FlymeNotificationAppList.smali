.class public Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;
.super Lcom/meizu/settings/PinnedHeaderListFragment;
.source "FlymeNotificationAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;,
        Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$RefeshAppsListRunnable;,
        Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;,
        Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;,
        Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;,
        Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;
    }
.end annotation


# static fields
.field public static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;

.field private mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mCurrentFilterObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 490
    new-instance v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$2;

    invoke-direct {v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$2;-><init>()V

    sput-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 86
    invoke-direct {p0}, Lcom/meizu/settings/PinnedHeaderListFragment;-><init>()V

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mRows:Landroid/util/ArrayMap;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mSections:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    invoke-direct {v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    .line 127
    new-instance v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$1;-><init>(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mCurrentFilterObserver:Landroid/database/ContentObserver;

    .line 567
    new-instance v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$3;-><init>(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/util/ArrayMap;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mRows:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/util/Comparator;
    .registers 1

    .line 86
    sget-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Ljava/util/ArrayList;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mSections:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/os/Handler;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Ljava/util/ArrayList;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->refreshDisplayedItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mAdapter:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/view/LayoutInflater;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/widget/AlphabetIndexer;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mIndexer:Landroid/widget/AlphabetIndexer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/pm/LauncherApps;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Landroid/content/pm/ApplicationInfo;ZZ)V
    .registers 4

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->addAppRow(Landroid/content/pm/ApplicationInfo;ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private addAppRow(Landroid/content/pm/ApplicationInfo;ZZ)V
    .registers 7

    .line 645
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 646
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 651
    :cond_b
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mBackend:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;

    invoke-static {v1, p1, v2, p2, p3}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;ZZ)Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    move-result-object p1

    .line 652
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 546
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_78

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 547
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 548
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 549
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    const-string v1, "FlymeNotificationAppList"

    if-nez v0, :cond_41

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring notification preference activity ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") for unknown package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 556
    :cond_41
    iget-object v2, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v2, :cond_66

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 562
    :cond_66
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 563
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_4

    :cond_78
    return-void
.end method

.method public static collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;",
            ">;)V"
        }
    .end annotation

    .line 538
    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 539
    invoke-static {p0, p1, v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    return-void
.end method

.method public static forceAuthorityManagement(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 7

    const/4 v0, 0x0

    .line 910
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 912
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_5a

    .line 913
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "flyme.notification.AuthorityManagement"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "FlymeNotificationAppList"

    .line 914
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceOpenAuthorityManagement -> packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isSystemApp:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", string:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "force_open"

    .line 916
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    const/4 p0, 0x1

    return p0

    :cond_49
    if-eqz p2, :cond_55

    const-string p1, "force_close"

    .line 918
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_56

    if-eqz p0, :cond_55

    const/4 p0, -0x1

    return p0

    :cond_55
    return v0

    :catch_56
    move-exception p0

    .line 924
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5a
    return v0
.end method

.method private getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    const-string p0, "*"

    if-eqz p1, :cond_24

    .line 275
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_24

    :cond_b
    const/4 v0, 0x0

    .line 276
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    const/16 v0, 0x41

    if-ge p1, v0, :cond_19

    return-object p0

    :cond_19
    const/16 p0, 0x5a

    if-le p1, p0, :cond_20

    const-string p0, "**"

    return-object p0

    .line 279
    :cond_20
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    :cond_24
    :goto_24
    return-object p0
.end method

.method public static isAppNotificationCanManage(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 3

    .line 895
    invoke-static {p0, p1, p2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->forceAuthorityManagement(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_8

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public static isAppRejectManage(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 3

    .line 899
    invoke-static {p0, p1, p2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->forceAuthorityManagement(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;ZZ)Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;
    .registers 9

    .line 500
    new-instance v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    invoke-direct {v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;-><init>()V

    .line 501
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    .line 502
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->uid:I

    .line 504
    :try_start_d
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_14

    goto :goto_31

    :catchall_14
    move-exception v1

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading application label for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlymeNotificationAppList"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    iget-object v1, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    .line 509
    :goto_31
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 510
    iget-object p0, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v1, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, p0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->banned:Z

    .line 517
    iget-object p0, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v1, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, p0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_50

    move p0, v2

    goto :goto_51

    :cond_50
    move p0, v3

    :goto_51
    iput-boolean p0, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->floatEnable:Z

    .line 518
    iget-object p0, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v1, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, p0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->remindEnable:Z

    .line 519
    invoke-static {}, Lcom/meizu/settings/utils/HanziToPinyin;->getInstance()Lcom/meizu/settings/utils/HanziToPinyin;

    move-result-object p0

    iget-object v1, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/settings/utils/HanziToPinyin;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->lableToPinyin:Ljava/lang/String;

    .line 520
    iget-object p0, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v1, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, p0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->getPackageDesktopNewTipsEnable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_86

    if-eqz p3, :cond_86

    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string p1, "com.meizu.flyme.launcher"

    .line 521
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_86

    if-nez p4, :cond_86

    goto :goto_87

    :cond_86
    move v2, v3

    :goto_87
    iput-boolean v2, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->desktopNotificationEnable:Z

    .line 523
    iget-object p0, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Backend;->getUserFilter(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->userFilter:I

    return-object v0
.end method

.method private loadAppsList()V
    .registers 1

    .line 271
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 531
    sget-object v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private refreshDisplayedItems(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;",
            ">;)V"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mAdapter:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 660
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 664
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_18
    if-ge v4, v1, :cond_43

    .line 667
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    .line 668
    iget-object v7, v6, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->lableToPinyin:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    const-string v7, ""

    goto :goto_31

    .line 669
    :cond_2b
    iget-object v7, v6, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->lableToPinyin:Ljava/lang/String;

    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_31
    new-array v8, v2, [Ljava/lang/String;

    aput-object v7, v8, v3

    .line 670
    invoke-virtual {v0, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 673
    iput-boolean v5, v6, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->first:Z

    .line 674
    iget-object v5, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mAdapter:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move v5, v3

    goto :goto_18

    .line 677
    :cond_43
    new-instance p1, Landroid/widget/AlphabetIndexer;

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mContext:Landroid/content/Context;

    const v2, 0x7f120860

    .line 678
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v3, v1}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 679
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mListViewState:Landroid/os/Parcelable;

    if-eqz p1, :cond_60

    .line 683
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_60
    return-void
.end method

.method private repositionScrollbar()V
    .registers 5

    .line 284
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollBarSize()I

    move-result v0

    int-to-float v0, v0

    .line 285
    invoke-virtual {p0}, Landroid/app/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    .line 283
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 286
    invoke-virtual {p0}, Landroid/app/ListFragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_2c

    return-void

    .line 291
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 291
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private startAppNotificationSetting(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;)V
    .registers 9

    .line 857
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 858
    iget-object v0, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget v0, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->uid:I

    const-string v1, "app_uid"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 860
    iget-object v0, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    const-string v1, "has_settings_intent"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 861
    iget-object v0, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    const-string v1, "settings_intent"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 862
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mContext:Landroid/content/Context;

    const-class p0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    iget-object v6, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 234
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 235
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->repositionScrollbar()V

    .line 236
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mAdapter:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 163
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mContext:Landroid/content/Context;

    .line 166
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "current_notification_filter_value"

    .line 167
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mCurrentFilterObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 166
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 171
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    .line 172
    new-instance p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;

    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;-><init>(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mAdapter:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;

    .line 173
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    .line 174
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mContext:Landroid/content/Context;

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 175
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    const p1, 0x7f120f67

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p0, 0x7f0d0245

    const/4 p3, 0x0

    .line 188
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 2

    .line 181
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 182
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mCurrentFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 248
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mListViewState:Landroid/os/Parcelable;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    .line 869
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int p1, p3, p1

    if-gez p1, :cond_15

    const/4 p0, 0x1

    if-ne p3, p0, :cond_10

    goto :goto_20

    :cond_10
    const/4 p0, 0x2

    if-ne p3, p0, :cond_14

    goto :goto_20

    :cond_14
    return-void

    .line 889
    :cond_15
    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mAdapter:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;

    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    invoke-direct {p0, p1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->startAppNotificationSetting(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;)V

    :goto_20
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 241
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 243
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mListViewState:Landroid/os/Parcelable;

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 254
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 255
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->loadAppsList()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10

    .line 193
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPadding(Landroid/content/Context;[I)Landroid/widget/ListView$DividerPadding;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 217
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 226
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 228
    :cond_1f
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/widget/FastScrollLetterListview;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/FastScrollLetterListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const v3, 0x7f070177

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setLetterParam(IIIIII)V

    return-void
.end method
