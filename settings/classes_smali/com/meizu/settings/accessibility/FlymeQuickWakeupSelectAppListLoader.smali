.class public Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "FlymeQuickWakeupSelectAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader$InterestingConfigChanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lcom/meizu/settings/widget/MzAppEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private groupCounts:[I

.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFilterArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLastConfig:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader$InterestingConfigChanges;

.field mPackageObserver:Lcom/meizu/settings/receiver/FlymePackageIntentReceiver;

.field private mSelectedAppInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 329
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader$1;

    invoke-direct {v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .registers 4

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 35
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader$InterestingConfigChanges;

    invoke-direct {v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mLastConfig:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader$InterestingConfigChanges;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mFilterArrayList:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 40
    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->groupCounts:[I

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->appMap:Ljava/util/HashMap;

    .line 69
    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->init(Landroid/content/Context;)V

    .line 70
    iput-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->groupCounts:[I

    return-void

    :array_2a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private addFlashLight(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;)V"
        }
    .end annotation

    .line 153
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    const-string v1, "com.meizu.flashlight"

    .line 154
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 155
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 156
    new-instance v2, Landroid/content/pm/ActivityInfo;

    invoke-direct {v2}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 157
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 158
    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 160
    new-instance v2, Lcom/meizu/settings/widget/MzAppEntry;

    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/meizu/settings/widget/MzAppEntry;-><init>(Landroid/content/Context;Landroid/content/AsyncTaskLoader;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V

    .line 161
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1208a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/meizu/settings/widget/MzAppEntry;->setLabel(Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/meizu/settings/widget/MzAppEntry;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkIfAppSelected(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mSelectedAppInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 139
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/MzAppEntry;

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/meizu/settings/widget/MzAppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mSelectedAppInfo:Ljava/lang/String;

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 142
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v0, "true found!"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 144
    invoke-interface {p1, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_50
    return-void
.end method

.method static findActivitiesForPackage(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 194
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_19

    goto :goto_1e

    .line 196
    :cond_19
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_1e
    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mContext:Landroid/content/Context;

    .line 75
    new-instance p1, Lcom/meizu/settings/receiver/FlymePackageIntentReceiver;

    invoke-direct {p1}, Lcom/meizu/settings/receiver/FlymePackageIntentReceiver;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mPackageObserver:Lcom/meizu/settings/receiver/FlymePackageIntentReceiver;

    .line 76
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mPackageObserver:Lcom/meizu/settings/receiver/FlymePackageIntentReceiver;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/receiver/FlymePackageIntentReceiver;->init(Landroid/content/AsyncTaskLoader;)V

    .line 77
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->initFilterApp()V

    return-void
.end method

.method private initFilterApp()V
    .registers 2

    const-string v0, "com.meizu.flyme.launcher"

    .line 200
    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->addFileterApp(Ljava/lang/String;)V

    const-string v0, "com.sohu.inputmethod.sogou"

    .line 201
    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->addFileterApp(Ljava/lang/String;)V

    const-string v0, "com.android.stk"

    .line 202
    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->addFileterApp(Ljava/lang/String;)V

    const-string v0, "com.android.utk"

    .line 203
    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->addFileterApp(Ljava/lang/String;)V

    const-string v0, "com.android.launcher2"

    .line 204
    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->addFileterApp(Ljava/lang/String;)V

    const-string v0, "com.google.android.maps"

    .line 205
    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->addFileterApp(Ljava/lang/String;)V

    const-string v0, "com.android.speechrecorder"

    .line 206
    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->addFileterApp(Ljava/lang/String;)V

    const-string v0, "com.google.android.handsfree"

    .line 207
    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->addFileterApp(Ljava/lang/String;)V

    const-string v0, "com.mediatek.StkSelection"

    .line 208
    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->addFileterApp(Ljava/lang/String;)V

    const-string v0, "com.cootek.smartinput5"

    .line 209
    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->addFileterApp(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFileterApp(Ljava/lang/String;)V
    .registers 2

    .line 213
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mFilterArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    .line 31
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->deliverResult(Ljava/util/List;)V

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

    .line 227
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 231
    invoke-virtual {p0, p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 235
    :cond_b
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mApps:Ljava/util/List;

    .line 237
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 240
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_16
    if-eqz p1, :cond_1b

    .line 247
    invoke-virtual {p0, p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->onReleaseResources(Ljava/util/List;)V

    :cond_1b
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->loadInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->appMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 88
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->groupCounts:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 89
    aput v1, v0, v2

    .line 90
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->findActivitiesForPackage(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5c

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_22
    if-ge v1, v2, :cond_5d

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 101
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_31

    goto :goto_59

    .line 105
    :cond_31
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 107
    iget-object v7, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mFilterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    goto :goto_59

    .line 111
    :cond_3c
    iget-object v7, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->appMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    goto :goto_59

    .line 114
    :cond_45
    iget-object v7, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->appMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v6, Lcom/meizu/settings/widget/MzAppEntry;

    iget-object v7, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, p0, v5, v4}, Lcom/meizu/settings/widget/MzAppEntry;-><init>(Landroid/content/Context;Landroid/content/AsyncTaskLoader;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V

    .line 116
    iget-object v4, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Lcom/meizu/settings/widget/MzAppEntry;->loadLabel(Landroid/content/Context;)V

    .line 117
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_5c
    const/4 v3, 0x0

    .line 121
    :cond_5d
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mFilterArrayList:Ljava/util/ArrayList;

    const-string v1, "com.meizu.flashlight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 122
    invoke-direct {p0, v3}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->addFlashLight(Ljava/util/List;)V

    .line 128
    :cond_6a
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    invoke-direct {p0, v3}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->checkIfAppSelected(Ljava/util/List;)V

    return-object v3
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .registers 2

    .line 31
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->onCanceled(Ljava/util/List;)V

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

    .line 287
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p0, p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->onReleaseResources(Ljava/util/List;)V

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

    .line 299
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 302
    invoke-virtual {p0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->onStopLoading()V

    .line 306
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mApps:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 307
    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 308
    iput-object v1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mApps:Ljava/util/List;

    .line 312
    :cond_10
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mPackageObserver:Lcom/meizu/settings/receiver/FlymePackageIntentReceiver;

    if-eqz v0, :cond_1f

    .line 313
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mPackageObserver:Lcom/meizu/settings/receiver/FlymePackageIntentReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    iput-object v1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mPackageObserver:Lcom/meizu/settings/receiver/FlymePackageIntentReceiver;

    :cond_1f
    return-void
.end method

.method protected onStartLoading()V
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 259
    invoke-virtual {p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->deliverResult(Ljava/util/List;)V

    .line 264
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mLastConfig:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader$InterestingConfigChanges;

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 266
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_21

    if-eqz v0, :cond_24

    .line 269
    :cond_21
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->forceLoad()V

    :cond_24
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .line 279
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoad()Z

    return-void
.end method

.method public setSelectedAppInfo(Ljava/lang/String;)V
    .registers 5

    .line 217
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedAppInfo:213:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->mSelectedAppInfo:Ljava/lang/String;

    return-void
.end method
