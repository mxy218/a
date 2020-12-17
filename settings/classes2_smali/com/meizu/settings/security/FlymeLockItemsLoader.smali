.class public Lcom/meizu/settings/security/FlymeLockItemsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "FlymeLockItemsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lcom/meizu/settings/widget/MzAppEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessControlManager:Lmeizu/security/AccessControlManager;

.field private mAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFileterPkgNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupCounts:[I

.field final mLastConfig:Lcom/meizu/settings/AppListBaseSettings$InterestingConfigChanges;

.field private mLauncherNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageObserver:Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 32
    new-instance v0, Lcom/meizu/settings/AppListBaseSettings$InterestingConfigChanges;

    invoke-direct {v0}, Lcom/meizu/settings/AppListBaseSettings$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mLastConfig:Lcom/meizu/settings/AppListBaseSettings$InterestingConfigChanges;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mAppMap:Ljava/util/HashMap;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 37
    fill-array-data v1, :array_80

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mGroupCounts:[I

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mLauncherNames:Ljava/util/HashMap;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mFileterPkgNames:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Lcom/meizu/settings/security/FlymeLockItemsLoader$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeLockItemsLoader$1;-><init>(Lcom/meizu/settings/security/FlymeLockItemsLoader;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 50
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 51
    iput-object p3, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mLauncherNames:Ljava/util/HashMap;

    .line 52
    iput-object p4, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mGroupCounts:[I

    .line 53
    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mAppMap:Ljava/util/HashMap;

    const-string p2, "access_control"

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmeizu/security/AccessControlManager;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 55
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mContext:Landroid/content/Context;

    .line 57
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mFileterPkgNames:Ljava/util/ArrayList;

    const-string p2, "com.meizu.flyme.launcher"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mFileterPkgNames:Ljava/util/ArrayList;

    const-string p2, "com.android.alarmclock"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mFileterPkgNames:Ljava/util/ArrayList;

    const-string p2, "com.sohu.inputmethod.sogou"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mFileterPkgNames:Ljava/util/ArrayList;

    const-string p2, "com.android.stk"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mFileterPkgNames:Ljava/util/ArrayList;

    const-string p2, "com.meizu.flyme.weather"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mFileterPkgNames:Ljava/util/ArrayList;

    const-string p2, "com.android.utk"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mFileterPkgNames:Ljava/util/ArrayList;

    const-string p1, "com.meizu.account"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_80
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    .line 28
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockItemsLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 141
    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockItemsLoader;->onReleaseResources(Ljava/util/List;)V

    .line 145
    :cond_b
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 148
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 1

    .line 28
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockItemsLoader;->loadInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 71
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 74
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mLauncherNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 75
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mGroupCounts:[I

    const/4 v4, 0x0

    aput v4, v2, v4

    .line 76
    aput v4, v2, v3

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    .line 80
    :goto_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e3

    .line 81
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 82
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_df

    .line 84
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 85
    iget-object v10, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mFileterPkgNames:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    goto/16 :goto_df

    .line 88
    :cond_4e
    iget-object v10, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mLauncherNames:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_80

    .line 89
    iget-object v10, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mLauncherNames:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 90
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "|"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 91
    iget-object v11, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mLauncherNames:Ljava/util/HashMap;

    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 93
    :cond_80
    iget-object v10, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mLauncherNames:Ljava/util/HashMap;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_91
    iget-object v10, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9a

    goto :goto_df

    .line 98
    :cond_9a
    iget-object v10, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v10, v9}, Lmeizu/security/AccessControlManager;->isAppProtected2(Ljava/lang/String;)Z

    move-result v10

    .line 99
    new-instance v11, Lcom/meizu/settings/widget/MzAppEntry;

    iget-object v12, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, p0, v8, v1}, Lcom/meizu/settings/widget/MzAppEntry;-><init>(Landroid/content/Context;Landroid/content/AsyncTaskLoader;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V

    .line 101
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_bb

    .line 102
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_bc

    :cond_bb
    move-object v7, v9

    .line 106
    :cond_bc
    invoke-virtual {v11, v7}, Lcom/meizu/settings/widget/MzAppEntry;->setLabel(Ljava/lang/String;)V

    .line 107
    iget-object v7, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v7, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_d3

    .line 109
    iput-boolean v3, v11, Lcom/meizu/settings/widget/MzAppEntry;->mIsLock:Z

    .line 110
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v7, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mGroupCounts:[I

    aget v8, v7, v4

    add-int/2addr v8, v3

    aput v8, v7, v4

    goto :goto_df

    .line 113
    :cond_d3
    iput-boolean v4, v11, Lcom/meizu/settings/widget/MzAppEntry;->mIsLock:Z

    .line 114
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v7, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mGroupCounts:[I

    aget v8, v7, v3

    add-int/2addr v8, v3

    aput v8, v7, v3

    :cond_df
    :goto_df
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_30

    .line 120
    :cond_e3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ee

    .line 121
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    :cond_ee
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f9

    .line 124
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    :cond_f9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mApps:Ljava/util/List;

    .line 127
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_110

    .line 129
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mApps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    :cond_110
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_11b

    .line 131
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mApps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :cond_11b
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mApps:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .registers 2

    .line 28
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockItemsLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeLockItemsLoader;->onReleaseResources(Ljava/util/List;)V

    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onReset()V
    .registers 4

    .line 188
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 191
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockItemsLoader;->onStopLoading()V

    .line 195
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mApps:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 196
    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/FlymeLockItemsLoader;->onReleaseResources(Ljava/util/List;)V

    .line 197
    iput-object v1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mApps:Ljava/util/List;

    .line 201
    :cond_10
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mPackageObserver:Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

    if-eqz v0, :cond_1f

    .line 202
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mPackageObserver:Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    iput-object v1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mPackageObserver:Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

    :cond_1f
    return-void
.end method

.method protected onStartLoading()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 166
    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/FlymeLockItemsLoader;->deliverResult(Ljava/util/List;)V

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mPackageObserver:Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

    if-nez v0, :cond_12

    .line 171
    new-instance v0, Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;-><init>(Landroid/content/AsyncTaskLoader;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mPackageObserver:Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

    .line 176
    :cond_12
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mLastConfig:Lcom/meizu/settings/AppListBaseSettings$InterestingConfigChanges;

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/AppListBaseSettings$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 178
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeLockItemsLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2f

    .line 181
    :cond_2c
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->forceLoad()V

    :cond_2f
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .line 218
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoad()Z

    return-void
.end method
