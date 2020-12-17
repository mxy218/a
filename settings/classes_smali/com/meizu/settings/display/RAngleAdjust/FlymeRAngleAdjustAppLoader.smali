.class public Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;
.super Landroid/content/AsyncTaskLoader;
.source "FlymeRAngleAdjustAppLoader.java"


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

.field private mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

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

.field private sFileterPkgNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;[I)V
    .registers 6
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

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 27
    new-instance v0, Lcom/meizu/settings/AppListBaseSettings$InterestingConfigChanges;

    invoke-direct {v0}, Lcom/meizu/settings/AppListBaseSettings$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mLastConfig:Lcom/meizu/settings/AppListBaseSettings$InterestingConfigChanges;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mAppMap:Ljava/util/HashMap;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 32
    fill-array-data v0, :array_52

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mGroupCounts:[I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mLauncherNames:Ljava/util/HashMap;

    const-string v0, "com.meizu.flyme.alphatravel"

    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->sFileterPkgNames:Ljava/util/List;

    .line 219
    new-instance v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader$1;-><init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;)V

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 45
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 46
    iput-object p3, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mLauncherNames:Ljava/util/HashMap;

    .line 47
    iput-object p4, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mGroupCounts:[I

    .line 48
    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mAppMap:Ljava/util/HashMap;

    .line 49
    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mContext:Landroid/content/Context;

    .line 50
    iget-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    return-void

    :array_52
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    .line 23
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->deliverResult(Ljava/util/List;)V

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

    .line 133
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 137
    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->onReleaseResources(Ljava/util/List;)V

    .line 141
    :cond_b
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 144
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 1

    .line 23
    invoke-virtual {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->loadInBackground()Ljava/util/List;

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

    const-string/jumbo v0, "test"

    const-string v1, "loader...loadInBackground"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    invoke-virtual {v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->initLocalRAngleAppList()V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 64
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 66
    iget-object v2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 67
    iget-object v2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mLauncherNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 68
    iget-object v2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mGroupCounts:[I

    const/4 v4, 0x0

    aput v4, v2, v4

    .line 69
    aput v4, v2, v3

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    .line 73
    :goto_3d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e2

    .line 74
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 75
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_de

    .line 77
    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v9

    if-nez v9, :cond_de

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_de

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v10, -0x80000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_64

    goto/16 :goto_de

    .line 83
    :cond_64
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 84
    iget-object v10, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->sFileterPkgNames:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_de

    iget-object v10, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    invoke-virtual {v10, v9}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->isAppAdjustRAngle(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_77

    goto :goto_de

    .line 88
    :cond_77
    iget-object v10, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mLauncherNames:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_90

    .line 89
    iget-object v10, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mLauncherNames:Ljava/util/HashMap;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_90
    iget-object v10, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_99

    goto :goto_de

    .line 95
    :cond_99
    iget-object v10, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mFlymeRAngleAdjustController:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    invoke-virtual {v10, v9}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->isRAngleUnadjustOpened(Ljava/lang/String;)Z

    move-result v10

    .line 96
    new-instance v11, Lcom/meizu/settings/widget/MzAppEntry;

    iget-object v12, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, p0, v8, v1}, Lcom/meizu/settings/widget/MzAppEntry;-><init>(Landroid/content/Context;Landroid/content/AsyncTaskLoader;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V

    .line 97
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_ba

    .line 98
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_bb

    :cond_ba
    move-object v7, v9

    .line 102
    :cond_bb
    invoke-virtual {v11, v7}, Lcom/meizu/settings/widget/MzAppEntry;->setLabel(Ljava/lang/String;)V

    .line 103
    iget-object v7, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v7, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_d2

    .line 105
    iput-boolean v3, v11, Lcom/meizu/settings/widget/MzAppEntry;->mIsRAngleAdjust:Z

    .line 106
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v7, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mGroupCounts:[I

    aget v8, v7, v4

    add-int/2addr v8, v3

    aput v8, v7, v4

    goto :goto_de

    .line 109
    :cond_d2
    iput-boolean v4, v11, Lcom/meizu/settings/widget/MzAppEntry;->mIsRAngleAdjust:Z

    .line 110
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v7, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mGroupCounts:[I

    aget v8, v7, v3

    add-int/2addr v8, v3

    aput v8, v7, v3

    :cond_de
    :goto_de
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3d

    .line 116
    :cond_e2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mApps:Ljava/util/List;

    .line 118
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_f9

    .line 119
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mApps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_f9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_109

    .line 124
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mApps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    :cond_109
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mApps:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .registers 2

    .line 23
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->onCanceled(Ljava/util/List;)V

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

    .line 151
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->onReleaseResources(Ljava/util/List;)V

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

    .line 183
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 186
    invoke-virtual {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->onStopLoading()V

    .line 190
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mApps:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 191
    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->onReleaseResources(Ljava/util/List;)V

    .line 192
    iput-object v1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mApps:Ljava/util/List;

    .line 196
    :cond_10
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mPackageObserver:Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

    if-eqz v0, :cond_1f

    .line 197
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mPackageObserver:Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    iput-object v1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mPackageObserver:Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

    :cond_1f
    return-void
.end method

.method protected onStartLoading()V
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 162
    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->deliverResult(Ljava/util/List;)V

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mPackageObserver:Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

    if-nez v0, :cond_12

    .line 167
    new-instance v0, Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;-><init>(Landroid/content/AsyncTaskLoader;)V

    iput-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mPackageObserver:Lcom/meizu/settings/AppListBaseSettings$PackageIntentReceiver;

    .line 172
    :cond_12
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mLastConfig:Lcom/meizu/settings/AppListBaseSettings$InterestingConfigChanges;

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/AppListBaseSettings$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 174
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAppLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2f

    .line 177
    :cond_2c
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->forceLoad()V

    :cond_2f
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .line 213
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoad()Z

    return-void
.end method
